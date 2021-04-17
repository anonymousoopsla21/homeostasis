
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [log]*/
extern double log(double );
/*READ_S: []
WRITE_S: [fabs]*/
extern double fabs(double );
/*READ_S: []
WRITE_S: [pow]*/
extern double pow(double , double );
/*READ_S: []
WRITE_S: [sqrt]*/
extern double sqrt(double );
/*READ_S: []
WRITE_S: []*/
typedef int boolean;
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
WRITE_S: []*/
static double x[2 * (1 << 16)];
#pragma omp threadprivate(x)
/*READ_S: []
WRITE_S: [q, q.f]*/
static double q[10];
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [timer_clear, an, pow, c_print_results, fabs, _imopVarPre289, np, __builtin_object_size, sx, _imopVarPre201, q.f, k, _imopVarPre343, i, vranlc, __sprintf_chk, _imopVarPre271, sqrt, timer_read, printf, timer_start, _imopVarPre252, _imopVarPre325, timer_stop, k_offset, sy, q, randlc, log, _imopVarPre153, _imopVarPre307]
WRITE_S: [sx, sy, q.f]*/
int main(int argc, char **argv) {
/*READ_S: [timer_clear, an, pow, c_print_results, fabs, _imopVarPre289, np, __builtin_object_size, sx, _imopVarPre201, q.f, k, _imopVarPre343, i, vranlc, __sprintf_chk, _imopVarPre271, sqrt, timer_read, printf, timer_start, _imopVarPre252, _imopVarPre325, timer_stop, k_offset, sy, q, randlc, log, _imopVarPre153, _imopVarPre307]
WRITE_S: [sx, sy, q.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double Mops;
    /*READ_S: []
    WRITE_S: []*/
    double t1;
    /*READ_S: []
    WRITE_S: []*/
    double t2;
    /*READ_S: []
    WRITE_S: []*/
    double sx;
    /*READ_S: []
    WRITE_S: []*/
    double sy;
    /*READ_S: []
    WRITE_S: []*/
    double tm;
    /*READ_S: []
    WRITE_S: []*/
    double an;
    /*READ_S: []
    WRITE_S: []*/
    double tt;
    /*READ_S: []
    WRITE_S: []*/
    double gc;
    /*READ_S: []
    WRITE_S: []*/
    double dum[3] = {1.0, 1.0 , 1.0};
    /*READ_S: []
    WRITE_S: []*/
    int np;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int nit;
    /*READ_S: []
    WRITE_S: []*/
    int k_offset;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads = 1;
    /*READ_S: []
    WRITE_S: []*/
    boolean verified;
    /*READ_S: []
    WRITE_S: []*/
    char size[13 + 1];
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - EP Benchmark\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre149;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre150;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre153;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre154;
    /*READ_S: []
    WRITE_S: []*/
    unsigned int _imopVarPre155;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre149 = 24 + 1;
    /*READ_S: [pow]
    WRITE_S: []*/
    _imopVarPre150 = pow(2.0, _imopVarPre149);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre153 = 2 > 1;
    /*READ_S: [_imopVarPre153]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre153]
    WRITE_S: []*/
    if (_imopVarPre153) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre154 = 1;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre154 = 0;
    }
    /*READ_S: [__builtin_object_size]
    WRITE_S: []*/
    _imopVarPre155 = __builtin_object_size(size, _imopVarPre154);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__sprintf_chk]
    WRITE_S: []*/
    __builtin___sprintf_chk(size, 0, _imopVarPre155, "%12.0f", _imopVarPre150);
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
    for (j = 13; j >= 1; j--) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (size[j] == '.') {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            size[j] = ' ';
        }
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Number of random numbers generated: %13s\n", size);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    verified = 0;
    /*READ_S: []
    WRITE_S: []*/
    np = (1 << (24 - 16));
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre159;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre160;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre161;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre159 = &(dum[2]);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre160 = dum[1];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre161 = &(dum[0]);
    /*READ_S: [vranlc]
    WRITE_S: []*/
    vranlc(0, _imopVarPre161, _imopVarPre160, _imopVarPre159);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre164;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre165;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre166;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre164 = dum[2];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre165 = &(dum[1]);
    /*READ_S: [randlc]
    WRITE_S: []*/
    _imopVarPre166 = randlc(_imopVarPre165, _imopVarPre164);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    dum[0] = _imopVarPre166;
    /*READ_S: [i]
    WRITE_S: []*/
#pragma omp parallel default(shared) private(i)
    {
    /*READ_S: [i]
    WRITE_S: []*/
        /*READ_S: [i]
        WRITE_S: []*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < 2 * (1 << 16); i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            x[i] = -1.0e99;
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
    int _imopVarPre201;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre202;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre203;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre204;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre205;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre201 = (1.0 > 1.0);
    /*READ_S: [_imopVarPre201]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre201]
    WRITE_S: []*/
    if (_imopVarPre201) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre202 = 1.0;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre202 = 1.0;
    }
    /*READ_S: [fabs]
    WRITE_S: []*/
    _imopVarPre203 = fabs(_imopVarPre202);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre204 = sqrt(_imopVarPre203);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [log]
    WRITE_S: []*/
    _imopVarPre205 = log(_imopVarPre204);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    Mops = _imopVarPre205;
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    timer_clear(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    timer_clear(2);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    timer_clear(3);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_start]
    WRITE_S: []*/
    timer_start(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre207;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre207 = &t1;
    /*READ_S: [vranlc]
    WRITE_S: []*/
    vranlc(0, _imopVarPre207, 1220703125.0, x);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    t1 = 1220703125.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [randlc]
    WRITE_S: []*/
    for (i = 1; i <= 16 + 1; i++) {
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
        _imopVarPre209 = &t1;
        /*READ_S: [randlc]
        WRITE_S: []*/
        _imopVarPre210 = randlc(_imopVarPre209, t1);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        t2 = _imopVarPre210;
    }
    /*READ_S: []
    WRITE_S: []*/
    an = t1;
    /*READ_S: []
    WRITE_S: []*/
    tt = 271828183.0;
    /*READ_S: []
    WRITE_S: []*/
    gc = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    sx = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    sy = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [q]
    WRITE_S: [q.f]*/
    for (i = 0; i <= 10 - 1; i++) {
    /*READ_S: [q]
    WRITE_S: [q.f]*/
        /*READ_S: [q]
        WRITE_S: [q.f]*/
        q[i] = 0.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    k_offset = -1;
    /*READ_S: [an, sqrt, fabs, timer_start, _imopVarPre252, np, sx, k_offset, timer_stop, sy, q, randlc, q.f, k, log, vranlc]
    WRITE_S: [sx, sy, q.f]*/
#pragma omp parallel copyin(x)
    {
    /*READ_S: [an, sqrt, fabs, timer_start, _imopVarPre252, np, sx, k_offset, timer_stop, sy, q, randlc, q.f, k, log, vranlc]
    WRITE_S: [sx, sy, q.f]*/
        /*READ_S: []
        WRITE_S: []*/
        double t1;
        /*READ_S: []
        WRITE_S: []*/
        double t2;
        /*READ_S: []
        WRITE_S: []*/
        double t3;
        /*READ_S: []
        WRITE_S: []*/
        double t4;
        /*READ_S: []
        WRITE_S: []*/
        double x1;
        /*READ_S: []
        WRITE_S: []*/
        double x2;
        /*READ_S: []
        WRITE_S: []*/
        int kk;
        /*READ_S: []
        WRITE_S: []*/
        int i;
        /*READ_S: []
        WRITE_S: []*/
        int ik;
        /*READ_S: []
        WRITE_S: []*/
        int l;
        /*READ_S: []
        WRITE_S: []*/
        double qq[10];
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < 10; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            qq[i] = 0.0;
        }
        /*READ_S: [an, sqrt, fabs, timer_start, _imopVarPre252, np, sx, k_offset, timer_stop, sy, randlc, k, log, vranlc]
        WRITE_S: [sx, sy]*/
#pragma omp for reduction(+:sx, sy) schedule(static) nowait
        /*READ_S: [k]
        WRITE_S: []*/
        /*READ_S: [np]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (k = 1; k <= np; k++) {
        /*READ_S: [an, timer_start, _imopVarPre252, sqrt, sx, k_offset, timer_stop, sy, randlc, fabs, log, vranlc]
        WRITE_S: [sx, sy]*/
            /*READ_S: [k_offset]
            WRITE_S: []*/
            kk = k_offset + k;
            /*READ_S: []
            WRITE_S: []*/
            t1 = 271828183.0;
            /*READ_S: [an]
            WRITE_S: []*/
            t2 = an;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [randlc]
            WRITE_S: []*/
            for (i = 1; i <= 100; i++) {
            /*READ_S: [randlc]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                ik = kk / 2;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [randlc]
                WRITE_S: []*/
                if (2 * ik != kk) {
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
                    _imopVarPre212 = &t1;
                    /*READ_S: [randlc]
                    WRITE_S: []*/
                    _imopVarPre213 = randlc(_imopVarPre212, t2);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    t3 = _imopVarPre213;
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                if (ik == 0) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    break;
                }
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre215;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre216;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre215 = &t2;
                /*READ_S: [randlc]
                WRITE_S: []*/
                _imopVarPre216 = randlc(_imopVarPre215, t2);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                t3 = _imopVarPre216;
                /*READ_S: []
                WRITE_S: []*/
                kk = ik;
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
                timer_start(3);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre220;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre221;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre222;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre220 = x - 1;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre221 = &t1;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre222 = 2 * (1 << 16);
            /*READ_S: [vranlc]
            WRITE_S: []*/
            vranlc(_imopVarPre222, _imopVarPre221, 1220703125.0, _imopVarPre220);
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
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [_imopVarPre252, sqrt, sx, sy, fabs, log]
            WRITE_S: [sx, sy]*/
            for (i = 0; i < (1 << 16); i++) {
            /*READ_S: [_imopVarPre252, sqrt, sx, sy, fabs, log]
            WRITE_S: [sx, sy]*/
                /*READ_S: []
                WRITE_S: []*/
                x1 = 2.0 * x[2 * i] - 1.0;
                /*READ_S: []
                WRITE_S: []*/
                x2 = 2.0 * x[2 * i + 1] - 1.0;
                /*READ_S: []
                WRITE_S: []*/
                t1 = (x1 * x1) + (x2 * x2);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [_imopVarPre252, sqrt, sx, sy, fabs, log]
                WRITE_S: [sx, sy]*/
                if (t1 <= 1.0) {
                /*READ_S: [_imopVarPre252, sqrt, sx, sy, fabs, log]
                WRITE_S: [sx, sy]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre227;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre228;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre229;
                    /*READ_S: [log]
                    WRITE_S: []*/
                    _imopVarPre227 = log(t1);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre228 = -2.0 * _imopVarPre227 / t1;
                    /*READ_S: [sqrt]
                    WRITE_S: []*/
                    _imopVarPre229 = sqrt(_imopVarPre228);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    t2 = _imopVarPre229;
                    /*READ_S: []
                    WRITE_S: []*/
                    t3 = (x1 * t2);
                    /*READ_S: []
                    WRITE_S: []*/
                    t4 = (x2 * t2);
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre250;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre251;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre252;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre253;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre255;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre257;
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                    _imopVarPre250 = fabs(t3);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                    _imopVarPre251 = fabs(t4);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre252 = (_imopVarPre250 > _imopVarPre251);
                    /*READ_S: [_imopVarPre252]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre252, fabs]
                    WRITE_S: []*/
                    if (_imopVarPre252) {
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                        /*READ_S: [fabs]
                        WRITE_S: []*/
                        _imopVarPre255 = fabs(t3);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre253 = _imopVarPre255;
                    } else {
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                        /*READ_S: [fabs]
                        WRITE_S: []*/
                        _imopVarPre257 = fabs(t4);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre253 = _imopVarPre257;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    l = _imopVarPre253;
                    /*READ_S: []
                    WRITE_S: []*/
                    qq[l] += 1.0;
                    /*READ_S: [sx]
                    WRITE_S: [sx]*/
                    sx = sx + t3;
                    /*READ_S: [sy]
                    WRITE_S: [sy]*/
                    sy = sy + t4;
                }
            }
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
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush CRITICAL_START
        /*READ_S: [q, q.f]
        WRITE_S: [q.f]*/
#pragma omp critical
        {
        /*READ_S: [q, q.f]
        WRITE_S: [q.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [q, q.f]
            WRITE_S: [q.f]*/
            for (i = 0; i <= 10 - 1; i++) {
            /*READ_S: [q, q.f]
            WRITE_S: [q.f]*/
                /*READ_S: [q, q.f]
                WRITE_S: [q.f]*/
                q[i] += qq[i];
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush CRITICAL_END
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [q, q.f]
    WRITE_S: []*/
    for (i = 0; i <= 10 - 1; i++) {
    /*READ_S: [q, q.f]
    WRITE_S: []*/
        /*READ_S: [q, q.f]
        WRITE_S: []*/
        gc = gc + q[i];
    }
    /*READ_S: [timer_stop]
    WRITE_S: []*/
    timer_stop(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_read]
    WRITE_S: []*/
    tm = timer_read(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    nit = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [_imopVarPre271, _imopVarPre289, _imopVarPre325, fabs, _imopVarPre307, _imopVarPre343]
    WRITE_S: []*/
    if (24 == 24) {
    /*READ_S: [_imopVarPre271, fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre269;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre270;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre271;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre274;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre275;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre269 = (sx - (-3.247834652034740e3)) / sx;
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre270 = fabs(_imopVarPre269);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre271 = (_imopVarPre270 <= 1.0e-8);
        /*READ_S: [_imopVarPre271]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre271, fabs]
        WRITE_S: []*/
        if (_imopVarPre271) {
        /*READ_S: [fabs]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre274 = (sy - (-6.958407078382297e3)) / sy;
            /*READ_S: [fabs]
            WRITE_S: []*/
            _imopVarPre275 = fabs(_imopVarPre274);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre271 = (_imopVarPre275 <= 1.0e-8);
        }
        /*READ_S: [_imopVarPre271]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre271]
        WRITE_S: []*/
        if (_imopVarPre271) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            verified = 1;
        }
    } else {
    /*READ_S: [_imopVarPre289, _imopVarPre325, fabs, _imopVarPre307, _imopVarPre343]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [_imopVarPre289, _imopVarPre325, fabs, _imopVarPre307, _imopVarPre343]
        WRITE_S: []*/
        if (24 == 25) {
        /*READ_S: [_imopVarPre289, fabs]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre287;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre288;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre289;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre292;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre293;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre287 = (sx - (-2.863319731645753e3)) / sx;
            /*READ_S: [fabs]
            WRITE_S: []*/
            _imopVarPre288 = fabs(_imopVarPre287);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre289 = (_imopVarPre288 <= 1.0e-8);
            /*READ_S: [_imopVarPre289]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre289, fabs]
            WRITE_S: []*/
            if (_imopVarPre289) {
            /*READ_S: [fabs]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre292 = (sy - (-6.320053679109499e3)) / sy;
                /*READ_S: [fabs]
                WRITE_S: []*/
                _imopVarPre293 = fabs(_imopVarPre292);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre289 = (_imopVarPre293 <= 1.0e-8);
            }
            /*READ_S: [_imopVarPre289]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre289]
            WRITE_S: []*/
            if (_imopVarPre289) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                verified = 1;
            }
        } else {
        /*READ_S: [_imopVarPre325, fabs, _imopVarPre307, _imopVarPre343]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [_imopVarPre325, fabs, _imopVarPre307, _imopVarPre343]
            WRITE_S: []*/
            if (24 == 28) {
            /*READ_S: [fabs, _imopVarPre307]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre305;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre306;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre307;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre310;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre311;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre305 = (sx - (-4.295875165629892e3)) / sx;
                /*READ_S: [fabs]
                WRITE_S: []*/
                _imopVarPre306 = fabs(_imopVarPre305);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre307 = (_imopVarPre306 <= 1.0e-8);
                /*READ_S: [_imopVarPre307]
                WRITE_S: []*/
                /*READ_S: [fabs, _imopVarPre307]
                WRITE_S: []*/
                if (_imopVarPre307) {
                /*READ_S: [fabs]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre310 = (sy - (-1.580732573678431e4)) / sy;
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                    _imopVarPre311 = fabs(_imopVarPre310);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre307 = (_imopVarPre311 <= 1.0e-8);
                }
                /*READ_S: [_imopVarPre307]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre307]
                WRITE_S: []*/
                if (_imopVarPre307) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    verified = 1;
                }
            } else {
            /*READ_S: [_imopVarPre325, fabs, _imopVarPre343]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [_imopVarPre325, fabs, _imopVarPre343]
                WRITE_S: []*/
                if (24 == 30) {
                /*READ_S: [_imopVarPre325, fabs]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre323;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre324;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre325;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre328;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre329;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre323 = (sx - 4.033815542441498e4) / sx;
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                    _imopVarPre324 = fabs(_imopVarPre323);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre325 = (_imopVarPre324 <= 1.0e-8);
                    /*READ_S: [_imopVarPre325]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre325, fabs]
                    WRITE_S: []*/
                    if (_imopVarPre325) {
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre328 = (sy - (-2.660669192809235e4)) / sy;
                        /*READ_S: [fabs]
                        WRITE_S: []*/
                        _imopVarPre329 = fabs(_imopVarPre328);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre325 = (_imopVarPre329 <= 1.0e-8);
                    }
                    /*READ_S: [_imopVarPre325]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre325]
                    WRITE_S: []*/
                    if (_imopVarPre325) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        verified = 1;
                    }
                } else {
                /*READ_S: [fabs, _imopVarPre343]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [fabs, _imopVarPre343]
                    WRITE_S: []*/
                    if (24 == 32) {
                    /*READ_S: [fabs, _imopVarPre343]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre341;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre342;
                        /*READ_S: []
                        WRITE_S: []*/
                        int _imopVarPre343;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre346;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre347;
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre341 = (sx - 4.764367927995374e4) / sx;
                        /*READ_S: [fabs]
                        WRITE_S: []*/
                        _imopVarPre342 = fabs(_imopVarPre341);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre343 = (_imopVarPre342 <= 1.0e-8);
                        /*READ_S: [_imopVarPre343]
                        WRITE_S: []*/
                        /*READ_S: [fabs, _imopVarPre343]
                        WRITE_S: []*/
                        if (_imopVarPre343) {
                        /*READ_S: [fabs]
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre346 = (sy - (-8.084072988043731e4)) / sy;
                            /*READ_S: [fabs]
                            WRITE_S: []*/
                            _imopVarPre347 = fabs(_imopVarPre346);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre343 = (_imopVarPre347 <= 1.0e-8);
                        }
                        /*READ_S: [_imopVarPre343]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre343]
                        WRITE_S: []*/
                        if (_imopVarPre343) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            verified = 1;
                        }
                    }
                }
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre350;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre351;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre350 = 24 + 1;
    /*READ_S: [pow]
    WRITE_S: []*/
    _imopVarPre351 = pow(2.0, _imopVarPre350);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    Mops = _imopVarPre351 / tm / 1000000.0;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("EP Benchmark Results: \n" "CPU Time = %10.4f\n" "N = 2^%5d\n" "No. Gaussian Pairs = %15.0f\n" "Sums = %25.15e %25.15e\n" "Counts:\n", tm, 24, gc, sx, sy);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [q, q.f, printf]
    WRITE_S: []*/
    for (i = 0; i <= 10 - 1; i++) {
    /*READ_S: [q, q.f, printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre353;
        /*READ_S: [q, q.f]
        WRITE_S: []*/
        _imopVarPre353 = q[i];
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("%3d %15.0f\n", i, _imopVarPre353);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre355;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre355 = 24 + 1;
    /*READ_S: [c_print_results]
    WRITE_S: []*/
    c_print_results("EP", 'S', _imopVarPre355, 0, 0, nit, nthreads, tm, Mops, "Random numbers generated", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_read, printf]
    WRITE_S: []*/
    if (0 == 1) {
    /*READ_S: [timer_read, printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre357;
        /*READ_S: [timer_read]
        WRITE_S: []*/
        _imopVarPre357 = timer_read(1);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Total time:     %f", _imopVarPre357);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre359;
        /*READ_S: [timer_read]
        WRITE_S: []*/
        _imopVarPre359 = timer_read(2);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Gaussian pairs: %f", _imopVarPre359);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre361;
        /*READ_S: [timer_read]
        WRITE_S: []*/
        _imopVarPre361 = timer_read(3);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("Random numbers: %f", _imopVarPre361);
        /*READ_S: []
        WRITE_S: []*/
    }
}
