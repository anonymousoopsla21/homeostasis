
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [exit]*/
void exit(int );
/*READ_S: []
WRITE_S: [cos]*/
extern double cos(double );
/*READ_S: []
WRITE_S: [sin]*/
extern double sin(double );
/*READ_S: []
WRITE_S: [exp]*/
extern double exp(double );
/*READ_S: []
WRITE_S: [log]*/
extern double log(double );
/*READ_S: []
WRITE_S: [fabs]*/
extern double fabs(double );
/*READ_S: []
WRITE_S: []*/
typedef int boolean;
/*READ_S: []
WRITE_S: []*/
struct stUn_imopVarPre11 {
    double real;
    double imag;
} ;
/*READ_S: []
WRITE_S: []*/
typedef struct stUn_imopVarPre11 dcomplex;
/*READ_S: []
WRITE_S: [randlc]*/
extern double randlc(double *, double );
/*READ_S: []
WRITE_S: [vranlc]*/
extern void vranlc(int , double * , double  , double *);
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
WRITE_S: [fftblock]*/
int fftblock;
/*READ_S: []
WRITE_S: [fftblockpad]*/
int fftblockpad;
/*READ_S: []
WRITE_S: [dims, dims.f]*/
static int dims[3][3];
/*READ_S: []
WRITE_S: [xstart, xstart.f]*/
static int xstart[3];
/*READ_S: []
WRITE_S: [ystart.f, ystart]*/
static int ystart[3];
/*READ_S: []
WRITE_S: [zstart.f, zstart]*/
static int zstart[3];
/*READ_S: []
WRITE_S: [xend, xend.f]*/
static int xend[3];
/*READ_S: []
WRITE_S: [yend.f, yend]*/
static int yend[3];
/*READ_S: []
WRITE_S: [zend, zend.f]*/
static int zend[3];
/*READ_S: []
WRITE_S: [ex.f, ex]*/
static double ex[(6 * (64 * 64 / 4 + 64 * 64 / 4 + 64 * 64 / 4)) + 1];
/*READ_S: []
WRITE_S: [u.f, u]*/
static dcomplex u[64];
/*READ_S: []
WRITE_S: [sums, sums.f]*/
static dcomplex sums[6 + 1];
/*READ_S: []
WRITE_S: [niter]*/
static int niter;
/*READ_S: []
WRITE_S: [evolve]*/
static void evolve(dcomplex u0[64][64][64], dcomplex u1[64][64][64] , int t , int indexmap[64][64][64] , int d[3]);
/*READ_S: []
WRITE_S: [compute_initial_conditions]*/
static void compute_initial_conditions(dcomplex u0[64][64][64], int d[3]);
/*READ_S: []
WRITE_S: [ipow46]*/
static void ipow46(double a, int exponent , double *result);
/*READ_S: []
WRITE_S: [setup]*/
static void setup(void );
/*READ_S: []
WRITE_S: [compute_indexmap]*/
static void compute_indexmap(int indexmap[64][64][64], int d[3]);
/*READ_S: []
WRITE_S: [print_timers]*/
static void print_timers(void );
/*READ_S: []
WRITE_S: [fft]*/
static void fft(int dir, dcomplex x1[64][64][64] , dcomplex x2[64][64][64]);
/*READ_S: []
WRITE_S: [cffts1]*/
static void cffts1(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]);
/*READ_S: []
WRITE_S: [cffts2]*/
static void cffts2(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]);
/*READ_S: []
WRITE_S: [cffts3]*/
static void cffts3(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]);
/*READ_S: []
WRITE_S: [fft_init]*/
static void fft_init(int n);
/*READ_S: []
WRITE_S: [cfftz]*/
static void cfftz(int is, int m , int n , dcomplex x[64][18] , dcomplex y[64][18]);
/*READ_S: []
WRITE_S: [fftz2]*/
static void fftz2(int is, int l , int m , int n , int ny , int ny1 , dcomplex u[64] , dcomplex x[64][18] , dcomplex y[64][18]);
/*READ_S: []
WRITE_S: [ilog2]*/
static int ilog2(int n);
/*READ_S: []
WRITE_S: [checksum]*/
static void checksum(int i, dcomplex u1[64][64][64] , int d[3]);
/*READ_S: []
WRITE_S: [verify]*/
static void verify(int d1, int d2 , int d3 , int nt , boolean *verified , char *class);
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [j, _imopVarPre325, y1.f, fftz2, _imopVarPre272, ystart, d, _imopVarPre294, sums, i, sin, u0, cffts3, x, t, timer_stop, timer_start, randlc, log, j, _imopVarPre326, is, k, d, fftblock, setup, xout, timer_read, sums.f, _imopVarPre274, _imopVarPre276, cffts2, i, compute_indexmap, cos, indexmap, zend.f, cfftz, ilog2, _imopVarPre285, timer_clear, xend, _imopVarPre296, verify, compute_initial_conditions, is, d, xout, y0.f, _imopVarPre266, exp, checksum, ex, ipow46, zend, k, xend.f, _imopVarPre295, y0.f, _imopVarPre286, k, _imopVarPre267, ex.f, logd.f, c_print_results, d, xout, is, zstart.f, y1.f, _imopVarPre316, logd.f, fabs, u0.f, u1, niter, fftblockpad, x, logd.f, _imopVarPre305, indexmap, u1, _imopVarPre284, logd, evolve, fft, logd, printf, u0, y1.f, _imopVarPre304, indexmap.f, fft_init, vranlc, xstart, indexmap, tmp, _imopVarPre314, cffts1, u, yend.f, dims, x, print_timers, u2.f, xstart.f, y0.f, _imopVarPre324, exit, ystart.f, tmp.f, zstart, _imopVarPre315, u.f, dims.f, yend, logd, _imopVarPre306, u1, u1.f, u2]
WRITE_S: [zend.f, y1.f, tmp, y1.f, zstart.f, u0.f, u1, niter, y0.f, fftblockpad, yend.f, indexmap, u2.f, xstart.f, y0.f, ystart.f, xend.f, fftblock, y0.f, an, tmp.f, sums.f, u0, y1.f, u.f, dims.f, indexmap.f, ex.f, u1.f, u2]*/
int main(int argc, char **argv) {
/*READ_S: [j, _imopVarPre325, y1.f, fftz2, _imopVarPre272, ystart, d, _imopVarPre294, sums, i, sin, u0, cffts3, x, t, timer_stop, timer_start, randlc, log, j, _imopVarPre326, is, k, d, fftblock, setup, xout, timer_read, sums.f, _imopVarPre274, _imopVarPre276, cffts2, i, compute_indexmap, cos, indexmap, zend.f, cfftz, ilog2, _imopVarPre285, timer_clear, xend, _imopVarPre296, verify, compute_initial_conditions, is, d, xout, y0.f, _imopVarPre266, exp, checksum, ex, ipow46, zend, k, xend.f, _imopVarPre295, y0.f, _imopVarPre286, k, _imopVarPre267, ex.f, logd.f, c_print_results, d, xout, is, zstart.f, y1.f, _imopVarPre316, logd.f, fabs, u0.f, u1, niter, fftblockpad, x, logd.f, _imopVarPre305, indexmap, u1, _imopVarPre284, logd, evolve, fft, logd, printf, u0, y1.f, _imopVarPre304, indexmap.f, fft_init, vranlc, xstart, indexmap, tmp, _imopVarPre314, cffts1, u, yend.f, dims, x, print_timers, u2.f, xstart.f, y0.f, _imopVarPre324, exit, ystart.f, tmp.f, zstart, _imopVarPre315, u.f, dims.f, yend, logd, _imopVarPre306, u1, u1.f, u2]
WRITE_S: [zend.f, y1.f, tmp, y1.f, zstart.f, u0.f, u1, niter, y0.f, fftblockpad, yend.f, indexmap, u2.f, xstart.f, y0.f, ystart.f, xend.f, fftblock, y0.f, an, tmp.f, sums.f, u0, y1.f, u.f, dims.f, indexmap.f, ex.f, u1.f, u2]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: [u0.f, u0]*/
    static dcomplex u0[64][64][64];
    /*READ_S: []
    WRITE_S: [u1, u1.f]*/
    static dcomplex u1[64][64][64];
    /*READ_S: []
    WRITE_S: [u2.f, u2]*/
    static dcomplex u2[64][64][64];
    /*READ_S: []
    WRITE_S: [indexmap.f, indexmap]*/
    static int indexmap[64][64][64];
    /*READ_S: []
    WRITE_S: []*/
    int iter;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads = 1;
    /*READ_S: []
    WRITE_S: []*/
    double total_time;
    /*READ_S: []
    WRITE_S: []*/
    double mflops;
    /*READ_S: []
    WRITE_S: []*/
    boolean verified;
    /*READ_S: []
    WRITE_S: []*/
    char class;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    for (i = 0; i < 7; i++) {
    /*READ_S: [timer_clear]
    WRITE_S: []*/
        /*READ_S: [timer_clear]
        WRITE_S: []*/
        timer_clear(i);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [setup]
    WRITE_S: []*/
    setup();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int ( *_imopVarPre145 );
    /*READ_S: [dims, dims.f]
    WRITE_S: []*/
    _imopVarPre145 = dims[2];
    /*READ_S: [compute_indexmap, indexmap]
    WRITE_S: []*/
    compute_indexmap(indexmap, _imopVarPre145);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int ( *_imopVarPre147 );
    /*READ_S: [dims, dims.f]
    WRITE_S: []*/
    _imopVarPre147 = dims[0];
    /*READ_S: [u1, compute_initial_conditions]
    WRITE_S: []*/
    compute_initial_conditions(u1, _imopVarPre147);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre149;
    /*READ_S: [dims, dims.f]
    WRITE_S: []*/
    _imopVarPre149 = dims[0][0];
    /*READ_S: [fft_init]
    WRITE_S: []*/
    fft_init(_imopVarPre149);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [u1, u0, fft]
    WRITE_S: []*/
    fft(1, u1, u0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    for (i = 0; i < 7; i++) {
    /*READ_S: [timer_clear]
    WRITE_S: []*/
        /*READ_S: [timer_clear]
        WRITE_S: []*/
        timer_clear(i);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [timer_start]
    WRITE_S: []*/
    timer_start(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_start]
    WRITE_S: []*/
    if (0 == 1) {
    /*READ_S: [timer_start]
    WRITE_S: []*/
        /*READ_S: [timer_start]
        WRITE_S: []*/
        timer_start(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int ( *_imopVarPre151 );
    /*READ_S: [dims, dims.f]
    WRITE_S: []*/
    _imopVarPre151 = dims[2];
    /*READ_S: [compute_indexmap, indexmap]
    WRITE_S: []*/
    compute_indexmap(indexmap, _imopVarPre151);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int ( *_imopVarPre153 );
    /*READ_S: [dims, dims.f]
    WRITE_S: []*/
    _imopVarPre153 = dims[0];
    /*READ_S: [u1, compute_initial_conditions]
    WRITE_S: []*/
    compute_initial_conditions(u1, _imopVarPre153);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre155;
    /*READ_S: [dims, dims.f]
    WRITE_S: []*/
    _imopVarPre155 = dims[0][0];
    /*READ_S: [fft_init]
    WRITE_S: []*/
    fft_init(_imopVarPre155);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_stop]
    WRITE_S: []*/
    if (0 == 1) {
    /*READ_S: [timer_stop]
    WRITE_S: []*/
        /*READ_S: [timer_stop]
        WRITE_S: []*/
        timer_stop(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_start]
    WRITE_S: []*/
    if (0 == 1) {
    /*READ_S: [timer_start]
    WRITE_S: []*/
        /*READ_S: [timer_start]
        WRITE_S: []*/
        timer_start(2);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [u1, u0, fft]
    WRITE_S: []*/
    fft(1, u1, u0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_stop]
    WRITE_S: []*/
    if (0 == 1) {
    /*READ_S: [timer_stop]
    WRITE_S: []*/
        /*READ_S: [timer_stop]
        WRITE_S: []*/
        timer_stop(2);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [niter]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [j, logd.f, y1.f, d, fftz2, _imopVarPre272, xout, ystart, d, is, y1.f, zstart.f, sums, i, logd.f, u0.f, u1, u0, niter, fftblockpad, x, cffts3, logd.f, x, t, indexmap, timer_stop, timer_start, u1, j, is, k, d, fftblock, logd, xout, evolve, sums.f, logd, fft, _imopVarPre274, _imopVarPre276, y1.f, printf, u0, cffts2, indexmap, indexmap.f, xstart, zend.f, ilog2, cfftz, xend, is, d, xout, y0.f, cffts1, u, yend.f, dims, x, _imopVarPre266, checksum, u2.f, ex, xstart.f, y0.f, zend, exit, ystart.f, k, xend.f, y0.f, zstart, u.f, k, dims.f, logd, yend, _imopVarPre267, u1, ex.f, u1.f, u2]
    WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, sums.f, u2.f, u1.f]*/
    for (iter = 1; iter <= niter; iter++) {
    /*READ_S: [j, logd.f, y1.f, d, fftz2, _imopVarPre272, xout, ystart, d, is, y1.f, zstart.f, sums, i, logd.f, u0.f, u1, u0, fftblockpad, x, cffts3, logd.f, x, t, indexmap, timer_stop, timer_start, u1, j, is, k, d, fftblock, logd, xout, evolve, sums.f, logd, fft, _imopVarPre274, _imopVarPre276, y1.f, printf, u0, cffts2, indexmap, indexmap.f, xstart, zend.f, ilog2, cfftz, xend, is, d, xout, y0.f, cffts1, u, yend.f, dims, x, _imopVarPre266, checksum, u2.f, ex, xstart.f, y0.f, zend, exit, ystart.f, k, xend.f, y0.f, zstart, u.f, k, dims.f, logd, yend, _imopVarPre267, u1, ex.f, u1.f, u2]
    WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, sums.f, u2.f, u1.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [timer_start]
        WRITE_S: []*/
        if (0 == 1) {
        /*READ_S: [timer_start]
        WRITE_S: []*/
            /*READ_S: [timer_start]
            WRITE_S: []*/
            timer_start(3);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int ( *_imopVarPre157 );
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        _imopVarPre157 = dims[0];
        /*READ_S: [u1, u0, indexmap, evolve]
        WRITE_S: []*/
        evolve(u0, u1, iter, indexmap, _imopVarPre157);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [timer_stop]
        WRITE_S: []*/
        if (0 == 1) {
        /*READ_S: [timer_stop]
        WRITE_S: []*/
            /*READ_S: [timer_stop]
            WRITE_S: []*/
            timer_stop(3);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [timer_start]
        WRITE_S: []*/
        if (0 == 1) {
        /*READ_S: [timer_start]
        WRITE_S: []*/
            /*READ_S: [timer_start]
            WRITE_S: []*/
            timer_start(2);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre159;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre159 = -1;
        /*READ_S: [u1, fft, u2]
        WRITE_S: []*/
        fft(_imopVarPre159, u1, u2);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [timer_stop]
        WRITE_S: []*/
        if (0 == 1) {
        /*READ_S: [timer_stop]
        WRITE_S: []*/
            /*READ_S: [timer_stop]
            WRITE_S: []*/
            timer_stop(2);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [timer_start]
        WRITE_S: []*/
        if (0 == 1) {
        /*READ_S: [timer_start]
        WRITE_S: []*/
            /*READ_S: [timer_start]
            WRITE_S: []*/
            timer_start(4);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int ( *_imopVarPre161 );
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        _imopVarPre161 = dims[0];
        /*READ_S: [checksum, u2]
        WRITE_S: []*/
        checksum(iter, u2, _imopVarPre161);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [timer_stop]
        WRITE_S: []*/
        if (0 == 1) {
        /*READ_S: [timer_stop]
        WRITE_S: []*/
            /*READ_S: [timer_stop]
            WRITE_S: []*/
            timer_stop(4);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre164;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre165;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre164 = &class;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre165 = &verified;
    /*READ_S: [niter, verify]
    WRITE_S: []*/
    verify(64, 64, 64, niter, _imopVarPre165, _imopVarPre164);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
#pragma omp parallel
    {
    /*READ_S: []
    WRITE_S: []*/
    }
    /*READ_S: [timer_stop]
    WRITE_S: []*/
    timer_stop(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_read]
    WRITE_S: []*/
    total_time = timer_read(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [niter, log]
    WRITE_S: []*/
    if (total_time != 0.0) {
    /*READ_S: [niter, log]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre184;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre185;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre188;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre189;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre184 = (double) 262144;
        /*READ_S: [log]
        WRITE_S: []*/
        _imopVarPre185 = log(_imopVarPre184);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre188 = (double) 262144;
        /*READ_S: [log]
        WRITE_S: []*/
        _imopVarPre189 = log(_imopVarPre188);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [niter]
        WRITE_S: []*/
        mflops = 1.0e-6 * (double) 262144 * (14.8157 + 7.19641 * _imopVarPre185 + (5.23518 + 7.21113 * _imopVarPre189) * niter) / total_time;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        mflops = 0.0;
    }
    /*READ_S: [c_print_results, niter]
    WRITE_S: []*/
    c_print_results("FT", class, 64, 64, 64, niter, nthreads, total_time, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, timer_read, print_timers]
    WRITE_S: []*/
    if (0 == 1) {
    /*READ_S: [printf, timer_read, print_timers]
    WRITE_S: []*/
        /*READ_S: [print_timers]
        WRITE_S: []*/
        print_timers();
        /*READ_S: []
        WRITE_S: []*/
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
/*READ_S: [u0.f, u0, k, dims.f, d, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
WRITE_S: [u1.f]*/
static void evolve(dcomplex u0[64][64][64], dcomplex u1[64][64][64] , int t , int indexmap[64][64][64] , int d[3]) {
/*READ_S: [u0.f, u0, k, dims.f, d, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
WRITE_S: [u1.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: [u0.f, u0, k, dims.f, d, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
    WRITE_S: [u1.f]*/
#pragma omp parallel default(shared) private(i, j, k)
    {
    /*READ_S: [u0.f, u0, k, dims.f, d, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
    WRITE_S: [u1.f]*/
        /*READ_S: [u0.f, u0, k, dims.f, d, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
        WRITE_S: [u1.f]*/
#pragma omp for nowait
        /*READ_S: [k]
        WRITE_S: []*/
        /*READ_S: [dims.f, d]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (k = 0; k < d[2]; k++) {
        /*READ_S: [u0.f, u0, dims.f, d, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
        WRITE_S: [u1.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dims.f, d]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u0.f, u0, dims.f, d, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
            WRITE_S: [u1.f]*/
            for (j = 0; j < d[1]; j++) {
            /*READ_S: [u0.f, u0, dims.f, d, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
            WRITE_S: [u1.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dims.f, d]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u0.f, u0, dims.f, d, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
                WRITE_S: [u1.f]*/
                for (i = 0; i < d[0]; i++) {
                /*READ_S: [u0.f, u0, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
                WRITE_S: [u1.f]*/
                    /*READ_S: [u0.f, u0, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
                    WRITE_S: [u1.f]*/
                    u1[k][j][i].real = u0[k][j][i].real * ex[t * indexmap[k][j][i]];
                    /*READ_S: [u0.f, u0, t, indexmap, indexmap.f, u1, ex.f, u1.f, ex]
                    WRITE_S: [u1.f]*/
                    (u1[k][j][i].imag = u0[k][j][i].imag * ex[t * indexmap[k][j][i]]);
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [dims, ystart.f, dims.f, ystart, tmp, zstart.f, vranlc, tmp.f, randlc, zstart, ipow46, u1.f]
WRITE_S: [tmp, an, tmp.f, u1.f]*/
static void compute_initial_conditions(dcomplex u0[64][64][64], int d[3]) {
/*READ_S: [dims, ystart.f, dims.f, ystart, tmp, zstart.f, vranlc, tmp.f, randlc, zstart, ipow46, u1.f]
WRITE_S: [tmp, an, tmp.f, u1.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    double x0;
    /*READ_S: []
    WRITE_S: []*/
    double start;
    /*READ_S: []
    WRITE_S: []*/
    double an;
    /*READ_S: []
    WRITE_S: []*/
    double dummy;
    /*READ_S: []
    WRITE_S: [tmp, tmp.f]*/
    static double tmp[64 * 2 * 64 + 1];
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int t;
    /*READ_S: []
    WRITE_S: []*/
    start = 314159265.0;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre192;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre193;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre192 = &an;
    /*READ_S: [ystart.f, ystart, zstart.f, zstart]
    WRITE_S: []*/
    _imopVarPre193 = (zstart[0] - 1) * 2 * 64 * 64 + (ystart[0] - 1) * 2 * 64;
    /*READ_S: [ipow46]
    WRITE_S: []*/
    ipow46(1220703125.0, _imopVarPre193, _imopVarPre192);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre195;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre196;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre195 = &start;
    /*READ_S: [randlc]
    WRITE_S: []*/
    _imopVarPre196 = randlc(_imopVarPre195, an);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    dummy = _imopVarPre196;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre199;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre200;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre199 = &an;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre200 = 2 * 64 * 64;
    /*READ_S: [ipow46]
    WRITE_S: []*/
    ipow46(1220703125.0, _imopVarPre200, _imopVarPre199);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [dims, dims.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [dims, dims.f, tmp, vranlc, tmp.f, randlc, u1.f]
    WRITE_S: [tmp.f, u1.f]*/
    for (k = 0; k < dims[0][2]; k++) {
    /*READ_S: [dims, dims.f, tmp, vranlc, tmp.f, randlc, u1.f]
    WRITE_S: [tmp.f, u1.f]*/
        /*READ_S: []
        WRITE_S: []*/
        x0 = start;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre203;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre204;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre203 = &x0;
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        _imopVarPre204 = 2 * 64 * dims[0][1];
        /*READ_S: [tmp, vranlc, tmp.f]
        WRITE_S: [tmp.f]*/
        vranlc(_imopVarPre204, _imopVarPre203, 1220703125.0, tmp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        t = 1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [dims, dims.f, tmp, tmp.f, u1.f]
        WRITE_S: [u1.f]*/
        for (j = 0; j < dims[0][1]; j++) {
        /*READ_S: [tmp, tmp.f, u1.f]
        WRITE_S: [u1.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tmp, tmp.f, u1.f]
            WRITE_S: [u1.f]*/
            for (i = 0; i < 64; i++) {
            /*READ_S: [tmp, tmp.f, u1.f]
            WRITE_S: [u1.f]*/
                /*READ_S: [tmp, tmp.f, u1.f]
                WRITE_S: [u1.f]*/
                u0[k][j][i].real = tmp[t++];
                /*READ_S: [tmp, tmp.f, u1.f]
                WRITE_S: [u1.f]*/
                u0[k][j][i].imag = tmp[t++];
            }
        }
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        /*READ_S: [dims, dims.f, randlc]
        WRITE_S: []*/
        if (k != dims[0][2]) {
        /*READ_S: [randlc]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre206;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre207;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre206 = &start;
            /*READ_S: [randlc]
            WRITE_S: []*/
            _imopVarPre207 = randlc(_imopVarPre206, an);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            dummy = _imopVarPre207;
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [randlc]
WRITE_S: [an]*/
static void ipow46(double a, int exponent , double *result) {
/*READ_S: [randlc]
WRITE_S: [an]*/
    /*READ_S: []
    WRITE_S: []*/
    double dummy;
    /*READ_S: []
    WRITE_S: []*/
    double q;
    /*READ_S: []
    WRITE_S: []*/
    double r;
    /*READ_S: []
    WRITE_S: []*/
    int n;
    /*READ_S: []
    WRITE_S: []*/
    int n2;
    /*READ_S: []
    WRITE_S: [an]*/
    *result = 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (exponent == 0) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        return;
    }
    /*READ_S: []
    WRITE_S: []*/
    q = a;
    /*READ_S: []
    WRITE_S: []*/
    r = 1;
    /*READ_S: []
    WRITE_S: []*/
    n = exponent;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [randlc]
    WRITE_S: []*/
    while (n > 1) {
    /*READ_S: [randlc]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        n2 = n / 2;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [randlc]
        WRITE_S: []*/
        if (n2 * 2 == n) {
        /*READ_S: [randlc]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre209;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre210;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre209 = &q;
            /*READ_S: [randlc]
            WRITE_S: []*/
            _imopVarPre210 = randlc(_imopVarPre209, q);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            dummy = _imopVarPre210;
            /*READ_S: []
            WRITE_S: []*/
            n = n2;
        } else {
        /*READ_S: [randlc]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre212;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre213;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre212 = &r;
            /*READ_S: [randlc]
            WRITE_S: []*/
            _imopVarPre213 = randlc(_imopVarPre212, q);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            dummy = _imopVarPre213;
            /*READ_S: []
            WRITE_S: []*/
            n = n - 1;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre215;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre216;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre215 = &r;
    /*READ_S: [randlc]
    WRITE_S: []*/
    _imopVarPre216 = randlc(_imopVarPre215, q);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    dummy = _imopVarPre216;
    /*READ_S: []
    WRITE_S: [an]*/
    *result = r;
}
/*READ_S: [zend, printf, niter, xend, dims, dims.f, yend, fftblock, ystart, xstart, zstart]
WRITE_S: [niter, zend.f, fftblockpad, yend.f, ystart.f, xend.f, dims.f, fftblock, zstart.f, xstart.f]*/
static void setup() {
/*READ_S: [zend, printf, niter, xend, dims, fftblock, dims.f, ystart, yend, xstart, zstart]
WRITE_S: [zend.f, niter, fftblockpad, yend.f, ystart.f, xend.f, dims.f, fftblock, zstart.f, xstart.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - FT Benchmark\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [niter]*/
    niter = 6;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Size                : %3dx%3dx%3d\n", 64, 64, 64);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, niter]
    WRITE_S: []*/
    printf(" Iterations          :     %7d\n", niter);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [dims, dims.f]
    WRITE_S: [dims.f]*/
    for (i = 0; i < 3; i++) {
    /*READ_S: [dims, dims.f]
    WRITE_S: [dims.f]*/
        /*READ_S: [dims, dims.f]
        WRITE_S: [dims.f]*/
        dims[i][0] = 64;
        /*READ_S: [dims, dims.f]
        WRITE_S: [dims.f]*/
        dims[i][1] = 64;
        /*READ_S: [dims, dims.f]
        WRITE_S: [dims.f]*/
        dims[i][2] = 64;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [zend, xend, ystart, yend, xstart, zstart]
    WRITE_S: [zend.f, yend.f, ystart.f, xend.f, zstart.f, xstart.f]*/
    for (i = 0; i < 3; i++) {
    /*READ_S: [zend, xend, ystart, yend, xstart, zstart]
    WRITE_S: [zend.f, yend.f, ystart.f, xend.f, zstart.f, xstart.f]*/
        /*READ_S: [xstart]
        WRITE_S: [xstart.f]*/
        xstart[i] = 1;
        /*READ_S: [xend]
        WRITE_S: [xend.f]*/
        xend[i] = 64;
        /*READ_S: [ystart]
        WRITE_S: [ystart.f]*/
        ystart[i] = 1;
        /*READ_S: [yend]
        WRITE_S: [yend.f]*/
        yend[i] = 64;
        /*READ_S: [zstart]
        WRITE_S: [zstart.f]*/
        zstart[i] = 1;
        /*READ_S: [zend]
        WRITE_S: [zend.f]*/
        zend[i] = 64;
    }
    /*READ_S: []
    WRITE_S: [fftblock]*/
    fftblock = 16;
    /*READ_S: []
    WRITE_S: [fftblockpad]*/
    fftblockpad = 18;
    /*READ_S: [fftblock]
    WRITE_S: []*/
    /*READ_S: [fftblock]
    WRITE_S: [fftblockpad]*/
    if (fftblock != 16) {
    /*READ_S: [fftblock]
    WRITE_S: [fftblockpad]*/
        /*READ_S: [fftblock]
        WRITE_S: [fftblockpad]*/
        fftblockpad = fftblock + 3;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [ystart.f, ystart, zstart.f, zstart, i, dims, dims.f, indexmap.f, exp, xstart, indexmap, ex.f, ex, xstart.f]
WRITE_S: [indexmap.f, ex.f]*/
static void compute_indexmap(int indexmap[64][64][64], int d[3]) {
/*READ_S: [ystart.f, ystart, zstart.f, zstart, i, dims, dims.f, indexmap.f, exp, xstart, indexmap, ex.f, ex, xstart.f]
WRITE_S: [indexmap.f, ex.f]*/
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
    int ii;
    /*READ_S: []
    WRITE_S: []*/
    int ii2;
    /*READ_S: []
    WRITE_S: []*/
    int jj;
    /*READ_S: []
    WRITE_S: []*/
    int ij2;
    /*READ_S: []
    WRITE_S: []*/
    int kk;
    /*READ_S: []
    WRITE_S: []*/
    double ap;
    /*READ_S: [i, dims, ystart.f, dims.f, ystart, indexmap.f, zstart.f, xstart, indexmap, zstart, xstart.f]
    WRITE_S: [indexmap.f]*/
#pragma omp parallel default(shared) private(i, j, k, ii, ii2, jj, ij2, kk)
    {
    /*READ_S: [i, dims, ystart.f, dims.f, ystart, indexmap.f, zstart.f, xstart, indexmap, zstart, xstart.f]
    WRITE_S: [indexmap.f]*/
        /*READ_S: [i, dims, ystart.f, dims.f, ystart, indexmap.f, zstart.f, xstart, indexmap, zstart, xstart.f]
        WRITE_S: [indexmap.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < dims[2][0]; i++) {
        /*READ_S: [dims, ystart.f, dims.f, ystart, indexmap.f, zstart.f, xstart, indexmap, zstart, xstart.f]
        WRITE_S: [indexmap.f]*/
            /*READ_S: [xstart, xstart.f]
            WRITE_S: []*/
            ii = (i + 1 + xstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
            /*READ_S: []
            WRITE_S: []*/
            ii2 = ii * ii;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dims, dims.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dims, ystart.f, dims.f, ystart, indexmap.f, zstart.f, indexmap, zstart]
            WRITE_S: [indexmap.f]*/
            for (j = 0; j < dims[2][1]; j++) {
            /*READ_S: [dims, ystart.f, dims.f, ystart, indexmap.f, zstart.f, indexmap, zstart]
            WRITE_S: [indexmap.f]*/
                /*READ_S: [ystart.f, ystart]
                WRITE_S: []*/
                jj = (j + 1 + ystart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                /*READ_S: []
                WRITE_S: []*/
                ij2 = jj * jj + ii2;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dims, dims.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dims, dims.f, indexmap.f, zstart.f, indexmap, zstart]
                WRITE_S: [indexmap.f]*/
                for (k = 0; k < dims[2][2]; k++) {
                /*READ_S: [indexmap.f, zstart.f, indexmap, zstart]
                WRITE_S: [indexmap.f]*/
                    /*READ_S: [zstart.f, zstart]
                    WRITE_S: []*/
                    kk = (k + 1 + zstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                    /*READ_S: [indexmap.f, indexmap]
                    WRITE_S: [indexmap.f]*/
                    indexmap[k][j][i] = kk * kk + ij2;
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
    /*READ_S: []
    WRITE_S: []*/
    ap = -4.0 * 1.0e-6 * 3.141592653589793238 * 3.141592653589793238;
    /*READ_S: [ex]
    WRITE_S: [ex.f]*/
    ex[0] = 1.0;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre217;
    /*READ_S: [exp]
    WRITE_S: []*/
    _imopVarPre217 = exp(ap);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ex]
    WRITE_S: [ex.f]*/
    ex[1] = _imopVarPre217;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ex.f, ex]
    WRITE_S: [ex.f]*/
    for (i = 2; i <= (6 * (64 * 64 / 4 + 64 * 64 / 4 + 64 * 64 / 4)); i++) {
    /*READ_S: [ex.f, ex]
    WRITE_S: [ex.f]*/
        /*READ_S: [ex.f, ex]
        WRITE_S: [ex.f]*/
        ex[i] = ex[i - 1] * ex[1];
    }
}
/*READ_S: [printf, timer_read]
WRITE_S: []*/
static void print_timers() {
/*READ_S: [printf, timer_read]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    char *tstrings[] = {"          total ", "          setup " , "            fft " , "         evolve " , "       checksum " , "         fftlow " , "        fftcopy "};
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, timer_read]
    WRITE_S: []*/
    for (i = 0; i < 7; i++) {
    /*READ_S: [printf, timer_read]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre219;
        /*READ_S: [timer_read]
        WRITE_S: []*/
        _imopVarPre219 = timer_read(i);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf, timer_read]
        WRITE_S: []*/
        if (_imopVarPre219 != 0.0) {
        /*READ_S: [printf, timer_read]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre222;
            /*READ_S: []
            WRITE_S: []*/
            char *_imopVarPre223;
            /*READ_S: [timer_read]
            WRITE_S: []*/
            _imopVarPre222 = timer_read(i);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre223 = tstrings[i];
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("timer %2d(%16s( :%10.6f\n", i, _imopVarPre223, _imopVarPre222);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [j, logd.f, ilog2, cfftz, y1.f, d, fftz2, xout, is, y1.f, is, d, xout, logd.f, u0.f, fftblockpad, y0.f, cffts1, x, u, cffts3, dims, logd.f, x, x, _imopVarPre266, u2.f, y0.f, is, k, exit, d, k, fftblock, logd, y0.f, xout, logd, y1.f, printf, u.f, cffts2, dims.f, logd, _imopVarPre267, u1.f]
WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
static void fft(int dir, dcomplex x1[64][64][64] , dcomplex x2[64][64][64]) {
/*READ_S: [j, logd.f, ilog2, cfftz, y1.f, d, fftz2, xout, is, y1.f, is, d, xout, logd.f, u0.f, fftblockpad, y0.f, cffts1, x, u, cffts3, dims, logd.f, x, x, _imopVarPre266, u2.f, y0.f, is, k, exit, d, k, fftblock, logd, y0.f, xout, logd, y1.f, printf, u.f, cffts2, dims.f, logd, _imopVarPre267, u1.f]
WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
    /*READ_S: []
    WRITE_S: []*/
    dcomplex y0[64][18];
    /*READ_S: []
    WRITE_S: []*/
    dcomplex y1[64][18];
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [j, logd.f, ilog2, cfftz, y1.f, d, fftz2, xout, is, y1.f, is, d, xout, logd.f, u0.f, fftblockpad, y0.f, cffts1, x, u, cffts3, dims, logd.f, x, x, _imopVarPre266, u2.f, y0.f, is, k, exit, d, k, fftblock, logd, y0.f, xout, logd, y1.f, printf, u.f, cffts2, dims.f, logd, _imopVarPre267, u1.f]
    WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
    if (dir == 1) {
    /*READ_S: [j, logd.f, ilog2, cfftz, y1.f, d, fftz2, xout, is, y1.f, is, d, xout, logd.f, u0.f, fftblockpad, y0.f, x, cffts1, u, cffts3, dims, logd.f, x, x, _imopVarPre266, u2.f, y0.f, is, k, exit, d, k, fftblock, logd, y0.f, xout, logd, y1.f, printf, u.f, cffts2, dims.f, logd, _imopVarPre267, u1.f]
    WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int ( *_imopVarPre225 );
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        _imopVarPre225 = dims[0];
        /*READ_S: [cffts1]
        WRITE_S: []*/
        cffts1(1, _imopVarPre225, x1, x1, y0, y1);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int ( *_imopVarPre227 );
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        _imopVarPre227 = dims[1];
        /*READ_S: [cffts2]
        WRITE_S: []*/
        cffts2(1, _imopVarPre227, x1, x1, y0, y1);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int ( *_imopVarPre229 );
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        _imopVarPre229 = dims[2];
        /*READ_S: [cffts3]
        WRITE_S: []*/
        cffts3(1, _imopVarPre229, x1, x2, y0, y1);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [j, logd.f, ilog2, cfftz, y1.f, d, fftz2, xout, is, y1.f, is, d, xout, logd.f, u0.f, fftblockpad, y0.f, cffts1, x, u, cffts3, dims, logd.f, x, x, _imopVarPre266, u2.f, y0.f, is, k, exit, d, k, fftblock, logd, y0.f, xout, logd, y1.f, printf, u.f, cffts2, dims.f, logd, _imopVarPre267, u1.f]
    WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int ( *_imopVarPre232 );
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre233;
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        _imopVarPre232 = dims[2];
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre233 = -1;
        /*READ_S: [cffts3]
        WRITE_S: []*/
        cffts3(_imopVarPre233, _imopVarPre232, x1, x1, y0, y1);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int ( *_imopVarPre236 );
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre237;
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        _imopVarPre236 = dims[1];
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre237 = -1;
        /*READ_S: [cffts2]
        WRITE_S: []*/
        cffts2(_imopVarPre237, _imopVarPre236, x1, x1, y0, y1);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int ( *_imopVarPre240 );
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre241;
        /*READ_S: [dims, dims.f]
        WRITE_S: []*/
        _imopVarPre240 = dims[0];
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre241 = -1;
        /*READ_S: [cffts1]
        WRITE_S: []*/
        cffts1(_imopVarPre241, _imopVarPre240, x1, x2, y0, y1);
        /*READ_S: []
        WRITE_S: []*/
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
/*READ_S: [ilog2, cfftz, y1.f, d, fftz2, xout, is, y1.f, y0.f, fftblockpad, u, logd.f, x, _imopVarPre266, y0.f, exit, k, fftblock, y0.f, y1.f, printf, u.f, dims.f, logd, _imopVarPre267, u1.f]
WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
static void cffts1(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
/*READ_S: [ilog2, cfftz, y1.f, d, fftz2, xout, is, y1.f, y0.f, fftblockpad, u, logd.f, x, _imopVarPre266, y0.f, exit, k, fftblock, y0.f, y1.f, printf, u.f, dims.f, logd, _imopVarPre267, u1.f]
WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int logd[3];
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
    int jj;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ilog2, dims.f]
    WRITE_S: []*/
    for (i = 0; i < 3; i++) {
    /*READ_S: [ilog2, dims.f]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre243;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre244;
        /*READ_S: [dims.f]
        WRITE_S: []*/
        _imopVarPre243 = d[i];
        /*READ_S: [ilog2]
        WRITE_S: []*/
        _imopVarPre244 = ilog2(_imopVarPre243);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        logd[i] = _imopVarPre244;
    }
    /*READ_S: [cfftz, y1.f, d, fftz2, xout, is, y1.f, y0.f, fftblockpad, u, logd.f, x, _imopVarPre266, y0.f, exit, k, fftblock, y0.f, y1.f, printf, u.f, dims.f, logd, _imopVarPre267, u1.f]
    WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
#pragma omp parallel default(shared) private(i, j, k, jj) shared(is)
    {
    /*READ_S: [cfftz, y1.f, d, fftz2, xout, is, y1.f, y0.f, fftblockpad, u, logd.f, x, _imopVarPre266, y0.f, exit, k, fftblock, y0.f, y1.f, printf, u.f, dims.f, logd, _imopVarPre267, u1.f]
    WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
        /*READ_S: []
        WRITE_S: []*/
        dcomplex y0[64][18];
        /*READ_S: []
        WRITE_S: []*/
        dcomplex y1[64][18];
        /*READ_S: [cfftz, y1.f, d, fftz2, xout, is, y1.f, y0.f, fftblockpad, u, logd.f, x, _imopVarPre266, y0.f, exit, k, fftblock, y0.f, y1.f, printf, u.f, dims.f, logd, _imopVarPre267, u1.f]
        WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
#pragma omp for nowait
        /*READ_S: [k]
        WRITE_S: []*/
        /*READ_S: [d, dims.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (k = 0; k < d[2]; k++) {
        /*READ_S: [y0.f, cfftz, y1.f, d, exit, fftz2, xout, fftblock, y0.f, is, y1.f, y1.f, printf, y0.f, u.f, fftblockpad, u, logd.f, dims.f, logd, x, _imopVarPre267, _imopVarPre266, u1.f]
        WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [d, dims.f, fftblock]
            WRITE_S: []*/
            /*READ_S: [fftblock]
            WRITE_S: []*/
            /*READ_S: [y0.f, cfftz, y1.f, d, exit, fftz2, xout, fftblock, y0.f, is, y1.f, y1.f, printf, y0.f, u.f, fftblockpad, u, logd.f, dims.f, logd, x, _imopVarPre267, _imopVarPre266, u1.f]
            WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
            for (jj = 0; jj <= d[1] - fftblock; jj += fftblock) {
            /*READ_S: [y0.f, cfftz, y1.f, d, exit, fftz2, xout, fftblock, y0.f, is, y1.f, y1.f, printf, y0.f, u.f, fftblockpad, u, logd.f, dims.f, logd, x, _imopVarPre267, _imopVarPre266, u1.f]
            WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [fftblock]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [d, x, dims.f, fftblock, u1.f]
                WRITE_S: []*/
                for (j = 0; j < fftblock; j++) {
                /*READ_S: [d, x, dims.f, u1.f]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [d, dims.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [d, x, dims.f, u1.f]
                    WRITE_S: []*/
                    for (i = 0; i < d[0]; i++) {
                    /*READ_S: [x, u1.f]
                    WRITE_S: []*/
                        /*READ_S: [x, u1.f]
                        WRITE_S: []*/
                        y0[i][j].real = x[k][j + jj][i].real;
                        /*READ_S: [x, u1.f]
                        WRITE_S: []*/
                        y0[i][j].imag = x[k][j + jj][i].imag;
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre247;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre248;
                /*READ_S: [d, dims.f]
                WRITE_S: []*/
                _imopVarPre247 = d[0];
                /*READ_S: [logd.f, logd]
                WRITE_S: []*/
                _imopVarPre248 = logd[0];
                /*READ_S: [cfftz, is]
                WRITE_S: []*/
                cfftz(is, _imopVarPre248, _imopVarPre247, y0, y1);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [fftblock]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [d, xout, dims.f, fftblock, u1.f]
                WRITE_S: [u1.f]*/
                for (j = 0; j < fftblock; j++) {
                /*READ_S: [d, xout, dims.f, u1.f]
                WRITE_S: [u1.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [d, dims.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [d, xout, dims.f, u1.f]
                    WRITE_S: [u1.f]*/
                    for (i = 0; i < d[0]; i++) {
                    /*READ_S: [xout, u1.f]
                    WRITE_S: [u1.f]*/
                        /*READ_S: [xout, u1.f]
                        WRITE_S: [u1.f]*/
                        xout[k][j + jj][i].real = y0[i][j].real;
                        /*READ_S: [xout, u1.f]
                        WRITE_S: [u1.f]*/
                        xout[k][j + jj][i].imag = y0[i][j].imag;
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
/*READ_S: [logd.f, cfftz, ilog2, y1.f, fftz2, y1.f, is, d, xout, y0.f, fftblockpad, u, x, _imopVarPre266, y0.f, k, exit, fftblock, logd, y0.f, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
static void cffts2(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
/*READ_S: [logd.f, cfftz, ilog2, y1.f, fftz2, y1.f, is, d, xout, y0.f, fftblockpad, u, x, _imopVarPre266, y0.f, k, exit, fftblock, logd, y0.f, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int logd[3];
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
    int ii;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ilog2, dims.f]
    WRITE_S: []*/
    for (i = 0; i < 3; i++) {
    /*READ_S: [ilog2, dims.f]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre250;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre251;
        /*READ_S: [dims.f]
        WRITE_S: []*/
        _imopVarPre250 = d[i];
        /*READ_S: [ilog2]
        WRITE_S: []*/
        _imopVarPre251 = ilog2(_imopVarPre250);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        logd[i] = _imopVarPre251;
    }
    /*READ_S: [logd.f, cfftz, y1.f, fftz2, y1.f, is, d, xout, y0.f, fftblockpad, u, x, _imopVarPre266, y0.f, k, exit, fftblock, logd, y0.f, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
    WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
#pragma omp parallel default(shared) private(i, j, k, ii) shared(is)
    {
    /*READ_S: [logd.f, cfftz, y1.f, fftz2, y1.f, is, d, xout, y0.f, fftblockpad, u, x, _imopVarPre266, y0.f, k, exit, fftblock, logd, y0.f, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
    WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
        /*READ_S: []
        WRITE_S: []*/
        dcomplex y0[64][18];
        /*READ_S: []
        WRITE_S: []*/
        dcomplex y1[64][18];
        /*READ_S: [logd.f, cfftz, y1.f, fftz2, y1.f, is, d, xout, y0.f, fftblockpad, u, x, _imopVarPre266, y0.f, k, exit, fftblock, logd, y0.f, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
        WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
#pragma omp for nowait
        /*READ_S: [k]
        WRITE_S: []*/
        /*READ_S: [dims.f, d]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (k = 0; k < d[2]; k++) {
        /*READ_S: [y0.f, logd.f, cfftz, y1.f, exit, fftz2, fftblock, logd, y0.f, y1.f, is, d, xout, y1.f, printf, y0.f, u.f, fftblockpad, u, dims.f, x, _imopVarPre267, _imopVarPre266, u1.f]
        WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dims.f, fftblock, d]
            WRITE_S: []*/
            /*READ_S: [fftblock]
            WRITE_S: []*/
            /*READ_S: [y0.f, logd.f, cfftz, y1.f, exit, fftz2, fftblock, logd, y0.f, y1.f, is, d, xout, y1.f, printf, y0.f, u.f, fftblockpad, u, dims.f, x, _imopVarPre267, _imopVarPre266, u1.f]
            WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
            for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
            /*READ_S: [y0.f, logd.f, cfftz, y1.f, exit, fftz2, fftblock, logd, y0.f, y1.f, is, d, xout, y1.f, printf, y0.f, u.f, fftblockpad, u, dims.f, x, _imopVarPre267, _imopVarPre266, u1.f]
            WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u1.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dims.f, d]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [fftblock, dims.f, x, d, u1.f]
                WRITE_S: []*/
                for (j = 0; j < d[1]; j++) {
                /*READ_S: [fftblock, x, u1.f]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [fftblock]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [fftblock, x, u1.f]
                    WRITE_S: []*/
                    for (i = 0; i < fftblock; i++) {
                    /*READ_S: [x, u1.f]
                    WRITE_S: []*/
                        /*READ_S: [x, u1.f]
                        WRITE_S: []*/
                        y0[j][i].real = x[k][j][i + ii].real;
                        /*READ_S: [x, u1.f]
                        WRITE_S: []*/
                        y0[j][i].imag = x[k][j][i + ii].imag;
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre254;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre255;
                /*READ_S: [dims.f, d]
                WRITE_S: []*/
                _imopVarPre254 = d[1];
                /*READ_S: [logd.f, logd]
                WRITE_S: []*/
                _imopVarPre255 = logd[1];
                /*READ_S: [cfftz, is]
                WRITE_S: []*/
                cfftz(is, _imopVarPre255, _imopVarPre254, y0, y1);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dims.f, d]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dims.f, fftblock, d, xout, u1.f]
                WRITE_S: [u1.f]*/
                for (j = 0; j < d[1]; j++) {
                /*READ_S: [fftblock, xout, u1.f]
                WRITE_S: [u1.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [fftblock]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [fftblock, xout, u1.f]
                    WRITE_S: [u1.f]*/
                    for (i = 0; i < fftblock; i++) {
                    /*READ_S: [xout, u1.f]
                    WRITE_S: [u1.f]*/
                        /*READ_S: [xout, u1.f]
                        WRITE_S: [u1.f]*/
                        xout[k][j][i + ii].real = y0[j][i].real;
                        /*READ_S: [xout, u1.f]
                        WRITE_S: [u1.f]*/
                        xout[k][j][i + ii].imag = y0[j][i].imag;
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
/*READ_S: [j, cfftz, ilog2, y1.f, fftz2, y1.f, logd.f, u0.f, y0.f, fftblockpad, x, u, _imopVarPre266, u2.f, y0.f, is, exit, d, fftblock, y0.f, xout, logd, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
static void cffts3(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
/*READ_S: [j, cfftz, ilog2, y1.f, fftz2, y1.f, logd.f, u0.f, y0.f, fftblockpad, x, u, _imopVarPre266, u2.f, y0.f, is, exit, d, fftblock, y0.f, xout, logd, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int logd[3];
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
    int ii;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ilog2, dims.f]
    WRITE_S: []*/
    for (i = 0; i < 3; i++) {
    /*READ_S: [ilog2, dims.f]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre257;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre258;
        /*READ_S: [dims.f]
        WRITE_S: []*/
        _imopVarPre257 = d[i];
        /*READ_S: [ilog2]
        WRITE_S: []*/
        _imopVarPre258 = ilog2(_imopVarPre257);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        logd[i] = _imopVarPre258;
    }
    /*READ_S: [j, cfftz, y1.f, fftz2, y1.f, logd.f, u0.f, y0.f, fftblockpad, x, u, _imopVarPre266, u2.f, y0.f, is, exit, d, fftblock, y0.f, xout, logd, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
    WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
#pragma omp parallel default(shared) private(i, j, k, ii) shared(is)
    {
    /*READ_S: [j, cfftz, y1.f, fftz2, y1.f, logd.f, u0.f, y0.f, fftblockpad, x, u, _imopVarPre266, u2.f, y0.f, is, exit, d, fftblock, y0.f, xout, logd, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
    WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
        /*READ_S: []
        WRITE_S: []*/
        dcomplex y0[64][18];
        /*READ_S: []
        WRITE_S: []*/
        dcomplex y1[64][18];
        /*READ_S: [j, cfftz, y1.f, fftz2, y1.f, logd.f, u0.f, y0.f, fftblockpad, x, u, _imopVarPre266, u2.f, y0.f, is, exit, d, fftblock, y0.f, xout, logd, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
        WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [d, dims.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < d[1]; j++) {
        /*READ_S: [cfftz, y1.f, fftz2, y1.f, logd.f, u0.f, y0.f, fftblockpad, x, u, _imopVarPre266, u2.f, y0.f, is, exit, d, fftblock, y0.f, xout, logd, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
        WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [d, dims.f, fftblock]
            WRITE_S: []*/
            /*READ_S: [fftblock]
            WRITE_S: []*/
            /*READ_S: [cfftz, y1.f, fftz2, y1.f, logd.f, u0.f, y0.f, fftblockpad, x, u, _imopVarPre266, u2.f, y0.f, is, exit, d, fftblock, y0.f, xout, logd, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
            WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
            for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
            /*READ_S: [cfftz, y1.f, fftz2, y1.f, logd.f, u0.f, y0.f, fftblockpad, x, u, _imopVarPre266, u2.f, y0.f, is, exit, d, fftblock, y0.f, xout, logd, y1.f, printf, u.f, dims.f, _imopVarPre267, u1.f]
            WRITE_S: [y0.f, u0.f, y1.f, y0.f, y1.f, y0.f, y1.f, u2.f, u1.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [d, dims.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [x, d, fftblock, dims.f, u1.f]
                WRITE_S: []*/
                for (k = 0; k < d[2]; k++) {
                /*READ_S: [x, fftblock, u1.f]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [fftblock]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [x, fftblock, u1.f]
                    WRITE_S: []*/
                    for (i = 0; i < fftblock; i++) {
                    /*READ_S: [x, u1.f]
                    WRITE_S: []*/
                        /*READ_S: [x, u1.f]
                        WRITE_S: []*/
                        y0[k][i].real = x[k][j][i + ii].real;
                        /*READ_S: [x, u1.f]
                        WRITE_S: []*/
                        y0[k][i].imag = x[k][j][i + ii].imag;
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre261;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre262;
                /*READ_S: [d, dims.f]
                WRITE_S: []*/
                _imopVarPre261 = d[2];
                /*READ_S: [logd, logd.f]
                WRITE_S: []*/
                _imopVarPre262 = logd[2];
                /*READ_S: [cfftz, is]
                WRITE_S: []*/
                cfftz(is, _imopVarPre262, _imopVarPre261, y0, y1);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [d, dims.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u0.f, d, fftblock, dims.f, xout, u2.f, u1.f]
                WRITE_S: [u0.f, u2.f, u1.f]*/
                for (k = 0; k < d[2]; k++) {
                /*READ_S: [u0.f, fftblock, xout, u2.f, u1.f]
                WRITE_S: [u0.f, u2.f, u1.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [fftblock]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [u0.f, fftblock, xout, u2.f, u1.f]
                    WRITE_S: [u0.f, u2.f, u1.f]*/
                    for (i = 0; i < fftblock; i++) {
                    /*READ_S: [u0.f, xout, u2.f, u1.f]
                    WRITE_S: [u0.f, u2.f, u1.f]*/
                        /*READ_S: [u0.f, xout, u2.f, u1.f]
                        WRITE_S: [u0.f, u2.f, u1.f]*/
                        xout[k][j][i + ii].real = y0[k][i].real;
                        /*READ_S: [u0.f, xout, u2.f, u1.f]
                        WRITE_S: [u0.f, u2.f, u1.f]*/
                        xout[k][j][i + ii].imag = y0[k][i].imag;
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
/*READ_S: [u.f, ilog2, u, cos, sin]
WRITE_S: [u.f]*/
static void fft_init(int n) {
/*READ_S: [u.f, ilog2, u, cos, sin]
WRITE_S: [u.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int nu;
    /*READ_S: []
    WRITE_S: []*/
    int ku;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int ln;
    /*READ_S: []
    WRITE_S: []*/
    double t;
    /*READ_S: []
    WRITE_S: []*/
    double ti;
    /*READ_S: []
    WRITE_S: []*/
    nu = n;
    /*READ_S: [ilog2]
    WRITE_S: []*/
    m = ilog2(n);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [u.f, u]
    WRITE_S: [u.f]*/
    u[0].real = (double) m;
    /*READ_S: [u.f, u]
    WRITE_S: [u.f]*/
    u[0].imag = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    ku = 1;
    /*READ_S: []
    WRITE_S: []*/
    ln = 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [u.f, u, cos, sin]
    WRITE_S: [u.f]*/
    for (j = 1; j <= m; j++) {
    /*READ_S: [u.f, u, cos, sin]
    WRITE_S: [u.f]*/
        /*READ_S: []
        WRITE_S: []*/
        t = 3.141592653589793238 / ln;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u.f, u, cos, sin]
        WRITE_S: [u.f]*/
        for (i = 0; i <= ln - 1; i++) {
        /*READ_S: [u.f, u, cos, sin]
        WRITE_S: [u.f]*/
            /*READ_S: []
            WRITE_S: []*/
            ti = i * t;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre263;
            /*READ_S: [cos]
            WRITE_S: []*/
            _imopVarPre263 = cos(ti);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
            u[i + ku].real = _imopVarPre263;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre264;
            /*READ_S: [sin]
            WRITE_S: []*/
            _imopVarPre264 = sin(ti);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
            u[i + ku].imag = _imopVarPre264;
        }
        /*READ_S: []
        WRITE_S: []*/
        ku = ku + ln;
        /*READ_S: []
        WRITE_S: []*/
        ln = 2 * ln;
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
/*READ_S: [y0.f, y1.f, exit, fftz2, fftblock, y0.f, y1.f, y1.f, printf, y0.f, u.f, fftblockpad, u, _imopVarPre267, _imopVarPre266]
WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
static void cfftz(int is, int m , int n , dcomplex x[64][18] , dcomplex y[64][18]) {
/*READ_S: [y0.f, y1.f, exit, fftz2, fftblock, y0.f, y1.f, y1.f, printf, y0.f, u.f, fftblockpad, u, _imopVarPre267, _imopVarPre266]
WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int l;
    /*READ_S: []
    WRITE_S: []*/
    int mx;
    /*READ_S: [u.f, u]
    WRITE_S: []*/
    mx = (int) (u[0].real);
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre266;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre267;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre268;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre266 = is != 1;
    /*READ_S: [_imopVarPre266]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre266]
    WRITE_S: []*/
    if (_imopVarPre266) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre266 = is != -1;
    }
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre267 = _imopVarPre266;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (!_imopVarPre267) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre268 = m < 1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (!_imopVarPre268) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre268 = m > mx;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre267 = _imopVarPre268;
    }
    /*READ_S: [_imopVarPre267]
    WRITE_S: []*/
    /*READ_S: [printf, exit, _imopVarPre267]
    WRITE_S: []*/
    if (_imopVarPre267) {
    /*READ_S: [printf, exit]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("CFFTZ: Either U has not been initialized, or else\n" "one of the input parameters is invalid%5d%5d%5d\n", is, m, mx);
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
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [y0.f, y1.f, y0.f, u.f, fftblockpad, y1.f, u, fftz2, fftblock, y0.f, y1.f]
    WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
    for (l = 1; l <= m; l += 2) {
    /*READ_S: [y0.f, y1.f, y0.f, u.f, fftblockpad, y1.f, u, fftz2, fftblock, y0.f, y1.f]
    WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
        /*READ_S: [fftblockpad, u, fftz2, fftblock]
        WRITE_S: []*/
        fftz2(is, l, m, n, fftblock, fftblockpad, u, x, y);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (l == m) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            break;
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre270;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre270 = l + 1;
        /*READ_S: [fftblockpad, u, fftz2, fftblock]
        WRITE_S: []*/
        fftz2(is, _imopVarPre270, m, n, fftblock, fftblockpad, u, y, x);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [y0.f, y1.f, y0.f, y1.f, fftblock, y0.f, y1.f]
    WRITE_S: [y0.f, y0.f, y0.f]*/
    if (m % 2 == 1) {
    /*READ_S: [y0.f, y1.f, y0.f, y1.f, fftblock, y0.f, y1.f]
    WRITE_S: [y0.f, y0.f, y0.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [y0.f, y1.f, y0.f, y1.f, fftblock, y0.f, y1.f]
        WRITE_S: [y0.f, y0.f, y0.f]*/
        for (j = 0; j < n; j++) {
        /*READ_S: [y0.f, y1.f, y0.f, y1.f, fftblock, y0.f, y1.f]
        WRITE_S: [y0.f, y0.f, y0.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [fftblock]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [y0.f, y1.f, y0.f, y1.f, fftblock, y0.f, y1.f]
            WRITE_S: [y0.f, y0.f, y0.f]*/
            for (i = 0; i < fftblock; i++) {
            /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
            WRITE_S: [y0.f, y0.f, y0.f]*/
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: [y0.f, y0.f, y0.f]*/
                x[j][i].real = y[j][i].real;
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: [y0.f, y0.f, y0.f]*/
                x[j][i].imag = y[j][i].imag;
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
/*READ_S: [y0.f, y1.f, y0.f, u.f, y1.f, y0.f, y1.f]
WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
static void fftz2(int is, int l , int m , int n , int ny , int ny1 , dcomplex u[64] , dcomplex x[64][18] , dcomplex y[64][18]) {
/*READ_S: [y0.f, y1.f, y0.f, u.f, y1.f, y0.f, y1.f]
WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int n1;
    /*READ_S: []
    WRITE_S: []*/
    int li;
    /*READ_S: []
    WRITE_S: []*/
    int lj;
    /*READ_S: []
    WRITE_S: []*/
    int lk;
    /*READ_S: []
    WRITE_S: []*/
    int ku;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int i11;
    /*READ_S: []
    WRITE_S: []*/
    int i12;
    /*READ_S: []
    WRITE_S: []*/
    int i21;
    /*READ_S: []
    WRITE_S: []*/
    int i22;
    /*READ_S: []
    WRITE_S: []*/
    dcomplex u1;
    /*READ_S: []
    WRITE_S: []*/
    n1 = n / 2;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (l - 1 == 0) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        lk = 1;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        lk = 2 << ((l - 1) - 1);
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (m - l == 0) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        li = 1;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        li = 2 << ((m - l) - 1);
    }
    /*READ_S: []
    WRITE_S: []*/
    lj = 2 * lk;
    /*READ_S: []
    WRITE_S: []*/
    ku = li;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [y0.f, y1.f, y0.f, u.f, y1.f, y0.f, y1.f]
    WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
    for (i = 0; i < li; i++) {
    /*READ_S: [y0.f, y1.f, y0.f, u.f, y1.f, y0.f, y1.f]
    WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
        /*READ_S: []
        WRITE_S: []*/
        i11 = i * lk;
        /*READ_S: []
        WRITE_S: []*/
        i12 = i11 + n1;
        /*READ_S: []
        WRITE_S: []*/
        i21 = i * lj;
        /*READ_S: []
        WRITE_S: []*/
        i22 = i21 + lk;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u.f]
        WRITE_S: []*/
        if (is >= 1) {
        /*READ_S: [u.f]
        WRITE_S: []*/
            /*READ_S: [u.f]
            WRITE_S: []*/
            u1.real = u[ku + i].real;
            /*READ_S: [u.f]
            WRITE_S: []*/
            u1.imag = u[ku + i].imag;
        } else {
        /*READ_S: [u.f]
        WRITE_S: []*/
            /*READ_S: [u.f]
            WRITE_S: []*/
            u1.real = u[ku + i].real;
            /*READ_S: [u.f]
            WRITE_S: []*/
            u1.imag = -u[ku + i].imag;
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
        WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
        for (k = 0; k < lk; k++) {
        /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
        WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
            WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
            for (j = 0; j < ny; j++) {
            /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
            WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
                /*READ_S: []
                WRITE_S: []*/
                double x11real;
                /*READ_S: []
                WRITE_S: []*/
                double x11imag;
                /*READ_S: []
                WRITE_S: []*/
                double x21real;
                /*READ_S: []
                WRITE_S: []*/
                double x21imag;
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: []*/
                x11real = x[i11 + k][j].real;
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: []*/
                x11imag = x[i11 + k][j].imag;
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: []*/
                x21real = x[i12 + k][j].real;
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: []*/
                x21imag = x[i12 + k][j].imag;
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
                y[i21 + k][j].real = x11real + x21real;
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
                y[i21 + k][j].imag = x11imag + x21imag;
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
                y[i22 + k][j].real = u1.real * (x11real - x21real) - u1.imag * (x11imag - x21imag);
                /*READ_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]
                WRITE_S: [y0.f, y1.f, y0.f, y1.f, y0.f, y1.f]*/
                y[i22 + k][j].imag = u1.real * (x11imag - x21imag) + u1.imag * (x11real - x21real);
            }
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
static int ilog2(int n) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int nn;
    /*READ_S: []
    WRITE_S: []*/
    int lg;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (n == 1) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        return 0;
    }
    /*READ_S: []
    WRITE_S: []*/
    lg = 1;
    /*READ_S: []
    WRITE_S: []*/
    nn = 2;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    while (nn < n) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        nn = nn << 1;
        /*READ_S: []
        WRITE_S: []*/
        lg++;
    }
    /*READ_S: []
    WRITE_S: []*/
    return lg;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [zend, zend.f, _imopVarPre272, xend, ystart.f, xend.f, ystart, zstart.f, sums, sums.f, i, zstart, _imopVarPre274, _imopVarPre276, printf, yend.f, yend, xstart, u1, u2.f, j, xstart.f]
WRITE_S: [sums.f]*/
static void checksum(int i, dcomplex u1[64][64][64] , int d[3]) {
/*READ_S: [zend, zend.f, _imopVarPre272, xend, ystart.f, xend.f, ystart, zstart.f, sums, sums.f, i, zstart, _imopVarPre274, _imopVarPre276, printf, yend.f, yend, xstart, u1, u2.f, j, xstart.f]
WRITE_S: [sums.f]*/
    /*READ_S: [zend, zend.f, _imopVarPre272, xend, ystart.f, xend.f, ystart, zstart.f, sums, sums.f, i, zstart, _imopVarPre274, _imopVarPre276, printf, yend.f, yend, xstart, u1, u2.f, j, xstart.f]
    WRITE_S: [sums.f]*/
#pragma omp parallel default(shared)
    {
    /*READ_S: [zend, zend.f, _imopVarPre272, xend, ystart.f, xend.f, ystart, zstart.f, sums, sums.f, i, zstart, _imopVarPre274, _imopVarPre276, printf, yend.f, yend, xstart, u1, u2.f, j, xstart.f]
    WRITE_S: [sums.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int j;
        /*READ_S: []
        WRITE_S: []*/
        int q;
        /*READ_S: []
        WRITE_S: []*/
        int r;
        /*READ_S: []
        WRITE_S: []*/
        int s;
        /*READ_S: []
        WRITE_S: []*/
        dcomplex chk;
        /*READ_S: []
        WRITE_S: []*/
        chk.real = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        chk.imag = 0.0;
        /*READ_S: [zend, zend.f, _imopVarPre272, xend, ystart.f, xend.f, ystart, zstart.f, zstart, _imopVarPre274, _imopVarPre276, yend.f, yend, xstart, u1, u2.f, j, xstart.f]
        WRITE_S: []*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j <= 1024; j++) {
        /*READ_S: [zend, zend.f, _imopVarPre272, xend, ystart.f, xend.f, ystart, zstart.f, zstart, _imopVarPre274, _imopVarPre276, yend.f, yend, xstart, u1, u2.f, xstart.f]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            q = j % 64 + 1;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre272;
            /*READ_S: [xstart, xstart.f]
            WRITE_S: []*/
            _imopVarPre272 = q >= xstart[0];
            /*READ_S: [_imopVarPre272]
            WRITE_S: []*/
            /*READ_S: [xend, _imopVarPre272, xend.f]
            WRITE_S: []*/
            if (_imopVarPre272) {
            /*READ_S: [xend, xend.f]
            WRITE_S: []*/
                /*READ_S: [xend, xend.f]
                WRITE_S: []*/
                _imopVarPre272 = q <= xend[0];
            }
            /*READ_S: [_imopVarPre272]
            WRITE_S: []*/
            /*READ_S: [zend, zend.f, _imopVarPre272, ystart.f, ystart, zstart.f, zstart, _imopVarPre274, _imopVarPre276, yend.f, yend, xstart, u1, u2.f, xstart.f]
            WRITE_S: []*/
            if (_imopVarPre272) {
            /*READ_S: [zend, zend.f, ystart.f, ystart, zstart.f, zstart, _imopVarPre274, _imopVarPre276, yend.f, yend, xstart, u1, u2.f, xstart.f]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                r = (3 * j) % 64 + 1;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre274;
                /*READ_S: [ystart.f, ystart]
                WRITE_S: []*/
                _imopVarPre274 = r >= ystart[0];
                /*READ_S: [_imopVarPre274]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre274, yend.f, yend]
                WRITE_S: []*/
                if (_imopVarPre274) {
                /*READ_S: [yend.f, yend]
                WRITE_S: []*/
                    /*READ_S: [yend.f, yend]
                    WRITE_S: []*/
                    _imopVarPre274 = r <= yend[0];
                }
                /*READ_S: [_imopVarPre274]
                WRITE_S: []*/
                /*READ_S: [zend, _imopVarPre274, _imopVarPre276, zend.f, ystart.f, ystart, zstart.f, xstart, zstart, u1, u2.f, xstart.f]
                WRITE_S: []*/
                if (_imopVarPre274) {
                /*READ_S: [zend, _imopVarPre276, zend.f, ystart.f, ystart, zstart.f, xstart, zstart, u1, u2.f, xstart.f]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    s = (5 * j) % 64 + 1;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre276;
                    /*READ_S: [zstart.f, zstart]
                    WRITE_S: []*/
                    _imopVarPre276 = s >= zstart[0];
                    /*READ_S: [_imopVarPre276]
                    WRITE_S: []*/
                    /*READ_S: [zend, _imopVarPre276, zend.f]
                    WRITE_S: []*/
                    if (_imopVarPre276) {
                    /*READ_S: [zend, zend.f]
                    WRITE_S: []*/
                        /*READ_S: [zend, zend.f]
                        WRITE_S: []*/
                        _imopVarPre276 = s <= zend[0];
                    }
                    /*READ_S: [_imopVarPre276]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre276, ystart.f, ystart, zstart.f, xstart, zstart, u1, u2.f, xstart.f]
                    WRITE_S: []*/
                    if (_imopVarPre276) {
                    /*READ_S: [ystart.f, ystart, zstart.f, xstart, zstart, u1, u2.f, xstart.f]
                    WRITE_S: []*/
                        /*READ_S: [ystart.f, ystart, zstart.f, xstart, zstart, u1, u2.f, xstart.f]
                        WRITE_S: []*/
                        chk.real = chk.real + u1[s - zstart[0]][r - ystart[0]][q - xstart[0]].real;
                        /*READ_S: [ystart.f, ystart, zstart.f, xstart, zstart, u1, u2.f, xstart.f]
                        WRITE_S: []*/
                        (chk.imag = chk.imag + u1[s - zstart[0]][r - ystart[0]][q - xstart[0]].imag);
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush CRITICAL_START
        /*READ_S: [sums, sums.f, i]
        WRITE_S: [sums.f]*/
#pragma omp critical
        {
        /*READ_S: [sums, sums.f, i]
        WRITE_S: [sums.f]*/
            /*READ_S: [sums, sums.f, i]
            WRITE_S: [sums.f]*/
            sums[i].real += chk.real;
            /*READ_S: [sums, sums.f, i]
            WRITE_S: [sums.f]*/
            sums[i].imag += chk.imag;
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
        /*READ_S: [printf, sums, sums.f, i]
        WRITE_S: [sums.f]*/
#pragma omp single nowait
        {
        /*READ_S: [printf, sums, sums.f, i]
        WRITE_S: [sums.f]*/
            /*READ_S: [sums, sums.f, i]
            WRITE_S: [sums.f]*/
            sums[i].real = sums[i].real / (double) 262144;
            /*READ_S: [sums, sums.f, i]
            WRITE_S: [sums.f]*/
            sums[i].imag = sums[i].imag / (double) 262144;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre279;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre280;
            /*READ_S: [sums, sums.f, i]
            WRITE_S: []*/
            _imopVarPre279 = sums[i].imag;
            /*READ_S: [sums, sums.f, i]
            WRITE_S: []*/
            _imopVarPre280 = sums[i].real;
            /*READ_S: [printf, i]
            WRITE_S: []*/
            printf("T = %5d     Checksum = %22.12e %22.12e\n", i, _imopVarPre280, _imopVarPre279);
            /*READ_S: []
            WRITE_S: []*/
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
/*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, _imopVarPre284, _imopVarPre285, _imopVarPre296, _imopVarPre295, _imopVarPre294, _imopVarPre286, sums, sums.f, _imopVarPre316, _imopVarPre315, _imopVarPre314, fabs, printf, _imopVarPre304, _imopVarPre306, _imopVarPre305]
WRITE_S: []*/
static void verify(int d1, int d2 , int d3 , int nt , boolean *verified , char *class) {
/*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, _imopVarPre284, _imopVarPre285, _imopVarPre296, _imopVarPre295, _imopVarPre294, _imopVarPre286, sums, sums.f, _imopVarPre316, _imopVarPre315, _imopVarPre314, fabs, printf, _imopVarPre304, _imopVarPre306, _imopVarPre305]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    double err;
    /*READ_S: []
    WRITE_S: []*/
    double epsilon;
    /*READ_S: []
    WRITE_S: []*/
    double vdata_real_s[6 + 1] = {0.0, 5.546087004964e+02 , 5.546385409189e+02 , 5.546148406171e+02 , 5.545423607415e+02 , 5.544255039624e+02 , 5.542683411902e+02};
    /*READ_S: []
    WRITE_S: []*/
    double vdata_imag_s[6 + 1] = {0.0, 4.845363331978e+02 , 4.865304269511e+02 , 4.883910722336e+02 , 4.901273169046e+02 , 4.917475857993e+02 , 4.932597244941e+02};
    /*READ_S: []
    WRITE_S: []*/
    double vdata_real_w[6 + 1] = {0.0, 5.673612178944e+02 , 5.631436885271e+02 , 5.594024089970e+02 , 5.560698047020e+02 , 5.530898991250e+02 , 5.504159734538e+02};
    /*READ_S: []
    WRITE_S: []*/
    double vdata_imag_w[6 + 1] = {0.0, 5.293246849175e+02 , 5.282149986629e+02 , 5.270996558037e+02 , 5.260027904925e+02 , 5.249400845633e+02 , 5.239212247086e+02};
    /*READ_S: []
    WRITE_S: []*/
    double vdata_real_a[6 + 1] = {0.0, 5.046735008193e+02 , 5.059412319734e+02 , 5.069376896287e+02 , 5.077892868474e+02 , 5.085233095391e+02 , 5.091487099959e+02};
    /*READ_S: []
    WRITE_S: []*/
    double vdata_imag_a[6 + 1] = {0.0, 5.114047905510e+02 , 5.098809666433e+02 , 5.098144042213e+02 , 5.101336130759e+02 , 5.104914655194e+02 , 5.107917842803e+02};
    /*READ_S: []
    WRITE_S: []*/
    double vdata_real_b[20 + 1] = {0.0, 5.177643571579e+02 , 5.154521291263e+02 , 5.146409228649e+02 , 5.142378756213e+02 , 5.139626667737e+02 , 5.137423460082e+02 , 5.135547056878e+02 , 5.133910925466e+02 , 5.132470705390e+02 , 5.131197729984e+02 , 5.130070319283e+02 , 5.129070537032e+02 , 5.128182883502e+02 , 5.127393733383e+02 , 5.126691062020e+02 , 5.126064276004e+02 , 5.125504076570e+02 , 5.125002331720e+02 , 5.124551951846e+02 , 5.124146770029e+02};
    /*READ_S: []
    WRITE_S: []*/
    double vdata_imag_b[20 + 1] = {0.0, 5.077803458597e+02 , 5.088249431599e+02 , 5.096208912659e+02 , 5.101023387619e+02 , 5.103976610617e+02 , 5.105948019802e+02 , 5.107404165783e+02 , 5.108576573661e+02 , 5.109577278523e+02 , 5.110460304483e+02 , 5.111252433800e+02 , 5.111968077718e+02 , 5.112616233064e+02 , 5.113203605551e+02 , 5.113735928093e+02 , 5.114218460548e+02 , 5.114656139760e+02 , 5.115053595966e+02 , 5.115415130407e+02 , 5.115744692211e+02};
    /*READ_S: []
    WRITE_S: []*/
    double vdata_real_c[20 + 1] = {0.0, 5.195078707457e+02 , 5.155422171134e+02 , 5.144678022222e+02 , 5.140150594328e+02 , 5.137550426810e+02 , 5.135811056728e+02 , 5.134569343165e+02 , 5.133651975661e+02 , 5.132955192805e+02 , 5.132410471738e+02 , 5.131971141679e+02 , 5.131605205716e+02 , 5.131290734194e+02 , 5.131012720314e+02 , 5.130760908195e+02 , 5.130528295923e+02 , 5.130310107773e+02 , 5.130103090133e+02 , 5.129905029333e+02 , 5.129714421109e+02};
    /*READ_S: []
    WRITE_S: []*/
    double vdata_imag_c[20 + 1] = {0.0, 5.149019699238e+02 , 5.127578201997e+02 , 5.122251847514e+02 , 5.121090289018e+02 , 5.121143685824e+02 , 5.121496764568e+02 , 5.121870921893e+02 , 5.122193250322e+02 , 5.122454735794e+02 , 5.122663649603e+02 , 5.122830879827e+02 , 5.122965869718e+02 , 5.123075927445e+02 , 5.123166486553e+02 , 5.123241541685e+02 , 5.123304037599e+02 , 5.123356167976e+02 , 5.123399592211e+02 , 5.123435588985e+02 , 5.123465164008e+02};
    /*READ_S: []
    WRITE_S: []*/
    epsilon = 1.0e-12;
    /*READ_S: []
    WRITE_S: []*/
    *verified = 1;
    /*READ_S: []
    WRITE_S: []*/
    *class = 'U';
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre284;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre285;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre286;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre284 = d1 == 64;
    /*READ_S: [_imopVarPre284]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre284, _imopVarPre285, _imopVarPre286]
    WRITE_S: []*/
    if (_imopVarPre284) {
    /*READ_S: [_imopVarPre285, _imopVarPre286]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre285 = d2 == 64;
        /*READ_S: [_imopVarPre285]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre285, _imopVarPre286]
        WRITE_S: []*/
        if (_imopVarPre285) {
        /*READ_S: [_imopVarPre286]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre286 = d3 == 64;
            /*READ_S: [_imopVarPre286]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre286]
            WRITE_S: []*/
            if (_imopVarPre286) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre286 = nt == 6;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre285 = _imopVarPre286;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre284 = _imopVarPre285;
    }
    /*READ_S: [_imopVarPre284]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, _imopVarPre284, _imopVarPre296, _imopVarPre295, _imopVarPre294, sums, sums.f, _imopVarPre316, _imopVarPre315, _imopVarPre314, fabs, _imopVarPre304, _imopVarPre306, _imopVarPre305]
    WRITE_S: []*/
    if (_imopVarPre284) {
    /*READ_S: [sums, sums.f, fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        *class = 'S';
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [sums, sums.f, fabs]
        WRITE_S: []*/
        for (i = 1; i <= nt; i++) {
        /*READ_S: [sums, sums.f, fabs]
        WRITE_S: []*/
            /*READ_S: [sums, sums.f]
            WRITE_S: []*/
            err = (sums[i].real - vdata_real_s[i]) / vdata_real_s[i];
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre288;
            /*READ_S: [fabs]
            WRITE_S: []*/
            _imopVarPre288 = fabs(err);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (_imopVarPre288 > epsilon) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *verified = 0;
                /*READ_S: []
                WRITE_S: []*/
                break;
            }
            /*READ_S: [sums, sums.f]
            WRITE_S: []*/
            err = (sums[i].imag - vdata_imag_s[i]) / vdata_imag_s[i];
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre290;
            /*READ_S: [fabs]
            WRITE_S: []*/
            _imopVarPre290 = fabs(err);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (_imopVarPre290 > epsilon) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *verified = 0;
                /*READ_S: []
                WRITE_S: []*/
                break;
            }
        }
    } else {
    /*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, _imopVarPre296, _imopVarPre295, _imopVarPre294, sums, sums.f, _imopVarPre316, _imopVarPre315, _imopVarPre314, fabs, _imopVarPre304, _imopVarPre306, _imopVarPre305]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre294;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre295;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre296;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre294 = d1 == 128;
        /*READ_S: [_imopVarPre294]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre296, _imopVarPre295, _imopVarPre294]
        WRITE_S: []*/
        if (_imopVarPre294) {
        /*READ_S: [_imopVarPre296, _imopVarPre295]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre295 = d2 == 128;
            /*READ_S: [_imopVarPre295]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre296, _imopVarPre295]
            WRITE_S: []*/
            if (_imopVarPre295) {
            /*READ_S: [_imopVarPre296]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre296 = d3 == 32;
                /*READ_S: [_imopVarPre296]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre296]
                WRITE_S: []*/
                if (_imopVarPre296) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre296 = nt == 6;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre295 = _imopVarPre296;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre294 = _imopVarPre295;
        }
        /*READ_S: [_imopVarPre294]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, _imopVarPre294, sums, sums.f, _imopVarPre316, _imopVarPre315, _imopVarPre314, fabs, _imopVarPre304, _imopVarPre306, _imopVarPre305]
        WRITE_S: []*/
        if (_imopVarPre294) {
        /*READ_S: [sums, sums.f, fabs]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            *class = 'W';
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [sums, sums.f, fabs]
            WRITE_S: []*/
            for (i = 1; i <= nt; i++) {
            /*READ_S: [sums, sums.f, fabs]
            WRITE_S: []*/
                /*READ_S: [sums, sums.f]
                WRITE_S: []*/
                err = (sums[i].real - vdata_real_w[i]) / vdata_real_w[i];
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre298;
                /*READ_S: [fabs]
                WRITE_S: []*/
                _imopVarPre298 = fabs(err);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                if (_imopVarPre298 > epsilon) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    *verified = 0;
                    /*READ_S: []
                    WRITE_S: []*/
                    break;
                }
                /*READ_S: [sums, sums.f]
                WRITE_S: []*/
                err = (sums[i].imag - vdata_imag_w[i]) / vdata_imag_w[i];
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre300;
                /*READ_S: [fabs]
                WRITE_S: []*/
                _imopVarPre300 = fabs(err);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                if (_imopVarPre300 > epsilon) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    *verified = 0;
                    /*READ_S: []
                    WRITE_S: []*/
                    break;
                }
            }
        } else {
        /*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, _imopVarPre304, _imopVarPre306, _imopVarPre305, sums, sums.f, _imopVarPre316, _imopVarPre315, _imopVarPre314, fabs]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre304;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre305;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre306;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre304 = d1 == 256;
            /*READ_S: [_imopVarPre304]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre304, _imopVarPre306, _imopVarPre305]
            WRITE_S: []*/
            if (_imopVarPre304) {
            /*READ_S: [_imopVarPre306, _imopVarPre305]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre305 = d2 == 256;
                /*READ_S: [_imopVarPre305]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre306, _imopVarPre305]
                WRITE_S: []*/
                if (_imopVarPre305) {
                /*READ_S: [_imopVarPre306]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre306 = d3 == 128;
                    /*READ_S: [_imopVarPre306]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre306]
                    WRITE_S: []*/
                    if (_imopVarPre306) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre306 = nt == 6;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre305 = _imopVarPre306;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre304 = _imopVarPre305;
            }
            /*READ_S: [_imopVarPre304]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, _imopVarPre304, sums, sums.f, _imopVarPre316, _imopVarPre315, fabs, _imopVarPre314]
            WRITE_S: []*/
            if (_imopVarPre304) {
            /*READ_S: [sums, sums.f, fabs]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *class = 'A';
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [sums, sums.f, fabs]
                WRITE_S: []*/
                for (i = 1; i <= nt; i++) {
                /*READ_S: [sums, sums.f, fabs]
                WRITE_S: []*/
                    /*READ_S: [sums, sums.f]
                    WRITE_S: []*/
                    err = (sums[i].real - vdata_real_a[i]) / vdata_real_a[i];
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre308;
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                    _imopVarPre308 = fabs(err);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    if (_imopVarPre308 > epsilon) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        *verified = 0;
                        /*READ_S: []
                        WRITE_S: []*/
                        break;
                    }
                    /*READ_S: [sums, sums.f]
                    WRITE_S: []*/
                    err = (sums[i].imag - vdata_imag_a[i]) / vdata_imag_a[i];
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre310;
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                    _imopVarPre310 = fabs(err);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    if (_imopVarPre310 > epsilon) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        *verified = 0;
                        /*READ_S: []
                        WRITE_S: []*/
                        break;
                    }
                }
            } else {
            /*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, sums, sums.f, _imopVarPre316, _imopVarPre315, fabs, _imopVarPre314]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre314;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre315;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre316;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre314 = d1 == 512;
                /*READ_S: [_imopVarPre314]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre316, _imopVarPre315, _imopVarPre314]
                WRITE_S: []*/
                if (_imopVarPre314) {
                /*READ_S: [_imopVarPre316, _imopVarPre315]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre315 = d2 == 256;
                    /*READ_S: [_imopVarPre315]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre316, _imopVarPre315]
                    WRITE_S: []*/
                    if (_imopVarPre315) {
                    /*READ_S: [_imopVarPre316]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre316 = d3 == 256;
                        /*READ_S: [_imopVarPre316]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre316]
                        WRITE_S: []*/
                        if (_imopVarPre316) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre316 = nt == 20;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre315 = _imopVarPre316;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre314 = _imopVarPre315;
                }
                /*READ_S: [_imopVarPre314]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, sums, sums.f, fabs, _imopVarPre314]
                WRITE_S: []*/
                if (_imopVarPre314) {
                /*READ_S: [sums, sums.f, fabs]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    *class = 'B';
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [sums, sums.f, fabs]
                    WRITE_S: []*/
                    for (i = 1; i <= nt; i++) {
                    /*READ_S: [sums, sums.f, fabs]
                    WRITE_S: []*/
                        /*READ_S: [sums, sums.f]
                        WRITE_S: []*/
                        err = (sums[i].real - vdata_real_b[i]) / vdata_real_b[i];
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre318;
                        /*READ_S: [fabs]
                        WRITE_S: []*/
                        _imopVarPre318 = fabs(err);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        if (_imopVarPre318 > epsilon) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            *verified = 0;
                            /*READ_S: []
                            WRITE_S: []*/
                            break;
                        }
                        /*READ_S: [sums, sums.f]
                        WRITE_S: []*/
                        err = (sums[i].imag - vdata_imag_b[i]) / vdata_imag_b[i];
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre320;
                        /*READ_S: [fabs]
                        WRITE_S: []*/
                        _imopVarPre320 = fabs(err);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        if (_imopVarPre320 > epsilon) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            *verified = 0;
                            /*READ_S: []
                            WRITE_S: []*/
                            break;
                        }
                    }
                } else {
                /*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326, sums, sums.f, fabs]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre324;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre325;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre326;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre324 = d1 == 512;
                    /*READ_S: [_imopVarPre324]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre324, _imopVarPre325, _imopVarPre326]
                    WRITE_S: []*/
                    if (_imopVarPre324) {
                    /*READ_S: [_imopVarPre325, _imopVarPre326]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre325 = d2 == 512;
                        /*READ_S: [_imopVarPre325]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre325, _imopVarPre326]
                        WRITE_S: []*/
                        if (_imopVarPre325) {
                        /*READ_S: [_imopVarPre326]
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre326 = d3 == 512;
                            /*READ_S: [_imopVarPre326]
                            WRITE_S: []*/
                            /*READ_S: [_imopVarPre326]
                            WRITE_S: []*/
                            if (_imopVarPre326) {
                            /*READ_S: []
                            WRITE_S: []*/
                                /*READ_S: []
                                WRITE_S: []*/
                                _imopVarPre326 = nt == 20;
                            }
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre325 = _imopVarPre326;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre324 = _imopVarPre325;
                    }
                    /*READ_S: [_imopVarPre324]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre324, sums, sums.f, fabs]
                    WRITE_S: []*/
                    if (_imopVarPre324) {
                    /*READ_S: [sums, sums.f, fabs]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        *class = 'C';
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [sums, sums.f, fabs]
                        WRITE_S: []*/
                        for (i = 1; i <= nt; i++) {
                        /*READ_S: [sums, sums.f, fabs]
                        WRITE_S: []*/
                            /*READ_S: [sums, sums.f]
                            WRITE_S: []*/
                            err = (sums[i].real - vdata_real_c[i]) / vdata_real_c[i];
                            /*READ_S: []
                            WRITE_S: []*/
                            double _imopVarPre328;
                            /*READ_S: [fabs]
                            WRITE_S: []*/
                            _imopVarPre328 = fabs(err);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            if (_imopVarPre328 > epsilon) {
                            /*READ_S: []
                            WRITE_S: []*/
                                /*READ_S: []
                                WRITE_S: []*/
                                *verified = 0;
                                /*READ_S: []
                                WRITE_S: []*/
                                break;
                            }
                            /*READ_S: [sums, sums.f]
                            WRITE_S: []*/
                            err = (sums[i].imag - vdata_imag_c[i]) / vdata_imag_c[i];
                            /*READ_S: []
                            WRITE_S: []*/
                            double _imopVarPre330;
                            /*READ_S: [fabs]
                            WRITE_S: []*/
                            _imopVarPre330 = fabs(err);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            if (_imopVarPre330 > epsilon) {
                            /*READ_S: []
                            WRITE_S: []*/
                                /*READ_S: []
                                WRITE_S: []*/
                                *verified = 0;
                                /*READ_S: []
                                WRITE_S: []*/
                                break;
                            }
                        }
                    }
                }
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
        printf("Result verification successful\n");
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Result verification failed\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    char _imopVarPre332;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre332 = *class;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("class = %1c\n", _imopVarPre332);
    /*READ_S: []
    WRITE_S: []*/
}
