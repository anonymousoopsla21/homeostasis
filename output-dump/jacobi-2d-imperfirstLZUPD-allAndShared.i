
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
static void init_array(int n, double A[1000 + 0][1000 + 0] , double B[1000 + 0][1000 + 0]) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
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
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < n; j++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            A[i][j] = ((double) i * (j + 2) + 2) / n;
            /*READ_S: []
            WRITE_S: []*/
            B[i][j] = ((double) i * (j + 3) + 3) / n;
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [fprintf, __stderrp]
WRITE_S: []*/
static void print_array(int n, double A[1000 + 0][1000 + 0]) {
/*READ_S: [fprintf, __stderrp]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
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
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
        for (j = 0; j < n; j++) {
        /*READ_S: [fprintf, __stderrp]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre140;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre140 = A[i][j];
            /*READ_S: [fprintf, __stderrp]
            WRITE_S: []*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [fprintf, __stderrp]
            WRITE_S: []*/
            if ((i * n + j) % 20 == 0) {
            /*READ_S: [fprintf, __stderrp]
            WRITE_S: []*/
                /*READ_S: [fprintf, __stderrp]
                WRITE_S: []*/
                fprintf(__stderrp, "\n");
                /*READ_S: []
                WRITE_S: []*/
            }
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
/*READ_S: [B, A, i, n, tsteps]
WRITE_S: []*/
static void kernel_jacobi_2d_imper(int tsteps, int n , double A[1000 + 0][1000 + 0] , double B[1000 + 0][1000 + 0]) {
/*READ_S: [B, A, i, n, tsteps]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int t;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: [B, A, i, n, tsteps]
    WRITE_S: []*/
#pragma omp parallel private(i, j, t)
    {
    /*READ_S: [B, A, i, n, tsteps]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [tsteps]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [B, A, i, n, tsteps]
        WRITE_S: []*/
        for (t = 0; t < tsteps; t++) {
        /*READ_S: [B, A, i, n]
        WRITE_S: []*/
            /*READ_S: [B, A, i, n]
            WRITE_S: []*/
#pragma omp for schedule(static) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i < n - 1; i++) {
            /*READ_S: [B, A, n]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [B, A, n]
                WRITE_S: []*/
                for (j = 1; j < n - 1; j++) {
                /*READ_S: [B, A]
                WRITE_S: []*/
                    /*READ_S: [B, A]
                    WRITE_S: []*/
                    B[i][j] = 0.2 * (A[i][j] + A[i][j - 1] + A[i][1 + j] + A[1 + i][j] + A[i - 1][j]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [B, A, i, n]
            WRITE_S: []*/
#pragma omp for schedule(static) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i < n - 1; i++) {
            /*READ_S: [B, A, n]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [B, A, n]
                WRITE_S: []*/
                for (j = 1; j < n - 1; j++) {
                /*READ_S: [B, A]
                WRITE_S: []*/
                    /*READ_S: [B, A]
                    WRITE_S: []*/
                    A[i][j] = B[i][j];
                }
            }
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
/*READ_S: [_imopVarPre164, polybench_alloc_data, print_array, i, n, fprintf, free, heapCell#0, heapCell#1, heapCell#2, B, A, kernel_jacobi_2d_imper, tsteps, __stderrp, init_array, strcmp]
WRITE_S: [heapCell#1, heapCell#2]*/
int main(int argc, char **argv) {
/*READ_S: [_imopVarPre164, polybench_alloc_data, print_array, i, n, fprintf, free, heapCell#0, heapCell#1, heapCell#2, B, A, kernel_jacobi_2d_imper, tsteps, __stderrp, init_array, strcmp]
WRITE_S: [heapCell#1, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    int n = 1000;
    /*READ_S: []
    WRITE_S: []*/
    int tsteps = 20;
    /*READ_S: []
    WRITE_S: []*/
    double ( *A )[1000 + 0][1000 + 0];
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
    _imopVarPre145 = (1000 + 0) * (1000 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    A = (double (*)[1000 + 0][1000 + 0]) _imopVarPre146;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *B )[1000 + 0][1000 + 0];
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
    _imopVarPre151 = (1000 + 0) * (1000 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    B = (double (*)[1000 + 0][1000 + 0]) _imopVarPre152;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre155 )[1000 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre156 )[1000 + 0];
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
    double ( *_imopVarPre159 )[1000 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre160 )[1000 + 0];
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    _imopVarPre159 = *B;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    _imopVarPre160 = *A;
    /*READ_S: [kernel_jacobi_2d_imper]
    WRITE_S: []*/
    kernel_jacobi_2d_imper(tsteps, n, _imopVarPre160, _imopVarPre159);
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
    /*READ_S: [_imopVarPre164, heapCell#0, strcmp]
    WRITE_S: []*/
    if (_imopVarPre164) {
    /*READ_S: [heapCell#0, strcmp]
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
    /*READ_S: [_imopVarPre164, print_array, fprintf, heapCell#1, __stderrp]
    WRITE_S: []*/
    if (_imopVarPre164) {
    /*READ_S: [print_array, fprintf, heapCell#1, __stderrp]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double ( *_imopVarPre168 )[1000 + 0];
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
