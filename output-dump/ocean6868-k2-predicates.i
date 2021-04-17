extern double fabs(double __x);
typedef long unsigned int size_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef long int __time_t;
typedef long int __suseconds_t;
struct timeval {
    __time_t tv_sec;
    __suseconds_t tv_usec;
} ;
extern void *malloc(size_t __size);
extern void exit(int __status);
extern void *memcpy(void *__restrict __dest, __const void *__restrict __src , size_t __n);
extern int strcmp(__const char *__s1, __const char *__s2);
extern int omp_get_thread_num(void );
struct _IO_FILE ;
typedef struct _IO_FILE FILE;
struct _IO_jump_t ;
struct _IO_FILE ;
typedef void _IO_lock_t;
struct _IO_FILE {
    int _flags;
    char *_IO_read_ptr;
    char *_IO_read_end;
    char *_IO_read_base;
    char *_IO_write_base;
    char *_IO_write_ptr;
    char *_IO_write_end;
    char *_IO_buf_base;
    char *_IO_buf_end;
    char *_IO_save_base;
    char *_IO_backup_base;
    char *_IO_save_end;
    struct _IO_marker *_markers;
    struct _IO_FILE *_chain;
    int _fileno;
    int _flags2;
    __off_t _old_offset;
    unsigned short _cur_column;
    signed char _vtable_offset;
    char _shortbuf[1];
    _IO_lock_t *_lock;
    __off64_t _offset;
    void *__pad1;
    void *__pad2;
    void *__pad3;
    void *__pad4;
    size_t __pad5;
    int _mode;
    char _unused2[15 * sizeof(int) - 4 * sizeof(void *) - sizeof(size_t)];
} ;
struct _IO_FILE_plus ;
extern struct _IO_FILE *stderr;
extern int fprintf(FILE *__restrict __stream, __const char *__restrict __format, ...);
extern int printf(__const char *__restrict __format, ...);
extern int scanf(__const char *__restrict __format, ...);
extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...);
extern int scanf(__const char *__restrict __format, ...);
extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...);
typedef struct timezone *__restrict __timezone_ptr_t;
extern int gettimeofday(struct timeval *__restrict __tv, __timezone_ptr_t __tz);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int min(int a, int b) {
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre28;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre29;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre28 = a <= b;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre28) {
        /*OUT: {
        Reverse<--, 54_0;>}*/
        _imopVarPre29 = a;
    } else {
        /*OUT: {
        Reverse<--, 54_1;>}*/
        _imopVarPre29 = b;
    }
    /*OUT: {
    Reverse<--,>}*/
    return _imopVarPre29;
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
    unsigned long int _imopVarPre32;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre33;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre32 = n * sizeof(double *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre33 = malloc(_imopVarPre32);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    B = (double **) _imopVarPre33;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 84_0;>}*/
    for (k = 0; k < n; k++) {
        /*OUT: {
        Reverse<--, 84_0;>}*/
        unsigned long int _imopVarPre36;
        /*OUT: {
        Reverse<--, 84_0;>}*/
        void *_imopVarPre37;
        /*OUT: {
        Reverse<--, 84_0;>}*/
        _imopVarPre36 = n * sizeof(double);
        /*OUT: {
        Reverse<--, 84_0;>}*/
        _imopVarPre37 = malloc(_imopVarPre36);
        /*OUT: {
        Reverse<--, 84_0;>}*/
        /*OUT: {
        Reverse<--, 84_0;>}*/
        B[k] = (double *) _imopVarPre37;
        /*OUT: {
        Reverse<--, 84_0;>}*/
        unsigned long int _imopVarPre41;
        /*OUT: {
        Reverse<--, 84_0;>}*/
        double *_imopVarPre42;
        /*OUT: {
        Reverse<--, 84_0;>}*/
        double *_imopVarPre43;
        /*OUT: {
        Reverse<--, 84_0;>}*/
        _imopVarPre41 = n * sizeof(double);
        /*OUT: {
        Reverse<--, 84_0;>}*/
        _imopVarPre42 = A[k];
        /*OUT: {
        Reverse<--, 84_0;>}*/
        _imopVarPre43 = B[k];
        /*OUT: {
        Reverse<--, 84_0;>}*/
        memcpy(_imopVarPre43, _imopVarPre42, _imopVarPre41);
        /*OUT: {
        Reverse<--, 84_0;>}*/
    }
    /*OUT: {
    Reverse<--, 84_1;>}*/
    while (!done) {
        /*OUT: {
        Reverse<--, 115_0; 84_1;>}*/
        iter++;
        /*OUT: {
        Reverse<--, 115_0; 84_1;>}*/
        diff = 0;
        /*OUT: {
        Reverse<--, 115_0; 84_1;>}*/
        int i;
        /*OUT: {
        Reverse<--, 115_0; 84_1;>}*/
        int j;
        /*OUT: {
        Reverse<--, 115_0; 84_1;>}*/
        /*OUT: {
        Reverse<--, 115_0; 84_1;>}*/
        /*OUT: {
        Reverse<--, 126_1; 123_0; 115_0; 84_1;>}*/
        for (i = 1; i < n - 1; ++i) {
            /*OUT: {
            Reverse<--, 123_0; 115_0; 84_1;>}*/
            /*OUT: {
            Reverse<--, 123_0; 115_0; 84_1;>}*/
            /*OUT: {
            Reverse<--, 126_0; 123_0; 115_0; 84_1;>}*/
            for (j = 1; j < n - 1; ++j) {
                /*OUT: {
                Reverse<--, 126_0; 123_0; 115_0; 84_1;>}*/
                old = A[i][j];
                /*OUT: {
                Reverse<--, 126_0; 123_0; 115_0; 84_1;>}*/
                B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                /*OUT: {
                Reverse<--, 126_0; 123_0; 115_0; 84_1;>}*/
                double _imopVarPre45;
                /*OUT: {
                Reverse<--, 126_0; 123_0; 115_0; 84_1;>}*/
                double _imopVarPre46;
                /*OUT: {
                Reverse<--, 126_0; 123_0; 115_0; 84_1;>}*/
                _imopVarPre45 = B[i][j] - old;
                /*OUT: {
                Reverse<--, 126_0; 123_0; 115_0; 84_1;>}*/
                _imopVarPre46 = fabs(_imopVarPre45);
                /*OUT: {
                Reverse<--, 126_0; 123_0; 115_0; 84_1;>}*/
                /*OUT: {
                Reverse<--, 126_0; 123_0; 115_0; 84_1;>}*/
                diff += _imopVarPre46;
            }
        }
        /*OUT: {
        Reverse<--, 123_1; 115_0; 84_1;>}*/
        C = A;
        /*OUT: {
        Reverse<--, 123_1; 115_0; 84_1;>}*/
        A = B;
        /*OUT: {
        Reverse<--, 123_1; 115_0; 84_1;>}*/
        B = C;
        /*OUT: {
        Reverse<--, 123_1; 115_0; 84_1;>}*/
        if (diff / (n * n) < tol) {
            /*OUT: {
            Reverse<--, 168_0; 123_1; 115_0; 84_1;>}*/
            done = 1;
        }
    }
    /*OUT: {
    Reverse<--, 115_1; 84_1;>}*/
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
    unsigned long int _imopVarPre49;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre50;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre49 = dim * sizeof(double *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre50 = malloc(_imopVarPre49);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    B = (double **) _imopVarPre50;
    /*OUT: {
    Reverse<709,>}*/
#pragma omp parallel num_threads(procs) shared(A, B, dim)
    {
        /*OUT: {
        Reverse<709,>}*/
        int _imopVarPre51;
        /*OUT: {
        Reverse<709,>}*/
        _imopVarPre51 = omp_get_thread_num();
        /*OUT: {
        Reverse<709,>}*/
        /*OUT: {
        Reverse<709,>}*/
        int tid = _imopVarPre51;
        /*OUT: {
        Reverse<709,>}*/
        int _imopVarPre53;
        /*OUT: {
        Reverse<709,>}*/
        int _imopVarPre54;
        /*OUT: {
        Reverse<709,>}*/
        _imopVarPre53 = tid * dim / procs;
        /*OUT: {
        Reverse<709,>}*/
        _imopVarPre54 = min(dim, _imopVarPre53);
        /*OUT: {
        Reverse<709,>}*/
        /*OUT: {
        Reverse<709,>}*/
        int start = _imopVarPre54;
        /*OUT: {
        Reverse<709,>}*/
        int _imopVarPre56;
        /*OUT: {
        Reverse<709,>}*/
        int _imopVarPre57;
        /*OUT: {
        Reverse<709,>}*/
        _imopVarPre56 = (tid + 1) * dim / procs;
        /*OUT: {
        Reverse<709,>}*/
        _imopVarPre57 = min(dim, _imopVarPre56);
        /*OUT: {
        Reverse<709,>}*/
        /*OUT: {
        Reverse<709,>}*/
        int end = _imopVarPre57;
        /*OUT: {
        Reverse<709,>}*/
        int i;
        /*OUT: {
        Reverse<709,>}*/
        /*OUT: {
        Reverse<709,>}*/
        /*OUT: {
        Reverse<709, 229_0;>}*/
        for (i = start; i < end; ++i) {
            /*OUT: {
            Reverse<709, 229_0;>}*/
            unsigned long int _imopVarPre60;
            /*OUT: {
            Reverse<709, 229_0;>}*/
            void *_imopVarPre61;
            /*OUT: {
            Reverse<709, 229_0;>}*/
            _imopVarPre60 = dim * sizeof(double);
            /*OUT: {
            Reverse<709, 229_0;>}*/
            _imopVarPre61 = malloc(_imopVarPre60);
            /*OUT: {
            Reverse<709, 229_0;>}*/
            /*OUT: {
            Reverse<709, 229_0;>}*/
            B[i] = (double *) _imopVarPre61;
            /*OUT: {
            Reverse<709, 229_0;>}*/
            unsigned long int _imopVarPre65;
            /*OUT: {
            Reverse<709, 229_0;>}*/
            double *_imopVarPre66;
            /*OUT: {
            Reverse<709, 229_0;>}*/
            double *_imopVarPre67;
            /*OUT: {
            Reverse<709, 229_0;>}*/
            _imopVarPre65 = dim * sizeof(double);
            /*OUT: {
            Reverse<709, 229_0;>}*/
            _imopVarPre66 = A[i];
            /*OUT: {
            Reverse<709, 229_0;>}*/
            _imopVarPre67 = B[i];
            /*OUT: {
            Reverse<709, 229_0;>}*/
            memcpy(_imopVarPre67, _imopVarPre66, _imopVarPre65);
            /*OUT: {
            Reverse<709, 229_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    int chunk = 1 + (dim - 3) / procs;
    /*OUT: {
    Reverse<717,>}*/
#pragma omp parallel num_threads(procs) firstprivate(done)
    {
        /*OUT: {
        Reverse<717,>}*/
        int _imopVarPre68;
        /*OUT: {
        Reverse<717,>}*/
        _imopVarPre68 = omp_get_thread_num();
        /*OUT: {
        Reverse<717,>}*/
        /*OUT: {
        Reverse<717,>}*/
        int tid = _imopVarPre68;
        /*OUT: {
        Reverse<717,>}*/
        int _imopVarPre72;
        /*OUT: {
        Reverse<717,>}*/
        int _imopVarPre73;
        /*OUT: {
        Reverse<717,>}*/
        int _imopVarPre74;
        /*OUT: {
        Reverse<717,>}*/
        _imopVarPre72 = tid * chunk;
        /*OUT: {
        Reverse<717,>}*/
        _imopVarPre73 = dim - 2;
        /*OUT: {
        Reverse<717,>}*/
        _imopVarPre74 = min(_imopVarPre73, _imopVarPre72);
        /*OUT: {
        Reverse<717,>}*/
        /*OUT: {
        Reverse<717,>}*/
        int start = 1 + _imopVarPre74;
        /*OUT: {
        Reverse<717,>}*/
        int _imopVarPre78;
        /*OUT: {
        Reverse<717,>}*/
        int _imopVarPre79;
        /*OUT: {
        Reverse<717,>}*/
        int _imopVarPre80;
        /*OUT: {
        Reverse<717,>}*/
        _imopVarPre78 = (tid + 1) * chunk;
        /*OUT: {
        Reverse<717,>}*/
        _imopVarPre79 = dim - 2;
        /*OUT: {
        Reverse<717,>}*/
        _imopVarPre80 = min(_imopVarPre79, _imopVarPre78);
        /*OUT: {
        Reverse<717,>}*/
        /*OUT: {
        Reverse<717,>}*/
        int end = 1 + _imopVarPre80;
        /*OUT: {
        Reverse<717,>}*/
        double old;
        /*OUT: {
        Reverse<717,>}*/
        double mydiff;
        /*OUT: {
        Reverse<717,>
        Reverse<365,>}*/
        while (!done) {
#pragma omp single nowait
            {
                /*OUT: {
                Reverse<717, 303_0;>
                Reverse<365, 303_0;>}*/
                iter++;
            }
            /*OUT: {
            Reverse<717, 303_0;>
            Reverse<365, 303_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<306,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<306,>}*/
            diff = 0;
            /*OUT: {
            Reverse<306,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<309,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<309,>}*/
            mydiff = 0;
            /*OUT: {
            Reverse<309,>}*/
            int i;
            /*OUT: {
            Reverse<309,>}*/
            int j;
            /*OUT: {
            Reverse<309,>}*/
            /*OUT: {
            Reverse<309,>}*/
            /*OUT: {
            Reverse<309, 318_1; 315_0;>}*/
            for (i = start; i < end; ++i) {
                /*OUT: {
                Reverse<309, 315_0;>}*/
                /*OUT: {
                Reverse<309, 315_0;>}*/
                /*OUT: {
                Reverse<309, 318_0; 315_0;>}*/
                for (j = 1; j < dim - 1; ++j) {
                    /*OUT: {
                    Reverse<309, 318_0; 315_0;>}*/
                    old = A[i][j];
                    /*OUT: {
                    Reverse<309, 318_0; 315_0;>}*/
                    B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                    /*OUT: {
                    Reverse<309, 318_0; 315_0;>}*/
                    double _imopVarPre82;
                    /*OUT: {
                    Reverse<309, 318_0; 315_0;>}*/
                    double _imopVarPre83;
                    /*OUT: {
                    Reverse<309, 318_0; 315_0;>}*/
                    _imopVarPre82 = B[i][j] - old;
                    /*OUT: {
                    Reverse<309, 318_0; 315_0;>}*/
                    _imopVarPre83 = fabs(_imopVarPre82);
                    /*OUT: {
                    Reverse<309, 318_0; 315_0;>}*/
                    /*OUT: {
                    Reverse<309, 318_0; 315_0;>}*/
                    mydiff += _imopVarPre83;
                }
            }
            /*OUT: {
            Reverse<309, 315_1;>}*/
            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic
            /*OUT: {
            Reverse<309, 315_1;>}*/
            diff += mydiff;
            /*OUT: {
            Reverse<309, 315_1;>}*/
            // #pragma omp dummyFlush ATOMIC_END
            /*OUT: {
            Reverse<309, 315_1;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<355,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<355,>}*/
            done = diff / (dim * dim) < tol;
#pragma omp single nowait
            {
                /*OUT: {
                Reverse<355,>}*/
                C = A;
                /*OUT: {
                Reverse<355,>}*/
                A = B;
                /*OUT: {
                Reverse<355,>}*/
                B = C;
            }
            /*OUT: {
            Reverse<355,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<365,>}*/
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
    unsigned long int _imopVarPre86;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre87;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre86 = n * sizeof(double *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre87 = malloc(_imopVarPre86);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    X = (double **) _imopVarPre87;
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
    Reverse<--, 401_1; 385_0;>}*/
    for (i = 0; i < n; ++i) {
        /*OUT: {
        Reverse<--, 385_0;>}*/
        unsigned long int _imopVarPre90;
        /*OUT: {
        Reverse<--, 385_0;>}*/
        void *_imopVarPre91;
        /*OUT: {
        Reverse<--, 385_0;>}*/
        _imopVarPre90 = n * sizeof(double);
        /*OUT: {
        Reverse<--, 385_0;>}*/
        _imopVarPre91 = malloc(_imopVarPre90);
        /*OUT: {
        Reverse<--, 385_0;>}*/
        /*OUT: {
        Reverse<--, 385_0;>}*/
        X[i] = (double *) _imopVarPre91;
        /*OUT: {
        Reverse<--, 385_0;>}*/
        /*OUT: {
        Reverse<--, 385_0;>}*/
        /*OUT: {
        Reverse<--, 401_0; 385_0;>}*/
        for (j = 0; j < n; ++j) {
            /*OUT: {
            Reverse<--, 401_0; 385_0;>}*/
            double *_imopVarPre93;
            /*OUT: {
            Reverse<--, 401_0; 385_0;>}*/
            _imopVarPre93 = &X[i][j];
            /*OUT: {
            Reverse<--, 401_0; 385_0;>}*/
            scanf("%lf", _imopVarPre93);
            /*OUT: {
            Reverse<--, 401_0; 385_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 385_1;>}*/
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
    Reverse<--, 429_1; 426_0;>}*/
    for (i = 0; i < n; ++i) {
        /*OUT: {
        Reverse<--, 426_0;>}*/
        /*OUT: {
        Reverse<--, 426_0;>}*/
        /*OUT: {
        Reverse<--, 429_0; 426_0;>}*/
        for (j = 0; j < n; ++j) {
            /*OUT: {
            Reverse<--, 429_0; 426_0;>}*/
            double _imopVarPre95;
            /*OUT: {
            Reverse<--, 429_0; 426_0;>}*/
            _imopVarPre95 = A[i][j];
            /*OUT: {
            Reverse<--, 429_0; 426_0;>}*/
            printf("%lf ", _imopVarPre95);
            /*OUT: {
            Reverse<--, 429_0; 426_0;>}*/
        }
        /*OUT: {
        Reverse<--, 429_1; 426_0;>}*/
        printf("\n");
        /*OUT: {
        Reverse<--, 429_1; 426_0;>}*/
    }
    /*OUT: {
    Reverse<--, 426_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 426_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void print_statistics(struct timeval start_time, struct timeval end_time) {
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre97;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre97 = start_time.tv_sec + (start_time.tv_usec / 1000000.0);
    /*OUT: {
    Reverse<--,>}*/
    printf("Start time:\t%lf \n", _imopVarPre97);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre99;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre99 = end_time.tv_sec + (end_time.tv_usec / 1000000.0);
    /*OUT: {
    Reverse<--,>}*/
    printf("End time:\t%lf\n", _imopVarPre99);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre101;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre101 = end_time.tv_sec - start_time.tv_sec + ((end_time.tv_usec - start_time.tv_usec) / 1000000.0);
    /*OUT: {
    Reverse<--,>}*/
    printf("Total time: \t%lf (s)\n", _imopVarPre101);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
void print_usage_and_exit(char *prog) {
    /*OUT: {
    Reverse<--,>}*/
    fprintf(stderr, "Usage: %s <nprocs> <tol> <-serial|-parallel>\n", prog);
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
        Reverse<--, 501_0;>}*/
        char *_imopVarPre103;
        /*OUT: {
        Reverse<--, 501_0;>}*/
        _imopVarPre103 = argv[0];
        /*OUT: {
        Reverse<--, 501_0;>}*/
        print_usage_and_exit(_imopVarPre103);
        /*OUT: {
        Reverse<--, 501_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre106;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre107;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre106 = &procs;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre107 = argv[1];
    /*OUT: {
    Reverse<--,>}*/
    sscanf(_imopVarPre107, "%d", _imopVarPre106);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre110;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre111;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre110 = &tol;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre111 = argv[2];
    /*OUT: {
    Reverse<--,>}*/
    sscanf(_imopVarPre111, "%lf", _imopVarPre110);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char *option = argv[3];
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre112;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre122;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre123;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre124;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre112 = option == ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    if (!_imopVarPre112) {
        /*OUT: {
        Reverse<--, 544_0; 501_1;>
        Reverse<--, 544_0;>}*/
        _imopVarPre122 = strcmp(option, "-serial");
        /*OUT: {
        Reverse<--, 544_0; 501_1;>
        Reverse<--, 544_0;>}*/
        /*OUT: {
        Reverse<--, 544_0; 501_1;>
        Reverse<--, 544_0;>}*/
        _imopVarPre123 = _imopVarPre122 != 0;
        /*OUT: {
        Reverse<--, 544_0; 501_1;>
        Reverse<--, 544_0;>}*/
        if (_imopVarPre123) {
            /*OUT: {
            Reverse<--, 553_0; 544_0;>
            Reverse<--, 553_0; 544_0; 501_1;>}*/
            _imopVarPre124 = strcmp(option, "-parallel");
            /*OUT: {
            Reverse<--, 553_0; 544_0;>
            Reverse<--, 553_0; 544_0; 501_1;>}*/
            /*OUT: {
            Reverse<--, 553_0; 544_0;>
            Reverse<--, 553_0; 544_0; 501_1;>}*/
            _imopVarPre123 = _imopVarPre124 != 0;
        }
        /*OUT: {
        Reverse<--, 544_0; 501_1;>
        Reverse<--, 544_0;>}*/
        _imopVarPre112 = _imopVarPre123;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre112) {
        /*OUT: {
        Reverse<--, 564_0; 501_1;>
        Reverse<--, 564_0;>}*/
        char *_imopVarPre126;
        /*OUT: {
        Reverse<--, 564_0; 501_1;>
        Reverse<--, 564_0;>}*/
        _imopVarPre126 = argv[0];
        /*OUT: {
        Reverse<--, 564_0; 501_1;>
        Reverse<--, 564_0;>}*/
        print_usage_and_exit(_imopVarPre126);
        /*OUT: {
        Reverse<--, 564_0; 501_1;>
        Reverse<--, 564_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    printf("Options: Procs = %d, Tol = %lf, Execution%s\n\n", procs, tol, option);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre128;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre128 = &dim;
    /*OUT: {
    Reverse<--,>}*/
    scanf("%d", _imopVarPre128);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    A = read_input(dim);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre131;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre132;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre131 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre132 = &start_time;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre132, _imopVarPre131);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre134;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre134 = strcmp(option, "-serial");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre134 == 0) {
        /*OUT: {
        Reverse<--, 612_0;>}*/
        num_iter = simulate_ocean_currents(A, dim, tol);
        /*OUT: {
        Reverse<--, 612_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 612_1;>}*/
        num_iter = simulate_ocean_currents_parallel(A, dim, tol, procs);
        /*OUT: {
        Reverse<--, 612_1;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre137;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre138;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre137 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre138 = &end_time;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre138, _imopVarPre137);
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
