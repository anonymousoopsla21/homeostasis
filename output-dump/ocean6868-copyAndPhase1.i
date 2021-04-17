
/*[]*/
extern double fabs(double );
/*[]*/
typedef int __int32_t;
/*[]*/
typedef long long __int64_t;
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef long __darwin_time_t;
/*[]*/
typedef __int64_t __darwin_off_t;
/*[]*/
typedef __int32_t __darwin_suseconds_t;
/*[]*/
typedef __darwin_size_t size_t;
/*[]*/
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
/*[]*/
void exit(int );
/*[]*/
void *malloc(size_t __size);
/*[]*/
int strcmp(const char *__s1, const char *__s2);
/*[]*/
extern int omp_get_thread_num(void );
/*[]*/
typedef __darwin_off_t fpos_t;
/*[]*/
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
/*[]*/
struct __sFILEX ;
/*[]*/
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
/*[]*/
typedef struct __sFILE FILE;
/*[]*/
extern FILE *__stderrp;
/*[]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
int scanf(const char *restrict , ...);
/*[]*/
int sscanf(const char *restrict , const char *restrict , ...);
/*[]*/
int gettimeofday(struct timeval *restrict , void *restrict );
/*[1; 2; ]*/
/*[1; 2; ]*/
/*[1; 2; ]*/
int min(int a, int b) {
/*[1; 2; ]*/
    /*[1; 2; ]*/
    int _imopVarPre142;
    /*[1; 2; ]*/
    int _imopVarPre143;
    /*[1; 2; ]*/
    _imopVarPre142 = a <= b;
    /*[1; 2; ]*/
    /*[1; 2; ]*/
    if (_imopVarPre142) {
    /*[1; 2; ]*/
        /*[1; 2; ]*/
        _imopVarPre143 = a;
    } else {
    /*[1; 2; ]*/
        /*[1; 2; ]*/
        _imopVarPre143 = b;
    }
    /*[1; 2; ]*/
    return _imopVarPre143;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
int simulate_ocean_currents(double **A, int n , double tol) {
/*[]*/
    /*[]*/
    int done = 0;
    /*[]*/
    double diff;
    /*[]*/
    double old;
    /*[]*/
    int iter = 0;
    /*[]*/
    double **B;
    /*[]*/
    double **C;
    /*[]*/
    unsigned long int _imopVarPre146;
    /*[]*/
    void *_imopVarPre147;
    /*[]*/
    _imopVarPre146 = n * sizeof(double *);
    /*[]*/
    _imopVarPre147 = malloc(_imopVarPre146);
    /*[]*/
    /*[]*/
    B = (double **) _imopVarPre147;
    /*[]*/
    int k;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (k = 0; k < n; k++) {
    /*[]*/
        /*[]*/
        unsigned long int _imopVarPre150;
        /*[]*/
        void *_imopVarPre151;
        /*[]*/
        _imopVarPre150 = n * sizeof(double);
        /*[]*/
        _imopVarPre151 = malloc(_imopVarPre150);
        /*[]*/
        /*[]*/
        B[k] = (double *) _imopVarPre151;
        /*[]*/
        double *_imopVarPre159;
        /*[]*/
        unsigned int _imopVarPre160;
        /*[]*/
        unsigned long int _imopVarPre161;
        /*[]*/
        double *_imopVarPre162;
        /*[]*/
        double *_imopVarPre163;
        /*[]*/
        _imopVarPre159 = B[k];
        /*[]*/
        _imopVarPre160 = __builtin_object_size(_imopVarPre159, 0);
        /*[]*/
        /*[]*/
        _imopVarPre161 = n * sizeof(double);
        /*[]*/
        _imopVarPre162 = A[k];
        /*[]*/
        _imopVarPre163 = B[k];
        /*[]*/
        __builtin___memcpy_chk(_imopVarPre163, _imopVarPre162, _imopVarPre161, _imopVarPre160);
        /*[]*/
    }
    /*[]*/
    /*[]*/
    while (!done) {
    /*[]*/
        /*[]*/
        iter++;
        /*[]*/
        diff = 0;
        /*[]*/
        int i;
        /*[]*/
        int j;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 1; i < n - 1; ++i) {
        /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (j = 1; j < n - 1; ++j) {
            /*[]*/
                /*[]*/
                old = A[i][j];
                /*[]*/
                B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                /*[]*/
                double _imopVarPre165;
                /*[]*/
                double _imopVarPre166;
                /*[]*/
                _imopVarPre165 = B[i][j] - old;
                /*[]*/
                _imopVarPre166 = fabs(_imopVarPre165);
                /*[]*/
                /*[]*/
                diff += _imopVarPre166;
            }
        }
        /*[]*/
        C = A;
        /*C:A;*/
        /*[]*/
        A = B;
        /*A:B;*/
        /*[]*/
        B = C;
        /*B:C;*/
        /*[]*/
        /*[]*/
        if (diff / (n * n) < tol) {
        /*[]*/
            /*B:C;*/
            /*[]*/
            done = 1;
        }
    }
    /*[]*/
    return iter;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
int simulate_ocean_currents_parallel(double **A, int dim , double tol , int procs) {
/*[]*/
    /*[]*/
    double **A_imopVarPre10;
    /*[]*/
    double **B_imopVarPre9;
    /*[]*/
    double **A_imopVarPre8;
    /*[]*/
    double **B_imopVarPre7;
    /*[]*/
    double **C_imopVarPre6;
    /*[]*/
    double diff_imopVarPre5;
    /*[]*/
    double diff_imopVarPre4;
    /*[]*/
    double **C_imopVarPre3;
    /*[]*/
    double **C_imopVarPre2;
    /*[]*/
    double diff_imopVarPre1;
    /*[]*/
    int done = 0;
    /*[]*/
    int iter = 0;
    /*[]*/
    double diff = 0;
    /*[]*/
    double **B;
    /*[]*/
    double **C;
    /*[]*/
    unsigned long int _imopVarPre169;
    /*[]*/
    void *_imopVarPre170;
    /*[]*/
    _imopVarPre169 = dim * sizeof(double *);
    /*[]*/
    _imopVarPre170 = malloc(_imopVarPre169);
    /*[]*/
    /*[]*/
    B = (double **) _imopVarPre170;
    /*[1; ]*/
    /*[1; ]*/
#pragma omp parallel num_threads(procs) shared(A, B, dim)
    {
    /*[1; ]*/
        /*[1; ]*/
        int _imopVarPre171;
        /*[1; ]*/
        _imopVarPre171 = omp_get_thread_num();
        /*[1; ]*/
        /*[1; ]*/
        int tid = _imopVarPre171;
        /*tid:_imopVarPre171;*/
        /*[1; ]*/
        int _imopVarPre173;
        /*tid:_imopVarPre171;*/
        /*[1; ]*/
        int _imopVarPre174;
        /*tid:_imopVarPre171;*/
        /*[1; ]*/
        _imopVarPre173 = tid * dim / procs;
        /*tid:_imopVarPre171;*/
        /*[1; ]*/
        _imopVarPre174 = min(dim, _imopVarPre173);
        /*tid:_imopVarPre171;*/
        /*[1; ]*/
        /*tid:_imopVarPre171;*/
        /*[1; ]*/
        int start = _imopVarPre174;
        /*start:_imopVarPre174; tid:_imopVarPre171;*/
        /*[1; ]*/
        int _imopVarPre176;
        /*start:_imopVarPre174; tid:_imopVarPre171;*/
        /*[1; ]*/
        int _imopVarPre177;
        /*start:_imopVarPre174; tid:_imopVarPre171;*/
        /*[1; ]*/
        _imopVarPre176 = (tid + 1) * dim / procs;
        /*start:_imopVarPre174; tid:_imopVarPre171;*/
        /*[1; ]*/
        _imopVarPre177 = min(dim, _imopVarPre176);
        /*start:_imopVarPre174; tid:_imopVarPre171;*/
        /*[1; ]*/
        /*start:_imopVarPre174; tid:_imopVarPre171;*/
        /*[1; ]*/
        int end = _imopVarPre177;
        /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
        /*[1; ]*/
        int i;
        /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
        /*[1; ]*/
        /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
        /*[1; ]*/
        /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
        /*[1; ]*/
        /*[1; ]*/
        for (i = start; i < end; ++i) {
        /*[1; ]*/
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            unsigned long int _imopVarPre180;
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            void *_imopVarPre181;
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            _imopVarPre180 = dim * sizeof(double);
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            _imopVarPre181 = malloc(_imopVarPre180);
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            B[i] = (double *) _imopVarPre181;
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            double *_imopVarPre189;
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            unsigned int _imopVarPre190;
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            unsigned long int _imopVarPre191;
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            double *_imopVarPre192;
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            double *_imopVarPre193;
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            _imopVarPre189 = B[i];
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            _imopVarPre190 = __builtin_object_size(_imopVarPre189, 0);
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            _imopVarPre191 = dim * sizeof(double);
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            _imopVarPre192 = A[i];
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            _imopVarPre193 = B[i];
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
            __builtin___memcpy_chk(_imopVarPre193, _imopVarPre192, _imopVarPre191, _imopVarPre190);
            /*start:_imopVarPre174; tid:_imopVarPre171; end:_imopVarPre177;*/
            /*[1; ]*/
        }
    }
    /*[]*/
    int chunk = 1 + (dim - 3) / procs;
    /*[2; ]*/
    /*[2; ]*/
#pragma omp parallel num_threads(procs) firstprivate(done)
    {
    /*[2; ]*/
        /*[2; ]*/
        int _imopVarPre194;
        /*[2; ]*/
        _imopVarPre194 = omp_get_thread_num();
        /*[2; ]*/
        /*[2; ]*/
        int tid = _imopVarPre194;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int _imopVarPre198;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int _imopVarPre199;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int _imopVarPre200;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        _imopVarPre198 = tid * chunk;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        _imopVarPre199 = dim - 2;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        _imopVarPre200 = min(_imopVarPre199, _imopVarPre198);
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int start = 1 + _imopVarPre200;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int _imopVarPre204;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int _imopVarPre205;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int _imopVarPre206;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        _imopVarPre204 = (tid + 1) * chunk;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        _imopVarPre205 = dim - 2;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        _imopVarPre206 = min(_imopVarPre205, _imopVarPre204);
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int end = 1 + _imopVarPre206;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        double old;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        double mydiff;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int i;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int j;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        int whilePred_imopVarPre0;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        whilePred_imopVarPre0 = !done;
        /*tid:_imopVarPre194;*/
        /*[2; ]*/
        /*[2; ]*/
        if (whilePred_imopVarPre0) {
        /*[2; ]*/
            /*A:B_imopVarPre9; tid:_imopVarPre194;*/
            /*[2; 63; ]*/
            /*[2; ]*/
            while (1) {
            /*[2; 63; ]*/
                /*[2; 63; ]*/
#pragma omp single nowait
                {
                /*[2; 63; ]*/
                    /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                    /*[2; 63; ]*/
                    iter++;
                }
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                diff = 0;
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                mydiff = 0;
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                /*[2; 63; ]*/
                for (i = start; i < end; ++i) {
                /*[2; 63; ]*/
                    /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                    /*[2; 63; ]*/
                    /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                    /*[2; 63; ]*/
                    /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                    /*[2; 63; ]*/
                    /*[2; 63; ]*/
                    for (j = 1; j < dim - 1; ++j) {
                    /*[2; 63; ]*/
                        /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                        /*[2; 63; ]*/
                        old = B_imopVarPre9[i][j];
                        /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                        /*[2; 63; ]*/
                        B[i][j] = (B_imopVarPre9[i][j] + B_imopVarPre9[i][j - 1] + B_imopVarPre9[i - 1][j] + B_imopVarPre9[i][j + 1] + B_imopVarPre9[i + 1][j]) / 5.0;
                        /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                        /*[2; 63; ]*/
                        double _imopVarPre208;
                        /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                        /*[2; 63; ]*/
                        double _imopVarPre209;
                        /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                        /*[2; 63; ]*/
                        _imopVarPre208 = B[i][j] - old;
                        /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                        /*[2; 63; ]*/
                        _imopVarPre209 = fabs(_imopVarPre208);
                        /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                        /*[2; 63; ]*/
                        /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                        /*[2; 63; ]*/
                        mydiff += _imopVarPre209;
                    }
                }
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                ;
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                diff_imopVarPre1 = 0;
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                ;
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                diff_imopVarPre4 = 0;
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                ;
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                diff_imopVarPre5 = 0;
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[2; 63; ]*/
#pragma omp barrier
                /*A:B_imopVarPre9; tid:_imopVarPre194;*/
                /*[48; ]*/
                // #pragma omp dummyFlush ATOMIC_START
                /*[48; ]*/
#pragma omp atomic
                /*tid:_imopVarPre194;*/
                /*[48; ]*/
                diff += mydiff;
                /*tid:_imopVarPre194;*/
                /*[48; ]*/
                // #pragma omp dummyFlush ATOMIC_END
                /*[48; ]*/
#pragma omp single nowait
                {
                /*[48; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[48; ]*/
                    C = A;
                    /*C:A; tid:_imopVarPre194;*/
                    /*[48; ]*/
                    A_imopVarPre8 = B;
                    /*A_imopVarPre8:B; C:A; tid:_imopVarPre194;*/
                    /*[48; ]*/
                    B_imopVarPre7 = A;
                }
                /*A_imopVarPre8:B; C:A; tid:_imopVarPre194; B_imopVarPre7:A;*/
                /*[48; ]*/
                mydiff = 0;
                /*A_imopVarPre8:B; C:A; tid:_imopVarPre194; B_imopVarPre7:A;*/
                /*[48; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*A_imopVarPre8:B; C:A; tid:_imopVarPre194; B_imopVarPre7:A;*/
                /*[48; ]*/
#pragma omp barrier
                /*A_imopVarPre8:B; C:A; tid:_imopVarPre194; B_imopVarPre7:A;*/
                /*[49; ]*/
                done = diff / (dim * dim) < tol;
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                whilePred_imopVarPre0 = !done;
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                /*[49; ]*/
                if (!whilePred_imopVarPre0) {
                /*[49; ]*/
                    /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                    /*[49; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                    /*[49; ]*/
#pragma omp barrier
                    /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                    /*[50; ]*/
                    break;
                }
                /*[49; ]*/
#pragma omp single nowait
                {
                /*[49; ]*/
                    /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                    /*[49; ]*/
                    iter++;
                }
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                /*[49; ]*/
                for (i = start; i < end; ++i) {
                /*[49; ]*/
                    /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                    /*[49; ]*/
                    /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                    /*[49; ]*/
                    /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                    /*[49; ]*/
                    /*[49; ]*/
                    for (j = 1; j < dim - 1; ++j) {
                    /*[49; ]*/
                        /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                        /*[49; ]*/
                        old = B[i][j];
                        /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                        /*[49; ]*/
                        C[i][j] = (B[i][j] + B[i][j - 1] + B[i - 1][j] + B[i][j + 1] + B[i + 1][j]) / 5.0;
                        /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                        /*[49; ]*/
                        double _imopVarPre208;
                        /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                        /*[49; ]*/
                        double _imopVarPre209;
                        /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                        /*[49; ]*/
                        _imopVarPre208 = C[i][j] - old;
                        /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                        /*[49; ]*/
                        _imopVarPre209 = fabs(_imopVarPre208);
                        /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                        /*[49; ]*/
                        /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                        /*[49; ]*/
                        mydiff += _imopVarPre209;
                    }
                }
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                // #pragma omp dummyFlush ATOMIC_START
                /*[49; ]*/
#pragma omp atomic
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                diff_imopVarPre1 += mydiff;
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                // #pragma omp dummyFlush ATOMIC_END
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                mydiff = 0;
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                /*[49; ]*/
#pragma omp barrier
                /*[50; ]*/
#pragma omp single nowait
                {
                /*[50; ]*/
                    /*A_imopVarPre8:B; tid:_imopVarPre194;*/
                    /*[50; ]*/
                    C_imopVarPre2 = B;
                    /*C_imopVarPre2:B; A_imopVarPre8:B; tid:_imopVarPre194;*/
                    /*[50; ]*/
                    A = C;
                    /*C_imopVarPre2:B; A_imopVarPre8:B; A:C; tid:_imopVarPre194;*/
                    /*[50; ]*/
                    B = A_imopVarPre8;
                }
                /*A_imopVarPre8:B; A:C; tid:_imopVarPre194;*/
                /*[50; ]*/
                done = diff_imopVarPre1 / (dim * dim) < tol;
                /*A_imopVarPre8:B; A:C; tid:_imopVarPre194;*/
                /*[50; ]*/
                whilePred_imopVarPre0 = !done;
                /*A_imopVarPre8:B; A:C; tid:_imopVarPre194;*/
                /*[50; ]*/
                /*[50; ]*/
                if (!whilePred_imopVarPre0) {
                /*[50; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[50; ]*/
                    break;
                }
                /*[50; ]*/
#pragma omp single nowait
                {
                /*[50; ]*/
                    /*A_imopVarPre8:B; A:C; tid:_imopVarPre194;*/
                    /*[50; ]*/
                    iter++;
                }
                /*A_imopVarPre8:B; A:C; tid:_imopVarPre194;*/
                /*[50; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*A_imopVarPre8:B; A:C; tid:_imopVarPre194;*/
                /*[50; ]*/
#pragma omp barrier
                /*tid:_imopVarPre194;*/
                /*[51; ]*/
                /*tid:_imopVarPre194;*/
                /*[51; ]*/
                /*tid:_imopVarPre194;*/
                /*[51; ]*/
                /*[51; ]*/
                for (i = start; i < end; ++i) {
                /*[51; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[51; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[51; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[51; ]*/
                    /*[51; ]*/
                    for (j = 1; j < dim - 1; ++j) {
                    /*[51; ]*/
                        /*tid:_imopVarPre194;*/
                        /*[51; ]*/
                        old = A[i][j];
                        /*tid:_imopVarPre194;*/
                        /*[51; ]*/
                        C_imopVarPre2[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                        /*tid:_imopVarPre194;*/
                        /*[51; ]*/
                        double _imopVarPre208;
                        /*tid:_imopVarPre194;*/
                        /*[51; ]*/
                        double _imopVarPre209;
                        /*tid:_imopVarPre194;*/
                        /*[51; ]*/
                        _imopVarPre208 = B[i][j] - old;
                        /*tid:_imopVarPre194;*/
                        /*[51; ]*/
                        _imopVarPre209 = fabs(_imopVarPre208);
                        /*tid:_imopVarPre194;*/
                        /*[51; ]*/
                        /*tid:_imopVarPre194;*/
                        /*[51; ]*/
                        mydiff += _imopVarPre209;
                    }
                }
                /*tid:_imopVarPre194;*/
                /*[51; ]*/
                // #pragma omp dummyFlush ATOMIC_START
                /*[51; ]*/
#pragma omp atomic
                /*tid:_imopVarPre194;*/
                /*[51; ]*/
                diff_imopVarPre4 += mydiff;
                /*tid:_imopVarPre194;*/
                /*[51; ]*/
                // #pragma omp dummyFlush ATOMIC_END
                /*tid:_imopVarPre194;*/
                /*[51; ]*/
                mydiff = 0;
                /*tid:_imopVarPre194;*/
                /*[51; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*tid:_imopVarPre194;*/
                /*[51; ]*/
#pragma omp barrier
                /*[52; ]*/
#pragma omp single nowait
                {
                /*[52; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[52; ]*/
                    C_imopVarPre3 = A;
                    /*tid:_imopVarPre194; C_imopVarPre3:A;*/
                    /*[52; ]*/
                    A_imopVarPre10 = C_imopVarPre2;
                    /*tid:_imopVarPre194; C_imopVarPre3:A; A_imopVarPre10:C_imopVarPre2;*/
                    /*[52; ]*/
                    B_imopVarPre9 = A;
                }
                /*tid:_imopVarPre194; C_imopVarPre3:A; A_imopVarPre10:C_imopVarPre2; B_imopVarPre9:A;*/
                /*[52; ]*/
                done = diff_imopVarPre4 / (dim * dim) < tol;
                /*tid:_imopVarPre194; C_imopVarPre3:A; A_imopVarPre10:C_imopVarPre2; B_imopVarPre9:A;*/
                /*[52; ]*/
                whilePred_imopVarPre0 = !done;
                /*tid:_imopVarPre194; C_imopVarPre3:A; A_imopVarPre10:C_imopVarPre2; B_imopVarPre9:A;*/
                /*[52; ]*/
                /*[52; ]*/
                if (!whilePred_imopVarPre0) {
                /*[52; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[52; ]*/
                    break;
                }
                /*[52; ]*/
#pragma omp single nowait
                {
                /*[52; ]*/
                    /*tid:_imopVarPre194; C_imopVarPre3:A; A_imopVarPre10:C_imopVarPre2; B_imopVarPre9:A;*/
                    /*[52; ]*/
                    iter++;
                }
                /*tid:_imopVarPre194; C_imopVarPre3:A; A_imopVarPre10:C_imopVarPre2; B_imopVarPre9:A;*/
                /*[52; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*tid:_imopVarPre194; C_imopVarPre3:A; A_imopVarPre10:C_imopVarPre2; B_imopVarPre9:A;*/
                /*[52; ]*/
#pragma omp barrier
                /*tid:_imopVarPre194;*/
                /*[53; ]*/
                /*tid:_imopVarPre194;*/
                /*[53; ]*/
                /*tid:_imopVarPre194;*/
                /*[53; ]*/
                /*[53; ]*/
                for (i = start; i < end; ++i) {
                /*[53; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[53; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[53; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[53; ]*/
                    /*[53; ]*/
                    for (j = 1; j < dim - 1; ++j) {
                    /*[53; ]*/
                        /*tid:_imopVarPre194;*/
                        /*[53; ]*/
                        old = A_imopVarPre10[i][j];
                        /*tid:_imopVarPre194;*/
                        /*[53; ]*/
                        B_imopVarPre9[i][j] = (A_imopVarPre10[i][j] + A_imopVarPre10[i][j - 1] + A_imopVarPre10[i - 1][j] + A_imopVarPre10[i][j + 1] + A_imopVarPre10[i + 1][j]) / 5.0;
                        /*tid:_imopVarPre194;*/
                        /*[53; ]*/
                        double _imopVarPre208;
                        /*tid:_imopVarPre194;*/
                        /*[53; ]*/
                        double _imopVarPre209;
                        /*tid:_imopVarPre194;*/
                        /*[53; ]*/
                        _imopVarPre208 = B_imopVarPre9[i][j] - old;
                        /*tid:_imopVarPre194;*/
                        /*[53; ]*/
                        _imopVarPre209 = fabs(_imopVarPre208);
                        /*tid:_imopVarPre194;*/
                        /*[53; ]*/
                        /*tid:_imopVarPre194;*/
                        /*[53; ]*/
                        mydiff += _imopVarPre209;
                    }
                }
                /*tid:_imopVarPre194;*/
                /*[53; ]*/
                // #pragma omp dummyFlush ATOMIC_START
                /*[53; ]*/
#pragma omp atomic
                /*tid:_imopVarPre194;*/
                /*[53; ]*/
                diff_imopVarPre5 += mydiff;
                /*tid:_imopVarPre194;*/
                /*[53; ]*/
                // #pragma omp dummyFlush ATOMIC_END
                /*tid:_imopVarPre194;*/
                /*[53; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*tid:_imopVarPre194;*/
                /*[53; ]*/
#pragma omp barrier
                /*[54; ]*/
#pragma omp single nowait
                {
                /*[54; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[54; ]*/
                    C_imopVarPre6 = B;
                    /*C_imopVarPre6:B; tid:_imopVarPre194;*/
                    /*[54; ]*/
                    A = B_imopVarPre9;
                    /*C_imopVarPre6:B; A:B_imopVarPre9; tid:_imopVarPre194;*/
                    /*[54; ]*/
                    B = B;
                }
                /*A:B_imopVarPre9; tid:_imopVarPre194; B:B;*/
                /*[54; ]*/
                done = diff_imopVarPre5 / (dim * dim) < tol;
                /*A:B_imopVarPre9; tid:_imopVarPre194; B:B;*/
                /*[54; ]*/
                whilePred_imopVarPre0 = !done;
                /*A:B_imopVarPre9; tid:_imopVarPre194; B:B;*/
                /*[54; ]*/
                /*[54; ]*/
                if (!whilePred_imopVarPre0) {
                /*[54; ]*/
                    /*tid:_imopVarPre194;*/
                    /*[54; ]*/
                    break;
                }
                /*A:B_imopVarPre9; tid:_imopVarPre194; B:B;*/
                /*[54; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*A:B_imopVarPre9; tid:_imopVarPre194; B:B;*/
                /*[54; ]*/
#pragma omp barrier
            }
        }
    }
    /*[]*/
    return iter;
}
/*[]*/
/*[]*/
double **read_input(int n) {
/*[]*/
    /*[]*/
    double **X;
    /*[]*/
    unsigned long int _imopVarPre212;
    /*[]*/
    void *_imopVarPre213;
    /*[]*/
    _imopVarPre212 = n * sizeof(double *);
    /*[]*/
    _imopVarPre213 = malloc(_imopVarPre212);
    /*[]*/
    /*[]*/
    X = (double **) _imopVarPre213;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < n; ++i) {
    /*[]*/
        /*[]*/
        unsigned long int _imopVarPre216;
        /*[]*/
        void *_imopVarPre217;
        /*[]*/
        _imopVarPre216 = n * sizeof(double);
        /*[]*/
        _imopVarPre217 = malloc(_imopVarPre216);
        /*[]*/
        /*[]*/
        X[i] = (double *) _imopVarPre217;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < n; ++j) {
        /*[]*/
            /*[]*/
            double *_imopVarPre219;
            /*[]*/
            _imopVarPre219 = &X[i][j];
            /*[]*/
            scanf("%lf", _imopVarPre219);
            /*[]*/
        }
    }
    /*[]*/
    return X;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void print_output(double **A, int n , int niter) {
/*[]*/
    /*[]*/
    printf("Number of iterations = %d\n", niter);
    /*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < n; ++i) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < n; ++j) {
        /*[]*/
            /*[]*/
            double _imopVarPre221;
            /*[]*/
            _imopVarPre221 = A[i][j];
            /*[]*/
            printf("%lf ", _imopVarPre221);
            /*[]*/
        }
        /*[]*/
        printf("\n");
        /*[]*/
    }
    /*[]*/
    printf("\n");
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
void print_statistics(struct timeval start_time, struct timeval end_time) {
/*[]*/
    /*[]*/
    double _imopVarPre223;
    /*[]*/
    _imopVarPre223 = start_time.tv_sec + (start_time.tv_usec / 1000000.0);
    /*[]*/
    printf("Start time:\t%lf \n", _imopVarPre223);
    /*[]*/
    /*[]*/
    double _imopVarPre225;
    /*[]*/
    _imopVarPre225 = end_time.tv_sec + (end_time.tv_usec / 1000000.0);
    /*[]*/
    printf("End time:\t%lf\n", _imopVarPre225);
    /*[]*/
    /*[]*/
    double _imopVarPre227;
    /*[]*/
    _imopVarPre227 = end_time.tv_sec - start_time.tv_sec + ((end_time.tv_usec - start_time.tv_usec) / 1000000.0);
    /*[]*/
    printf("Total time: \t%lf (s)\n", _imopVarPre227);
    /*[]*/
}
/*[]*/
/*[]*/
void print_usage_and_exit(char *prog) {
/*[]*/
    /*[]*/
    fprintf(__stderrp, "Usage: %s <nprocs> <tol> <-serial|-parallel>\n", prog);
    /*[]*/
    /*[]*/
    exit(1);
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    struct timeval start_time;
    /*[]*/
    struct timeval end_time;
    /*[]*/
    int num_iter = 0;
    /*[]*/
    double tol;
    /*[]*/
    double **A;
    /*[]*/
    int procs;
    /*[]*/
    int dim;
    /*[]*/
    /*[]*/
    if (argc != 4) {
    /*[]*/
        /*[]*/
        char *_imopVarPre229;
        /*[]*/
        _imopVarPre229 = argv[0];
        /*[]*/
        print_usage_and_exit(_imopVarPre229);
        /*[]*/
    }
    /*[]*/
    int *_imopVarPre232;
    /*[]*/
    char *_imopVarPre233;
    /*[]*/
    _imopVarPre232 = &procs;
    /*[]*/
    _imopVarPre233 = argv[1];
    /*[]*/
    sscanf(_imopVarPre233, "%d", _imopVarPre232);
    /*[]*/
    /*[]*/
    double *_imopVarPre236;
    /*[]*/
    char *_imopVarPre237;
    /*[]*/
    _imopVarPre236 = &tol;
    /*[]*/
    _imopVarPre237 = argv[2];
    /*[]*/
    sscanf(_imopVarPre237, "%lf", _imopVarPre236);
    /*[]*/
    /*[]*/
    char *option = argv[3];
    /*[]*/
    int _imopVarPre238;
    /*[]*/
    int _imopVarPre248;
    /*[]*/
    int _imopVarPre249;
    /*[]*/
    int _imopVarPre250;
    /*[]*/
    _imopVarPre238 = option == ((void *) 0);
    /*[]*/
    /*[]*/
    if (!_imopVarPre238) {
    /*[]*/
        /*[]*/
        _imopVarPre248 = strcmp(option, "-serial");
        /*[]*/
        /*[]*/
        _imopVarPre249 = _imopVarPre248 != 0;
        /*[]*/
        /*[]*/
        if (_imopVarPre249) {
        /*[]*/
            /*[]*/
            _imopVarPre250 = strcmp(option, "-parallel");
            /*[]*/
            /*[]*/
            _imopVarPre249 = _imopVarPre250 != 0;
        }
        /*[]*/
        _imopVarPre238 = _imopVarPre249;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre238) {
    /*[]*/
        /*[]*/
        char *_imopVarPre252;
        /*[]*/
        _imopVarPre252 = argv[0];
        /*[]*/
        print_usage_and_exit(_imopVarPre252);
        /*[]*/
    }
    /*[]*/
    printf("Options: Procs = %d, Tol = %lf, Execution%s\n\n", procs, tol, option);
    /*[]*/
    /*[]*/
    int *_imopVarPre254;
    /*[]*/
    _imopVarPre254 = &dim;
    /*[]*/
    scanf("%d", _imopVarPre254);
    /*[]*/
    /*[]*/
    A = read_input(dim);
    /*[]*/
    /*[]*/
    void *_imopVarPre257;
    /*[]*/
    struct timeval *_imopVarPre258;
    /*[]*/
    _imopVarPre257 = ((void *) 0);
    /*[]*/
    _imopVarPre258 = &start_time;
    /*[]*/
    gettimeofday(_imopVarPre258, _imopVarPre257);
    /*[]*/
    /*[]*/
    int _imopVarPre260;
    /*[]*/
    _imopVarPre260 = strcmp(option, "-serial");
    /*[]*/
    /*[]*/
    /*[]*/
    if (_imopVarPre260 == 0) {
    /*[]*/
        /*[]*/
        num_iter = simulate_ocean_currents(A, dim, tol);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        num_iter = simulate_ocean_currents_parallel(A, dim, tol, procs);
        /*[]*/
    }
    /*[]*/
    void *_imopVarPre263;
    /*[]*/
    struct timeval *_imopVarPre264;
    /*[]*/
    _imopVarPre263 = ((void *) 0);
    /*[]*/
    _imopVarPre264 = &end_time;
    /*[]*/
    gettimeofday(_imopVarPre264, _imopVarPre263);
    /*[]*/
    /*[]*/
    print_output(A, dim, num_iter);
    /*[]*/
    /*[]*/
    print_statistics(start_time, end_time);
    /*[]*/
}
