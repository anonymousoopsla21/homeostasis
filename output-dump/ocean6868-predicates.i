extern double fabs(double );
typedef int __int32_t;
typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_suseconds_t;
typedef __darwin_size_t size_t;
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
void exit(int );
void *malloc(size_t __size);
int strcmp(const char *__s1, const char *__s2);
extern int omp_get_thread_num(void );
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
extern FILE *__stderrp;
int fprintf(FILE *restrict , const char *restrict , ...);
int printf(const char *restrict , ...);
int scanf(const char *restrict , ...);
int sscanf(const char *restrict , const char *restrict , ...);
int gettimeofday(struct timeval *restrict , void *restrict );
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int min(int a, int b) {
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre142;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre143;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre142 = a <= b;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre142) {
        /*OUT: {
        Reverse<--, 15307_0;>}*/
        _imopVarPre143 = a;
    } else {
        /*OUT: {
        Reverse<--, 15307_1;>}*/
        _imopVarPre143 = b;
    }
    /*OUT: {
    Reverse<--,>}*/
    return _imopVarPre143;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int simulate_ocean_currents(double **A, int n , double tol) {
    /*OUT: {
    Reverse<--,>}*/
    int done = 0;
    /*OUT: {
    Reverse<--,>}*/
    double diff;
    /*OUT: {
    Reverse<--,>}*/
    double old;
    /*OUT: {
    Reverse<--,>}*/
    int iter = 0;
    /*OUT: {
    Reverse<--,>}*/
    double **B;
    /*OUT: {
    Reverse<--,>}*/
    double **C;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre146;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre147;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre146 = n * sizeof(double *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre147 = malloc(_imopVarPre146);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    B = (double **) _imopVarPre147;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 15337_0;>}*/
    for (k = 0; k < n; k++) {
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        unsigned long int _imopVarPre150;
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        void *_imopVarPre151;
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        _imopVarPre150 = n * sizeof(double);
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        _imopVarPre151 = malloc(_imopVarPre150);
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        B[k] = (double *) _imopVarPre151;
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        double *_imopVarPre159;
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        unsigned int _imopVarPre160;
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        unsigned long int _imopVarPre161;
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        double *_imopVarPre162;
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        double *_imopVarPre163;
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        _imopVarPre159 = B[k];
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        _imopVarPre160 = __builtin_object_size(_imopVarPre159, 0);
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        _imopVarPre161 = n * sizeof(double);
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        _imopVarPre162 = A[k];
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        _imopVarPre163 = B[k];
        /*OUT: {
        Reverse<--, 15337_0;>}*/
        __builtin___memcpy_chk(_imopVarPre163, _imopVarPre162, _imopVarPre161, _imopVarPre160);
        /*OUT: {
        Reverse<--, 15337_0;>}*/
    }
    /*OUT: {
    Reverse<--, 15337_1;>}*/
    while (!done) {
        /*OUT: {
        Reverse<--, 15379_0; 15337_1;>}*/
        iter++;
        /*OUT: {
        Reverse<--, 15379_0; 15337_1;>}*/
        diff = 0;
        /*OUT: {
        Reverse<--, 15379_0; 15337_1;>}*/
        int i;
        /*OUT: {
        Reverse<--, 15379_0; 15337_1;>}*/
        int j;
        /*OUT: {
        Reverse<--, 15379_0; 15337_1;>}*/
        /*OUT: {
        Reverse<--, 15379_0; 15337_1;>}*/
        /*OUT: {
        Reverse<--, 15390_1; 15387_0; 15379_0; 15337_1;>}*/
        for (i = 1; i < n - 1; ++i) {
            /*OUT: {
            Reverse<--, 15387_0; 15379_0; 15337_1;>}*/
            /*OUT: {
            Reverse<--, 15387_0; 15379_0; 15337_1;>}*/
            /*OUT: {
            Reverse<--, 15390_0; 15387_0; 15379_0; 15337_1;>}*/
            for (j = 1; j < n - 1; ++j) {
                /*OUT: {
                Reverse<--, 15390_0; 15387_0; 15379_0; 15337_1;>}*/
                old = A[i][j];
                /*OUT: {
                Reverse<--, 15390_0; 15387_0; 15379_0; 15337_1;>}*/
                B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                /*OUT: {
                Reverse<--, 15390_0; 15387_0; 15379_0; 15337_1;>}*/
                double _imopVarPre165;
                /*OUT: {
                Reverse<--, 15390_0; 15387_0; 15379_0; 15337_1;>}*/
                double _imopVarPre166;
                /*OUT: {
                Reverse<--, 15390_0; 15387_0; 15379_0; 15337_1;>}*/
                _imopVarPre165 = B[i][j] - old;
                /*OUT: {
                Reverse<--, 15390_0; 15387_0; 15379_0; 15337_1;>}*/
                _imopVarPre166 = fabs(_imopVarPre165);
                /*OUT: {
                Reverse<--, 15390_0; 15387_0; 15379_0; 15337_1;>}*/
                /*OUT: {
                Reverse<--, 15390_0; 15387_0; 15379_0; 15337_1;>}*/
                diff += _imopVarPre166;
            }
        }
        /*OUT: {
        Reverse<--, 15387_1; 15379_0; 15337_1;>}*/
        C = A;
        /*OUT: {
        Reverse<--, 15387_1; 15379_0; 15337_1;>}*/
        A = B;
        /*OUT: {
        Reverse<--, 15387_1; 15379_0; 15337_1;>}*/
        B = C;
        /*OUT: {
        Reverse<--, 15387_1; 15379_0; 15337_1;>}*/
        if (diff / (n * n) < tol) {
            /*OUT: {
            Reverse<--, 15432_0; 15387_1; 15379_0; 15337_1;>}*/
            done = 1;
        }
    }
    /*OUT: {
    Reverse<--, 15379_1; 15337_1;>}*/
    return iter;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int simulate_ocean_currents_parallel(double **A, int dim , double tol , int procs) {
    /*OUT: {
    Reverse<--,>}*/
    int done = 0;
    /*OUT: {
    Reverse<--,>}*/
    int iter = 0;
    /*OUT: {
    Reverse<--,>}*/
    double diff = 0;
    /*OUT: {
    Reverse<--,>}*/
    double **B;
    /*OUT: {
    Reverse<--,>}*/
    double **C;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre169;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre170;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre169 = dim * sizeof(double *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre170 = malloc(_imopVarPre169);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    B = (double **) _imopVarPre170;
    /*OUT: {
    Reverse<16774,>}*/
#pragma omp parallel num_threads(procs) shared(A, B, dim)
    {
        /*OUT: {
        Reverse<16774,>}*/
        int _imopVarPre171;
        /*OUT: {
        Reverse<16774,>}*/
        _imopVarPre171 = omp_get_thread_num();
        /*OUT: {
        Reverse<16774,>}*/
        /*OUT: {
        Reverse<16774,>}*/
        int tid = _imopVarPre171;
        /*OUT: {
        Reverse<16774,>}*/
        int _imopVarPre173;
        /*OUT: {
        Reverse<16774,>}*/
        int _imopVarPre174;
        /*OUT: {
        Reverse<16774,>}*/
        _imopVarPre173 = tid * dim / procs;
        /*OUT: {
        Reverse<16774,>}*/
        _imopVarPre174 = min(dim, _imopVarPre173);
        /*OUT: {
        Reverse<16774,>}*/
        /*OUT: {
        Reverse<16774,>}*/
        int start = _imopVarPre174;
        /*OUT: {
        Reverse<16774,>}*/
        int _imopVarPre176;
        /*OUT: {
        Reverse<16774,>}*/
        int _imopVarPre177;
        /*OUT: {
        Reverse<16774,>}*/
        _imopVarPre176 = (tid + 1) * dim / procs;
        /*OUT: {
        Reverse<16774,>}*/
        _imopVarPre177 = min(dim, _imopVarPre176);
        /*OUT: {
        Reverse<16774,>}*/
        /*OUT: {
        Reverse<16774,>}*/
        int end = _imopVarPre177;
        /*OUT: {
        Reverse<16774,>}*/
        int i;
        /*OUT: {
        Reverse<16774,>}*/
        /*OUT: {
        Reverse<16774,>}*/
        /*OUT: {
        Reverse<16774, 15494_0;>}*/
        for (i = start; i < end; ++i) {
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            unsigned long int _imopVarPre180;
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            void *_imopVarPre181;
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            _imopVarPre180 = dim * sizeof(double);
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            _imopVarPre181 = malloc(_imopVarPre180);
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            B[i] = (double *) _imopVarPre181;
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            double *_imopVarPre189;
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            unsigned int _imopVarPre190;
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            unsigned long int _imopVarPre191;
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            double *_imopVarPre192;
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            double *_imopVarPre193;
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            _imopVarPre189 = B[i];
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            _imopVarPre190 = __builtin_object_size(_imopVarPre189, 0);
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            _imopVarPre191 = dim * sizeof(double);
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            _imopVarPre192 = A[i];
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            _imopVarPre193 = B[i];
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
            __builtin___memcpy_chk(_imopVarPre193, _imopVarPre192, _imopVarPre191, _imopVarPre190);
            /*OUT: {
            Reverse<16774, 15494_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    int chunk = 1 + (dim - 3) / procs;
    /*OUT: {
    Reverse<16782,>}*/
#pragma omp parallel num_threads(procs) firstprivate(done)
    {
        /*OUT: {
        Reverse<16782,>}*/
        int _imopVarPre194;
        /*OUT: {
        Reverse<16782,>}*/
        _imopVarPre194 = omp_get_thread_num();
        /*OUT: {
        Reverse<16782,>}*/
        /*OUT: {
        Reverse<16782,>}*/
        int tid = _imopVarPre194;
        /*OUT: {
        Reverse<16782,>}*/
        int _imopVarPre198;
        /*OUT: {
        Reverse<16782,>}*/
        int _imopVarPre199;
        /*OUT: {
        Reverse<16782,>}*/
        int _imopVarPre200;
        /*OUT: {
        Reverse<16782,>}*/
        _imopVarPre198 = tid * chunk;
        /*OUT: {
        Reverse<16782,>}*/
        _imopVarPre199 = dim - 2;
        /*OUT: {
        Reverse<16782,>}*/
        _imopVarPre200 = min(_imopVarPre199, _imopVarPre198);
        /*OUT: {
        Reverse<16782,>}*/
        /*OUT: {
        Reverse<16782,>}*/
        int start = 1 + _imopVarPre200;
        /*OUT: {
        Reverse<16782,>}*/
        int _imopVarPre204;
        /*OUT: {
        Reverse<16782,>}*/
        int _imopVarPre205;
        /*OUT: {
        Reverse<16782,>}*/
        int _imopVarPre206;
        /*OUT: {
        Reverse<16782,>}*/
        _imopVarPre204 = (tid + 1) * chunk;
        /*OUT: {
        Reverse<16782,>}*/
        _imopVarPre205 = dim - 2;
        /*OUT: {
        Reverse<16782,>}*/
        _imopVarPre206 = min(_imopVarPre205, _imopVarPre204);
        /*OUT: {
        Reverse<16782,>}*/
        /*OUT: {
        Reverse<16782,>}*/
        int end = 1 + _imopVarPre206;
        /*OUT: {
        Reverse<16782,>}*/
        double old;
        /*OUT: {
        Reverse<16782,>}*/
        double mydiff;
        /*OUT: {
        Reverse<16782,>}*/
        int i;
        /*OUT: {
        Reverse<16782,>}*/
        int j;
        /*OUT: {
        Reverse<16782,>
        Reverse<21715,>}*/
        while (!done) {
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
            {
                /*OUT: {
                Reverse<16782, 15581_0;>
                Reverse<21715, 15581_0;>}*/
                iter++;
            }
            /*OUT: {
            Reverse<16782, 15581_0;>
            Reverse<21715, 15581_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<21707,>}*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
            /*OUT: {
            Reverse<21707,>}*/
            diff = 0;
            /*OUT: {
            Reverse<21707,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<15586,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<15586,>}*/
            mydiff = 0;
            /*OUT: {
            Reverse<15586,>}*/
            /*OUT: {
            Reverse<15586,>}*/
            /*OUT: {
            Reverse<15586, 15593_1; 15590_0;>}*/
            for (i = start; i < end; ++i) {
                /*OUT: {
                Reverse<15586, 15590_0;>}*/
                /*OUT: {
                Reverse<15586, 15590_0;>}*/
                /*OUT: {
                Reverse<15586, 15593_0; 15590_0;>}*/
                for (j = 1; j < dim - 1; ++j) {
                    /*OUT: {
                    Reverse<15586, 15593_0; 15590_0;>}*/
                    old = A[i][j];
                    /*OUT: {
                    Reverse<15586, 15593_0; 15590_0;>}*/
                    B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                    /*OUT: {
                    Reverse<15586, 15593_0; 15590_0;>}*/
                    double _imopVarPre208;
                    /*OUT: {
                    Reverse<15586, 15593_0; 15590_0;>}*/
                    double _imopVarPre209;
                    /*OUT: {
                    Reverse<15586, 15593_0; 15590_0;>}*/
                    _imopVarPre208 = B[i][j] - old;
                    /*OUT: {
                    Reverse<15586, 15593_0; 15590_0;>}*/
                    _imopVarPre209 = fabs(_imopVarPre208);
                    /*OUT: {
                    Reverse<15586, 15593_0; 15590_0;>}*/
                    /*OUT: {
                    Reverse<15586, 15593_0; 15590_0;>}*/
                    mydiff += _imopVarPre209;
                }
            }
            /*OUT: {
            Reverse<15586, 15590_1;>}*/
            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic
            /*OUT: {
            Reverse<15586, 15590_1;>}*/
            diff += mydiff;
            /*OUT: {
            Reverse<15586, 15590_1;>}*/
            // #pragma omp dummyFlush ATOMIC_END
            /*OUT: {
            Reverse<15586, 15590_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<15630,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<15630,>}*/
            done = diff / (dim * dim) < tol;
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
            {
                /*OUT: {
                Reverse<15630,>}*/
                C = A;
                /*OUT: {
                Reverse<15630,>}*/
                A = B;
                /*OUT: {
                Reverse<15630,>}*/
                B = C;
            }
            /*OUT: {
            Reverse<15630,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<21715,>}*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    return iter;
}
/*OUT: {
Reverse<--,>}*/
double **read_input(int n) {
    /*OUT: {
    Reverse<--,>}*/
    double **X;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre212;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre213;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre212 = n * sizeof(double *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre213 = malloc(_imopVarPre212);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    X = (double **) _imopVarPre213;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 15675_1; 15659_0;>}*/
    for (i = 0; i < n; ++i) {
        /*OUT: {
        Reverse<--, 15659_0;>}*/
        unsigned long int _imopVarPre216;
        /*OUT: {
        Reverse<--, 15659_0;>}*/
        void *_imopVarPre217;
        /*OUT: {
        Reverse<--, 15659_0;>}*/
        _imopVarPre216 = n * sizeof(double);
        /*OUT: {
        Reverse<--, 15659_0;>}*/
        _imopVarPre217 = malloc(_imopVarPre216);
        /*OUT: {
        Reverse<--, 15659_0;>}*/
        /*OUT: {
        Reverse<--, 15659_0;>}*/
        X[i] = (double *) _imopVarPre217;
        /*OUT: {
        Reverse<--, 15659_0;>}*/
        /*OUT: {
        Reverse<--, 15659_0;>}*/
        /*OUT: {
        Reverse<--, 15675_0; 15659_0;>}*/
        for (j = 0; j < n; ++j) {
            /*OUT: {
            Reverse<--, 15675_0; 15659_0;>}*/
            double *_imopVarPre219;
            /*OUT: {
            Reverse<--, 15675_0; 15659_0;>}*/
            _imopVarPre219 = &X[i][j];
            /*OUT: {
            Reverse<--, 15675_0; 15659_0;>}*/
            scanf("%lf", _imopVarPre219);
            /*OUT: {
            Reverse<--, 15675_0; 15659_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 15659_1;>}*/
    return X;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void print_output(double **A, int n , int niter) {
    /*OUT: {
    Reverse<--,>}*/
    printf("Number of iterations = %d\n", niter);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 15703_1; 15700_0;>}*/
    for (i = 0; i < n; ++i) {
        /*OUT: {
        Reverse<--, 15700_0;>}*/
        /*OUT: {
        Reverse<--, 15700_0;>}*/
        /*OUT: {
        Reverse<--, 15703_0; 15700_0;>}*/
        for (j = 0; j < n; ++j) {
            /*OUT: {
            Reverse<--, 15703_0; 15700_0;>}*/
            double _imopVarPre221;
            /*OUT: {
            Reverse<--, 15703_0; 15700_0;>}*/
            _imopVarPre221 = A[i][j];
            /*OUT: {
            Reverse<--, 15703_0; 15700_0;>}*/
            printf("%lf ", _imopVarPre221);
            /*OUT: {
            Reverse<--, 15703_0; 15700_0;>}*/
        }
        /*OUT: {
        Reverse<--, 15703_1; 15700_0;>}*/
        printf("\n");
        /*OUT: {
        Reverse<--, 15703_1; 15700_0;>}*/
    }
    /*OUT: {
    Reverse<--, 15700_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 15700_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void print_statistics(struct timeval start_time, struct timeval end_time) {
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre223;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre223 = start_time.tv_sec + (start_time.tv_usec / 1000000.0);
    /*OUT: {
    Reverse<--,>}*/
    printf("Start time:\t%lf \n", _imopVarPre223);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre225;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre225 = end_time.tv_sec + (end_time.tv_usec / 1000000.0);
    /*OUT: {
    Reverse<--,>}*/
    printf("End time:\t%lf\n", _imopVarPre225);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre227;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre227 = end_time.tv_sec - start_time.tv_sec + ((end_time.tv_usec - start_time.tv_usec) / 1000000.0);
    /*OUT: {
    Reverse<--,>}*/
    printf("Total time: \t%lf (s)\n", _imopVarPre227);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
void print_usage_and_exit(char *prog) {
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "Usage: %s <nprocs> <tol> <-serial|-parallel>\n", prog);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    exit(1);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    struct timeval start_time;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval end_time;
    /*OUT: {
    Reverse<--,>}*/
    int num_iter = 0;
    /*OUT: {
    Reverse<--,>}*/
    double tol;
    /*OUT: {
    Reverse<--,>}*/
    double **A;
    /*OUT: {
    Reverse<--,>}*/
    int procs;
    /*OUT: {
    Reverse<--,>}*/
    int dim;
    /*OUT: {
    Reverse<--,>}*/
    if (argc != 4) {
        /*OUT: {
        Reverse<--, 15775_0;>}*/
        char *_imopVarPre229;
        /*OUT: {
        Reverse<--, 15775_0;>}*/
        _imopVarPre229 = argv[0];
        /*OUT: {
        Reverse<--, 15775_0;>}*/
        print_usage_and_exit(_imopVarPre229);
        /*OUT: {
        Reverse<--, 15775_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre232;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre233;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre232 = &procs;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre233 = argv[1];
    /*OUT: {
    Reverse<--,>}*/
    sscanf(_imopVarPre233, "%d", _imopVarPre232);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre236;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre237;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre236 = &tol;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre237 = argv[2];
    /*OUT: {
    Reverse<--,>}*/
    sscanf(_imopVarPre237, "%lf", _imopVarPre236);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char *option = argv[3];
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre238;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre248;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre249;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre250;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre238 = option == ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    if (!_imopVarPre238) {
        /*OUT: {
        Reverse<--, 15818_0; 15775_1;>
        Reverse<--, 15818_0;>}*/
        _imopVarPre248 = strcmp(option, "-serial");
        /*OUT: {
        Reverse<--, 15818_0; 15775_1;>
        Reverse<--, 15818_0;>}*/
        /*OUT: {
        Reverse<--, 15818_0; 15775_1;>
        Reverse<--, 15818_0;>}*/
        _imopVarPre249 = _imopVarPre248 != 0;
        /*OUT: {
        Reverse<--, 15818_0; 15775_1;>
        Reverse<--, 15818_0;>}*/
        if (_imopVarPre249) {
            /*OUT: {
            Reverse<--, 15827_0; 15818_0;>
            Reverse<--, 15827_0; 15818_0; 15775_1;>}*/
            _imopVarPre250 = strcmp(option, "-parallel");
            /*OUT: {
            Reverse<--, 15827_0; 15818_0;>
            Reverse<--, 15827_0; 15818_0; 15775_1;>}*/
            /*OUT: {
            Reverse<--, 15827_0; 15818_0;>
            Reverse<--, 15827_0; 15818_0; 15775_1;>}*/
            _imopVarPre249 = _imopVarPre250 != 0;
        }
        /*OUT: {
        Reverse<--, 15818_0; 15775_1;>
        Reverse<--, 15818_0;>}*/
        _imopVarPre238 = _imopVarPre249;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre238) {
        /*OUT: {
        Reverse<--, 15838_0;>
        Reverse<--, 15838_0; 15775_1;>}*/
        char *_imopVarPre252;
        /*OUT: {
        Reverse<--, 15838_0;>
        Reverse<--, 15838_0; 15775_1;>}*/
        _imopVarPre252 = argv[0];
        /*OUT: {
        Reverse<--, 15838_0;>
        Reverse<--, 15838_0; 15775_1;>}*/
        print_usage_and_exit(_imopVarPre252);
        /*OUT: {
        Reverse<--, 15838_0;>
        Reverse<--, 15838_0; 15775_1;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    printf("Options: Procs = %d, Tol = %lf, Execution%s\n\n", procs, tol, option);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre254;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre254 = &dim;
    /*OUT: {
    Reverse<--,>}*/
    scanf("%d", _imopVarPre254);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    A = read_input(dim);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre257;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre258;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre257 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre258 = &start_time;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre258, _imopVarPre257);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre260;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre260 = strcmp(option, "-serial");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre260 == 0) {
        /*OUT: {
        Reverse<--, 15886_0;>}*/
        num_iter = simulate_ocean_currents(A, dim, tol);
        /*OUT: {
        Reverse<--, 15886_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 15886_1;>}*/
        num_iter = simulate_ocean_currents_parallel(A, dim, tol, procs);
        /*OUT: {
        Reverse<--, 15886_1;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre263;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre264;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre263 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre264 = &end_time;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre264, _imopVarPre263);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    print_output(A, dim, num_iter);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    print_statistics(start_time, end_time);
    /*OUT: {
    Reverse<--,>}*/
}
