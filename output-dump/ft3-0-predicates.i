struct __sFILEX ;
int printf(const char *restrict , ...);
void exit(int );
extern double cos(double );
extern double sin(double );
extern double exp(double );
extern double log(double );
extern double fabs(double );
typedef int boolean;
struct stUn_imopVarPre11 {
    double real;
    double imag;
} ;
typedef struct stUn_imopVarPre11 dcomplex;
extern double randlc(double *, double );
extern void vranlc(int , double * , double  , double *);
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
int fftblock;
int fftblockpad;
static int dims[3][3];
static int xstart[3];
static int ystart[3];
static int zstart[3];
static int xend[3];
static int yend[3];
static int zend[3];
static double ex[(6 * (64 * 64 / 4 + 64 * 64 / 4 + 64 * 64 / 4)) + 1];
static dcomplex u[64];
static dcomplex sums[6 + 1];
static int niter;
static void evolve(dcomplex u0[64][64][64], dcomplex u1[64][64][64] , int t , int indexmap[64][64][64] , int d[3]);
static void compute_initial_conditions(dcomplex u0[64][64][64], int d[3]);
static void ipow46(double a, int exponent , double *result);
static void setup(void );
static void compute_indexmap(int indexmap[64][64][64], int d[3]);
static void print_timers(void );
static void fft(int dir, dcomplex x1[64][64][64] , dcomplex x2[64][64][64]);
static void cffts1(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]);
static void cffts2(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]);
static void cffts3(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]);
static void fft_init(int n);
static void cfftz(int is, int m , int n , dcomplex x[64][18] , dcomplex y[64][18]);
static void fftz2(int is, int l , int m , int n , int ny , int ny1 , dcomplex u[64] , dcomplex x[64][18] , dcomplex y[64][18]);
static int ilog2(int n);
static void checksum(int i, dcomplex u1[64][64][64] , int d[3]);
static void verify(int d1, int d2 , int d3 , int nt , boolean *verified , char *class);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    static dcomplex u0[64][64][64];
    /*OUT: {
    Reverse<--,>}*/
    static dcomplex u1[64][64][64];
    /*OUT: {
    Reverse<--,>}*/
    static dcomplex u2[64][64][64];
    /*OUT: {
    Reverse<--,>}*/
    static int indexmap[64][64][64];
    /*OUT: {
    Reverse<--,>}*/
    int iter;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads = 1;
    /*OUT: {
    Reverse<--,>}*/
    double total_time;
    /*OUT: {
    Reverse<--,>}*/
    double mflops;
    /*OUT: {
    Reverse<--,>}*/
    boolean verified;
    /*OUT: {
    Reverse<--,>}*/
    char class;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 160_0;>}*/
    for (i = 0; i < 7; i++) {
        /*OUT: {
        Reverse<--, 160_0;>}*/
        timer_clear(i);
        /*OUT: {
        Reverse<--, 160_0;>}*/
    }
    /*OUT: {
    Reverse<--, 160_1;>}*/
    setup();
    /*OUT: {
    Reverse<--, 160_1;>}*/
    /*OUT: {
    Reverse<--, 160_1;>}*/
    int ( *_imopVarPre145 );
    /*OUT: {
    Reverse<--, 160_1;>}*/
    _imopVarPre145 = dims[2];
    /*OUT: {
    Reverse<--, 160_1;>}*/
    compute_indexmap(indexmap, _imopVarPre145);
    /*OUT: {
    Reverse<--, 160_1;>}*/
    /*OUT: {
    Reverse<--, 160_1;>}*/
    int ( *_imopVarPre147 );
    /*OUT: {
    Reverse<--, 160_1;>}*/
    _imopVarPre147 = dims[0];
    /*OUT: {
    Reverse<--, 160_1;>}*/
    compute_initial_conditions(u1, _imopVarPre147);
    /*OUT: {
    Reverse<--, 160_1;>}*/
    /*OUT: {
    Reverse<--, 160_1;>}*/
    int _imopVarPre149;
    /*OUT: {
    Reverse<--, 160_1;>}*/
    _imopVarPre149 = dims[0][0];
    /*OUT: {
    Reverse<--, 160_1;>}*/
    fft_init(_imopVarPre149);
    /*OUT: {
    Reverse<--, 160_1;>}*/
    /*OUT: {
    Reverse<--, 160_1;>}*/
    fft(1, u1, u0);
    /*OUT: {
    Reverse<--, 160_1;>}*/
    /*OUT: {
    Reverse<--, 160_1;>}*/
    /*OUT: {
    Reverse<--, 160_1;>}*/
    /*OUT: {
    Reverse<--, 206_0; 160_1;>}*/
    for (i = 0; i < 7; i++) {
        /*OUT: {
        Reverse<--, 206_0; 160_1;>}*/
        timer_clear(i);
        /*OUT: {
        Reverse<--, 206_0; 160_1;>}*/
    }
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    timer_start(0);
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    if (0 == 1) {
        /*OUT: {
        Reverse<--, 218_0; 206_1; 160_1;>}*/
        timer_start(1);
        /*OUT: {
        Reverse<--, 218_0; 206_1; 160_1;>}*/
    }
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    int ( *_imopVarPre151 );
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    _imopVarPre151 = dims[2];
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    compute_indexmap(indexmap, _imopVarPre151);
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    int ( *_imopVarPre153 );
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    _imopVarPre153 = dims[0];
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    compute_initial_conditions(u1, _imopVarPre153);
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    int _imopVarPre155;
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    _imopVarPre155 = dims[0][0];
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    fft_init(_imopVarPre155);
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    if (0 == 1) {
        /*OUT: {
        Reverse<--, 252_0; 206_1; 160_1;>}*/
        timer_stop(1);
        /*OUT: {
        Reverse<--, 252_0; 206_1; 160_1;>}*/
    }
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    if (0 == 1) {
        /*OUT: {
        Reverse<--, 258_0; 206_1; 160_1;>}*/
        timer_start(2);
        /*OUT: {
        Reverse<--, 258_0; 206_1; 160_1;>}*/
    }
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    fft(1, u1, u0);
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    if (0 == 1) {
        /*OUT: {
        Reverse<--, 269_0; 206_1; 160_1;>}*/
        timer_stop(2);
        /*OUT: {
        Reverse<--, 269_0; 206_1; 160_1;>}*/
    }
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 276_0; 206_1; 160_1;>}*/
    for (iter = 1; iter <= niter; iter++) {
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        if (0 == 1) {
            /*OUT: {
            Reverse<--, 278_0; 276_0; 206_1; 160_1;>}*/
            timer_start(3);
            /*OUT: {
            Reverse<--, 278_0; 276_0; 206_1; 160_1;>}*/
        }
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        int ( *_imopVarPre157 );
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        _imopVarPre157 = dims[0];
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        evolve(u0, u1, iter, indexmap, _imopVarPre157);
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        if (0 == 1) {
            /*OUT: {
            Reverse<--, 293_0; 276_0; 206_1; 160_1;>}*/
            timer_stop(3);
            /*OUT: {
            Reverse<--, 293_0; 276_0; 206_1; 160_1;>}*/
        }
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        if (0 == 1) {
            /*OUT: {
            Reverse<--, 299_0; 276_0; 206_1; 160_1;>}*/
            timer_start(2);
            /*OUT: {
            Reverse<--, 299_0; 276_0; 206_1; 160_1;>}*/
        }
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        int _imopVarPre159;
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        _imopVarPre159 = -1;
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        fft(_imopVarPre159, u1, u2);
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        if (0 == 1) {
            /*OUT: {
            Reverse<--, 313_0; 276_0; 206_1; 160_1;>}*/
            timer_stop(2);
            /*OUT: {
            Reverse<--, 313_0; 276_0; 206_1; 160_1;>}*/
        }
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        if (0 == 1) {
            /*OUT: {
            Reverse<--, 319_0; 276_0; 206_1; 160_1;>}*/
            timer_start(4);
            /*OUT: {
            Reverse<--, 319_0; 276_0; 206_1; 160_1;>}*/
        }
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        int ( *_imopVarPre161 );
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        _imopVarPre161 = dims[0];
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        checksum(iter, u2, _imopVarPre161);
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        /*OUT: {
        Reverse<--, 276_0; 206_1; 160_1;>}*/
        if (0 == 1) {
            /*OUT: {
            Reverse<--, 334_0; 276_0; 206_1; 160_1;>}*/
            timer_stop(4);
            /*OUT: {
            Reverse<--, 334_0; 276_0; 206_1; 160_1;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    char *_imopVarPre164;
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    int *_imopVarPre165;
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    _imopVarPre164 = &class;
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    _imopVarPre165 = &verified;
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    verify(64, 64, 64, niter, _imopVarPre165, _imopVarPre164);
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
#pragma omp parallel
    {
    }
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    timer_stop(0);
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    total_time = timer_read(0);
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    if (total_time != 0.0) {
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        double _imopVarPre184;
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        double _imopVarPre185;
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        double _imopVarPre188;
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        double _imopVarPre189;
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        _imopVarPre184 = (double) 262144;
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        _imopVarPre185 = log(_imopVarPre184);
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        _imopVarPre188 = (double) 262144;
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        _imopVarPre189 = log(_imopVarPre188);
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        /*OUT: {
        Reverse<--, 362_0; 276_1; 206_1; 160_1;>}*/
        mflops = 1.0e-6 * (double) 262144 * (14.8157 + 7.19641 * _imopVarPre185 + (5.23518 + 7.21113 * _imopVarPre189) * niter) / total_time;
    } else {
        /*OUT: {
        Reverse<--, 362_1; 276_1; 206_1; 160_1;>}*/
        mflops = 0.0;
    }
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    c_print_results("FT", class, 64, 64, 64, niter, nthreads, total_time, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    /*OUT: {
    Reverse<--, 276_1; 206_1; 160_1;>}*/
    if (0 == 1) {
        /*OUT: {
        Reverse<--, 394_0; 276_1; 206_1; 160_1;>}*/
        print_timers();
        /*OUT: {
        Reverse<--, 394_0; 276_1; 206_1; 160_1;>}*/
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
static void evolve(dcomplex u0[64][64][64], dcomplex u1[64][64][64] , int t , int indexmap[64][64][64] , int d[3]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
#pragma omp parallel default(shared) private(i, j, k)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<1966,>}*/
        /*OUT: {
        Reverse<1966,>}*/
        /*OUT: {
        Reverse<1966, 416_1;>}*/
        for (k = 0; k < d[2]; k++) {
            /*OUT: {
            Reverse<1966,>}*/
            /*OUT: {
            Reverse<1966,>}*/
            /*OUT: {
            Reverse<1966, 420_1; 416_0;>}*/
            for (j = 0; j < d[1]; j++) {
                /*OUT: {
                Reverse<1966, 416_0;>}*/
                /*OUT: {
                Reverse<1966, 416_0;>}*/
                /*OUT: {
                Reverse<1966, 420_0; 416_0;>}*/
                for (i = 0; i < d[0]; i++) {
                    /*OUT: {
                    Reverse<1966, 420_0; 416_0;>}*/
                    u1[k][j][i].real = u0[k][j][i].real * ex[t * indexmap[k][j][i]];
                    /*OUT: {
                    Reverse<1966, 420_0; 416_0;>}*/
                    (u1[k][j][i].imag = u0[k][j][i].imag * ex[t * indexmap[k][j][i]]);
                }
            }
        }
        /*OUT: {
        Reverse<1966,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<447,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void compute_initial_conditions(dcomplex u0[64][64][64], int d[3]) {
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    double x0;
    /*OUT: {
    Reverse<--,>}*/
    double start;
    /*OUT: {
    Reverse<--,>}*/
    double an;
    /*OUT: {
    Reverse<--,>}*/
    double dummy;
    /*OUT: {
    Reverse<--,>}*/
    static double tmp[64 * 2 * 64 + 1];
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int t;
    /*OUT: {
    Reverse<--,>}*/
    start = 314159265.0;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre192;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre193;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre192 = &an;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre193 = (zstart[0] - 1) * 2 * 64 * 64 + (ystart[0] - 1) * 2 * 64;
    /*OUT: {
    Reverse<--,>}*/
    ipow46(1220703125.0, _imopVarPre193, _imopVarPre192);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre195;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre196;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre195 = &start;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre196 = randlc(_imopVarPre195, an);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    dummy = _imopVarPre196;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre199;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre200;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre199 = &an;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre200 = 2 * 64 * 64;
    /*OUT: {
    Reverse<--,>}*/
    ipow46(1220703125.0, _imopVarPre200, _imopVarPre199);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 524_1; 502_0;>}*/
    for (k = 0; k < dims[0][2]; k++) {
        /*OUT: {
        Reverse<--, 502_0;>}*/
        x0 = start;
        /*OUT: {
        Reverse<--, 502_0;>}*/
        double *_imopVarPre203;
        /*OUT: {
        Reverse<--, 502_0;>}*/
        int _imopVarPre204;
        /*OUT: {
        Reverse<--, 502_0;>}*/
        _imopVarPre203 = &x0;
        /*OUT: {
        Reverse<--, 502_0;>}*/
        _imopVarPre204 = 2 * 64 * dims[0][1];
        /*OUT: {
        Reverse<--, 502_0;>}*/
        vranlc(_imopVarPre204, _imopVarPre203, 1220703125.0, tmp);
        /*OUT: {
        Reverse<--, 502_0;>}*/
        /*OUT: {
        Reverse<--, 502_0;>}*/
        t = 1;
        /*OUT: {
        Reverse<--, 502_0;>}*/
        /*OUT: {
        Reverse<--, 502_0;>}*/
        /*OUT: {
        Reverse<--, 527_1; 524_0; 502_0;>}*/
        for (j = 0; j < dims[0][1]; j++) {
            /*OUT: {
            Reverse<--, 524_0; 502_0;>}*/
            /*OUT: {
            Reverse<--, 524_0; 502_0;>}*/
            /*OUT: {
            Reverse<--, 527_0; 524_0; 502_0;>}*/
            for (i = 0; i < 64; i++) {
                /*OUT: {
                Reverse<--, 527_0; 524_0; 502_0;>}*/
                u0[k][j][i].real = tmp[t++];
                /*OUT: {
                Reverse<--, 527_0; 524_0; 502_0;>}*/
                u0[k][j][i].imag = tmp[t++];
            }
        }
        /*OUT: {
        Reverse<--, 524_1; 502_0;>}*/
        if (k != dims[0][2]) {
            /*OUT: {
            Reverse<--, 543_0; 524_1; 502_0;>}*/
            double *_imopVarPre206;
            /*OUT: {
            Reverse<--, 543_0; 524_1; 502_0;>}*/
            double _imopVarPre207;
            /*OUT: {
            Reverse<--, 543_0; 524_1; 502_0;>}*/
            _imopVarPre206 = &start;
            /*OUT: {
            Reverse<--, 543_0; 524_1; 502_0;>}*/
            _imopVarPre207 = randlc(_imopVarPre206, an);
            /*OUT: {
            Reverse<--, 543_0; 524_1; 502_0;>}*/
            /*OUT: {
            Reverse<--, 543_0; 524_1; 502_0;>}*/
            dummy = _imopVarPre207;
        }
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void ipow46(double a, int exponent , double *result) {
    /*OUT: {
    Reverse<--,>}*/
    double dummy;
    /*OUT: {
    Reverse<--,>}*/
    double q;
    /*OUT: {
    Reverse<--,>}*/
    double r;
    /*OUT: {
    Reverse<--,>}*/
    int n;
    /*OUT: {
    Reverse<--,>}*/
    int n2;
    /*OUT: {
    Reverse<--,>}*/
    *result = 1;
    /*OUT: {
    Reverse<--,>}*/
    if (exponent == 0) {
        /*OUT: {
        Reverse<--, 566_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 566_1;>}*/
    q = a;
    /*OUT: {
    Reverse<--, 566_1;>}*/
    r = 1;
    /*OUT: {
    Reverse<--, 566_1;>}*/
    n = exponent;
    /*OUT: {
    Reverse<--, 566_1;>}*/
    while (n > 1) {
        /*OUT: {
        Reverse<--, 574_0; 566_1;>}*/
        n2 = n / 2;
        /*OUT: {
        Reverse<--, 574_0; 566_1;>}*/
        if (n2 * 2 == n) {
            /*OUT: {
            Reverse<--, 577_0; 574_0; 566_1;>}*/
            double *_imopVarPre209;
            /*OUT: {
            Reverse<--, 577_0; 574_0; 566_1;>}*/
            double _imopVarPre210;
            /*OUT: {
            Reverse<--, 577_0; 574_0; 566_1;>}*/
            _imopVarPre209 = &q;
            /*OUT: {
            Reverse<--, 577_0; 574_0; 566_1;>}*/
            _imopVarPre210 = randlc(_imopVarPre209, q);
            /*OUT: {
            Reverse<--, 577_0; 574_0; 566_1;>}*/
            /*OUT: {
            Reverse<--, 577_0; 574_0; 566_1;>}*/
            dummy = _imopVarPre210;
            /*OUT: {
            Reverse<--, 577_0; 574_0; 566_1;>}*/
            n = n2;
        } else {
            /*OUT: {
            Reverse<--, 577_1; 574_0; 566_1;>}*/
            double *_imopVarPre212;
            /*OUT: {
            Reverse<--, 577_1; 574_0; 566_1;>}*/
            double _imopVarPre213;
            /*OUT: {
            Reverse<--, 577_1; 574_0; 566_1;>}*/
            _imopVarPre212 = &r;
            /*OUT: {
            Reverse<--, 577_1; 574_0; 566_1;>}*/
            _imopVarPre213 = randlc(_imopVarPre212, q);
            /*OUT: {
            Reverse<--, 577_1; 574_0; 566_1;>}*/
            /*OUT: {
            Reverse<--, 577_1; 574_0; 566_1;>}*/
            dummy = _imopVarPre213;
            /*OUT: {
            Reverse<--, 577_1; 574_0; 566_1;>}*/
            n = n - 1;
        }
    }
    /*OUT: {
    Reverse<--, 574_1; 566_1;>}*/
    double *_imopVarPre215;
    /*OUT: {
    Reverse<--, 574_1; 566_1;>}*/
    double _imopVarPre216;
    /*OUT: {
    Reverse<--, 574_1; 566_1;>}*/
    _imopVarPre215 = &r;
    /*OUT: {
    Reverse<--, 574_1; 566_1;>}*/
    _imopVarPre216 = randlc(_imopVarPre215, q);
    /*OUT: {
    Reverse<--, 574_1; 566_1;>}*/
    /*OUT: {
    Reverse<--, 574_1; 566_1;>}*/
    dummy = _imopVarPre216;
    /*OUT: {
    Reverse<--, 574_1; 566_1;>}*/
    *result = r;
}
static void setup() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - FT Benchmark\n\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    niter = 6;
    /*OUT: {
    Reverse<--,>}*/
    printf(" Size                : %3dx%3dx%3d\n", 64, 64, 64);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf(" Iterations          :     %7d\n", niter);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 639_0;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 639_0;>}*/
        dims[i][0] = 64;
        /*OUT: {
        Reverse<--, 639_0;>}*/
        dims[i][1] = 64;
        /*OUT: {
        Reverse<--, 639_0;>}*/
        dims[i][2] = 64;
    }
    /*OUT: {
    Reverse<--, 639_1;>}*/
    /*OUT: {
    Reverse<--, 639_1;>}*/
    /*OUT: {
    Reverse<--, 654_0; 639_1;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 654_0; 639_1;>}*/
        xstart[i] = 1;
        /*OUT: {
        Reverse<--, 654_0; 639_1;>}*/
        xend[i] = 64;
        /*OUT: {
        Reverse<--, 654_0; 639_1;>}*/
        ystart[i] = 1;
        /*OUT: {
        Reverse<--, 654_0; 639_1;>}*/
        yend[i] = 64;
        /*OUT: {
        Reverse<--, 654_0; 639_1;>}*/
        zstart[i] = 1;
        /*OUT: {
        Reverse<--, 654_0; 639_1;>}*/
        zend[i] = 64;
    }
    /*OUT: {
    Reverse<--, 654_1; 639_1;>}*/
    fftblock = 16;
    /*OUT: {
    Reverse<--, 654_1; 639_1;>}*/
    fftblockpad = 18;
    /*OUT: {
    Reverse<--, 654_1; 639_1;>}*/
    if (fftblock != 16) {
        /*OUT: {
        Reverse<--, 678_0; 654_1; 639_1;>}*/
        fftblockpad = fftblock + 3;
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void compute_indexmap(int indexmap[64][64][64], int d[3]) {
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
    int ii;
    /*OUT: {
    Reverse<--,>}*/
    int ii2;
    /*OUT: {
    Reverse<--,>}*/
    int jj;
    /*OUT: {
    Reverse<--,>}*/
    int ij2;
    /*OUT: {
    Reverse<--,>}*/
    int kk;
    /*OUT: {
    Reverse<--,>}*/
    double ap;
#pragma omp parallel default(shared) private(i, j, k, ii, ii2, jj, ij2, kk)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<2044,>}*/
        /*OUT: {
        Reverse<2044,>}*/
        /*OUT: {
        Reverse<2044, 708_1;>}*/
        for (i = 0; i < dims[2][0]; i++) {
            /*OUT: {
            Reverse<2044,>}*/
            ii = (i + 1 + xstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
            /*OUT: {
            Reverse<2044,>}*/
            ii2 = ii * ii;
            /*OUT: {
            Reverse<2044,>}*/
            /*OUT: {
            Reverse<2044,>}*/
            /*OUT: {
            Reverse<2044, 719_1; 708_0;>}*/
            for (j = 0; j < dims[2][1]; j++) {
                /*OUT: {
                Reverse<2044, 708_0;>}*/
                jj = (j + 1 + ystart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                /*OUT: {
                Reverse<2044, 708_0;>}*/
                ij2 = jj * jj + ii2;
                /*OUT: {
                Reverse<2044, 708_0;>}*/
                /*OUT: {
                Reverse<2044, 708_0;>}*/
                /*OUT: {
                Reverse<2044, 719_0; 708_0;>}*/
                for (k = 0; k < dims[2][2]; k++) {
                    /*OUT: {
                    Reverse<2044, 719_0; 708_0;>}*/
                    kk = (k + 1 + zstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                    /*OUT: {
                    Reverse<2044, 719_0; 708_0;>}*/
                    indexmap[k][j][i] = kk * kk + ij2;
                }
            }
        }
        /*OUT: {
        Reverse<2044,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<730,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    ap = -4.0 * 1.0e-6 * 3.141592653589793238 * 3.141592653589793238;
    /*OUT: {
    Reverse<--,>}*/
    ex[0] = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre217;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre217 = exp(ap);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ex[1] = _imopVarPre217;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 749_0;>}*/
    for (i = 2; i <= (6 * (64 * 64 / 4 + 64 * 64 / 4 + 64 * 64 / 4)); i++) {
        /*OUT: {
        Reverse<--, 749_0;>}*/
        ex[i] = ex[i - 1] * ex[1];
    }
}
static void print_timers() {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    char *tstrings[] = {"          total ", "          setup " , "            fft " , "         evolve " , "       checksum " , "         fftlow " , "        fftcopy "};
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 759_0;>}*/
    for (i = 0; i < 7; i++) {
        /*OUT: {
        Reverse<--, 759_0;>}*/
        double _imopVarPre219;
        /*OUT: {
        Reverse<--, 759_0;>}*/
        _imopVarPre219 = timer_read(i);
        /*OUT: {
        Reverse<--, 759_0;>}*/
        /*OUT: {
        Reverse<--, 759_0;>}*/
        if (_imopVarPre219 != 0.0) {
            /*OUT: {
            Reverse<--, 768_0; 759_0;>}*/
            double _imopVarPre222;
            /*OUT: {
            Reverse<--, 768_0; 759_0;>}*/
            char *_imopVarPre223;
            /*OUT: {
            Reverse<--, 768_0; 759_0;>}*/
            _imopVarPre222 = timer_read(i);
            /*OUT: {
            Reverse<--, 768_0; 759_0;>}*/
            /*OUT: {
            Reverse<--, 768_0; 759_0;>}*/
            _imopVarPre223 = tstrings[i];
            /*OUT: {
            Reverse<--, 768_0; 759_0;>}*/
            printf("timer %2d(%16s( :%10.6f\n", i, _imopVarPre223, _imopVarPre222);
            /*OUT: {
            Reverse<--, 768_0; 759_0;>}*/
        }
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void fft(int dir, dcomplex x1[64][64][64] , dcomplex x2[64][64][64]) {
    /*OUT: {
    Reverse<--,>}*/
    dcomplex y0[64][18];
    /*OUT: {
    Reverse<--,>}*/
    dcomplex y1[64][18];
    /*OUT: {
    Reverse<--,>}*/
    if (dir == 1) {
        /*OUT: {
        Reverse<--, 790_0;>}*/
        int ( *_imopVarPre225 );
        /*OUT: {
        Reverse<--, 790_0;>}*/
        _imopVarPre225 = dims[0];
        /*OUT: {
        Reverse<--, 790_0;>}*/
        cffts1(1, _imopVarPre225, x1, x1, y0, y1);
        /*OUT: {
        Reverse<--, 790_0;>}*/
        /*OUT: {
        Reverse<--, 790_0;>}*/
        int ( *_imopVarPre227 );
        /*OUT: {
        Reverse<--, 790_0;>}*/
        _imopVarPre227 = dims[1];
        /*OUT: {
        Reverse<--, 790_0;>}*/
        cffts2(1, _imopVarPre227, x1, x1, y0, y1);
        /*OUT: {
        Reverse<--, 790_0;>}*/
        /*OUT: {
        Reverse<--, 790_0;>}*/
        int ( *_imopVarPre229 );
        /*OUT: {
        Reverse<--, 790_0;>}*/
        _imopVarPre229 = dims[2];
        /*OUT: {
        Reverse<--, 790_0;>}*/
        cffts3(1, _imopVarPre229, x1, x2, y0, y1);
        /*OUT: {
        Reverse<--, 790_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 790_1;>}*/
        int ( *_imopVarPre232 );
        /*OUT: {
        Reverse<--, 790_1;>}*/
        int _imopVarPre233;
        /*OUT: {
        Reverse<--, 790_1;>}*/
        _imopVarPre232 = dims[2];
        /*OUT: {
        Reverse<--, 790_1;>}*/
        _imopVarPre233 = -1;
        /*OUT: {
        Reverse<--, 790_1;>}*/
        cffts3(_imopVarPre233, _imopVarPre232, x1, x1, y0, y1);
        /*OUT: {
        Reverse<--, 790_1;>}*/
        /*OUT: {
        Reverse<--, 790_1;>}*/
        int ( *_imopVarPre236 );
        /*OUT: {
        Reverse<--, 790_1;>}*/
        int _imopVarPre237;
        /*OUT: {
        Reverse<--, 790_1;>}*/
        _imopVarPre236 = dims[1];
        /*OUT: {
        Reverse<--, 790_1;>}*/
        _imopVarPre237 = -1;
        /*OUT: {
        Reverse<--, 790_1;>}*/
        cffts2(_imopVarPre237, _imopVarPre236, x1, x1, y0, y1);
        /*OUT: {
        Reverse<--, 790_1;>}*/
        /*OUT: {
        Reverse<--, 790_1;>}*/
        int ( *_imopVarPre240 );
        /*OUT: {
        Reverse<--, 790_1;>}*/
        int _imopVarPre241;
        /*OUT: {
        Reverse<--, 790_1;>}*/
        _imopVarPre240 = dims[0];
        /*OUT: {
        Reverse<--, 790_1;>}*/
        _imopVarPre241 = -1;
        /*OUT: {
        Reverse<--, 790_1;>}*/
        cffts1(_imopVarPre241, _imopVarPre240, x1, x2, y0, y1);
        /*OUT: {
        Reverse<--, 790_1;>}*/
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
static void cffts1(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
    /*OUT: {
    Reverse<--,>}*/
    int logd[3];
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
    int jj;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 866_0;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 866_0;>}*/
        int _imopVarPre243;
        /*OUT: {
        Reverse<--, 866_0;>}*/
        int _imopVarPre244;
        /*OUT: {
        Reverse<--, 866_0;>}*/
        _imopVarPre243 = d[i];
        /*OUT: {
        Reverse<--, 866_0;>}*/
        _imopVarPre244 = ilog2(_imopVarPre243);
        /*OUT: {
        Reverse<--, 866_0;>}*/
        /*OUT: {
        Reverse<--, 866_0;>}*/
        logd[i] = _imopVarPre244;
    }
#pragma omp parallel default(shared) private(i, j, k, jj) shared(is)
    {
        /*OUT: {
        Reverse<2097,>}*/
        dcomplex y0[64][18];
        /*OUT: {
        Reverse<2097,>}*/
        dcomplex y1[64][18];
#pragma omp for nowait
        /*OUT: {
        Reverse<2097,>}*/
        /*OUT: {
        Reverse<2097,>}*/
        /*OUT: {
        Reverse<2097, 892_1;>}*/
        for (k = 0; k < d[2]; k++) {
            /*OUT: {
            Reverse<2097,>}*/
            /*OUT: {
            Reverse<2097,>}*/
            /*OUT: {
            Reverse<2097, 929_1; 895_1; 892_0;>}*/
            for (jj = 0; jj <= d[1] - fftblock; jj += fftblock) {
                /*OUT: {
                Reverse<2097, 892_0;>}*/
                /*OUT: {
                Reverse<2097, 892_0;>}*/
                /*OUT: {
                Reverse<2097, 899_1; 895_0; 892_0;>}*/
                for (j = 0; j < fftblock; j++) {
                    /*OUT: {
                    Reverse<2097, 895_0; 892_0;>}*/
                    /*OUT: {
                    Reverse<2097, 895_0; 892_0;>}*/
                    /*OUT: {
                    Reverse<2097, 899_0; 895_0; 892_0;>}*/
                    for (i = 0; i < d[0]; i++) {
                        /*OUT: {
                        Reverse<2097, 899_0; 895_0; 892_0;>}*/
                        y0[i][j].real = x[k][j + jj][i].real;
                        /*OUT: {
                        Reverse<2097, 899_0; 895_0; 892_0;>}*/
                        y0[i][j].imag = x[k][j + jj][i].imag;
                    }
                }
                /*OUT: {
                Reverse<2097, 895_1; 892_0;>}*/
                int _imopVarPre247;
                /*OUT: {
                Reverse<2097, 895_1; 892_0;>}*/
                int _imopVarPre248;
                /*OUT: {
                Reverse<2097, 895_1; 892_0;>}*/
                _imopVarPre247 = d[0];
                /*OUT: {
                Reverse<2097, 895_1; 892_0;>}*/
                _imopVarPre248 = logd[0];
                /*OUT: {
                Reverse<2097, 895_1; 892_0;>}*/
                cfftz(is, _imopVarPre248, _imopVarPre247, y0, y1);
                /*OUT: {
                Reverse<2097, 895_1; 892_0;>}*/
                /*OUT: {
                Reverse<2097, 895_1; 892_0;>}*/
                /*OUT: {
                Reverse<2097, 895_1; 892_0;>}*/
                /*OUT: {
                Reverse<2097, 933_1; 929_0; 895_1; 892_0;>}*/
                for (j = 0; j < fftblock; j++) {
                    /*OUT: {
                    Reverse<2097, 929_0; 895_1; 892_0;>}*/
                    /*OUT: {
                    Reverse<2097, 929_0; 895_1; 892_0;>}*/
                    /*OUT: {
                    Reverse<2097, 933_0; 929_0; 895_1; 892_0;>}*/
                    for (i = 0; i < d[0]; i++) {
                        /*OUT: {
                        Reverse<2097, 933_0; 929_0; 895_1; 892_0;>}*/
                        xout[k][j + jj][i].real = y0[i][j].real;
                        /*OUT: {
                        Reverse<2097, 933_0; 929_0; 895_1; 892_0;>}*/
                        xout[k][j + jj][i].imag = y0[i][j].imag;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<2097,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<949,>}*/
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void cffts2(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
    /*OUT: {
    Reverse<--,>}*/
    int logd[3];
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
    int ii;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 962_0;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 962_0;>}*/
        int _imopVarPre250;
        /*OUT: {
        Reverse<--, 962_0;>}*/
        int _imopVarPre251;
        /*OUT: {
        Reverse<--, 962_0;>}*/
        _imopVarPre250 = d[i];
        /*OUT: {
        Reverse<--, 962_0;>}*/
        _imopVarPre251 = ilog2(_imopVarPre250);
        /*OUT: {
        Reverse<--, 962_0;>}*/
        /*OUT: {
        Reverse<--, 962_0;>}*/
        logd[i] = _imopVarPre251;
    }
#pragma omp parallel default(shared) private(i, j, k, ii) shared(is)
    {
        /*OUT: {
        Reverse<2134,>}*/
        dcomplex y0[64][18];
        /*OUT: {
        Reverse<2134,>}*/
        dcomplex y1[64][18];
#pragma omp for nowait
        /*OUT: {
        Reverse<2134,>}*/
        /*OUT: {
        Reverse<2134,>}*/
        /*OUT: {
        Reverse<2134, 988_1;>}*/
        for (k = 0; k < d[2]; k++) {
            /*OUT: {
            Reverse<2134,>}*/
            /*OUT: {
            Reverse<2134,>}*/
            /*OUT: {
            Reverse<2134, 1026_1; 992_1; 988_0;>}*/
            for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
                /*OUT: {
                Reverse<2134, 988_0;>}*/
                /*OUT: {
                Reverse<2134, 988_0;>}*/
                /*OUT: {
                Reverse<2134, 995_1; 992_0; 988_0;>}*/
                for (j = 0; j < d[1]; j++) {
                    /*OUT: {
                    Reverse<2134, 992_0; 988_0;>}*/
                    /*OUT: {
                    Reverse<2134, 992_0; 988_0;>}*/
                    /*OUT: {
                    Reverse<2134, 995_0; 992_0; 988_0;>}*/
                    for (i = 0; i < fftblock; i++) {
                        /*OUT: {
                        Reverse<2134, 995_0; 992_0; 988_0;>}*/
                        y0[j][i].real = x[k][j][i + ii].real;
                        /*OUT: {
                        Reverse<2134, 995_0; 992_0; 988_0;>}*/
                        y0[j][i].imag = x[k][j][i + ii].imag;
                    }
                }
                /*OUT: {
                Reverse<2134, 992_1; 988_0;>}*/
                int _imopVarPre254;
                /*OUT: {
                Reverse<2134, 992_1; 988_0;>}*/
                int _imopVarPre255;
                /*OUT: {
                Reverse<2134, 992_1; 988_0;>}*/
                _imopVarPre254 = d[1];
                /*OUT: {
                Reverse<2134, 992_1; 988_0;>}*/
                _imopVarPre255 = logd[1];
                /*OUT: {
                Reverse<2134, 992_1; 988_0;>}*/
                cfftz(is, _imopVarPre255, _imopVarPre254, y0, y1);
                /*OUT: {
                Reverse<2134, 992_1; 988_0;>}*/
                /*OUT: {
                Reverse<2134, 992_1; 988_0;>}*/
                /*OUT: {
                Reverse<2134, 992_1; 988_0;>}*/
                /*OUT: {
                Reverse<2134, 1029_1; 1026_0; 992_1; 988_0;>}*/
                for (j = 0; j < d[1]; j++) {
                    /*OUT: {
                    Reverse<2134, 1026_0; 992_1; 988_0;>}*/
                    /*OUT: {
                    Reverse<2134, 1026_0; 992_1; 988_0;>}*/
                    /*OUT: {
                    Reverse<2134, 1029_0; 1026_0; 992_1; 988_0;>}*/
                    for (i = 0; i < fftblock; i++) {
                        /*OUT: {
                        Reverse<2134, 1029_0; 1026_0; 992_1; 988_0;>}*/
                        xout[k][j][i + ii].real = y0[j][i].real;
                        /*OUT: {
                        Reverse<2134, 1029_0; 1026_0; 992_1; 988_0;>}*/
                        xout[k][j][i + ii].imag = y0[j][i].imag;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<2134,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1045,>}*/
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void cffts3(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
    /*OUT: {
    Reverse<--,>}*/
    int logd[3];
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
    int ii;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1058_0;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 1058_0;>}*/
        int _imopVarPre257;
        /*OUT: {
        Reverse<--, 1058_0;>}*/
        int _imopVarPre258;
        /*OUT: {
        Reverse<--, 1058_0;>}*/
        _imopVarPre257 = d[i];
        /*OUT: {
        Reverse<--, 1058_0;>}*/
        _imopVarPre258 = ilog2(_imopVarPre257);
        /*OUT: {
        Reverse<--, 1058_0;>}*/
        /*OUT: {
        Reverse<--, 1058_0;>}*/
        logd[i] = _imopVarPre258;
    }
#pragma omp parallel default(shared) private(i, j, k, ii) shared(is)
    {
        /*OUT: {
        Reverse<2171,>}*/
        dcomplex y0[64][18];
        /*OUT: {
        Reverse<2171,>}*/
        dcomplex y1[64][18];
#pragma omp for nowait
        /*OUT: {
        Reverse<2171,>}*/
        /*OUT: {
        Reverse<2171,>}*/
        /*OUT: {
        Reverse<2171, 1084_1;>}*/
        for (j = 0; j < d[1]; j++) {
            /*OUT: {
            Reverse<2171,>}*/
            /*OUT: {
            Reverse<2171,>}*/
            /*OUT: {
            Reverse<2171, 1122_1; 1088_1; 1084_0;>}*/
            for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
                /*OUT: {
                Reverse<2171, 1084_0;>}*/
                /*OUT: {
                Reverse<2171, 1084_0;>}*/
                /*OUT: {
                Reverse<2171, 1091_1; 1088_0; 1084_0;>}*/
                for (k = 0; k < d[2]; k++) {
                    /*OUT: {
                    Reverse<2171, 1088_0; 1084_0;>}*/
                    /*OUT: {
                    Reverse<2171, 1088_0; 1084_0;>}*/
                    /*OUT: {
                    Reverse<2171, 1091_0; 1088_0; 1084_0;>}*/
                    for (i = 0; i < fftblock; i++) {
                        /*OUT: {
                        Reverse<2171, 1091_0; 1088_0; 1084_0;>}*/
                        y0[k][i].real = x[k][j][i + ii].real;
                        /*OUT: {
                        Reverse<2171, 1091_0; 1088_0; 1084_0;>}*/
                        y0[k][i].imag = x[k][j][i + ii].imag;
                    }
                }
                /*OUT: {
                Reverse<2171, 1088_1; 1084_0;>}*/
                int _imopVarPre261;
                /*OUT: {
                Reverse<2171, 1088_1; 1084_0;>}*/
                int _imopVarPre262;
                /*OUT: {
                Reverse<2171, 1088_1; 1084_0;>}*/
                _imopVarPre261 = d[2];
                /*OUT: {
                Reverse<2171, 1088_1; 1084_0;>}*/
                _imopVarPre262 = logd[2];
                /*OUT: {
                Reverse<2171, 1088_1; 1084_0;>}*/
                cfftz(is, _imopVarPre262, _imopVarPre261, y0, y1);
                /*OUT: {
                Reverse<2171, 1088_1; 1084_0;>}*/
                /*OUT: {
                Reverse<2171, 1088_1; 1084_0;>}*/
                /*OUT: {
                Reverse<2171, 1088_1; 1084_0;>}*/
                /*OUT: {
                Reverse<2171, 1125_1; 1122_0; 1088_1; 1084_0;>}*/
                for (k = 0; k < d[2]; k++) {
                    /*OUT: {
                    Reverse<2171, 1122_0; 1088_1; 1084_0;>}*/
                    /*OUT: {
                    Reverse<2171, 1122_0; 1088_1; 1084_0;>}*/
                    /*OUT: {
                    Reverse<2171, 1125_0; 1122_0; 1088_1; 1084_0;>}*/
                    for (i = 0; i < fftblock; i++) {
                        /*OUT: {
                        Reverse<2171, 1125_0; 1122_0; 1088_1; 1084_0;>}*/
                        xout[k][j][i + ii].real = y0[k][i].real;
                        /*OUT: {
                        Reverse<2171, 1125_0; 1122_0; 1088_1; 1084_0;>}*/
                        xout[k][j][i + ii].imag = y0[k][i].imag;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<2171,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1141,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
static void fft_init(int n) {
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    int nu;
    /*OUT: {
    Reverse<--,>}*/
    int ku;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int ln;
    /*OUT: {
    Reverse<--,>}*/
    double t;
    /*OUT: {
    Reverse<--,>}*/
    double ti;
    /*OUT: {
    Reverse<--,>}*/
    nu = n;
    /*OUT: {
    Reverse<--,>}*/
    m = ilog2(n);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    u[0].real = (double) m;
    /*OUT: {
    Reverse<--,>}*/
    u[0].imag = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ku = 1;
    /*OUT: {
    Reverse<--,>}*/
    ln = 1;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1175_1; 1170_0;>}*/
    for (j = 1; j <= m; j++) {
        /*OUT: {
        Reverse<--, 1170_0;>}*/
        t = 3.141592653589793238 / ln;
        /*OUT: {
        Reverse<--, 1170_0;>}*/
        /*OUT: {
        Reverse<--, 1170_0;>}*/
        /*OUT: {
        Reverse<--, 1175_0; 1170_0;>}*/
        for (i = 0; i <= ln - 1; i++) {
            /*OUT: {
            Reverse<--, 1175_0; 1170_0;>}*/
            ti = i * t;
            /*OUT: {
            Reverse<--, 1175_0; 1170_0;>}*/
            double _imopVarPre263;
            /*OUT: {
            Reverse<--, 1175_0; 1170_0;>}*/
            _imopVarPre263 = cos(ti);
            /*OUT: {
            Reverse<--, 1175_0; 1170_0;>}*/
            /*OUT: {
            Reverse<--, 1175_0; 1170_0;>}*/
            u[i + ku].real = _imopVarPre263;
            /*OUT: {
            Reverse<--, 1175_0; 1170_0;>}*/
            double _imopVarPre264;
            /*OUT: {
            Reverse<--, 1175_0; 1170_0;>}*/
            _imopVarPre264 = sin(ti);
            /*OUT: {
            Reverse<--, 1175_0; 1170_0;>}*/
            /*OUT: {
            Reverse<--, 1175_0; 1170_0;>}*/
            u[i + ku].imag = _imopVarPre264;
        }
        /*OUT: {
        Reverse<--, 1175_1; 1170_0;>}*/
        ku = ku + ln;
        /*OUT: {
        Reverse<--, 1175_1; 1170_0;>}*/
        ln = 2 * ln;
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
static void cfftz(int is, int m , int n , dcomplex x[64][18] , dcomplex y[64][18]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int l;
    /*OUT: {
    Reverse<--,>}*/
    int mx;
    /*OUT: {
    Reverse<--,>}*/
    mx = (int) (u[0].real);
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre266;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre267;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre268;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre266 = is != 1;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre266) {
        /*OUT: {
        Reverse<--, 1221_0;>}*/
        _imopVarPre266 = is != -1;
    }
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre267 = _imopVarPre266;
    /*OUT: {
    Reverse<--,>}*/
    if (!_imopVarPre267) {
        /*OUT: {
        Reverse<--, 1226_0;>}*/
        _imopVarPre268 = m < 1;
        /*OUT: {
        Reverse<--, 1226_0;>}*/
        if (!_imopVarPre268) {
            /*OUT: {
            Reverse<--, 1229_0; 1226_0;>}*/
            _imopVarPre268 = m > mx;
        }
        /*OUT: {
        Reverse<--, 1226_0;>}*/
        _imopVarPre267 = _imopVarPre268;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre267) {
        /*OUT: {
        Reverse<--, 1234_0;>}*/
        printf("CFFTZ: Either U has not been initialized, or else\n" "one of the input parameters is invalid%5d%5d%5d\n", is, m, mx);
        /*OUT: {
        Reverse<--, 1234_0;>}*/
        /*OUT: {
        Reverse<--, 1234_0;>}*/
        exit(1);
        /*OUT: {
        Reverse<--, 1234_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1253_1; 1246_0;>}*/
    for (l = 1; l <= m; l += 2) {
        /*OUT: {
        Reverse<--, 1246_0;>}*/
        fftz2(is, l, m, n, fftblock, fftblockpad, u, x, y);
        /*OUT: {
        Reverse<--, 1246_0;>}*/
        /*OUT: {
        Reverse<--, 1246_0;>}*/
        if (l == m) {
            /*OUT: {
            Reverse<--, 1253_0; 1246_0;>}*/
            break;
        }
        /*OUT: {
        Reverse<--, 1253_1; 1246_0;>}*/
        int _imopVarPre270;
        /*OUT: {
        Reverse<--, 1253_1; 1246_0;>}*/
        _imopVarPre270 = l + 1;
        /*OUT: {
        Reverse<--, 1253_1; 1246_0;>}*/
        fftz2(is, _imopVarPre270, m, n, fftblock, fftblockpad, u, y, x);
        /*OUT: {
        Reverse<--, 1253_1; 1246_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1253_0; 1246_0;>
    Reverse<--, 1246_1;>}*/
    if (m % 2 == 1) {
        /*OUT: {
        Reverse<--, 1263_0; 1253_0; 1246_0;>
        Reverse<--, 1263_0; 1246_1;>}*/
        /*OUT: {
        Reverse<--, 1263_0; 1253_0; 1246_0;>
        Reverse<--, 1263_0; 1246_1;>}*/
        /*OUT: {
        Reverse<--, 1268_1; 1265_0; 1263_0; 1253_0; 1246_0;>
        Reverse<--, 1268_1; 1265_0; 1263_0; 1246_1;>}*/
        for (j = 0; j < n; j++) {
            /*OUT: {
            Reverse<--, 1265_0; 1263_0; 1253_0; 1246_0;>
            Reverse<--, 1265_0; 1263_0; 1246_1;>}*/
            /*OUT: {
            Reverse<--, 1265_0; 1263_0; 1253_0; 1246_0;>
            Reverse<--, 1265_0; 1263_0; 1246_1;>}*/
            /*OUT: {
            Reverse<--, 1268_0; 1265_0; 1263_0; 1253_0; 1246_0;>
            Reverse<--, 1268_0; 1265_0; 1263_0; 1246_1;>}*/
            for (i = 0; i < fftblock; i++) {
                /*OUT: {
                Reverse<--, 1268_0; 1265_0; 1263_0; 1253_0; 1246_0;>
                Reverse<--, 1268_0; 1265_0; 1263_0; 1246_1;>}*/
                x[j][i].real = y[j][i].real;
                /*OUT: {
                Reverse<--, 1268_0; 1265_0; 1263_0; 1253_0; 1246_0;>
                Reverse<--, 1268_0; 1265_0; 1263_0; 1246_1;>}*/
                x[j][i].imag = y[j][i].imag;
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
static void fftz2(int is, int l , int m , int n , int ny , int ny1 , dcomplex u[64] , dcomplex x[64][18] , dcomplex y[64][18]) {
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int n1;
    /*OUT: {
    Reverse<--,>}*/
    int li;
    /*OUT: {
    Reverse<--,>}*/
    int lj;
    /*OUT: {
    Reverse<--,>}*/
    int lk;
    /*OUT: {
    Reverse<--,>}*/
    int ku;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int i11;
    /*OUT: {
    Reverse<--,>}*/
    int i12;
    /*OUT: {
    Reverse<--,>}*/
    int i21;
    /*OUT: {
    Reverse<--,>}*/
    int i22;
    /*OUT: {
    Reverse<--,>}*/
    dcomplex u1;
    /*OUT: {
    Reverse<--,>}*/
    n1 = n / 2;
    /*OUT: {
    Reverse<--,>}*/
    if (l - 1 == 0) {
        /*OUT: {
        Reverse<--, 1306_0;>}*/
        lk = 1;
    } else {
        /*OUT: {
        Reverse<--, 1306_1;>}*/
        lk = 2 << ((l - 1) - 1);
    }
    /*OUT: {
    Reverse<--,>}*/
    if (m - l == 0) {
        /*OUT: {
        Reverse<--, 1313_0;>}*/
        li = 1;
    } else {
        /*OUT: {
        Reverse<--, 1313_1;>}*/
        li = 2 << ((m - l) - 1);
    }
    /*OUT: {
    Reverse<--,>}*/
    lj = 2 * lk;
    /*OUT: {
    Reverse<--,>}*/
    ku = li;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1349_1; 1325_0;>}*/
    for (i = 0; i < li; i++) {
        /*OUT: {
        Reverse<--, 1325_0;>}*/
        i11 = i * lk;
        /*OUT: {
        Reverse<--, 1325_0;>}*/
        i12 = i11 + n1;
        /*OUT: {
        Reverse<--, 1325_0;>}*/
        i21 = i * lj;
        /*OUT: {
        Reverse<--, 1325_0;>}*/
        i22 = i21 + lk;
        /*OUT: {
        Reverse<--, 1325_0;>}*/
        if (is >= 1) {
            /*OUT: {
            Reverse<--, 1335_0; 1325_0;>}*/
            u1.real = u[ku + i].real;
            /*OUT: {
            Reverse<--, 1335_0; 1325_0;>}*/
            u1.imag = u[ku + i].imag;
        } else {
            /*OUT: {
            Reverse<--, 1335_1; 1325_0;>}*/
            u1.real = u[ku + i].real;
            /*OUT: {
            Reverse<--, 1335_1; 1325_0;>}*/
            u1.imag = -u[ku + i].imag;
        }
        /*OUT: {
        Reverse<--, 1325_0;>}*/
        /*OUT: {
        Reverse<--, 1325_0;>}*/
        /*OUT: {
        Reverse<--, 1352_1; 1349_0; 1325_0;>}*/
        for (k = 0; k < lk; k++) {
            /*OUT: {
            Reverse<--, 1349_0; 1325_0;>}*/
            /*OUT: {
            Reverse<--, 1349_0; 1325_0;>}*/
            /*OUT: {
            Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
            for (j = 0; j < ny; j++) {
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                double x11real;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                double x11imag;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                double x21real;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                double x21imag;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                x11real = x[i11 + k][j].real;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                x11imag = x[i11 + k][j].imag;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                x21real = x[i12 + k][j].real;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                x21imag = x[i12 + k][j].imag;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                y[i21 + k][j].real = x11real + x21real;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                y[i21 + k][j].imag = x11imag + x21imag;
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                y[i22 + k][j].real = u1.real * (x11real - x21real) - u1.imag * (x11imag - x21imag);
                /*OUT: {
                Reverse<--, 1352_0; 1349_0; 1325_0;>}*/
                y[i22 + k][j].imag = u1.real * (x11imag - x21imag) + u1.imag * (x11real - x21real);
            }
        }
    }
}
/*OUT: {
Reverse<--,>}*/
static int ilog2(int n) {
    /*OUT: {
    Reverse<--,>}*/
    int nn;
    /*OUT: {
    Reverse<--,>}*/
    int lg;
    /*OUT: {
    Reverse<--,>}*/
    if (n == 1) {
        /*OUT: {
        Reverse<--, 1397_0;>}*/
        return 0;
    }
    /*OUT: {
    Reverse<--, 1397_1;>}*/
    lg = 1;
    /*OUT: {
    Reverse<--, 1397_1;>}*/
    nn = 2;
    /*OUT: {
    Reverse<--, 1397_1;>}*/
    while (nn < n) {
        /*OUT: {
        Reverse<--, 1404_0; 1397_1;>}*/
        nn = nn << 1;
        /*OUT: {
        Reverse<--, 1404_0; 1397_1;>}*/
        lg++;
    }
    /*OUT: {
    Reverse<--, 1404_1; 1397_1;>}*/
    return lg;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void checksum(int i, dcomplex u1[64][64][64] , int d[3]) {
#pragma omp parallel default(shared)
    {
        /*OUT: {
        Reverse<2306,>}*/
        int j;
        /*OUT: {
        Reverse<2306,>}*/
        int q;
        /*OUT: {
        Reverse<2306,>}*/
        int r;
        /*OUT: {
        Reverse<2306,>}*/
        int s;
        /*OUT: {
        Reverse<2306,>}*/
        dcomplex chk;
        /*OUT: {
        Reverse<2306,>}*/
        chk.real = 0.0;
        /*OUT: {
        Reverse<2306,>}*/
        chk.imag = 0.0;
#pragma omp for nowait
        /*OUT: {
        Reverse<2306,>}*/
        /*OUT: {
        Reverse<2306,>}*/
        /*OUT: {
        Reverse<2306,>}*/
        for (j = 1; j <= 1024; j++) {
            /*OUT: {
            Reverse<2306,>}*/
            q = j % 64 + 1;
            /*OUT: {
            Reverse<2306,>}*/
            int _imopVarPre272;
            /*OUT: {
            Reverse<2306,>}*/
            _imopVarPre272 = q >= xstart[0];
            /*OUT: {
            Reverse<2306,>}*/
            if (_imopVarPre272) {
                /*OUT: {
                Reverse<2306, 1434_0;>}*/
                _imopVarPre272 = q <= xend[0];
            }
            /*OUT: {
            Reverse<2306,>}*/
            if (_imopVarPre272) {
                /*OUT: {
                Reverse<2306, 1438_0;>}*/
                r = (3 * j) % 64 + 1;
                /*OUT: {
                Reverse<2306, 1438_0;>}*/
                int _imopVarPre274;
                /*OUT: {
                Reverse<2306, 1438_0;>}*/
                _imopVarPre274 = r >= ystart[0];
                /*OUT: {
                Reverse<2306, 1438_0;>}*/
                if (_imopVarPre274) {
                    /*OUT: {
                    Reverse<2306, 1446_0; 1438_0;>}*/
                    _imopVarPre274 = r <= yend[0];
                }
                /*OUT: {
                Reverse<2306, 1438_0;>}*/
                if (_imopVarPre274) {
                    /*OUT: {
                    Reverse<2306, 1450_0; 1438_0;>}*/
                    s = (5 * j) % 64 + 1;
                    /*OUT: {
                    Reverse<2306, 1450_0; 1438_0;>}*/
                    int _imopVarPre276;
                    /*OUT: {
                    Reverse<2306, 1450_0; 1438_0;>}*/
                    _imopVarPre276 = s >= zstart[0];
                    /*OUT: {
                    Reverse<2306, 1450_0; 1438_0;>}*/
                    if (_imopVarPre276) {
                        /*OUT: {
                        Reverse<2306, 1458_0; 1450_0; 1438_0;>}*/
                        _imopVarPre276 = s <= zend[0];
                    }
                    /*OUT: {
                    Reverse<2306, 1450_0; 1438_0;>}*/
                    if (_imopVarPre276) {
                        /*OUT: {
                        Reverse<2306, 1462_0; 1450_0; 1438_0;>}*/
                        chk.real = chk.real + u1[s - zstart[0]][r - ystart[0]][q - xstart[0]].real;
                        /*OUT: {
                        Reverse<2306, 1462_0; 1450_0; 1438_0;>}*/
                        (chk.imag = chk.imag + u1[s - zstart[0]][r - ystart[0]][q - xstart[0]].imag);
                    }
                }
            }
        }
        /*OUT: {
        Reverse<2306,>}*/
        // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
        {
            /*OUT: {
            Reverse<2306,>}*/
            sums[i].real += chk.real;
            /*OUT: {
            Reverse<2306,>}*/
            sums[i].imag += chk.imag;
        }
        /*OUT: {
        Reverse<2306,>}*/
        // #pragma omp dummyFlush CRITICAL_END
        /*OUT: {
        Reverse<2306,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1486,>}*/
#pragma omp barrier
#pragma omp single nowait
        {
            /*OUT: {
            Reverse<1486,>}*/
            sums[i].real = sums[i].real / (double) 262144;
            /*OUT: {
            Reverse<1486,>}*/
            sums[i].imag = sums[i].imag / (double) 262144;
            /*OUT: {
            Reverse<1486,>}*/
            double _imopVarPre279;
            /*OUT: {
            Reverse<1486,>}*/
            double _imopVarPre280;
            /*OUT: {
            Reverse<1486,>}*/
            _imopVarPre279 = sums[i].imag;
            /*OUT: {
            Reverse<1486,>}*/
            _imopVarPre280 = sums[i].real;
            /*OUT: {
            Reverse<1486,>}*/
            printf("T = %5d     Checksum = %22.12e %22.12e\n", i, _imopVarPre280, _imopVarPre279);
            /*OUT: {
            Reverse<1486,>}*/
        }
        /*OUT: {
        Reverse<1486,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<1508,>}*/
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void verify(int d1, int d2 , int d3 , int nt , boolean *verified , char *class) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    double err;
    /*OUT: {
    Reverse<--,>}*/
    double epsilon;
    /*OUT: {
    Reverse<--,>}*/
    double vdata_real_s[6 + 1] = {0.0, 5.546087004964e+02 , 5.546385409189e+02 , 5.546148406171e+02 , 5.545423607415e+02 , 5.544255039624e+02 , 5.542683411902e+02};
    /*OUT: {
    Reverse<--,>}*/
    double vdata_imag_s[6 + 1] = {0.0, 4.845363331978e+02 , 4.865304269511e+02 , 4.883910722336e+02 , 4.901273169046e+02 , 4.917475857993e+02 , 4.932597244941e+02};
    /*OUT: {
    Reverse<--,>}*/
    double vdata_real_w[6 + 1] = {0.0, 5.673612178944e+02 , 5.631436885271e+02 , 5.594024089970e+02 , 5.560698047020e+02 , 5.530898991250e+02 , 5.504159734538e+02};
    /*OUT: {
    Reverse<--,>}*/
    double vdata_imag_w[6 + 1] = {0.0, 5.293246849175e+02 , 5.282149986629e+02 , 5.270996558037e+02 , 5.260027904925e+02 , 5.249400845633e+02 , 5.239212247086e+02};
    /*OUT: {
    Reverse<--,>}*/
    double vdata_real_a[6 + 1] = {0.0, 5.046735008193e+02 , 5.059412319734e+02 , 5.069376896287e+02 , 5.077892868474e+02 , 5.085233095391e+02 , 5.091487099959e+02};
    /*OUT: {
    Reverse<--,>}*/
    double vdata_imag_a[6 + 1] = {0.0, 5.114047905510e+02 , 5.098809666433e+02 , 5.098144042213e+02 , 5.101336130759e+02 , 5.104914655194e+02 , 5.107917842803e+02};
    /*OUT: {
    Reverse<--,>}*/
    double vdata_real_b[20 + 1] = {0.0, 5.177643571579e+02 , 5.154521291263e+02 , 5.146409228649e+02 , 5.142378756213e+02 , 5.139626667737e+02 , 5.137423460082e+02 , 5.135547056878e+02 , 5.133910925466e+02 , 5.132470705390e+02 , 5.131197729984e+02 , 5.130070319283e+02 , 5.129070537032e+02 , 5.128182883502e+02 , 5.127393733383e+02 , 5.126691062020e+02 , 5.126064276004e+02 , 5.125504076570e+02 , 5.125002331720e+02 , 5.124551951846e+02 , 5.124146770029e+02};
    /*OUT: {
    Reverse<--,>}*/
    double vdata_imag_b[20 + 1] = {0.0, 5.077803458597e+02 , 5.088249431599e+02 , 5.096208912659e+02 , 5.101023387619e+02 , 5.103976610617e+02 , 5.105948019802e+02 , 5.107404165783e+02 , 5.108576573661e+02 , 5.109577278523e+02 , 5.110460304483e+02 , 5.111252433800e+02 , 5.111968077718e+02 , 5.112616233064e+02 , 5.113203605551e+02 , 5.113735928093e+02 , 5.114218460548e+02 , 5.114656139760e+02 , 5.115053595966e+02 , 5.115415130407e+02 , 5.115744692211e+02};
    /*OUT: {
    Reverse<--,>}*/
    double vdata_real_c[20 + 1] = {0.0, 5.195078707457e+02 , 5.155422171134e+02 , 5.144678022222e+02 , 5.140150594328e+02 , 5.137550426810e+02 , 5.135811056728e+02 , 5.134569343165e+02 , 5.133651975661e+02 , 5.132955192805e+02 , 5.132410471738e+02 , 5.131971141679e+02 , 5.131605205716e+02 , 5.131290734194e+02 , 5.131012720314e+02 , 5.130760908195e+02 , 5.130528295923e+02 , 5.130310107773e+02 , 5.130103090133e+02 , 5.129905029333e+02 , 5.129714421109e+02};
    /*OUT: {
    Reverse<--,>}*/
    double vdata_imag_c[20 + 1] = {0.0, 5.149019699238e+02 , 5.127578201997e+02 , 5.122251847514e+02 , 5.121090289018e+02 , 5.121143685824e+02 , 5.121496764568e+02 , 5.121870921893e+02 , 5.122193250322e+02 , 5.122454735794e+02 , 5.122663649603e+02 , 5.122830879827e+02 , 5.122965869718e+02 , 5.123075927445e+02 , 5.123166486553e+02 , 5.123241541685e+02 , 5.123304037599e+02 , 5.123356167976e+02 , 5.123399592211e+02 , 5.123435588985e+02 , 5.123465164008e+02};
    /*OUT: {
    Reverse<--,>}*/
    epsilon = 1.0e-12;
    /*OUT: {
    Reverse<--,>}*/
    *verified = 1;
    /*OUT: {
    Reverse<--,>}*/
    *class = 'U';
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre284;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre285;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre286;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre284 = d1 == 64;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre284) {
        /*OUT: {
        Reverse<--, 1539_0;>}*/
        _imopVarPre285 = d2 == 64;
        /*OUT: {
        Reverse<--, 1539_0;>}*/
        if (_imopVarPre285) {
            /*OUT: {
            Reverse<--, 1542_0; 1539_0;>}*/
            _imopVarPre286 = d3 == 64;
            /*OUT: {
            Reverse<--, 1542_0; 1539_0;>}*/
            if (_imopVarPre286) {
                /*OUT: {
                Reverse<--, 1545_0; 1542_0; 1539_0;>}*/
                _imopVarPre286 = nt == 6;
            }
            /*OUT: {
            Reverse<--, 1542_0; 1539_0;>}*/
            _imopVarPre285 = _imopVarPre286;
        }
        /*OUT: {
        Reverse<--, 1539_0;>}*/
        _imopVarPre284 = _imopVarPre285;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre284) {
        /*OUT: {
        Reverse<--, 1552_0;>}*/
        *class = 'S';
        /*OUT: {
        Reverse<--, 1552_0;>}*/
        /*OUT: {
        Reverse<--, 1552_0;>}*/
        /*OUT: {
        Reverse<--, 1588_1; 1571_1; 1556_0; 1552_0;>}*/
        for (i = 1; i <= nt; i++) {
            /*OUT: {
            Reverse<--, 1556_0; 1552_0;>}*/
            err = (sums[i].real - vdata_real_s[i]) / vdata_real_s[i];
            /*OUT: {
            Reverse<--, 1556_0; 1552_0;>}*/
            double _imopVarPre288;
            /*OUT: {
            Reverse<--, 1556_0; 1552_0;>}*/
            _imopVarPre288 = fabs(err);
            /*OUT: {
            Reverse<--, 1556_0; 1552_0;>}*/
            /*OUT: {
            Reverse<--, 1556_0; 1552_0;>}*/
            if (_imopVarPre288 > epsilon) {
                /*OUT: {
                Reverse<--, 1571_0; 1556_0; 1552_0;>}*/
                *verified = 0;
                /*OUT: {
                Reverse<--, 1571_0; 1556_0; 1552_0;>}*/
                break;
            }
            /*OUT: {
            Reverse<--, 1571_1; 1556_0; 1552_0;>}*/
            err = (sums[i].imag - vdata_imag_s[i]) / vdata_imag_s[i];
            /*OUT: {
            Reverse<--, 1571_1; 1556_0; 1552_0;>}*/
            double _imopVarPre290;
            /*OUT: {
            Reverse<--, 1571_1; 1556_0; 1552_0;>}*/
            _imopVarPre290 = fabs(err);
            /*OUT: {
            Reverse<--, 1571_1; 1556_0; 1552_0;>}*/
            /*OUT: {
            Reverse<--, 1571_1; 1556_0; 1552_0;>}*/
            if (_imopVarPre290 > epsilon) {
                /*OUT: {
                Reverse<--, 1588_0; 1571_1; 1556_0; 1552_0;>}*/
                *verified = 0;
                /*OUT: {
                Reverse<--, 1588_0; 1571_1; 1556_0; 1552_0;>}*/
                break;
            }
        }
    } else {
        /*OUT: {
        Reverse<--, 1552_1;>}*/
        int _imopVarPre294;
        /*OUT: {
        Reverse<--, 1552_1;>}*/
        int _imopVarPre295;
        /*OUT: {
        Reverse<--, 1552_1;>}*/
        int _imopVarPre296;
        /*OUT: {
        Reverse<--, 1552_1;>}*/
        _imopVarPre294 = d1 == 128;
        /*OUT: {
        Reverse<--, 1552_1;>}*/
        if (_imopVarPre294) {
            /*OUT: {
            Reverse<--, 1597_0; 1552_1;>}*/
            _imopVarPre295 = d2 == 128;
            /*OUT: {
            Reverse<--, 1597_0; 1552_1;>}*/
            if (_imopVarPre295) {
                /*OUT: {
                Reverse<--, 1600_0; 1597_0; 1552_1;>}*/
                _imopVarPre296 = d3 == 32;
                /*OUT: {
                Reverse<--, 1600_0; 1597_0; 1552_1;>}*/
                if (_imopVarPre296) {
                    /*OUT: {
                    Reverse<--, 1603_0; 1600_0; 1597_0; 1552_1;>}*/
                    _imopVarPre296 = nt == 6;
                }
                /*OUT: {
                Reverse<--, 1600_0; 1597_0; 1552_1;>}*/
                _imopVarPre295 = _imopVarPre296;
            }
            /*OUT: {
            Reverse<--, 1597_0; 1552_1;>}*/
            _imopVarPre294 = _imopVarPre295;
        }
        /*OUT: {
        Reverse<--, 1552_1;>}*/
        if (_imopVarPre294) {
            /*OUT: {
            Reverse<--, 1610_0; 1552_1;>}*/
            *class = 'W';
            /*OUT: {
            Reverse<--, 1610_0; 1552_1;>}*/
            /*OUT: {
            Reverse<--, 1610_0; 1552_1;>}*/
            /*OUT: {
            Reverse<--, 1646_1; 1629_1; 1614_0; 1610_0; 1552_1;>}*/
            for (i = 1; i <= nt; i++) {
                /*OUT: {
                Reverse<--, 1614_0; 1610_0; 1552_1;>}*/
                err = (sums[i].real - vdata_real_w[i]) / vdata_real_w[i];
                /*OUT: {
                Reverse<--, 1614_0; 1610_0; 1552_1;>}*/
                double _imopVarPre298;
                /*OUT: {
                Reverse<--, 1614_0; 1610_0; 1552_1;>}*/
                _imopVarPre298 = fabs(err);
                /*OUT: {
                Reverse<--, 1614_0; 1610_0; 1552_1;>}*/
                /*OUT: {
                Reverse<--, 1614_0; 1610_0; 1552_1;>}*/
                if (_imopVarPre298 > epsilon) {
                    /*OUT: {
                    Reverse<--, 1629_0; 1614_0; 1610_0; 1552_1;>}*/
                    *verified = 0;
                    /*OUT: {
                    Reverse<--, 1629_0; 1614_0; 1610_0; 1552_1;>}*/
                    break;
                }
                /*OUT: {
                Reverse<--, 1629_1; 1614_0; 1610_0; 1552_1;>}*/
                err = (sums[i].imag - vdata_imag_w[i]) / vdata_imag_w[i];
                /*OUT: {
                Reverse<--, 1629_1; 1614_0; 1610_0; 1552_1;>}*/
                double _imopVarPre300;
                /*OUT: {
                Reverse<--, 1629_1; 1614_0; 1610_0; 1552_1;>}*/
                _imopVarPre300 = fabs(err);
                /*OUT: {
                Reverse<--, 1629_1; 1614_0; 1610_0; 1552_1;>}*/
                /*OUT: {
                Reverse<--, 1629_1; 1614_0; 1610_0; 1552_1;>}*/
                if (_imopVarPre300 > epsilon) {
                    /*OUT: {
                    Reverse<--, 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>}*/
                    *verified = 0;
                    /*OUT: {
                    Reverse<--, 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>}*/
                    break;
                }
            }
        } else {
            /*OUT: {
            Reverse<--, 1610_1; 1552_1;>}*/
            int _imopVarPre304;
            /*OUT: {
            Reverse<--, 1610_1; 1552_1;>}*/
            int _imopVarPre305;
            /*OUT: {
            Reverse<--, 1610_1; 1552_1;>}*/
            int _imopVarPre306;
            /*OUT: {
            Reverse<--, 1610_1; 1552_1;>}*/
            _imopVarPre304 = d1 == 256;
            /*OUT: {
            Reverse<--, 1610_1; 1552_1;>}*/
            if (_imopVarPre304) {
                /*OUT: {
                Reverse<--, 1655_0; 1610_1; 1552_1;>}*/
                _imopVarPre305 = d2 == 256;
                /*OUT: {
                Reverse<--, 1655_0; 1610_1; 1552_1;>}*/
                if (_imopVarPre305) {
                    /*OUT: {
                    Reverse<--, 1658_0; 1655_0; 1610_1; 1552_1;>}*/
                    _imopVarPre306 = d3 == 128;
                    /*OUT: {
                    Reverse<--, 1658_0; 1655_0; 1610_1; 1552_1;>}*/
                    if (_imopVarPre306) {
                        /*OUT: {
                        Reverse<--, 1661_0; 1658_0; 1655_0; 1610_1; 1552_1;>}*/
                        _imopVarPre306 = nt == 6;
                    }
                    /*OUT: {
                    Reverse<--, 1658_0; 1655_0; 1610_1; 1552_1;>}*/
                    _imopVarPre305 = _imopVarPre306;
                }
                /*OUT: {
                Reverse<--, 1655_0; 1610_1; 1552_1;>}*/
                _imopVarPre304 = _imopVarPre305;
            }
            /*OUT: {
            Reverse<--, 1610_1; 1552_1;>}*/
            if (_imopVarPre304) {
                /*OUT: {
                Reverse<--, 1668_0; 1610_1; 1552_1;>}*/
                *class = 'A';
                /*OUT: {
                Reverse<--, 1668_0; 1610_1; 1552_1;>}*/
                /*OUT: {
                Reverse<--, 1668_0; 1610_1; 1552_1;>}*/
                /*OUT: {
                Reverse<--, 1704_1; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                for (i = 1; i <= nt; i++) {
                    /*OUT: {
                    Reverse<--, 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    err = (sums[i].real - vdata_real_a[i]) / vdata_real_a[i];
                    /*OUT: {
                    Reverse<--, 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    double _imopVarPre308;
                    /*OUT: {
                    Reverse<--, 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    _imopVarPre308 = fabs(err);
                    /*OUT: {
                    Reverse<--, 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    /*OUT: {
                    Reverse<--, 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    if (_imopVarPre308 > epsilon) {
                        /*OUT: {
                        Reverse<--, 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                        *verified = 0;
                        /*OUT: {
                        Reverse<--, 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                        break;
                    }
                    /*OUT: {
                    Reverse<--, 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    err = (sums[i].imag - vdata_imag_a[i]) / vdata_imag_a[i];
                    /*OUT: {
                    Reverse<--, 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    double _imopVarPre310;
                    /*OUT: {
                    Reverse<--, 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    _imopVarPre310 = fabs(err);
                    /*OUT: {
                    Reverse<--, 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    /*OUT: {
                    Reverse<--, 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                    if (_imopVarPre310 > epsilon) {
                        /*OUT: {
                        Reverse<--, 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                        *verified = 0;
                        /*OUT: {
                        Reverse<--, 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>}*/
                        break;
                    }
                }
            } else {
                /*OUT: {
                Reverse<--, 1668_1; 1610_1; 1552_1;>}*/
                int _imopVarPre314;
                /*OUT: {
                Reverse<--, 1668_1; 1610_1; 1552_1;>}*/
                int _imopVarPre315;
                /*OUT: {
                Reverse<--, 1668_1; 1610_1; 1552_1;>}*/
                int _imopVarPre316;
                /*OUT: {
                Reverse<--, 1668_1; 1610_1; 1552_1;>}*/
                _imopVarPre314 = d1 == 512;
                /*OUT: {
                Reverse<--, 1668_1; 1610_1; 1552_1;>}*/
                if (_imopVarPre314) {
                    /*OUT: {
                    Reverse<--, 1713_0; 1668_1; 1610_1; 1552_1;>}*/
                    _imopVarPre315 = d2 == 256;
                    /*OUT: {
                    Reverse<--, 1713_0; 1668_1; 1610_1; 1552_1;>}*/
                    if (_imopVarPre315) {
                        /*OUT: {
                        Reverse<--, 1716_0; 1713_0; 1668_1; 1610_1; 1552_1;>}*/
                        _imopVarPre316 = d3 == 256;
                        /*OUT: {
                        Reverse<--, 1716_0; 1713_0; 1668_1; 1610_1; 1552_1;>}*/
                        if (_imopVarPre316) {
                            /*OUT: {
                            Reverse<--, 1719_0; 1716_0; 1713_0; 1668_1; 1610_1; 1552_1;>}*/
                            _imopVarPre316 = nt == 20;
                        }
                        /*OUT: {
                        Reverse<--, 1716_0; 1713_0; 1668_1; 1610_1; 1552_1;>}*/
                        _imopVarPre315 = _imopVarPre316;
                    }
                    /*OUT: {
                    Reverse<--, 1713_0; 1668_1; 1610_1; 1552_1;>}*/
                    _imopVarPre314 = _imopVarPre315;
                }
                /*OUT: {
                Reverse<--, 1668_1; 1610_1; 1552_1;>}*/
                if (_imopVarPre314) {
                    /*OUT: {
                    Reverse<--, 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                    *class = 'B';
                    /*OUT: {
                    Reverse<--, 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                    /*OUT: {
                    Reverse<--, 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                    /*OUT: {
                    Reverse<--, 1762_1; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                    for (i = 1; i <= nt; i++) {
                        /*OUT: {
                        Reverse<--, 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        err = (sums[i].real - vdata_real_b[i]) / vdata_real_b[i];
                        /*OUT: {
                        Reverse<--, 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        double _imopVarPre318;
                        /*OUT: {
                        Reverse<--, 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        _imopVarPre318 = fabs(err);
                        /*OUT: {
                        Reverse<--, 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        /*OUT: {
                        Reverse<--, 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        if (_imopVarPre318 > epsilon) {
                            /*OUT: {
                            Reverse<--, 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                            *verified = 0;
                            /*OUT: {
                            Reverse<--, 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                            break;
                        }
                        /*OUT: {
                        Reverse<--, 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        err = (sums[i].imag - vdata_imag_b[i]) / vdata_imag_b[i];
                        /*OUT: {
                        Reverse<--, 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        double _imopVarPre320;
                        /*OUT: {
                        Reverse<--, 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        _imopVarPre320 = fabs(err);
                        /*OUT: {
                        Reverse<--, 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        /*OUT: {
                        Reverse<--, 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                        if (_imopVarPre320 > epsilon) {
                            /*OUT: {
                            Reverse<--, 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                            *verified = 0;
                            /*OUT: {
                            Reverse<--, 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
                            break;
                        }
                    }
                } else {
                    /*OUT: {
                    Reverse<--, 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                    int _imopVarPre324;
                    /*OUT: {
                    Reverse<--, 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                    int _imopVarPre325;
                    /*OUT: {
                    Reverse<--, 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                    int _imopVarPre326;
                    /*OUT: {
                    Reverse<--, 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                    _imopVarPre324 = d1 == 512;
                    /*OUT: {
                    Reverse<--, 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                    if (_imopVarPre324) {
                        /*OUT: {
                        Reverse<--, 1771_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                        _imopVarPre325 = d2 == 512;
                        /*OUT: {
                        Reverse<--, 1771_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                        if (_imopVarPre325) {
                            /*OUT: {
                            Reverse<--, 1774_0; 1771_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            _imopVarPre326 = d3 == 512;
                            /*OUT: {
                            Reverse<--, 1774_0; 1771_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            if (_imopVarPre326) {
                                /*OUT: {
                                Reverse<--, 1777_0; 1774_0; 1771_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                                _imopVarPre326 = nt == 20;
                            }
                            /*OUT: {
                            Reverse<--, 1774_0; 1771_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            _imopVarPre325 = _imopVarPre326;
                        }
                        /*OUT: {
                        Reverse<--, 1771_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                        _imopVarPre324 = _imopVarPre325;
                    }
                    /*OUT: {
                    Reverse<--, 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                    if (_imopVarPre324) {
                        /*OUT: {
                        Reverse<--, 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                        *class = 'C';
                        /*OUT: {
                        Reverse<--, 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                        /*OUT: {
                        Reverse<--, 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                        /*OUT: {
                        Reverse<--, 1820_1; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                        for (i = 1; i <= nt; i++) {
                            /*OUT: {
                            Reverse<--, 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            err = (sums[i].real - vdata_real_c[i]) / vdata_real_c[i];
                            /*OUT: {
                            Reverse<--, 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            double _imopVarPre328;
                            /*OUT: {
                            Reverse<--, 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            _imopVarPre328 = fabs(err);
                            /*OUT: {
                            Reverse<--, 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            /*OUT: {
                            Reverse<--, 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            if (_imopVarPre328 > epsilon) {
                                /*OUT: {
                                Reverse<--, 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                                *verified = 0;
                                /*OUT: {
                                Reverse<--, 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                                break;
                            }
                            /*OUT: {
                            Reverse<--, 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            err = (sums[i].imag - vdata_imag_c[i]) / vdata_imag_c[i];
                            /*OUT: {
                            Reverse<--, 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            double _imopVarPre330;
                            /*OUT: {
                            Reverse<--, 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            _imopVarPre330 = fabs(err);
                            /*OUT: {
                            Reverse<--, 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            /*OUT: {
                            Reverse<--, 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                            if (_imopVarPre330 > epsilon) {
                                /*OUT: {
                                Reverse<--, 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                                *verified = 0;
                                /*OUT: {
                                Reverse<--, 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>}*/
                                break;
                            }
                        }
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 1588_0; 1571_1; 1556_0; 1552_0;>
    Reverse<--, 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1614_1; 1610_0; 1552_1;>
    Reverse<--, 1629_0; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1730_1; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1784_1; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1788_1; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1672_1; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1571_0; 1556_0; 1552_0;>
    Reverse<--, 1556_1; 1552_0;>}*/
    if (*class != 'U') {
        /*OUT: {
        Reverse<--, 1824_0; 1788_1; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1672_1; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1629_0; 1614_0; 1610_0; 1552_1;>
        Reverse<--, 1824_0; 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1588_0; 1571_1; 1556_0; 1552_0;>
        Reverse<--, 1824_0; 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1571_0; 1556_0; 1552_0;>
        Reverse<--, 1824_0; 1556_1; 1552_0;>
        Reverse<--, 1824_0; 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1784_1; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>
        Reverse<--, 1824_0; 1614_1; 1610_0; 1552_1;>
        Reverse<--, 1824_0; 1730_1; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
        printf("Result verification successful\n");
        /*OUT: {
        Reverse<--, 1824_0; 1788_1; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1672_1; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1629_0; 1614_0; 1610_0; 1552_1;>
        Reverse<--, 1824_0; 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1588_0; 1571_1; 1556_0; 1552_0;>
        Reverse<--, 1824_0; 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1571_0; 1556_0; 1552_0;>
        Reverse<--, 1824_0; 1556_1; 1552_0;>
        Reverse<--, 1824_0; 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1784_1; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_0; 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>
        Reverse<--, 1824_0; 1614_1; 1610_0; 1552_1;>
        Reverse<--, 1824_0; 1730_1; 1726_0; 1668_1; 1610_1; 1552_1;>}*/
    } else {
        /*OUT: {
        Reverse<--, 1824_1; 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>
        Reverse<--, 1824_1; 1784_1; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1730_1; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1788_1; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1614_1; 1610_0; 1552_1;>
        Reverse<--, 1824_1; 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1571_0; 1556_0; 1552_0;>
        Reverse<--, 1824_1; 1556_1; 1552_0;>
        Reverse<--, 1824_1; 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1672_1; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1629_0; 1614_0; 1610_0; 1552_1;>
        Reverse<--, 1824_1; 1588_0; 1571_1; 1556_0; 1552_0;>}*/
        printf("Result verification failed\n");
        /*OUT: {
        Reverse<--, 1824_1; 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>
        Reverse<--, 1824_1; 1784_1; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1730_1; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1788_1; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1614_1; 1610_0; 1552_1;>
        Reverse<--, 1824_1; 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1571_0; 1556_0; 1552_0;>
        Reverse<--, 1824_1; 1556_1; 1552_0;>
        Reverse<--, 1824_1; 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1672_1; 1668_0; 1610_1; 1552_1;>
        Reverse<--, 1824_1; 1629_0; 1614_0; 1610_0; 1552_1;>
        Reverse<--, 1824_1; 1588_0; 1571_1; 1556_0; 1552_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1588_0; 1571_1; 1556_0; 1552_0;>
    Reverse<--, 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1614_1; 1610_0; 1552_1;>
    Reverse<--, 1629_0; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1730_1; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1784_1; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1788_1; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1672_1; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1556_1; 1552_0;>
    Reverse<--, 1571_0; 1556_0; 1552_0;>}*/
    char _imopVarPre332;
    /*OUT: {
    Reverse<--, 1588_0; 1571_1; 1556_0; 1552_0;>
    Reverse<--, 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1614_1; 1610_0; 1552_1;>
    Reverse<--, 1629_0; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1730_1; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1784_1; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1788_1; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1672_1; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1556_1; 1552_0;>
    Reverse<--, 1571_0; 1556_0; 1552_0;>}*/
    _imopVarPre332 = *class;
    /*OUT: {
    Reverse<--, 1588_0; 1571_1; 1556_0; 1552_0;>
    Reverse<--, 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1614_1; 1610_0; 1552_1;>
    Reverse<--, 1629_0; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1730_1; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1784_1; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1788_1; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1672_1; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1556_1; 1552_0;>
    Reverse<--, 1571_0; 1556_0; 1552_0;>}*/
    printf("class = %1c\n", _imopVarPre332);
    /*OUT: {
    Reverse<--, 1588_0; 1571_1; 1556_0; 1552_0;>
    Reverse<--, 1803_0; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1820_0; 1803_1; 1788_0; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1745_0; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1614_1; 1610_0; 1552_1;>
    Reverse<--, 1629_0; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1687_0; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1730_1; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1784_1; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1704_0; 1687_1; 1672_0; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1788_1; 1784_0; 1726_1; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1646_0; 1629_1; 1614_0; 1610_0; 1552_1;>
    Reverse<--, 1762_0; 1745_1; 1730_0; 1726_0; 1668_1; 1610_1; 1552_1;>
    Reverse<--, 1672_1; 1668_0; 1610_1; 1552_1;>
    Reverse<--, 1556_1; 1552_0;>
    Reverse<--, 1571_0; 1556_0; 1552_0;>}*/
}
