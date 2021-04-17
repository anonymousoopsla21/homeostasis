
/*READ_S: []
WRITE_S: []*/
typedef long long __int64_t;
/*READ_S: []
WRITE_S: []*/
typedef __int64_t __darwin_off_t;
/*READ_S: []
WRITE_S: []*/
typedef __darwin_off_t fpos_t;
/*READ_S: []
WRITE_S: []*/
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
typedef struct __sFILE FILE;
/*READ_S: []
WRITE_S: [__stderrp]*/
extern FILE *__stderrp;
/*READ_S: []
WRITE_S: [fprintf]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*READ_S: []
WRITE_S: []*/
struct fssearchblock ;
/*READ_S: []
WRITE_S: []*/
struct searchstate ;
/*READ_S: []
WRITE_S: [strcmp]*/
int strcmp(const char *__s1, const char *__s2);
/*READ_S: []
WRITE_S: [free]*/
void free(void *);
/*READ_S: []
WRITE_S: [suboptarg]*/
extern char *suboptarg;
/*READ_S: []
WRITE_S: [polybench_alloc_data]*/
extern void *polybench_alloc_data(unsigned long long int n, int elt_size);
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
static void init_array(int n, double A[10000 + 0] , double B[10000 + 0]) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < n; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        A[i] = ((double) i + 2) / n;
        /*READ_S: []
        WRITE_S: []*/
        B[i] = ((double) i + 3) / n;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [fprintf, __stderrp]
WRITE_S: []*/
static void print_array(int n, double A[10000 + 0]) {
/*READ_S: [fprintf, __stderrp]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    for (i = 0; i < n; i++) {
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre140;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre140 = A[i];
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        if (i % 20 == 0) {
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp]
            WRITE_S: []*/
            fprintf(__stderrp, "\n");
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: [fprintf, __stderrp]
    WRITE_S: []*/
    fprintf(__stderrp, "\n");
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [A, n, t, j, tsteps, B, i]
WRITE_S: [t]*/
static void kernel_jacobi_1d_imper(int tsteps, int n , double A[10000 + 0] , double B[10000 + 0]) {
/*READ_S: [A, n, t, j, tsteps, B, i]
WRITE_S: [t]*/
    /*READ_S: []
    WRITE_S: []*/
    int t;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: [A, n, t, j, tsteps, B, i]
    WRITE_S: [t]*/
#pragma omp parallel
    {
    /*READ_S: [A, n, t, j, tsteps, B, i]
    WRITE_S: [t]*/
        /*READ_S: []
        WRITE_S: [t]*/
        /*READ_S: [t, tsteps]
        WRITE_S: []*/
        /*READ_S: [t]
        WRITE_S: [t]*/
        /*READ_S: [A, n, t, j, tsteps, B, i]
        WRITE_S: [t]*/
        for (t = 0; t < tsteps; t++) {
        /*READ_S: [A, n, j, B, i]
        WRITE_S: []*/
            /*READ_S: [A, n, B, i]
            WRITE_S: []*/
#pragma omp for schedule(static) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i < n - 1; i++) {
            /*READ_S: [A, B]
            WRITE_S: []*/
                /*READ_S: [A, B]
                WRITE_S: []*/
                B[i] = 0.33333 * (A[i - 1] + A[i] + A[i + 1]);
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [A, n, j, B]
            WRITE_S: []*/
#pragma omp for schedule(static) nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j < n - 1; j++) {
            /*READ_S: [A, B]
            WRITE_S: []*/
                /*READ_S: [A, B]
                WRITE_S: []*/
                A[j] = B[j];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [fprintf, init_array, print_array, __stderrp, polybench_alloc_data, A, heapCell#1, t, heapCell#2, heapCell#0, B, _imopVarPre164, strcmp, free, n, kernel_jacobi_1d_imper, j, tsteps, i]
WRITE_S: [t, heapCell#1, heapCell#2]*/
int main(int argc, char **argv) {
/*READ_S: [fprintf, init_array, print_array, __stderrp, polybench_alloc_data, A, heapCell#1, t, heapCell#2, heapCell#0, B, _imopVarPre164, strcmp, free, n, kernel_jacobi_1d_imper, j, tsteps, i]
WRITE_S: [t, heapCell#1, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    int n = 10000;
    /*READ_S: []
    WRITE_S: []*/
    int tsteps = 100;
    /*READ_S: []
    WRITE_S: []*/
    double ( *A )[10000 + 0];
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre144;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre145;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre146;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre144 = sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre145 = 10000 + 0;
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    A = (double (*)[10000 + 0]) _imopVarPre146;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *B )[10000 + 0];
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre150;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre151;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre152;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre150 = sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre151 = 10000 + 0;
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    B = (double (*)[10000 + 0]) _imopVarPre152;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre155;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre156;
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    _imopVarPre155 = *B;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    _imopVarPre156 = *A;
    /*READ_S: [init_array]
    WRITE_S: []*/
    init_array(n, _imopVarPre156, _imopVarPre155);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre159;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre160;
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    _imopVarPre159 = *B;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    _imopVarPre160 = *A;
    /*READ_S: [kernel_jacobi_1d_imper]
    WRITE_S: []*/
    kernel_jacobi_1d_imper(tsteps, n, _imopVarPre160, _imopVarPre159);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre164;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre165;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre166;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre164 = argc > 42;
    /*READ_S: [_imopVarPre164]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre164, strcmp, heapCell#0]
    WRITE_S: []*/
    if (_imopVarPre164) {
    /*READ_S: [strcmp, heapCell#0]
    WRITE_S: []*/
        /*READ_S: [heapCell#0]
        WRITE_S: []*/
        _imopVarPre165 = argv[0];
        /*READ_S: [strcmp]
        WRITE_S: []*/
        _imopVarPre166 = strcmp(_imopVarPre165, "");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre164 = !_imopVarPre166;
    }
    /*READ_S: [_imopVarPre164]
    WRITE_S: []*/
    /*READ_S: [fprintf, _imopVarPre164, print_array, __stderrp, heapCell#1]
    WRITE_S: []*/
    if (_imopVarPre164) {
    /*READ_S: [fprintf, print_array, __stderrp, heapCell#1]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre168;
        /*READ_S: [heapCell#1]
        WRITE_S: []*/
        _imopVarPre168 = *A;
        /*READ_S: [print_array]
        WRITE_S: []*/
        print_array(n, _imopVarPre168);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre170;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre170 = (void *) A;
    /*READ_S: [free, heapCell#1]
    WRITE_S: [heapCell#1]*/
    free(_imopVarPre170);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre172;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre172 = (void *) B;
    /*READ_S: [free, heapCell#2]
    WRITE_S: [heapCell#2]*/
    free(_imopVarPre172);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
