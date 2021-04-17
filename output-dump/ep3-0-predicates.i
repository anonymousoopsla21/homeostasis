struct __sFILEX ;
int printf(const char *restrict , ...);
extern double log(double );
extern double fabs(double );
extern double pow(double , double );
extern double sqrt(double );
typedef int boolean;
extern double randlc(double *, double );
extern void vranlc(int , double * , double  , double *);
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
static double x[2 * (1 << 16)];
#pragma omp threadprivate(x)
static double q[10];
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    double Mops;
    /*OUT: {
    Reverse<--,>}*/
    double t1;
    /*OUT: {
    Reverse<--,>}*/
    double t2;
    /*OUT: {
    Reverse<--,>}*/
    double sx;
    /*OUT: {
    Reverse<--,>}*/
    double sy;
    /*OUT: {
    Reverse<--,>}*/
    double tm;
    /*OUT: {
    Reverse<--,>}*/
    double an;
    /*OUT: {
    Reverse<--,>}*/
    double tt;
    /*OUT: {
    Reverse<--,>}*/
    double gc;
    /*OUT: {
    Reverse<--,>}*/
    double dum[3] = {1.0, 1.0 , 1.0};
    /*OUT: {
    Reverse<--,>}*/
    int np;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int nit;
    /*OUT: {
    Reverse<--,>}*/
    int k_offset;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads = 1;
    /*OUT: {
    Reverse<--,>}*/
    boolean verified;
    /*OUT: {
    Reverse<--,>}*/
    char size[13 + 1];
    /*OUT: {
    Reverse<--,>}*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - EP Benchmark\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre149;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre150;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre153;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre154;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre155;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre149 = 24 + 1;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre150 = pow(2.0, _imopVarPre149);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre153 = 2 > 1;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre153) {
        /*OUT: {
        Reverse<--, 94_0;>}*/
        _imopVarPre154 = 1;
    } else {
        /*OUT: {
        Reverse<--, 94_1;>}*/
        _imopVarPre154 = 0;
    }
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre155 = __builtin_object_size(size, _imopVarPre154);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    __builtin___sprintf_chk(size, 0, _imopVarPre155, "%12.0f", _imopVarPre150);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 111_0;>}*/
    for (j = 13; j >= 1; j--) {
        /*OUT: {
        Reverse<--, 111_0;>}*/
        if (size[j] == '.') {
            /*OUT: {
            Reverse<--, 114_0; 111_0;>}*/
            size[j] = ' ';
        }
    }
    /*OUT: {
    Reverse<--, 111_1;>}*/
    printf(" Number of random numbers generated: %13s\n", size);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    verified = 0;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    np = (1 << (24 - 16));
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double *_imopVarPre159;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double _imopVarPre160;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double *_imopVarPre161;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre159 = &(dum[2]);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre160 = dum[1];
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre161 = &(dum[0]);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    vranlc(0, _imopVarPre161, _imopVarPre160, _imopVarPre159);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double _imopVarPre164;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double *_imopVarPre165;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double _imopVarPre166;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre164 = dum[2];
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre165 = &(dum[1]);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre166 = randlc(_imopVarPre165, _imopVarPre164);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    dum[0] = _imopVarPre166;
#pragma omp parallel default(shared) private(i)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<773,>}*/
        /*OUT: {
        Reverse<773,>}*/
        /*OUT: {
        Reverse<773,>}*/
        for (i = 0; i < 2 * (1 << 16); i++) {
            /*OUT: {
            Reverse<773,>}*/
            x[i] = -1.0e99;
        }
        /*OUT: {
        Reverse<773,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<176,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 111_1;>}*/
    int _imopVarPre201;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double _imopVarPre202;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double _imopVarPre203;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double _imopVarPre204;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double _imopVarPre205;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre201 = (1.0 > 1.0);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    if (_imopVarPre201) {
        /*OUT: {
        Reverse<--, 185_0; 111_1;>}*/
        _imopVarPre202 = 1.0;
    } else {
        /*OUT: {
        Reverse<--, 185_1; 111_1;>}*/
        _imopVarPre202 = 1.0;
    }
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre203 = fabs(_imopVarPre202);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre204 = sqrt(_imopVarPre203);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre205 = log(_imopVarPre204);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    Mops = _imopVarPre205;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    timer_clear(1);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    timer_clear(2);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    timer_clear(3);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    timer_start(1);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    double *_imopVarPre207;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    _imopVarPre207 = &t1;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    vranlc(0, _imopVarPre207, 1220703125.0, x);
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    t1 = 1220703125.0;
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 111_1;>}*/
    /*OUT: {
    Reverse<--, 241_0; 111_1;>}*/
    for (i = 1; i <= 16 + 1; i++) {
        /*OUT: {
        Reverse<--, 241_0; 111_1;>}*/
        double *_imopVarPre209;
        /*OUT: {
        Reverse<--, 241_0; 111_1;>}*/
        double _imopVarPre210;
        /*OUT: {
        Reverse<--, 241_0; 111_1;>}*/
        _imopVarPre209 = &t1;
        /*OUT: {
        Reverse<--, 241_0; 111_1;>}*/
        _imopVarPre210 = randlc(_imopVarPre209, t1);
        /*OUT: {
        Reverse<--, 241_0; 111_1;>}*/
        /*OUT: {
        Reverse<--, 241_0; 111_1;>}*/
        t2 = _imopVarPre210;
    }
    /*OUT: {
    Reverse<--, 241_1; 111_1;>}*/
    an = t1;
    /*OUT: {
    Reverse<--, 241_1; 111_1;>}*/
    tt = 271828183.0;
    /*OUT: {
    Reverse<--, 241_1; 111_1;>}*/
    gc = 0.0;
    /*OUT: {
    Reverse<--, 241_1; 111_1;>}*/
    sx = 0.0;
    /*OUT: {
    Reverse<--, 241_1; 111_1;>}*/
    sy = 0.0;
    /*OUT: {
    Reverse<--, 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 266_0; 241_1; 111_1;>}*/
    for (i = 0; i <= 10 - 1; i++) {
        /*OUT: {
        Reverse<--, 266_0; 241_1; 111_1;>}*/
        q[i] = 0.0;
    }
    /*OUT: {
    Reverse<--, 266_1; 241_1; 111_1;>}*/
    k_offset = -1;
#pragma omp parallel copyin(x)
    {
        /*OUT: {
        Reverse<795,>}*/
        double t1;
        /*OUT: {
        Reverse<795,>}*/
        double t2;
        /*OUT: {
        Reverse<795,>}*/
        double t3;
        /*OUT: {
        Reverse<795,>}*/
        double t4;
        /*OUT: {
        Reverse<795,>}*/
        double x1;
        /*OUT: {
        Reverse<795,>}*/
        double x2;
        /*OUT: {
        Reverse<795,>}*/
        int kk;
        /*OUT: {
        Reverse<795,>}*/
        int i;
        /*OUT: {
        Reverse<795,>}*/
        int ik;
        /*OUT: {
        Reverse<795,>}*/
        int l;
        /*OUT: {
        Reverse<795,>}*/
        double qq[10];
        /*OUT: {
        Reverse<795,>}*/
        /*OUT: {
        Reverse<795,>}*/
        /*OUT: {
        Reverse<795, 285_0;>}*/
        for (i = 0; i < 10; i++) {
            /*OUT: {
            Reverse<795, 285_0;>}*/
            qq[i] = 0.0;
        }
#pragma omp for reduction(+:sx, sy) schedule(static) nowait
        /*OUT: {
        Reverse<795, 285_1;>}*/
        /*OUT: {
        Reverse<795, 285_1;>}*/
        /*OUT: {
        Reverse<795, 370_1; 319_0; 302_0; 285_1;>
        Reverse<795, 370_1; 302_1; 285_1;>}*/
        for (k = 1; k <= np; k++) {
            /*OUT: {
            Reverse<795, 285_1;>}*/
            kk = k_offset + k;
            /*OUT: {
            Reverse<795, 285_1;>}*/
            t1 = 271828183.0;
            /*OUT: {
            Reverse<795, 285_1;>}*/
            t2 = an;
            /*OUT: {
            Reverse<795, 285_1;>}*/
            /*OUT: {
            Reverse<795, 285_1;>}*/
            /*OUT: {
            Reverse<795, 319_1; 302_0; 285_1;>}*/
            for (i = 1; i <= 100; i++) {
                /*OUT: {
                Reverse<795, 302_0; 285_1;>}*/
                ik = kk / 2;
                /*OUT: {
                Reverse<795, 302_0; 285_1;>}*/
                if (2 * ik != kk) {
                    /*OUT: {
                    Reverse<795, 306_0; 302_0; 285_1;>}*/
                    double *_imopVarPre212;
                    /*OUT: {
                    Reverse<795, 306_0; 302_0; 285_1;>}*/
                    double _imopVarPre213;
                    /*OUT: {
                    Reverse<795, 306_0; 302_0; 285_1;>}*/
                    _imopVarPre212 = &t1;
                    /*OUT: {
                    Reverse<795, 306_0; 302_0; 285_1;>}*/
                    _imopVarPre213 = randlc(_imopVarPre212, t2);
                    /*OUT: {
                    Reverse<795, 306_0; 302_0; 285_1;>}*/
                    /*OUT: {
                    Reverse<795, 306_0; 302_0; 285_1;>}*/
                    t3 = _imopVarPre213;
                }
                /*OUT: {
                Reverse<795, 302_0; 285_1;>}*/
                if (ik == 0) {
                    /*OUT: {
                    Reverse<795, 319_0; 302_0; 285_1;>}*/
                    break;
                }
                /*OUT: {
                Reverse<795, 319_1; 302_0; 285_1;>}*/
                double *_imopVarPre215;
                /*OUT: {
                Reverse<795, 319_1; 302_0; 285_1;>}*/
                double _imopVarPre216;
                /*OUT: {
                Reverse<795, 319_1; 302_0; 285_1;>}*/
                _imopVarPre215 = &t2;
                /*OUT: {
                Reverse<795, 319_1; 302_0; 285_1;>}*/
                _imopVarPre216 = randlc(_imopVarPre215, t2);
                /*OUT: {
                Reverse<795, 319_1; 302_0; 285_1;>}*/
                /*OUT: {
                Reverse<795, 319_1; 302_0; 285_1;>}*/
                t3 = _imopVarPre216;
                /*OUT: {
                Reverse<795, 319_1; 302_0; 285_1;>}*/
                kk = ik;
            }
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            if (0 == 1) {
                /*OUT: {
                Reverse<795, 335_0; 302_1; 285_1;>
                Reverse<795, 335_0; 319_0; 302_0; 285_1;>}*/
                timer_start(3);
                /*OUT: {
                Reverse<795, 335_0; 302_1; 285_1;>
                Reverse<795, 335_0; 319_0; 302_0; 285_1;>}*/
            }
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            double *_imopVarPre220;
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            double *_imopVarPre221;
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            int _imopVarPre222;
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            _imopVarPre220 = x - 1;
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            _imopVarPre221 = &t1;
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            _imopVarPre222 = 2 * (1 << 16);
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            vranlc(_imopVarPre222, _imopVarPre221, 1220703125.0, _imopVarPre220);
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            if (0 == 1) {
                /*OUT: {
                Reverse<795, 356_0; 319_0; 302_0; 285_1;>
                Reverse<795, 356_0; 302_1; 285_1;>}*/
                timer_stop(3);
                /*OUT: {
                Reverse<795, 356_0; 319_0; 302_0; 285_1;>
                Reverse<795, 356_0; 302_1; 285_1;>}*/
            }
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            if (0 == 1) {
                /*OUT: {
                Reverse<795, 362_0; 302_1; 285_1;>
                Reverse<795, 362_0; 319_0; 302_0; 285_1;>}*/
                timer_start(2);
                /*OUT: {
                Reverse<795, 362_0; 302_1; 285_1;>
                Reverse<795, 362_0; 319_0; 302_0; 285_1;>}*/
            }
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            /*OUT: {
            Reverse<795, 319_0; 302_0; 285_1;>
            Reverse<795, 302_1; 285_1;>}*/
            /*OUT: {
            Reverse<795, 370_0; 319_0; 302_0; 285_1;>
            Reverse<795, 370_0; 302_1; 285_1;>}*/
            for (i = 0; i < (1 << 16); i++) {
                /*OUT: {
                Reverse<795, 370_0; 319_0; 302_0; 285_1;>
                Reverse<795, 370_0; 302_1; 285_1;>}*/
                x1 = 2.0 * x[2 * i] - 1.0;
                /*OUT: {
                Reverse<795, 370_0; 319_0; 302_0; 285_1;>
                Reverse<795, 370_0; 302_1; 285_1;>}*/
                x2 = 2.0 * x[2 * i + 1] - 1.0;
                /*OUT: {
                Reverse<795, 370_0; 319_0; 302_0; 285_1;>
                Reverse<795, 370_0; 302_1; 285_1;>}*/
                t1 = (x1 * x1) + (x2 * x2);
                /*OUT: {
                Reverse<795, 370_0; 319_0; 302_0; 285_1;>
                Reverse<795, 370_0; 302_1; 285_1;>}*/
                if (t1 <= 1.0) {
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    double _imopVarPre227;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    double _imopVarPre228;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    double _imopVarPre229;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    _imopVarPre227 = log(t1);
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    _imopVarPre228 = -2.0 * _imopVarPre227 / t1;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    _imopVarPre229 = sqrt(_imopVarPre228);
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    t2 = _imopVarPre229;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    t3 = (x1 * t2);
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    t4 = (x2 * t2);
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    double _imopVarPre250;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    double _imopVarPre251;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    int _imopVarPre252;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    double _imopVarPre253;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    double _imopVarPre255;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    double _imopVarPre257;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    _imopVarPre250 = fabs(t3);
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    _imopVarPre251 = fabs(t4);
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    _imopVarPre252 = (_imopVarPre250 > _imopVarPre251);
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    if (_imopVarPre252) {
                        /*OUT: {
                        Reverse<795, 429_0; 382_0; 370_0; 319_0; 302_0; 285_1;>
                        Reverse<795, 429_0; 382_0; 370_0; 302_1; 285_1;>}*/
                        _imopVarPre255 = fabs(t3);
                        /*OUT: {
                        Reverse<795, 429_0; 382_0; 370_0; 319_0; 302_0; 285_1;>
                        Reverse<795, 429_0; 382_0; 370_0; 302_1; 285_1;>}*/
                        /*OUT: {
                        Reverse<795, 429_0; 382_0; 370_0; 319_0; 302_0; 285_1;>
                        Reverse<795, 429_0; 382_0; 370_0; 302_1; 285_1;>}*/
                        _imopVarPre253 = _imopVarPre255;
                    } else {
                        /*OUT: {
                        Reverse<795, 429_1; 382_0; 370_0; 302_1; 285_1;>
                        Reverse<795, 429_1; 382_0; 370_0; 319_0; 302_0; 285_1;>}*/
                        _imopVarPre257 = fabs(t4);
                        /*OUT: {
                        Reverse<795, 429_1; 382_0; 370_0; 302_1; 285_1;>
                        Reverse<795, 429_1; 382_0; 370_0; 319_0; 302_0; 285_1;>}*/
                        /*OUT: {
                        Reverse<795, 429_1; 382_0; 370_0; 302_1; 285_1;>
                        Reverse<795, 429_1; 382_0; 370_0; 319_0; 302_0; 285_1;>}*/
                        _imopVarPre253 = _imopVarPre257;
                    }
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    l = _imopVarPre253;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    qq[l] += 1.0;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    sx = sx + t3;
                    /*OUT: {
                    Reverse<795, 382_0; 370_0; 319_0; 302_0; 285_1;>
                    Reverse<795, 382_0; 370_0; 302_1; 285_1;>}*/
                    sy = sy + t4;
                }
            }
            /*OUT: {
            Reverse<795, 370_1; 319_0; 302_0; 285_1;>
            Reverse<795, 370_1; 302_1; 285_1;>}*/
            if (0 == 1) {
                /*OUT: {
                Reverse<795, 455_0; 370_1; 319_0; 302_0; 285_1;>
                Reverse<795, 455_0; 370_1; 302_1; 285_1;>}*/
                timer_stop(2);
                /*OUT: {
                Reverse<795, 455_0; 370_1; 319_0; 302_0; 285_1;>
                Reverse<795, 455_0; 370_1; 302_1; 285_1;>}*/
            }
        }
        /*OUT: {
        Reverse<795, 285_1;>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<461,>}*/
#pragma omp barrier
        /*OUT: {
        Reverse<461,>}*/
        // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
        {
            /*OUT: {
            Reverse<461,>}*/
            /*OUT: {
            Reverse<461,>}*/
            /*OUT: {
            Reverse<461, 463_0;>}*/
            for (i = 0; i <= 10 - 1; i++) {
                /*OUT: {
                Reverse<461, 463_0;>}*/
                q[i] += qq[i];
            }
        }
        /*OUT: {
        Reverse<461, 463_1;>}*/
        // #pragma omp dummyFlush CRITICAL_END
    }
    /*OUT: {
    Reverse<--, 266_1; 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 266_1; 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 470_0; 266_1; 241_1; 111_1;>}*/
    for (i = 0; i <= 10 - 1; i++) {
        /*OUT: {
        Reverse<--, 470_0; 266_1; 241_1; 111_1;>}*/
        gc = gc + q[i];
    }
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    timer_stop(1);
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    tm = timer_read(1);
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    nit = 0;
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    if (24 == 24) {
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        double _imopVarPre269;
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        double _imopVarPre270;
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        int _imopVarPre271;
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        double _imopVarPre274;
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        double _imopVarPre275;
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        _imopVarPre269 = (sx - (-3.247834652034740e3)) / sx;
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        _imopVarPre270 = fabs(_imopVarPre269);
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        _imopVarPre271 = (_imopVarPre270 <= 1.0e-8);
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        if (_imopVarPre271) {
            /*OUT: {
            Reverse<--, 507_0; 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
            _imopVarPre274 = (sy - (-6.958407078382297e3)) / sy;
            /*OUT: {
            Reverse<--, 507_0; 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
            _imopVarPre275 = fabs(_imopVarPre274);
            /*OUT: {
            Reverse<--, 507_0; 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
            /*OUT: {
            Reverse<--, 507_0; 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
            _imopVarPre271 = (_imopVarPre275 <= 1.0e-8);
        }
        /*OUT: {
        Reverse<--, 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
        if (_imopVarPre271) {
            /*OUT: {
            Reverse<--, 521_0; 488_0; 470_1; 266_1; 241_1; 111_1;>}*/
            verified = 1;
        }
    } else {
        /*OUT: {
        Reverse<--, 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
        if (24 == 25) {
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            double _imopVarPre287;
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            double _imopVarPre288;
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            int _imopVarPre289;
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            double _imopVarPre292;
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            double _imopVarPre293;
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            _imopVarPre287 = (sx - (-2.863319731645753e3)) / sx;
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            _imopVarPre288 = fabs(_imopVarPre287);
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            _imopVarPre289 = (_imopVarPre288 <= 1.0e-8);
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            if (_imopVarPre289) {
                /*OUT: {
                Reverse<--, 543_0; 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                _imopVarPre292 = (sy - (-6.320053679109499e3)) / sy;
                /*OUT: {
                Reverse<--, 543_0; 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                _imopVarPre293 = fabs(_imopVarPre292);
                /*OUT: {
                Reverse<--, 543_0; 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                /*OUT: {
                Reverse<--, 543_0; 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                _imopVarPre289 = (_imopVarPre293 <= 1.0e-8);
            }
            /*OUT: {
            Reverse<--, 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            if (_imopVarPre289) {
                /*OUT: {
                Reverse<--, 557_0; 524_0; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                verified = 1;
            }
        } else {
            /*OUT: {
            Reverse<--, 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
            if (24 == 28) {
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                double _imopVarPre305;
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                double _imopVarPre306;
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                int _imopVarPre307;
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                double _imopVarPre310;
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                double _imopVarPre311;
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                _imopVarPre305 = (sx - (-4.295875165629892e3)) / sx;
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                _imopVarPre306 = fabs(_imopVarPre305);
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                _imopVarPre307 = (_imopVarPre306 <= 1.0e-8);
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                if (_imopVarPre307) {
                    /*OUT: {
                    Reverse<--, 579_0; 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    _imopVarPre310 = (sy - (-1.580732573678431e4)) / sy;
                    /*OUT: {
                    Reverse<--, 579_0; 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    _imopVarPre311 = fabs(_imopVarPre310);
                    /*OUT: {
                    Reverse<--, 579_0; 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    /*OUT: {
                    Reverse<--, 579_0; 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    _imopVarPre307 = (_imopVarPre311 <= 1.0e-8);
                }
                /*OUT: {
                Reverse<--, 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                if (_imopVarPre307) {
                    /*OUT: {
                    Reverse<--, 593_0; 560_0; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    verified = 1;
                }
            } else {
                /*OUT: {
                Reverse<--, 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                if (24 == 30) {
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    double _imopVarPre323;
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    double _imopVarPre324;
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    int _imopVarPre325;
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    double _imopVarPre328;
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    double _imopVarPre329;
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    _imopVarPre323 = (sx - 4.033815542441498e4) / sx;
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    _imopVarPre324 = fabs(_imopVarPre323);
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    _imopVarPre325 = (_imopVarPre324 <= 1.0e-8);
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    if (_imopVarPre325) {
                        /*OUT: {
                        Reverse<--, 614_0; 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        _imopVarPre328 = (sy - (-2.660669192809235e4)) / sy;
                        /*OUT: {
                        Reverse<--, 614_0; 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        _imopVarPre329 = fabs(_imopVarPre328);
                        /*OUT: {
                        Reverse<--, 614_0; 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        /*OUT: {
                        Reverse<--, 614_0; 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        _imopVarPre325 = (_imopVarPre329 <= 1.0e-8);
                    }
                    /*OUT: {
                    Reverse<--, 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    if (_imopVarPre325) {
                        /*OUT: {
                        Reverse<--, 628_0; 596_0; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        verified = 1;
                    }
                } else {
                    /*OUT: {
                    Reverse<--, 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                    if (24 == 32) {
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        double _imopVarPre341;
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        double _imopVarPre342;
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        int _imopVarPre343;
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        double _imopVarPre346;
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        double _imopVarPre347;
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        _imopVarPre341 = (sx - 4.764367927995374e4) / sx;
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        _imopVarPre342 = fabs(_imopVarPre341);
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        _imopVarPre343 = (_imopVarPre342 <= 1.0e-8);
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        if (_imopVarPre343) {
                            /*OUT: {
                            Reverse<--, 649_0; 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                            _imopVarPre346 = (sy - (-8.084072988043731e4)) / sy;
                            /*OUT: {
                            Reverse<--, 649_0; 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                            _imopVarPre347 = fabs(_imopVarPre346);
                            /*OUT: {
                            Reverse<--, 649_0; 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                            /*OUT: {
                            Reverse<--, 649_0; 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                            _imopVarPre343 = (_imopVarPre347 <= 1.0e-8);
                        }
                        /*OUT: {
                        Reverse<--, 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                        if (_imopVarPre343) {
                            /*OUT: {
                            Reverse<--, 663_0; 631_0; 596_1; 560_1; 524_1; 488_1; 470_1; 266_1; 241_1; 111_1;>}*/
                            verified = 1;
                        }
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    int _imopVarPre350;
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    double _imopVarPre351;
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    _imopVarPre350 = 24 + 1;
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    _imopVarPre351 = pow(2.0, _imopVarPre350);
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    Mops = _imopVarPre351 / tm / 1000000.0;
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    printf("EP Benchmark Results: \n" "CPU Time = %10.4f\n" "N = 2^%5d\n" "No. Gaussian Pairs = %15.0f\n" "Sums = %25.15e %25.15e\n" "Counts:\n", tm, 24, gc, sx, sy);
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 470_1; 266_1; 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 684_0; 470_1; 266_1; 241_1; 111_1;>}*/
    for (i = 0; i <= 10 - 1; i++) {
        /*OUT: {
        Reverse<--, 684_0; 470_1; 266_1; 241_1; 111_1;>}*/
        double _imopVarPre353;
        /*OUT: {
        Reverse<--, 684_0; 470_1; 266_1; 241_1; 111_1;>}*/
        _imopVarPre353 = q[i];
        /*OUT: {
        Reverse<--, 684_0; 470_1; 266_1; 241_1; 111_1;>}*/
        printf("%3d %15.0f\n", i, _imopVarPre353);
        /*OUT: {
        Reverse<--, 684_0; 470_1; 266_1; 241_1; 111_1;>}*/
    }
    /*OUT: {
    Reverse<--, 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
    int _imopVarPre355;
    /*OUT: {
    Reverse<--, 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
    _imopVarPre355 = 24 + 1;
    /*OUT: {
    Reverse<--, 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
    c_print_results("EP", 'S', _imopVarPre355, 0, 0, nit, nthreads, tm, Mops, "Random numbers generated", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*OUT: {
    Reverse<--, 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
    /*OUT: {
    Reverse<--, 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
    if (0 == 1) {
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        double _imopVarPre357;
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        _imopVarPre357 = timer_read(1);
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        printf("Total time:     %f", _imopVarPre357);
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        double _imopVarPre359;
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        _imopVarPre359 = timer_read(2);
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        printf("Gaussian pairs: %f", _imopVarPre359);
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        double _imopVarPre361;
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        _imopVarPre361 = timer_read(3);
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
        printf("Random numbers: %f", _imopVarPre361);
        /*OUT: {
        Reverse<--, 703_0; 684_1; 470_1; 266_1; 241_1; 111_1;>}*/
    }
}
