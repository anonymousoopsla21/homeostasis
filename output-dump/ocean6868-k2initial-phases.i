
/*[]*/
extern double fabs(double __x);
/*[]*/
typedef long unsigned int size_t;
/*[]*/
typedef long int __off_t;
/*[]*/
typedef long int __off64_t;
/*[]*/
typedef long int __time_t;
/*[]*/
typedef long int __suseconds_t;
/*[]*/
struct timeval {
    __time_t tv_sec;
    __suseconds_t tv_usec;
} ;
/*[]*/
extern void *malloc(size_t __size);
/*[]*/
extern void exit(int __status);
/*[]*/
extern void *memcpy(void *__restrict __dest, __const void *__restrict __src , size_t __n);
/*[]*/
extern int strcmp(__const char *__s1, __const char *__s2);
/*[]*/
extern int omp_get_thread_num(void );
/*[]*/
struct _IO_FILE ;
/*[]*/
typedef struct _IO_FILE FILE;
/*[]*/
struct _IO_jump_t ;
/*[]*/
struct _IO_FILE ;
/*[]*/
typedef void _IO_lock_t;
/*[]*/
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
/*[]*/
struct _IO_FILE_plus ;
/*[]*/
extern struct _IO_FILE *stderr;
/*[]*/
extern int fprintf(FILE *__restrict __stream, __const char *__restrict __format, ...);
/*[]*/
extern int printf(__const char *__restrict __format, ...);
/*[]*/
extern int scanf(__const char *__restrict __format, ...);
/*[]*/
extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...);
/*[]*/
extern int scanf(__const char *__restrict __format, ...);
/*[]*/
extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...);
/*[]*/
typedef struct timezone *__restrict __timezone_ptr_t;
/*[]*/
extern int gettimeofday(struct timeval *__restrict __tv, __timezone_ptr_t __tz);
/*[1, 2, 3, 4]*/
/*[1, 2, 3, 4]*/
/*[1, 2, 3, 4]*/
int min(int a, int b) {
/*[1, 2, 3, 4]*/
    /*[1, 2, 3, 4]*/
    int _imopVarPre28;
    /*[1, 2, 3, 4]*/
    int _imopVarPre29;
    /*[1, 2, 3, 4]*/
    _imopVarPre28 = a <= b;
    /*[1, 2, 3, 4]*/
    /*[1, 2, 3, 4]*/
    if (_imopVarPre28) {
    /*[1, 2, 3, 4]*/
        /*[1, 2, 3, 4]*/
        _imopVarPre29 = a;
    } else {
    /*[1, 2, 3, 4]*/
        /*[1, 2, 3, 4]*/
        _imopVarPre29 = b;
    }
    /*[1, 2, 3, 4]*/
    return _imopVarPre29;
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
    unsigned long int _imopVarPre32;
    /*[]*/
    void *_imopVarPre33;
    /*[]*/
    _imopVarPre32 = n * sizeof(double *);
    /*[]*/
    _imopVarPre33 = malloc(_imopVarPre32);
    /*[]*/
    /*[]*/
    B = (double **) _imopVarPre33;
    /*[]*/
    int k;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (k = 0; k < n; k++) {
    /*[]*/
        /*[]*/
        unsigned long int _imopVarPre36;
        /*[]*/
        void *_imopVarPre37;
        /*[]*/
        _imopVarPre36 = n * sizeof(double);
        /*[]*/
        _imopVarPre37 = malloc(_imopVarPre36);
        /*[]*/
        /*[]*/
        B[k] = (double *) _imopVarPre37;
        /*[]*/
        unsigned long int _imopVarPre41;
        /*[]*/
        double *_imopVarPre42;
        /*[]*/
        double *_imopVarPre43;
        /*[]*/
        _imopVarPre41 = n * sizeof(double);
        /*[]*/
        _imopVarPre42 = A[k];
        /*[]*/
        _imopVarPre43 = B[k];
        /*[]*/
        memcpy(_imopVarPre43, _imopVarPre42, _imopVarPre41);
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
                double _imopVarPre45;
                /*[]*/
                double _imopVarPre46;
                /*[]*/
                _imopVarPre45 = B[i][j] - old;
                /*[]*/
                _imopVarPre46 = fabs(_imopVarPre45);
                /*[]*/
                /*[]*/
                diff += _imopVarPre46;
            }
        }
        /*[]*/
        C = A;
        /*[]*/
        A = B;
        /*[]*/
        B = C;
        /*[]*/
        /*[]*/
        if (diff / (n * n) < tol) {
        /*[]*/
            /*[]*/
            done = 1;
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
    unsigned long int _imopVarPre86;
    /*[]*/
    void *_imopVarPre87;
    /*[]*/
    _imopVarPre86 = n * sizeof(double *);
    /*[]*/
    _imopVarPre87 = malloc(_imopVarPre86);
    /*[]*/
    /*[]*/
    X = (double **) _imopVarPre87;
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
        unsigned long int _imopVarPre90;
        /*[]*/
        void *_imopVarPre91;
        /*[]*/
        _imopVarPre90 = n * sizeof(double);
        /*[]*/
        _imopVarPre91 = malloc(_imopVarPre90);
        /*[]*/
        /*[]*/
        X[i] = (double *) _imopVarPre91;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < n; ++j) {
        /*[]*/
            /*[]*/
            double *_imopVarPre93;
            /*[]*/
            _imopVarPre93 = &X[i][j];
            /*[]*/
            scanf("%lf", _imopVarPre93);
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
            double _imopVarPre95;
            /*[]*/
            _imopVarPre95 = A[i][j];
            /*[]*/
            printf("%lf ", _imopVarPre95);
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
    double _imopVarPre97;
    /*[]*/
    _imopVarPre97 = start_time.tv_sec + (start_time.tv_usec / 1000000.0);
    /*[]*/
    printf("Start time:\t%lf \n", _imopVarPre97);
    /*[]*/
    /*[]*/
    double _imopVarPre99;
    /*[]*/
    _imopVarPre99 = end_time.tv_sec + (end_time.tv_usec / 1000000.0);
    /*[]*/
    printf("End time:\t%lf\n", _imopVarPre99);
    /*[]*/
    /*[]*/
    double _imopVarPre101;
    /*[]*/
    _imopVarPre101 = end_time.tv_sec - start_time.tv_sec + ((end_time.tv_usec - start_time.tv_usec) / 1000000.0);
    /*[]*/
    printf("Total time: \t%lf (s)\n", _imopVarPre101);
    /*[]*/
}
/*[]*/
/*[]*/
void print_usage_and_exit(char *prog) {
/*[]*/
    /*[]*/
    fprintf(stderr, "Usage: %s <nprocs> <tol> <-serial|-parallel>\n", prog);
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
        char *_imopVarPre103;
        /*[]*/
        _imopVarPre103 = argv[0];
        /*[]*/
        print_usage_and_exit(_imopVarPre103);
        /*[]*/
    }
    /*[]*/
    int *_imopVarPre106;
    /*[]*/
    char *_imopVarPre107;
    /*[]*/
    _imopVarPre106 = &procs;
    /*[]*/
    _imopVarPre107 = argv[1];
    /*[]*/
    sscanf(_imopVarPre107, "%d", _imopVarPre106);
    /*[]*/
    /*[]*/
    double *_imopVarPre110;
    /*[]*/
    char *_imopVarPre111;
    /*[]*/
    _imopVarPre110 = &tol;
    /*[]*/
    _imopVarPre111 = argv[2];
    /*[]*/
    sscanf(_imopVarPre111, "%lf", _imopVarPre110);
    /*[]*/
    /*[]*/
    char *option = argv[3];
    /*[]*/
    int _imopVarPre112;
    /*[]*/
    int _imopVarPre122;
    /*[]*/
    int _imopVarPre123;
    /*[]*/
    int _imopVarPre124;
    /*[]*/
    _imopVarPre112 = option == ((void *) 0);
    /*[]*/
    /*[]*/
    if (!_imopVarPre112) {
    /*[]*/
        /*[]*/
        _imopVarPre122 = strcmp(option, "-serial");
        /*[]*/
        /*[]*/
        _imopVarPre123 = _imopVarPre122 != 0;
        /*[]*/
        /*[]*/
        if (_imopVarPre123) {
        /*[]*/
            /*[]*/
            _imopVarPre124 = strcmp(option, "-parallel");
            /*[]*/
            /*[]*/
            _imopVarPre123 = _imopVarPre124 != 0;
        }
        /*[]*/
        _imopVarPre112 = _imopVarPre123;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre112) {
    /*[]*/
        /*[]*/
        char *_imopVarPre126;
        /*[]*/
        _imopVarPre126 = argv[0];
        /*[]*/
        print_usage_and_exit(_imopVarPre126);
        /*[]*/
    }
    /*[]*/
    printf("Options: Procs = %d, Tol = %lf, Execution%s\n\n", procs, tol, option);
    /*[]*/
    /*[]*/
    int *_imopVarPre128;
    /*[]*/
    _imopVarPre128 = &dim;
    /*[]*/
    scanf("%d", _imopVarPre128);
    /*[]*/
    /*[]*/
    A = read_input(dim);
    /*[]*/
    /*[]*/
    void *_imopVarPre131;
    /*[]*/
    struct timeval *_imopVarPre132;
    /*[]*/
    _imopVarPre131 = ((void *) 0);
    /*[]*/
    _imopVarPre132 = &start_time;
    /*[]*/
    gettimeofday(_imopVarPre132, _imopVarPre131);
    /*[]*/
    /*[]*/
    int _imopVarPre134;
    /*[]*/
    _imopVarPre134 = strcmp(option, "-serial");
    /*[]*/
    /*[]*/
    /*[]*/
    if (_imopVarPre134 == 0) {
    /*[]*/
        /*[]*/
        num_iter = simulate_ocean_currents(A, dim, tol);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        double **A_imopVar0;
        /*[]*/
        A_imopVar0 = A;
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
        unsigned long int _imopVarPre49;
        /*[]*/
        void *_imopVarPre50;
        /*[]*/
        _imopVarPre49 = dim * sizeof(double *);
        /*[]*/
        _imopVarPre50 = malloc(_imopVarPre49);
        /*[]*/
        /*[]*/
        B = (double **) _imopVarPre50;
        /*[3]*/
        /*[3]*/
#pragma omp parallel num_threads(procs) shared(A_imopVar0, B, dim)
        {
        /*[3]*/
            /*[3]*/
            int _imopVarPre51;
            /*[3]*/
            _imopVarPre51 = omp_get_thread_num();
            /*[3]*/
            /*[3]*/
            int tid = _imopVarPre51;
            /*[3]*/
            int _imopVarPre53;
            /*[3]*/
            int _imopVarPre54;
            /*[3]*/
            _imopVarPre53 = tid * dim / procs;
            /*[3]*/
            _imopVarPre54 = min(dim, _imopVarPre53);
            /*[3]*/
            /*[3]*/
            int start = _imopVarPre54;
            /*[3]*/
            int _imopVarPre56;
            /*[3]*/
            int _imopVarPre57;
            /*[3]*/
            _imopVarPre56 = (tid + 1) * dim / procs;
            /*[3]*/
            _imopVarPre57 = min(dim, _imopVarPre56);
            /*[3]*/
            /*[3]*/
            int end = _imopVarPre57;
            /*[3]*/
            int i;
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (i = start; i < end; ++i) {
            /*[3]*/
                /*[3]*/
                unsigned long int _imopVarPre60;
                /*[3]*/
                void *_imopVarPre61;
                /*[3]*/
                _imopVarPre60 = dim * sizeof(double);
                /*[3]*/
                _imopVarPre61 = malloc(_imopVarPre60);
                /*[3]*/
                /*[3]*/
                B[i] = (double *) _imopVarPre61;
                /*[3]*/
                unsigned long int _imopVarPre65;
                /*[3]*/
                double *_imopVarPre66;
                /*[3]*/
                double *_imopVarPre67;
                /*[3]*/
                _imopVarPre65 = dim * sizeof(double);
                /*[3]*/
                _imopVarPre66 = A_imopVar0[i];
                /*[3]*/
                _imopVarPre67 = B[i];
                /*[3]*/
                memcpy(_imopVarPre67, _imopVarPre66, _imopVarPre65);
                /*[3]*/
            }
        }
        /*[3]*/
        int chunk = 1 + (dim - 3) / procs;
        /*[3, 4]*/
        /*[3, 4]*/
#pragma omp parallel num_threads(procs) firstprivate(done)
        {
        /*[3, 4]*/
            /*[3, 4]*/
            int _imopVarPre68;
            /*[3, 4]*/
            _imopVarPre68 = omp_get_thread_num();
            /*[3, 4]*/
            /*[3, 4]*/
            int tid = _imopVarPre68;
            /*[3, 4]*/
            int _imopVarPre72;
            /*[3, 4]*/
            int _imopVarPre73;
            /*[3, 4]*/
            int _imopVarPre74;
            /*[3, 4]*/
            _imopVarPre72 = tid * chunk;
            /*[3, 4]*/
            _imopVarPre73 = dim - 2;
            /*[3, 4]*/
            _imopVarPre74 = min(_imopVarPre73, _imopVarPre72);
            /*[3, 4]*/
            /*[3, 4]*/
            int start = 1 + _imopVarPre74;
            /*[3, 4]*/
            int _imopVarPre78;
            /*[3, 4]*/
            int _imopVarPre79;
            /*[3, 4]*/
            int _imopVarPre80;
            /*[3, 4]*/
            _imopVarPre78 = (tid + 1) * chunk;
            /*[3, 4]*/
            _imopVarPre79 = dim - 2;
            /*[3, 4]*/
            _imopVarPre80 = min(_imopVarPre79, _imopVarPre78);
            /*[3, 4]*/
            /*[3, 4]*/
            int end = 1 + _imopVarPre80;
            /*[3, 4]*/
            double old;
            /*[3, 4]*/
            double mydiff;
            /*[3, 4, 5]*/
            /*[3, 4]*/
            while (!done) {
            /*[3, 4, 5]*/
                /*[3, 4, 5]*/
#pragma omp single nowait
                {
                /*[3, 4, 5]*/
                    /*[3, 4, 5]*/
                    iter++;
                }
                /*[3, 4, 5]*/
                diff = 0;
                /*[3, 4, 5]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[3, 4, 5]*/
#pragma omp barrier
                /*[3, 6]*/
                mydiff = 0;
                /*[3, 6]*/
                int i;
                /*[3, 6]*/
                int j;
                /*[3, 6]*/
                /*[3, 6]*/
                /*[3, 6]*/
                /*[3, 6]*/
                for (i = start; i < end; ++i) {
                /*[3, 6]*/
                    /*[3, 6]*/
                    /*[3, 6]*/
                    /*[3, 6]*/
                    /*[3, 6]*/
                    for (j = 1; j < dim - 1; ++j) {
                    /*[3, 6]*/
                        /*[3, 6]*/
                        old = A_imopVar0[i][j];
                        /*[3, 6]*/
                        B[i][j] = (A_imopVar0[i][j] + A_imopVar0[i][j - 1] + A_imopVar0[i - 1][j] + A_imopVar0[i][j + 1] + A_imopVar0[i + 1][j]) / 5.0;
                        /*[3, 6]*/
                        double _imopVarPre82;
                        /*[3, 6]*/
                        double _imopVarPre83;
                        /*[3, 6]*/
                        _imopVarPre82 = B[i][j] - old;
                        /*[3, 6]*/
                        _imopVarPre83 = fabs(_imopVarPre82);
                        /*[3, 6]*/
                        /*[3, 6]*/
                        mydiff += _imopVarPre83;
                    }
                }
                /*[3, 6]*/
                // #pragma omp dummyFlush ATOMIC_START
                /*[3, 6]*/
#pragma omp atomic
                /*[3, 6]*/
                diff += mydiff;
                /*[3, 6]*/
                // #pragma omp dummyFlush ATOMIC_END
                /*[3, 6]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[3, 6]*/
#pragma omp barrier
                /*[3, 7]*/
                done = diff / (dim * dim) < tol;
                /*[3, 7]*/
#pragma omp single nowait
                {
                /*[3, 7]*/
                    /*[3, 7]*/
                    C = A_imopVar0;
                    /*[3, 7]*/
                    A_imopVar0 = B;
                    /*[3, 7]*/
                    B = C;
                }
                /*[3, 7]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[3, 7]*/
#pragma omp barrier
            }
        }
        /*[3, 4, 5]*/
        num_iter = iter;
    }
    /*[]*/
    void *_imopVarPre137;
    /*[]*/
    struct timeval *_imopVarPre138;
    /*[]*/
    _imopVarPre137 = ((void *) 0);
    /*[]*/
    _imopVarPre138 = &end_time;
    /*[]*/
    gettimeofday(_imopVarPre138, _imopVarPre137);
    /*[]*/
    /*[]*/
    print_output(A, dim, num_iter);
    /*[]*/
    /*[]*/
    print_statistics(start_time, end_time);
    /*[]*/
}
