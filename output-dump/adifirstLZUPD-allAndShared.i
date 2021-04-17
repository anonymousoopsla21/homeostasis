
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
/*READ_S: []
WRITE_S: []*/
static void init_array(int n, double X[1024 + 0][1024 + 0] , double A[1024 + 0][1024 + 0] , double B[1024 + 0][1024 + 0]) {
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
            X[i][j] = ((double) i * (j + 1) + 1) / n;
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
/*READ_S: [__stderrp, fprintf]
WRITE_S: []*/
static void print_array(int n, double X[1024 + 0][1024 + 0]) {
/*READ_S: [__stderrp, fprintf]
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
    /*READ_S: [__stderrp, fprintf]
    WRITE_S: []*/
    for (i = 0; i < n; i++) {
    /*READ_S: [__stderrp, fprintf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fprintf]
        WRITE_S: []*/
        for (j = 0; j < n; j++) {
        /*READ_S: [__stderrp, fprintf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre140;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre140 = X[i][j];
            /*READ_S: [__stderrp, fprintf]
            WRITE_S: []*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [__stderrp, fprintf]
            WRITE_S: []*/
            if ((i * 1024 + j) % 20 == 0) {
            /*READ_S: [__stderrp, fprintf]
            WRITE_S: []*/
                /*READ_S: [__stderrp, fprintf]
                WRITE_S: []*/
                fprintf(__stderrp, "\n");
                /*READ_S: []
                WRITE_S: []*/
            }
        }
    }
    /*READ_S: [__stderrp, fprintf]
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [i1, B, A, i2, n, X, tsteps]
WRITE_S: []*/
static void kernel_adi(int tsteps, int n , double X[1024 + 0][1024 + 0] , double A[1024 + 0][1024 + 0] , double B[1024 + 0][1024 + 0]) {
/*READ_S: [i1, B, A, i2, n, X, tsteps]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int t;
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: [i1, B, A, i2, n, X, tsteps]
    WRITE_S: []*/
#pragma omp parallel private(t, i1, i2)
    {
    /*READ_S: [i1, B, A, i2, n, X, tsteps]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [tsteps]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [i1, B, A, i2, n, X, tsteps]
        WRITE_S: []*/
        for (t = 0; t < tsteps; t++) {
        /*READ_S: [B, i1, A, i2, n, X]
        WRITE_S: []*/
            /*READ_S: [B, i1, A, n, X]
            WRITE_S: []*/
#pragma omp for nowait
            /*READ_S: [i1]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i1 = 0; i1 < n; i1++) {
            /*READ_S: [B, A, n, X]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [B, A, n, X]
                WRITE_S: []*/
                for (i2 = 1; i2 < n; i2++) {
                /*READ_S: [B, A, X]
                WRITE_S: []*/
                    /*READ_S: [B, A, X]
                    WRITE_S: []*/
                    X[i1][i2] = X[i1][i2] - X[i1][i2 - 1] * A[i1][i2] / B[i1][i2 - 1];
                    /*READ_S: [B, A]
                    WRITE_S: []*/
                    B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1][i2 - 1];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [i1, B, n, X]
            WRITE_S: []*/
#pragma omp for nowait
            /*READ_S: [i1]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i1 = 0; i1 < n; i1++) {
            /*READ_S: [B, n, X]
            WRITE_S: []*/
                /*READ_S: [B, n, X]
                WRITE_S: []*/
                X[i1][n - 1] = X[i1][n - 1] / B[i1][n - 1];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [B, i1, A, n, X]
            WRITE_S: []*/
#pragma omp for nowait
            /*READ_S: [i1]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i1 = 0; i1 < n; i1++) {
            /*READ_S: [B, A, n, X]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [B, A, n, X]
                WRITE_S: []*/
                for (i2 = 0; i2 < n - 2; i2++) {
                /*READ_S: [B, A, n, X]
                WRITE_S: []*/
                    /*READ_S: [B, A, n, X]
                    WRITE_S: []*/
                    X[i1][n - i2 - 2] = (X[i1][n - 2 - i2] - X[i1][n - 2 - i2 - 1] * A[i1][n - i2 - 3]) / B[i1][n - 3 - i2];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [B, i1, A, n, X]
            WRITE_S: []*/
#pragma omp for nowait
            /*READ_S: [i1]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i1 = 1; i1 < n; i1++) {
            /*READ_S: [B, A, n, X]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [B, A, n, X]
                WRITE_S: []*/
                for (i2 = 0; i2 < n; i2++) {
                /*READ_S: [B, A, X]
                WRITE_S: []*/
                    /*READ_S: [B, A, X]
                    WRITE_S: []*/
                    X[i1][i2] = X[i1][i2] - X[i1 - 1][i2] * A[i1][i2] / B[i1 - 1][i2];
                    /*READ_S: [B, A]
                    WRITE_S: []*/
                    B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1 - 1][i2];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [B, i2, n, X]
            WRITE_S: []*/
#pragma omp for nowait
            /*READ_S: [i2]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i2 = 0; i2 < n; i2++) {
            /*READ_S: [B, n, X]
            WRITE_S: []*/
                /*READ_S: [B, n, X]
                WRITE_S: []*/
                X[n - 1][i2] = X[n - 1][i2] / B[n - 1][i2];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [B, i1, A, n, X]
            WRITE_S: []*/
#pragma omp for nowait
            /*READ_S: [i1]
            WRITE_S: []*/
            /*READ_S: [n]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i1 = 0; i1 < n - 2; i1++) {
            /*READ_S: [B, A, n, X]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [B, A, n, X]
                WRITE_S: []*/
                for (i2 = 0; i2 < n; i2++) {
                /*READ_S: [B, A, n, X]
                WRITE_S: []*/
                    /*READ_S: [B, A, n, X]
                    WRITE_S: []*/
                    X[n - 2 - i1][i2] = (X[n - 2 - i1][i2] - X[n - i1 - 3][i2] * A[n - 3 - i1][i2]) / B[n - 2 - i1][i2];
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
/*READ_S: [__stderrp, print_array, kernel_adi, heapCell#0, n, heapCell#2, polybench_alloc_data, free, X, heapCell#3, tsteps, B, i1, A, strcmp, i2, init_array, heapCell#1, _imopVarPre174, fprintf]
WRITE_S: [heapCell#2, heapCell#1, heapCell#3]*/
int main(int argc, char **argv) {
/*READ_S: [__stderrp, print_array, kernel_adi, heapCell#0, n, heapCell#2, polybench_alloc_data, free, X, heapCell#3, tsteps, B, i1, A, strcmp, i2, init_array, heapCell#1, _imopVarPre174, fprintf]
WRITE_S: [heapCell#2, heapCell#1, heapCell#3]*/
    /*READ_S: []
    WRITE_S: []*/
    int n = 1024;
    /*READ_S: []
    WRITE_S: []*/
    int tsteps = 50;
    /*READ_S: []
    WRITE_S: []*/
    double ( *X )[1024 + 0][1024 + 0];
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
    _imopVarPre145 = (1024 + 0) * (1024 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    X = (double (*)[1024 + 0][1024 + 0]) _imopVarPre146;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *A )[1024 + 0][1024 + 0];
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
    _imopVarPre151 = (1024 + 0) * (1024 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    A = (double (*)[1024 + 0][1024 + 0]) _imopVarPre152;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *B )[1024 + 0][1024 + 0];
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre156;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre157;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre158;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre156 = sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre157 = (1024 + 0) * (1024 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre158 = polybench_alloc_data(_imopVarPre157, _imopVarPre156);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    B = (double (*)[1024 + 0][1024 + 0]) _imopVarPre158;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre162 )[1024 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre163 )[1024 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre164 )[1024 + 0];
    /*READ_S: [heapCell#3]
    WRITE_S: []*/
    _imopVarPre162 = *B;
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    _imopVarPre163 = *A;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    _imopVarPre164 = *X;
    /*READ_S: [init_array]
    WRITE_S: []*/
    init_array(n, _imopVarPre164, _imopVarPre163, _imopVarPre162);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre168 )[1024 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre169 )[1024 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre170 )[1024 + 0];
    /*READ_S: [heapCell#3]
    WRITE_S: []*/
    _imopVarPre168 = *B;
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    _imopVarPre169 = *A;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    _imopVarPre170 = *X;
    /*READ_S: [kernel_adi]
    WRITE_S: []*/
    kernel_adi(tsteps, n, _imopVarPre170, _imopVarPre169, _imopVarPre168);
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
    int _imopVarPre174;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre175;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre176;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre174 = argc > 42;
    /*READ_S: [_imopVarPre174]
    WRITE_S: []*/
    /*READ_S: [strcmp, heapCell#0, _imopVarPre174]
    WRITE_S: []*/
    if (_imopVarPre174) {
    /*READ_S: [strcmp, heapCell#0]
    WRITE_S: []*/
        /*READ_S: [heapCell#0]
        WRITE_S: []*/
        _imopVarPre175 = argv[0];
        /*READ_S: [strcmp]
        WRITE_S: []*/
        _imopVarPre176 = strcmp(_imopVarPre175, "");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre174 = !_imopVarPre176;
    }
    /*READ_S: [_imopVarPre174]
    WRITE_S: []*/
    /*READ_S: [__stderrp, print_array, heapCell#1, _imopVarPre174, fprintf]
    WRITE_S: []*/
    if (_imopVarPre174) {
    /*READ_S: [__stderrp, print_array, heapCell#1, fprintf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double ( *_imopVarPre178 )[1024 + 0];
        /*READ_S: [heapCell#1]
        WRITE_S: []*/
        _imopVarPre178 = *X;
        /*READ_S: [print_array]
        WRITE_S: []*/
        print_array(n, _imopVarPre178);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre180;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre180 = (void *) X;
    /*READ_S: [free, heapCell#1]
    WRITE_S: [heapCell#1]*/
    free(_imopVarPre180);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre182;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre182 = (void *) A;
    /*READ_S: [heapCell#2, free]
    WRITE_S: [heapCell#2]*/
    free(_imopVarPre182);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre184;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre184 = (void *) B;
    /*READ_S: [free, heapCell#3]
    WRITE_S: [heapCell#3]*/
    free(_imopVarPre184);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
