
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
/*[1; 2; 10; 11; ]*/
/*[1; 2; 10; 11; ]*/
/*[1; 2; 10; 11; ]*/
int min(int a, int b) {
/*[1; 2; 10; 11; ]*/
    /*[1; 2; 10; 11; ]*/
    int _imopVarPre28;
    /*[1; 2; 10; 11; ]*/
    int _imopVarPre29;
    /*[1; 2; 10; 11; ]*/
    _imopVarPre28 = a <= b;
    /*[1; 2; 10; 11; ]*/
    /*[1; 2; 10; 11; ]*/
    if (_imopVarPre28) {
    /*[1; 2; 10; 11; ]*/
        /*[1; 2; 10; 11; ]*/
        _imopVarPre29 = a;
    } else {
    /*[1; 2; 10; 11; ]*/
        /*[1; 2; 10; 11; ]*/
        _imopVarPre29 = b;
    }
    /*[1; 2; 10; 11; ]*/
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
        double **B_imopVar96;
        /*[]*/
        double **A_imopVar0_imopVar95;
        /*[]*/
        double diff_imopVar94;
        /*[]*/
        double **C_imopVar93;
        /*[]*/
        double diff_imopVar92;
        /*[]*/
        double **C_imopVar91;
        /*[]*/
        double diff_imopVar90;
        /*[]*/
        double **C_imopVar89;
        /*[]*/
        double **A_imopVar0;
        /*[]*/
        A_imopVar0 = A;
        /*A_imopVar0:A;*/
        /*[]*/
        int done = 0;
        /*A_imopVar0:A;*/
        /*[]*/
        int iter = 0;
        /*A_imopVar0:A;*/
        /*[]*/
        double diff = 0;
        /*A_imopVar0:A;*/
        /*[]*/
        double **B;
        /*A_imopVar0:A;*/
        /*[]*/
        double **C;
        /*A_imopVar0:A;*/
        /*[]*/
        unsigned long int _imopVarPre49;
        /*A_imopVar0:A;*/
        /*[]*/
        void *_imopVarPre50;
        /*A_imopVar0:A;*/
        /*[]*/
        _imopVarPre49 = dim * sizeof(double *);
        /*A_imopVar0:A;*/
        /*[]*/
        _imopVarPre50 = malloc(_imopVarPre49);
        /*A_imopVar0:A;*/
        /*[]*/
        /*A_imopVar0:A;*/
        /*[]*/
        B = (double **) _imopVarPre50;
        /*A_imopVar0:A;*/
        /*[10; ]*/
        /*[10; ]*/
#pragma omp parallel num_threads(procs) shared(A_imopVar0, B, dim)
        {
        /*[10; ]*/
            /*A_imopVar0:A;*/
            /*[10; ]*/
            int _imopVarPre51;
            /*A_imopVar0:A;*/
            /*[10; ]*/
            _imopVarPre51 = omp_get_thread_num();
            /*A_imopVar0:A;*/
            /*[10; ]*/
            /*A_imopVar0:A;*/
            /*[10; ]*/
            int tid = _imopVarPre51;
            /*A_imopVar0:A; tid:_imopVarPre51;*/
            /*[10; ]*/
            int _imopVarPre53;
            /*A_imopVar0:A; tid:_imopVarPre51;*/
            /*[10; ]*/
            int _imopVarPre54;
            /*A_imopVar0:A; tid:_imopVarPre51;*/
            /*[10; ]*/
            _imopVarPre53 = tid * dim / procs;
            /*A_imopVar0:A; tid:_imopVarPre51;*/
            /*[10; ]*/
            _imopVarPre54 = min(dim, _imopVarPre53);
            /*A_imopVar0:A; tid:_imopVarPre51;*/
            /*[10; ]*/
            /*A_imopVar0:A; tid:_imopVarPre51;*/
            /*[10; ]*/
            int start = _imopVarPre54;
            /*A_imopVar0:A; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            int _imopVarPre56;
            /*A_imopVar0:A; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            int _imopVarPre57;
            /*A_imopVar0:A; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            _imopVarPre56 = (tid + 1) * dim / procs;
            /*A_imopVar0:A; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            _imopVarPre57 = min(dim, _imopVarPre56);
            /*A_imopVar0:A; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            /*A_imopVar0:A; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            int end = _imopVarPre57;
            /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            int i;
            /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
            /*[10; ]*/
            /*[10; ]*/
            for (i = start; i < end; ++i) {
            /*[10; ]*/
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                unsigned long int _imopVarPre60;
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                void *_imopVarPre61;
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                _imopVarPre60 = dim * sizeof(double);
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                _imopVarPre61 = malloc(_imopVarPre60);
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                B[i] = (double *) _imopVarPre61;
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                unsigned long int _imopVarPre65;
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                double *_imopVarPre66;
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                double *_imopVarPre67;
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                _imopVarPre65 = dim * sizeof(double);
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                _imopVarPre66 = A_imopVar0[i];
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                _imopVarPre67 = B[i];
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
                memcpy(_imopVarPre67, _imopVarPre66, _imopVarPre65);
                /*A_imopVar0:A; end:_imopVarPre57; start:_imopVarPre54; tid:_imopVarPre51;*/
                /*[10; ]*/
            }
        }
        /*A_imopVar0:A;*/
        /*[10; ]*/
        int chunk = 1 + (dim - 3) / procs;
        /*A_imopVar0:A;*/
        /*[10; 11; ]*/
        /*[10; 11; ]*/
#pragma omp parallel num_threads(procs) firstprivate(done)
        {
        /*[10; 11; ]*/
            /*A_imopVar0:A;*/
            /*[10; 11; ]*/
            int _imopVarPre68;
            /*A_imopVar0:A;*/
            /*[10; 11; ]*/
            _imopVarPre68 = omp_get_thread_num();
            /*A_imopVar0:A;*/
            /*[10; 11; ]*/
            /*A_imopVar0:A;*/
            /*[10; 11; ]*/
            int tid = _imopVarPre68;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            int _imopVarPre72;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            int _imopVarPre73;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            int _imopVarPre74;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            _imopVarPre72 = tid * chunk;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            _imopVarPre73 = dim - 2;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            _imopVarPre74 = min(_imopVarPre73, _imopVarPre72);
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            int start = 1 + _imopVarPre74;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            int _imopVarPre78;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            int _imopVarPre79;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            int _imopVarPre80;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            _imopVarPre78 = (tid + 1) * chunk;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            _imopVarPre79 = dim - 2;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            _imopVarPre80 = min(_imopVarPre79, _imopVarPre78);
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            int end = 1 + _imopVarPre80;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            double old;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            double mydiff;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            int whilePred_imopVar88;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            whilePred_imopVar88 = !done;
            /*A_imopVar0:A; tid:_imopVarPre68;*/
            /*[10; 11; ]*/
            /*[10; 11; ]*/
            if (whilePred_imopVar88) {
            /*[10; 11; ]*/
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                int i;
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                int j;
                /*[10; 11; ]*/
#pragma omp single nowait
                {
                /*[10; 11; ]*/
                    /*A_imopVar0:A; tid:_imopVarPre68;*/
                    /*[10; 11; ]*/
                    iter++;
                }
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                diff = 0;
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                mydiff = 0;
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                /*[10; 11; ]*/
                for (i = start; i < end; ++i) {
                /*[10; 11; ]*/
                    /*A_imopVar0:A; tid:_imopVarPre68;*/
                    /*[10; 11; ]*/
                    /*A_imopVar0:A; tid:_imopVarPre68;*/
                    /*[10; 11; ]*/
                    /*A_imopVar0:A; tid:_imopVarPre68;*/
                    /*[10; 11; ]*/
                    /*[10; 11; ]*/
                    for (j = 1; j < dim - 1; ++j) {
                    /*[10; 11; ]*/
                        /*A_imopVar0:A; tid:_imopVarPre68;*/
                        /*[10; 11; ]*/
                        old = A[i][j];
                        /*A_imopVar0:A; tid:_imopVarPre68;*/
                        /*[10; 11; ]*/
                        B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                        /*A_imopVar0:A; tid:_imopVarPre68;*/
                        /*[10; 11; ]*/
                        double _imopVarPre82;
                        /*A_imopVar0:A; tid:_imopVarPre68;*/
                        /*[10; 11; ]*/
                        double _imopVarPre83;
                        /*A_imopVar0:A; tid:_imopVarPre68;*/
                        /*[10; 11; ]*/
                        _imopVarPre82 = B[i][j] - old;
                        /*A_imopVar0:A; tid:_imopVarPre68;*/
                        /*[10; 11; ]*/
                        _imopVarPre83 = fabs(_imopVarPre82);
                        /*A_imopVar0:A; tid:_imopVarPre68;*/
                        /*[10; 11; ]*/
                        /*A_imopVar0:A; tid:_imopVarPre68;*/
                        /*[10; 11; ]*/
                        mydiff += _imopVarPre83;
                    }
                }
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                diff_imopVar90 = 0;
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                diff_imopVar92 = 0;
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                diff_imopVar94 = 0;
                /*[10; 11; ]*/
#pragma omp single nowait
                {
                /*[10; 11; ]*/
                    /*[10; 11; ]*/
                    C = A;
                    /*[10; 11; ]*/
                    A_imopVar0 = B;
                }
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[10; 11; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[11; ]*/
#pragma omp barrier
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[100; ]*/
                // #pragma omp dummyFlush ATOMIC_START
                /*[100; ]*/
#pragma omp atomic
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[100; ]*/
                diff += mydiff;
                /*A_imopVar0:A; tid:_imopVarPre68;*/
                /*[100; ]*/
                // #pragma omp dummyFlush ATOMIC_END
                /*tid:_imopVarPre68;*/
                /*[100; ]*/
                // #pragma omp dummyFlush BARRIER_START
                /*tid:_imopVarPre68;*/
                /*[100; ]*/
#pragma omp barrier
                /*tid:_imopVarPre68;*/
                /*[129; 10; 123; ]*/
                /*[10; 123; ]*/
                while (1) {
                /*[129; 123; ]*/
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    mydiff = 0;
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    done = diff / (dim * dim) < tol;
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    whilePred_imopVar88 = !done;
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    /*[129; 123; ]*/
                    if (!whilePred_imopVar88) {
                    /*[129; 123; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[129; 123; ]*/
                        // #pragma omp dummyFlush BARRIER_START
                        /*tid:_imopVarPre68;*/
                        /*[129; 123; ]*/
#pragma omp barrier
                        /*tid:_imopVarPre68;*/
                        /*[124; ]*/
                        break;
                    }
                    /*[129; 123; ]*/
#pragma omp single nowait
                    {
                    /*[129; 123; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[129; 123; ]*/
                        iter++;
                    }
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    /*[129; 123; ]*/
                    for (i = start; i < end; ++i) {
                    /*[129; 123; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[129; 123; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[129; 123; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[129; 123; ]*/
                        /*[129; 123; ]*/
                        for (j = 1; j < dim - 1; ++j) {
                        /*[129; 123; ]*/
                            /*tid:_imopVarPre68;*/
                            /*[129; 123; ]*/
                            old = A_imopVar0[i][j];
                            /*tid:_imopVarPre68;*/
                            /*[129; 123; ]*/
                            C[i][j] = (A_imopVar0[i][j] + A_imopVar0[i][j - 1] + A_imopVar0[i - 1][j] + A_imopVar0[i][j + 1] + A_imopVar0[i + 1][j]) / 5.0;
                            /*tid:_imopVarPre68;*/
                            /*[129; 123; ]*/
                            double _imopVarPre82;
                            /*tid:_imopVarPre68;*/
                            /*[129; 123; ]*/
                            double _imopVarPre83;
                            /*tid:_imopVarPre68;*/
                            /*[129; 123; ]*/
                            _imopVarPre82 = C[i][j] - old;
                            /*tid:_imopVarPre68;*/
                            /*[129; 123; ]*/
                            _imopVarPre83 = fabs(_imopVarPre82);
                            /*tid:_imopVarPre68;*/
                            /*[129; 123; ]*/
                            /*tid:_imopVarPre68;*/
                            /*[129; 123; ]*/
                            mydiff += _imopVarPre83;
                        }
                    }
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    // #pragma omp dummyFlush ATOMIC_START
                    /*[129; 123; ]*/
#pragma omp atomic
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    diff_imopVar90 += mydiff;
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    // #pragma omp dummyFlush ATOMIC_END
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    mydiff = 0;
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*tid:_imopVarPre68;*/
                    /*[129; 123; ]*/
#pragma omp barrier
                    /*[124; ]*/
#pragma omp single nowait
                    {
                    /*[124; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[124; ]*/
                        C_imopVar89 = A_imopVar0;
                        /*tid:_imopVarPre68; C_imopVar89:A_imopVar0;*/
                        /*[124; ]*/
                        A_imopVar0 = C;
                    }
                    /*A_imopVar0:C; tid:_imopVarPre68;*/
                    /*[124; ]*/
                    done = diff_imopVar90 / (dim * dim) < tol;
                    /*A_imopVar0:C; tid:_imopVarPre68;*/
                    /*[124; ]*/
                    whilePred_imopVar88 = !done;
                    /*A_imopVar0:C; tid:_imopVarPre68;*/
                    /*[124; ]*/
                    /*[124; ]*/
                    if (!whilePred_imopVar88) {
                    /*[124; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[124; ]*/
                        break;
                    }
                    /*[124; ]*/
#pragma omp single nowait
                    {
                    /*[124; ]*/
                        /*A_imopVar0:C; tid:_imopVarPre68;*/
                        /*[124; ]*/
                        iter++;
                    }
                    /*A_imopVar0:C; tid:_imopVarPre68;*/
                    /*[124; ]*/
                    diff = 0;
                    /*A_imopVar0:C; tid:_imopVarPre68;*/
                    /*[124; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*A_imopVar0:C; tid:_imopVarPre68;*/
                    /*[124; ]*/
#pragma omp barrier
                    /*tid:_imopVarPre68;*/
                    /*[125; ]*/
                    /*tid:_imopVarPre68;*/
                    /*[125; ]*/
                    /*tid:_imopVarPre68;*/
                    /*[125; ]*/
                    /*[125; ]*/
                    for (i = start; i < end; ++i) {
                    /*[125; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[125; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[125; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[125; ]*/
                        /*[125; ]*/
                        for (j = 1; j < dim - 1; ++j) {
                        /*[125; ]*/
                            /*tid:_imopVarPre68;*/
                            /*[125; ]*/
                            old = A_imopVar0[i][j];
                            /*tid:_imopVarPre68;*/
                            /*[125; ]*/
                            C_imopVar89[i][j] = (A_imopVar0[i][j] + A_imopVar0[i][j - 1] + A_imopVar0[i - 1][j] + A_imopVar0[i][j + 1] + A_imopVar0[i + 1][j]) / 5.0;
                            /*tid:_imopVarPre68;*/
                            /*[125; ]*/
                            double _imopVarPre82;
                            /*tid:_imopVarPre68;*/
                            /*[125; ]*/
                            double _imopVarPre83;
                            /*tid:_imopVarPre68;*/
                            /*[125; ]*/
                            _imopVarPre82 = C_imopVar89[i][j] - old;
                            /*tid:_imopVarPre68;*/
                            /*[125; ]*/
                            _imopVarPre83 = fabs(_imopVarPre82);
                            /*tid:_imopVarPre68;*/
                            /*[125; ]*/
                            /*tid:_imopVarPre68;*/
                            /*[125; ]*/
                            mydiff += _imopVarPre83;
                        }
                    }
                    /*[125; ]*/
#pragma omp single nowait
                    {
                    /*[125; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[125; ]*/
                        C_imopVar91 = A_imopVar0;
                        /*tid:_imopVarPre68; C_imopVar91:A_imopVar0;*/
                        /*[125; ]*/
                        A_imopVar0_imopVar95 = C_imopVar89;
                        /*A_imopVar0_imopVar95:C_imopVar89; tid:_imopVarPre68; C_imopVar91:A_imopVar0;*/
                        /*[125; ]*/
                        B = A_imopVar0;
                    }
                    /*A_imopVar0_imopVar95:C_imopVar89; tid:_imopVarPre68; C_imopVar91:A_imopVar0; B:A_imopVar0;*/
                    /*[125; ]*/
                    // #pragma omp dummyFlush ATOMIC_START
                    /*[125; ]*/
#pragma omp atomic
                    /*A_imopVar0_imopVar95:C_imopVar89; tid:_imopVarPre68; C_imopVar91:A_imopVar0; B:A_imopVar0;*/
                    /*[125; ]*/
                    diff_imopVar92 += mydiff;
                    /*A_imopVar0_imopVar95:C_imopVar89; tid:_imopVarPre68; C_imopVar91:A_imopVar0; B:A_imopVar0;*/
                    /*[125; ]*/
                    // #pragma omp dummyFlush ATOMIC_END
                    /*A_imopVar0_imopVar95:C_imopVar89; tid:_imopVarPre68; C_imopVar91:A_imopVar0; B:A_imopVar0;*/
                    /*[125; ]*/
                    mydiff = 0;
                    /*A_imopVar0_imopVar95:C_imopVar89; tid:_imopVarPre68; C_imopVar91:A_imopVar0; B:A_imopVar0;*/
                    /*[125; ]*/
                    diff_imopVar90 = 0;
                    /*A_imopVar0_imopVar95:C_imopVar89; tid:_imopVarPre68; C_imopVar91:A_imopVar0; B:A_imopVar0;*/
                    /*[125; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*A_imopVar0_imopVar95:C_imopVar89; tid:_imopVarPre68; C_imopVar91:A_imopVar0; B:A_imopVar0;*/
                    /*[125; ]*/
#pragma omp barrier
                    /*A_imopVar0_imopVar95:C_imopVar89; tid:_imopVarPre68; C_imopVar91:A_imopVar0; B:A_imopVar0;*/
                    /*[126; ]*/
                    done = diff_imopVar92 / (dim * dim) < tol;
                    /*tid:_imopVarPre68;*/
                    /*[126; ]*/
                    whilePred_imopVar88 = !done;
                    /*tid:_imopVarPre68;*/
                    /*[126; ]*/
                    /*[126; ]*/
                    if (!whilePred_imopVar88) {
                    /*[126; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[126; ]*/
                        // #pragma omp dummyFlush BARRIER_START
                        /*tid:_imopVarPre68;*/
                        /*[126; ]*/
#pragma omp barrier
                        /*tid:_imopVarPre68;*/
                        /*[127; ]*/
                        break;
                    }
                    /*[126; ]*/
#pragma omp single nowait
                    {
                    /*[126; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[126; ]*/
                        iter++;
                    }
                    /*tid:_imopVarPre68;*/
                    /*[126; ]*/
                    /*tid:_imopVarPre68;*/
                    /*[126; ]*/
                    /*tid:_imopVarPre68;*/
                    /*[126; ]*/
                    /*[126; ]*/
                    for (i = start; i < end; ++i) {
                    /*[126; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[126; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[126; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[126; ]*/
                        /*[126; ]*/
                        for (j = 1; j < dim - 1; ++j) {
                        /*[126; ]*/
                            /*tid:_imopVarPre68;*/
                            /*[126; ]*/
                            old = A_imopVar0_imopVar95[i][j];
                            /*tid:_imopVarPre68;*/
                            /*[126; ]*/
                            C_imopVar91[i][j] = (A_imopVar0_imopVar95[i][j] + A_imopVar0_imopVar95[i][j - 1] + A_imopVar0_imopVar95[i - 1][j] + A_imopVar0_imopVar95[i][j + 1] + A_imopVar0_imopVar95[i + 1][j]) / 5.0;
                            /*tid:_imopVarPre68;*/
                            /*[126; ]*/
                            double _imopVarPre82;
                            /*tid:_imopVarPre68;*/
                            /*[126; ]*/
                            double _imopVarPre83;
                            /*tid:_imopVarPre68;*/
                            /*[126; ]*/
                            _imopVarPre82 = C_imopVar91[i][j] - old;
                            /*tid:_imopVarPre68;*/
                            /*[126; ]*/
                            _imopVarPre83 = fabs(_imopVarPre82);
                            /*tid:_imopVarPre68;*/
                            /*[126; ]*/
                            /*tid:_imopVarPre68;*/
                            /*[126; ]*/
                            mydiff += _imopVarPre83;
                        }
                    }
                    /*tid:_imopVarPre68;*/
                    /*[126; ]*/
                    // #pragma omp dummyFlush ATOMIC_START
                    /*[126; ]*/
#pragma omp atomic
                    /*tid:_imopVarPre68;*/
                    /*[126; ]*/
                    diff_imopVar94 += mydiff;
                    /*tid:_imopVarPre68;*/
                    /*[126; ]*/
                    // #pragma omp dummyFlush ATOMIC_END
                    /*[126; ]*/
#pragma omp single nowait
                    {
                    /*[126; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[126; ]*/
                        A_imopVar0 = B;
                        /*A_imopVar0:B; tid:_imopVarPre68;*/
                        /*[126; ]*/
                        B = A_imopVar0_imopVar95;
                    }
                    /*tid:_imopVarPre68; B:A_imopVar0_imopVar95;*/
                    /*[126; ]*/
                    mydiff = 0;
                    /*tid:_imopVarPre68; B:A_imopVar0_imopVar95;*/
                    /*[126; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*tid:_imopVarPre68; B:A_imopVar0_imopVar95;*/
                    /*[126; ]*/
#pragma omp barrier
                    /*tid:_imopVarPre68;*/
                    /*[127; ]*/
                    done = diff_imopVar94 / (dim * dim) < tol;
                    /*tid:_imopVarPre68;*/
                    /*[127; ]*/
                    whilePred_imopVar88 = !done;
                    /*tid:_imopVarPre68;*/
                    /*[127; ]*/
                    /*[127; ]*/
                    if (!whilePred_imopVar88) {
                    /*[127; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[127; ]*/
                        break;
                    }
                    /*[127; ]*/
#pragma omp single nowait
                    {
                    /*[127; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[127; ]*/
                        iter++;
                    }
                    /*tid:_imopVarPre68;*/
                    /*[127; ]*/
                    diff_imopVar92 = 0;
                    /*tid:_imopVarPre68;*/
                    /*[10; 127; ]*/
                    /*tid:_imopVarPre68;*/
                    /*[127; ]*/
                    /*tid:_imopVarPre68;*/
                    /*[10; 127; ]*/
                    /*[127; ]*/
                    for (i = start; i < end; ++i) {
                    /*[127; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[10; 127; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[10; 127; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[10; 127; ]*/
                        /*[10; 127; ]*/
                        for (j = 1; j < dim - 1; ++j) {
                        /*[127; ]*/
                            /*tid:_imopVarPre68;*/
                            /*[10; 127; ]*/
                            old = A_imopVar0[i][j];
                            /*tid:_imopVarPre68;*/
                            /*[10; 127; ]*/
                            B[i][j] = (A_imopVar0[i][j] + A_imopVar0[i][j - 1] + A_imopVar0[i - 1][j] + A_imopVar0[i][j + 1] + A_imopVar0[i + 1][j]) / 5.0;
                            /*tid:_imopVarPre68;*/
                            /*[10; 127; ]*/
                            double _imopVarPre82;
                            /*tid:_imopVarPre68;*/
                            /*[10; 127; ]*/
                            double _imopVarPre83;
                            /*tid:_imopVarPre68;*/
                            /*[10; 127; ]*/
                            _imopVarPre82 = B[i][j] - old;
                            /*tid:_imopVarPre68;*/
                            /*[10; 127; ]*/
                            _imopVarPre83 = fabs(_imopVarPre82);
                            /*tid:_imopVarPre68;*/
                            /*[10; 127; ]*/
                            /*tid:_imopVarPre68;*/
                            /*[10; 127; ]*/
                            mydiff += _imopVarPre83;
                        }
                    }
                    /*tid:_imopVarPre68;*/
                    /*[10; 127; ]*/
                    // #pragma omp dummyFlush ATOMIC_START
                    /*[10; 127; ]*/
#pragma omp atomic
                    /*tid:_imopVarPre68;*/
                    /*[10; 127; ]*/
                    diff += mydiff;
                    /*tid:_imopVarPre68;*/
                    /*[10; 127; ]*/
                    // #pragma omp dummyFlush ATOMIC_END
                    /*tid:_imopVarPre68;*/
                    /*[127; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*tid:_imopVarPre68;*/
                    /*[127; ]*/
#pragma omp barrier
                    /*[128; ]*/
#pragma omp single nowait
                    {
                    /*[128; ]*/
                        /*tid:_imopVarPre68;*/
                        /*[128; ]*/
                        C = A_imopVar0;
                        /*C:A_imopVar0; tid:_imopVarPre68;*/
                        /*[128; ]*/
                        A_imopVar0 = B;
                    }
                    /*A_imopVar0:B; tid:_imopVarPre68;*/
                    /*[128; ]*/
                    diff_imopVar94 = 0;
                    /*A_imopVar0:B; tid:_imopVarPre68;*/
                    /*[128; ]*/
                    // #pragma omp dummyFlush BARRIER_START
                    /*A_imopVar0:B; tid:_imopVarPre68;*/
                    /*[128; ]*/
#pragma omp barrier
                }
            }
        }
        /*[10; ]*/
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
