
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
    compute_indexmap(indexmap, _imopVarPre145);
    /*[]*/
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
    fft(1, u1, u0);
    /*[]*/
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
    compute_indexmap(indexmap, _imopVarPre151);
    /*[]*/
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
    fft(1, u1, u0);
    /*[]*/
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
        /*[]*/
        if (0 == 1) {
        /*[]*/
            /*[]*/
            timer_start(3);
            /*[]*/
        }
        /*[]*/
        int ( *_imopVarPre157 );
        /*[]*/
        _imopVarPre157 = dims[0];
        /*[]*/
        evolve(u0, u1, iter, indexmap, _imopVarPre157);
        /*[]*/
        /*[]*/
        /*[]*/
        if (0 == 1) {
        /*[]*/
            /*[]*/
            timer_stop(3);
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
        int _imopVarPre159;
        /*[]*/
        _imopVarPre159 = -1;
        /*[]*/
        fft(_imopVarPre159, u1, u2);
        /*[]*/
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
        if (0 == 1) {
        /*[]*/
            /*[]*/
            timer_start(4);
            /*[]*/
        }
        /*[]*/
        int ( *_imopVarPre161 );
        /*[]*/
        _imopVarPre161 = dims[0];
        /*[]*/
        checksum(iter, u2, _imopVarPre161);
        /*[]*/
        /*[]*/
        /*[]*/
        if (0 == 1) {
        /*[]*/
            /*[]*/
            timer_stop(4);
            /*[]*/
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
    /*[1]*/
#pragma omp parallel
    {
    /*[1]*/
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
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void evolve(dcomplex u0[64][64][64], dcomplex u1[64][64][64] , int t , int indexmap[64][64][64] , int d[3]) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[2]*/
#pragma omp parallel default(shared) private(i, j, k)
    {
    /*[2]*/
        /*[2]*/
#pragma omp for nowait
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (k = 0; k < d[2]; k++) {
        /*[2]*/
            /*[2]*/
            /*[2]*/
            /*[2]*/
            /*[2]*/
            for (j = 0; j < d[1]; j++) {
            /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                for (i = 0; i < d[0]; i++) {
                /*[2]*/
                    /*[2]*/
                    u1[k][j][i].real = u0[k][j][i].real * ex[t * indexmap[k][j][i]];
                    /*[2]*/
                    (u1[k][j][i].imag = u0[k][j][i].imag * ex[t * indexmap[k][j][i]]);
                }
            }
        }
        /*[2]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2]*/
#pragma omp barrier
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
static void setup() {
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
    /*[4]*/
#pragma omp parallel default(shared) private(i, j, k, ii, ii2, jj, ij2, kk)
    {
    /*[4]*/
        /*[4]*/
#pragma omp for nowait
        /*[4]*/
        /*[4]*/
        /*[4]*/
        for (i = 0; i < dims[2][0]; i++) {
        /*[4]*/
            /*[4]*/
            ii = (i + 1 + xstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
            /*[4]*/
            ii2 = ii * ii;
            /*[4]*/
            /*[4]*/
            /*[4]*/
            /*[4]*/
            for (j = 0; j < dims[2][1]; j++) {
            /*[4]*/
                /*[4]*/
                jj = (j + 1 + ystart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                /*[4]*/
                ij2 = jj * jj + ii2;
                /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                for (k = 0; k < dims[2][2]; k++) {
                /*[4]*/
                    /*[4]*/
                    kk = (k + 1 + zstart[2] - 2 + 64 / 2) % 64 - 64 / 2;
                    /*[4]*/
                    indexmap[k][j][i] = kk * kk + ij2;
                }
            }
        }
        /*[4]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[4]*/
#pragma omp barrier
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
static void print_timers() {
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
        cffts1(1, _imopVarPre225, x1, x1, y0, y1);
        /*[]*/
        /*[]*/
        int ( *_imopVarPre227 );
        /*[]*/
        _imopVarPre227 = dims[1];
        /*[]*/
        cffts2(1, _imopVarPre227, x1, x1, y0, y1);
        /*[]*/
        /*[]*/
        int ( *_imopVarPre229 );
        /*[]*/
        _imopVarPre229 = dims[2];
        /*[]*/
        cffts3(1, _imopVarPre229, x1, x2, y0, y1);
        /*[]*/
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
        cffts3(_imopVarPre233, _imopVarPre232, x1, x1, y0, y1);
        /*[]*/
        /*[]*/
        int ( *_imopVarPre236 );
        /*[]*/
        int _imopVarPre237;
        /*[]*/
        _imopVarPre236 = dims[1];
        /*[]*/
        _imopVarPre237 = -1;
        /*[]*/
        cffts2(_imopVarPre237, _imopVarPre236, x1, x1, y0, y1);
        /*[]*/
        /*[]*/
        int ( *_imopVarPre240 );
        /*[]*/
        int _imopVarPre241;
        /*[]*/
        _imopVarPre240 = dims[0];
        /*[]*/
        _imopVarPre241 = -1;
        /*[]*/
        cffts1(_imopVarPre241, _imopVarPre240, x1, x2, y0, y1);
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
static void cffts1(int is, int d[3] , dcomplex x[64][64][64] , dcomplex xout[64][64][64] , dcomplex y0[64][18] , dcomplex y1[64][18]) {
/*[]*/
    /*[]*/
    int logd[3];
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int jj;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 3; i++) {
    /*[]*/
        /*[]*/
        int _imopVarPre243;
        /*[]*/
        int _imopVarPre244;
        /*[]*/
        _imopVarPre243 = d[i];
        /*[]*/
        _imopVarPre244 = ilog2(_imopVarPre243);
        /*[]*/
        /*[]*/
        logd[i] = _imopVarPre244;
    }
    /*[6]*/
#pragma omp parallel default(shared) private(i, j, k, jj) shared(is)
    {
    /*[6]*/
        /*[6]*/
        dcomplex y0[64][18];
        /*[6]*/
        dcomplex y1[64][18];
        /*[6]*/
#pragma omp for nowait
        /*[6]*/
        /*[6]*/
        /*[6]*/
        for (k = 0; k < d[2]; k++) {
        /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (jj = 0; jj <= d[1] - fftblock; jj += fftblock) {
            /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                for (j = 0; j < fftblock; j++) {
                /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    for (i = 0; i < d[0]; i++) {
                    /*[6]*/
                        /*[6]*/
                        y0[i][j].real = x[k][j + jj][i].real;
                        /*[6]*/
                        y0[i][j].imag = x[k][j + jj][i].imag;
                    }
                }
                /*[6]*/
                int _imopVarPre247;
                /*[6]*/
                int _imopVarPre248;
                /*[6]*/
                _imopVarPre247 = d[0];
                /*[6]*/
                _imopVarPre248 = logd[0];
                /*[6]*/
                cfftz(is, _imopVarPre248, _imopVarPre247, y0, y1);
                /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                for (j = 0; j < fftblock; j++) {
                /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    for (i = 0; i < d[0]; i++) {
                    /*[6]*/
                        /*[6]*/
                        xout[k][j + jj][i].real = y0[i][j].real;
                        /*[6]*/
                        xout[k][j + jj][i].imag = y0[i][j].imag;
                    }
                }
            }
        }
        /*[6]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[6]*/
#pragma omp barrier
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
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int ii;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 3; i++) {
    /*[]*/
        /*[]*/
        int _imopVarPre250;
        /*[]*/
        int _imopVarPre251;
        /*[]*/
        _imopVarPre250 = d[i];
        /*[]*/
        _imopVarPre251 = ilog2(_imopVarPre250);
        /*[]*/
        /*[]*/
        logd[i] = _imopVarPre251;
    }
    /*[8]*/
#pragma omp parallel default(shared) private(i, j, k, ii) shared(is)
    {
    /*[8]*/
        /*[8]*/
        dcomplex y0[64][18];
        /*[8]*/
        dcomplex y1[64][18];
        /*[8]*/
#pragma omp for nowait
        /*[8]*/
        /*[8]*/
        /*[8]*/
        for (k = 0; k < d[2]; k++) {
        /*[8]*/
            /*[8]*/
            /*[8]*/
            /*[8]*/
            /*[8]*/
            for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
            /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                for (j = 0; j < d[1]; j++) {
                /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    for (i = 0; i < fftblock; i++) {
                    /*[8]*/
                        /*[8]*/
                        y0[j][i].real = x[k][j][i + ii].real;
                        /*[8]*/
                        y0[j][i].imag = x[k][j][i + ii].imag;
                    }
                }
                /*[8]*/
                int _imopVarPre254;
                /*[8]*/
                int _imopVarPre255;
                /*[8]*/
                _imopVarPre254 = d[1];
                /*[8]*/
                _imopVarPre255 = logd[1];
                /*[8]*/
                cfftz(is, _imopVarPre255, _imopVarPre254, y0, y1);
                /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                for (j = 0; j < d[1]; j++) {
                /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    /*[8]*/
                    for (i = 0; i < fftblock; i++) {
                    /*[8]*/
                        /*[8]*/
                        xout[k][j][i + ii].real = y0[j][i].real;
                        /*[8]*/
                        xout[k][j][i + ii].imag = y0[j][i].imag;
                    }
                }
            }
        }
        /*[8]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[8]*/
#pragma omp barrier
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
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int ii;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 3; i++) {
    /*[]*/
        /*[]*/
        int _imopVarPre257;
        /*[]*/
        int _imopVarPre258;
        /*[]*/
        _imopVarPre257 = d[i];
        /*[]*/
        _imopVarPre258 = ilog2(_imopVarPre257);
        /*[]*/
        /*[]*/
        logd[i] = _imopVarPre258;
    }
    /*[10]*/
#pragma omp parallel default(shared) private(i, j, k, ii) shared(is)
    {
    /*[10]*/
        /*[10]*/
        dcomplex y0[64][18];
        /*[10]*/
        dcomplex y1[64][18];
        /*[10]*/
#pragma omp for nowait
        /*[10]*/
        /*[10]*/
        /*[10]*/
        for (j = 0; j < d[1]; j++) {
        /*[10]*/
            /*[10]*/
            /*[10]*/
            /*[10]*/
            /*[10]*/
            for (ii = 0; ii <= d[0] - fftblock; ii += fftblock) {
            /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (k = 0; k < d[2]; k++) {
                /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (i = 0; i < fftblock; i++) {
                    /*[10]*/
                        /*[10]*/
                        y0[k][i].real = x[k][j][i + ii].real;
                        /*[10]*/
                        y0[k][i].imag = x[k][j][i + ii].imag;
                    }
                }
                /*[10]*/
                int _imopVarPre261;
                /*[10]*/
                int _imopVarPre262;
                /*[10]*/
                _imopVarPre261 = d[2];
                /*[10]*/
                _imopVarPre262 = logd[2];
                /*[10]*/
                cfftz(is, _imopVarPre262, _imopVarPre261, y0, y1);
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (k = 0; k < d[2]; k++) {
                /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    /*[10]*/
                    for (i = 0; i < fftblock; i++) {
                    /*[10]*/
                        /*[10]*/
                        xout[k][j][i + ii].real = y0[k][i].real;
                        /*[10]*/
                        xout[k][j][i + ii].imag = y0[k][i].imag;
                    }
                }
            }
        }
        /*[10]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[10]*/
#pragma omp barrier
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
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
static void cfftz(int is, int m , int n , dcomplex x[64][18] , dcomplex y[64][18]) {
/*[6, 8, 10]*/
    /*[6, 8, 10]*/
    int i;
    /*[6, 8, 10]*/
    int j;
    /*[6, 8, 10]*/
    int l;
    /*[6, 8, 10]*/
    int mx;
    /*[6, 8, 10]*/
    mx = (int) (u[0].real);
    /*[6, 8, 10]*/
    int _imopVarPre266;
    /*[6, 8, 10]*/
    int _imopVarPre267;
    /*[6, 8, 10]*/
    int _imopVarPre268;
    /*[6, 8, 10]*/
    _imopVarPre266 = is != 1;
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    if (_imopVarPre266) {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        _imopVarPre266 = is != -1;
    }
    /*[6, 8, 10]*/
    _imopVarPre267 = _imopVarPre266;
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    if (!_imopVarPre267) {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        _imopVarPre268 = m < 1;
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        if (!_imopVarPre268) {
        /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            _imopVarPre268 = m > mx;
        }
        /*[6, 8, 10]*/
        _imopVarPre267 = _imopVarPre268;
    }
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    if (_imopVarPre267) {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        printf("CFFTZ: Either U has not been initialized, or else\n" "one of the input parameters is invalid%5d%5d%5d\n", is, m, mx);
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        exit(1);
        /*[6, 8, 10]*/
    }
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    for (l = 1; l <= m; l += 2) {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        fftz2(is, l, m, n, fftblock, fftblockpad, u, x, y);
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        if (l == m) {
        /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            break;
        }
        /*[6, 8, 10]*/
        int _imopVarPre270;
        /*[6, 8, 10]*/
        _imopVarPre270 = l + 1;
        /*[6, 8, 10]*/
        fftz2(is, _imopVarPre270, m, n, fftblock, fftblockpad, u, y, x);
        /*[6, 8, 10]*/
    }
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    if (m % 2 == 1) {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        for (j = 0; j < n; j++) {
        /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            for (i = 0; i < fftblock; i++) {
            /*[6, 8, 10]*/
                /*[6, 8, 10]*/
                x[j][i].real = y[j][i].real;
                /*[6, 8, 10]*/
                x[j][i].imag = y[j][i].imag;
            }
        }
    }
}
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
/*[6, 8, 10]*/
static void fftz2(int is, int l , int m , int n , int ny , int ny1 , dcomplex u[64] , dcomplex x[64][18] , dcomplex y[64][18]) {
/*[6, 8, 10]*/
    /*[6, 8, 10]*/
    int k;
    /*[6, 8, 10]*/
    int n1;
    /*[6, 8, 10]*/
    int li;
    /*[6, 8, 10]*/
    int lj;
    /*[6, 8, 10]*/
    int lk;
    /*[6, 8, 10]*/
    int ku;
    /*[6, 8, 10]*/
    int i;
    /*[6, 8, 10]*/
    int j;
    /*[6, 8, 10]*/
    int i11;
    /*[6, 8, 10]*/
    int i12;
    /*[6, 8, 10]*/
    int i21;
    /*[6, 8, 10]*/
    int i22;
    /*[6, 8, 10]*/
    dcomplex u1;
    /*[6, 8, 10]*/
    n1 = n / 2;
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    if (l - 1 == 0) {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        lk = 1;
    } else {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        lk = 2 << ((l - 1) - 1);
    }
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    if (m - l == 0) {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        li = 1;
    } else {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        li = 2 << ((m - l) - 1);
    }
    /*[6, 8, 10]*/
    lj = 2 * lk;
    /*[6, 8, 10]*/
    ku = li;
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    /*[6, 8, 10]*/
    for (i = 0; i < li; i++) {
    /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        i11 = i * lk;
        /*[6, 8, 10]*/
        i12 = i11 + n1;
        /*[6, 8, 10]*/
        i21 = i * lj;
        /*[6, 8, 10]*/
        i22 = i21 + lk;
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        if (is >= 1) {
        /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            u1.real = u[ku + i].real;
            /*[6, 8, 10]*/
            u1.imag = u[ku + i].imag;
        } else {
        /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            u1.real = u[ku + i].real;
            /*[6, 8, 10]*/
            u1.imag = -u[ku + i].imag;
        }
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        /*[6, 8, 10]*/
        for (k = 0; k < lk; k++) {
        /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            /*[6, 8, 10]*/
            for (j = 0; j < ny; j++) {
            /*[6, 8, 10]*/
                /*[6, 8, 10]*/
                double x11real;
                /*[6, 8, 10]*/
                double x11imag;
                /*[6, 8, 10]*/
                double x21real;
                /*[6, 8, 10]*/
                double x21imag;
                /*[6, 8, 10]*/
                x11real = x[i11 + k][j].real;
                /*[6, 8, 10]*/
                x11imag = x[i11 + k][j].imag;
                /*[6, 8, 10]*/
                x21real = x[i12 + k][j].real;
                /*[6, 8, 10]*/
                x21imag = x[i12 + k][j].imag;
                /*[6, 8, 10]*/
                y[i21 + k][j].real = x11real + x21real;
                /*[6, 8, 10]*/
                y[i21 + k][j].imag = x11imag + x21imag;
                /*[6, 8, 10]*/
                y[i22 + k][j].real = u1.real * (x11real - x21real) - u1.imag * (x11imag - x21imag);
                /*[6, 8, 10]*/
                y[i22 + k][j].imag = u1.real * (x11imag - x21imag) + u1.imag * (x11real - x21real);
            }
        }
    }
}
/*[]*/
/*[]*/
static int ilog2(int n) {
/*[]*/
    /*[]*/
    int nn;
    /*[]*/
    int lg;
    /*[]*/
    /*[]*/
    if (n == 1) {
    /*[]*/
        /*[]*/
        return 0;
    }
    /*[]*/
    lg = 1;
    /*[]*/
    nn = 2;
    /*[]*/
    /*[]*/
    while (nn < n) {
    /*[]*/
        /*[]*/
        nn = nn << 1;
        /*[]*/
        lg++;
    }
    /*[]*/
    return lg;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void checksum(int i, dcomplex u1[64][64][64] , int d[3]) {
/*[]*/
    /*[12]*/
#pragma omp parallel default(shared)
    {
    /*[12]*/
        /*[12]*/
        int j;
        /*[12]*/
        int q;
        /*[12]*/
        int r;
        /*[12]*/
        int s;
        /*[12]*/
        dcomplex chk;
        /*[12]*/
        chk.real = 0.0;
        /*[12]*/
        chk.imag = 0.0;
        /*[12]*/
#pragma omp for nowait
        /*[12]*/
        /*[12]*/
        /*[12]*/
        for (j = 1; j <= 1024; j++) {
        /*[12]*/
            /*[12]*/
            q = j % 64 + 1;
            /*[12]*/
            int _imopVarPre272;
            /*[12]*/
            _imopVarPre272 = q >= xstart[0];
            /*[12]*/
            /*[12]*/
            if (_imopVarPre272) {
            /*[12]*/
                /*[12]*/
                _imopVarPre272 = q <= xend[0];
            }
            /*[12]*/
            /*[12]*/
            if (_imopVarPre272) {
            /*[12]*/
                /*[12]*/
                r = (3 * j) % 64 + 1;
                /*[12]*/
                int _imopVarPre274;
                /*[12]*/
                _imopVarPre274 = r >= ystart[0];
                /*[12]*/
                /*[12]*/
                if (_imopVarPre274) {
                /*[12]*/
                    /*[12]*/
                    _imopVarPre274 = r <= yend[0];
                }
                /*[12]*/
                /*[12]*/
                if (_imopVarPre274) {
                /*[12]*/
                    /*[12]*/
                    s = (5 * j) % 64 + 1;
                    /*[12]*/
                    int _imopVarPre276;
                    /*[12]*/
                    _imopVarPre276 = s >= zstart[0];
                    /*[12]*/
                    /*[12]*/
                    if (_imopVarPre276) {
                    /*[12]*/
                        /*[12]*/
                        _imopVarPre276 = s <= zend[0];
                    }
                    /*[12]*/
                    /*[12]*/
                    if (_imopVarPre276) {
                    /*[12]*/
                        /*[12]*/
                        chk.real = chk.real + u1[s - zstart[0]][r - ystart[0]][q - xstart[0]].real;
                        /*[12]*/
                        (chk.imag = chk.imag + u1[s - zstart[0]][r - ystart[0]][q - xstart[0]].imag);
                    }
                }
            }
        }
        /*[12]*/
        // #pragma omp dummyFlush CRITICAL_START
        /*[12]*/
#pragma omp critical
        {
        /*[12]*/
            /*[12]*/
            sums[i].real += chk.real;
            /*[12]*/
            sums[i].imag += chk.imag;
        }
        /*[12]*/
        // #pragma omp dummyFlush CRITICAL_END
        /*[12]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[12]*/
#pragma omp barrier
        /*[13]*/
#pragma omp single nowait
        {
        /*[13]*/
            /*[13]*/
            sums[i].real = sums[i].real / (double) 262144;
            /*[13]*/
            sums[i].imag = sums[i].imag / (double) 262144;
            /*[13]*/
            double _imopVarPre279;
            /*[13]*/
            double _imopVarPre280;
            /*[13]*/
            _imopVarPre279 = sums[i].imag;
            /*[13]*/
            _imopVarPre280 = sums[i].real;
            /*[13]*/
            printf("T = %5d     Checksum = %22.12e %22.12e\n", i, _imopVarPre280, _imopVarPre279);
            /*[13]*/
        }
        /*[13]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[13]*/
#pragma omp barrier
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
