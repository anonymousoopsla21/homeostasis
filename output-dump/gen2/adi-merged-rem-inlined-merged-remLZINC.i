typedef long long __int64_t;
typedef __int64_t __darwin_off_t;
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
struct fssearchblock ;
struct searchstate ;
int strcmp(const char *__s1, const char *__s2);
void free(void *);
extern void *polybench_alloc_data(unsigned long long int n, int elt_size);
static void init_array(int n, double X[1024 + 0][1024 + 0] , double A[1024 + 0][1024 + 0] , double B[1024 + 0][1024 + 0]) {
    int i;
    int j;
    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            X[i][j] = ((double) i * (j + 1) + 1) / n;
            A[i][j] = ((double) i * (j + 2) + 2) / n;
            B[i][j] = ((double) i * (j + 3) + 3) / n;
        }
    }
}
static void print_array(int n, double X[1024 + 0][1024 + 0]) {
    int i;
    int j;
    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            double _imopVarPre140;
            _imopVarPre140 = X[i][j];
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            if ((i * 1024 + j) % 20 == 0) {
                fprintf(__stderrp, "\n");
            }
        }
    }
    fprintf(__stderrp, "\n");
}
static void kernel_adi(int tsteps, int n , double X[1024 + 0][1024 + 0] , double A[1024 + 0][1024 + 0] , double B[1024 + 0][1024 + 0]) {
    int t;
    int i1;
    int i2;
#pragma omp parallel private(t, i1, i2)
    {
        for (t = 0; t < tsteps; t++) {
#pragma omp for nowait
            for (i1 = 0; i1 < n; i1++) {
                for (i2 = 1; i2 < n; i2++) {
                    X[i1][i2] = X[i1][i2] - X[i1][i2 - 1] * A[i1][i2] / B[i1][i2 - 1];
                    B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1][i2 - 1];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i1 = 0; i1 < n; i1++) {
                X[i1][n - 1] = X[i1][n - 1] / B[i1][n - 1];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i1 = 0; i1 < n; i1++) {
                for (i2 = 0; i2 < n - 2; i2++) {
                    X[i1][n - i2 - 2] = (X[i1][n - 2 - i2] - X[i1][n - 2 - i2 - 1] * A[i1][n - i2 - 3]) / B[i1][n - 3 - i2];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i1 = 1; i1 < n; i1++) {
                for (i2 = 0; i2 < n; i2++) {
                    X[i1][i2] = X[i1][i2] - X[i1 - 1][i2] * A[i1][i2] / B[i1 - 1][i2];
                    B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1 - 1][i2];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i2 = 0; i2 < n; i2++) {
                X[n - 1][i2] = X[n - 1][i2] / B[n - 1][i2];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i1 = 0; i1 < n - 2; i1++) {
                for (i2 = 0; i2 < n; i2++) {
                    X[n - 2 - i1][i2] = (X[n - 2 - i1][i2] - X[n - i1 - 3][i2] * A[n - 3 - i1][i2]) / B[n - 2 - i1][i2];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        }
    }
}
int main(int argc, char **argv) {
    int n = 1024;
    int tsteps = 50;
    double ( *X )[1024 + 0][1024 + 0];
    unsigned long int _imopVarPre144;
    int _imopVarPre145;
    void *_imopVarPre146;
    _imopVarPre144 = sizeof(double);
    _imopVarPre145 = (1024 + 0) * (1024 + 0);
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    X = (double (*)[1024 + 0][1024 + 0]) _imopVarPre146;
    ;
    double ( *A )[1024 + 0][1024 + 0];
    unsigned long int _imopVarPre150;
    int _imopVarPre151;
    void *_imopVarPre152;
    _imopVarPre150 = sizeof(double);
    _imopVarPre151 = (1024 + 0) * (1024 + 0);
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    A = (double (*)[1024 + 0][1024 + 0]) _imopVarPre152;
    ;
    double ( *B )[1024 + 0][1024 + 0];
    unsigned long int _imopVarPre156;
    int _imopVarPre157;
    void *_imopVarPre158;
    _imopVarPre156 = sizeof(double);
    _imopVarPre157 = (1024 + 0) * (1024 + 0);
    _imopVarPre158 = polybench_alloc_data(_imopVarPre157, _imopVarPre156);
    B = (double (*)[1024 + 0][1024 + 0]) _imopVarPre158;
    ;
    double ( *_imopVarPre162 )[1024 + 0];
    double ( *_imopVarPre163 )[1024 + 0];
    double ( *_imopVarPre164 )[1024 + 0];
    _imopVarPre162 = *B;
    _imopVarPre163 = *A;
    _imopVarPre164 = *X;
    init_array(n, _imopVarPre164, _imopVarPre163, _imopVarPre162);
    ;
    double ( *_imopVarPre168 )[1024 + 0];
    double ( *_imopVarPre169 )[1024 + 0];
    double ( *_imopVarPre170 )[1024 + 0];
    _imopVarPre168 = *B;
    _imopVarPre169 = *A;
    _imopVarPre170 = *X;
    double ( *X_imopVar0 )[1024 + 0];
    double ( *A_imopVar1 )[1024 + 0];
    double ( *B_imopVar2 )[1024 + 0];
    X_imopVar0 = _imopVarPre170;
    A_imopVar1 = _imopVarPre169;
    B_imopVar2 = _imopVarPre168;
    int t;
    int i1;
    int i2;
#pragma omp parallel private(t, i1, i2)
    {
        for (t = 0; t < tsteps; t++) {
#pragma omp for nowait
            for (i1 = 0; i1 < n; i1++) {
                for (i2 = 1; i2 < n; i2++) {
                    X_imopVar0[i1][i2] = X_imopVar0[i1][i2] - X_imopVar0[i1][i2 - 1] * A_imopVar1[i1][i2] / B_imopVar2[i1][i2 - 1];
                    B_imopVar2[i1][i2] = B_imopVar2[i1][i2] - A_imopVar1[i1][i2] * A_imopVar1[i1][i2] / B_imopVar2[i1][i2 - 1];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i1 = 0; i1 < n; i1++) {
                X_imopVar0[i1][n - 1] = X_imopVar0[i1][n - 1] / B_imopVar2[i1][n - 1];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i1 = 0; i1 < n; i1++) {
                for (i2 = 0; i2 < n - 2; i2++) {
                    X_imopVar0[i1][n - i2 - 2] = (X_imopVar0[i1][n - 2 - i2] - X_imopVar0[i1][n - 2 - i2 - 1] * A_imopVar1[i1][n - i2 - 3]) / B_imopVar2[i1][n - 3 - i2];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i1 = 1; i1 < n; i1++) {
                for (i2 = 0; i2 < n; i2++) {
                    X_imopVar0[i1][i2] = X_imopVar0[i1][i2] - X_imopVar0[i1 - 1][i2] * A_imopVar1[i1][i2] / B_imopVar2[i1 - 1][i2];
                    B_imopVar2[i1][i2] = B_imopVar2[i1][i2] - A_imopVar1[i1][i2] * A_imopVar1[i1][i2] / B_imopVar2[i1 - 1][i2];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i2 = 0; i2 < n; i2++) {
                X_imopVar0[n - 1][i2] = X_imopVar0[n - 1][i2] / B_imopVar2[n - 1][i2];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i1 = 0; i1 < n - 2; i1++) {
                for (i2 = 0; i2 < n; i2++) {
                    X_imopVar0[n - 2 - i1][i2] = (X_imopVar0[n - 2 - i1][i2] - X_imopVar0[n - i1 - 3][i2] * A_imopVar1[n - 3 - i1][i2]) / B_imopVar2[n - 2 - i1][i2];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        }
    }
    ;
    ;
    int _imopVarPre174;
    char *_imopVarPre175;
    int _imopVarPre176;
    _imopVarPre174 = argc > 42;
    if (_imopVarPre174) {
        _imopVarPre175 = argv[0];
        _imopVarPre176 = strcmp(_imopVarPre175, "");
        _imopVarPre174 = !_imopVarPre176;
    }
    if (_imopVarPre174) {
        double ( *_imopVarPre178 )[1024 + 0];
        _imopVarPre178 = *X;
        print_array(n, _imopVarPre178);
    }
    void *_imopVarPre180;
    _imopVarPre180 = (void *) X;
    free(_imopVarPre180);
    ;
    void *_imopVarPre182;
    _imopVarPre182 = (void *) A;
    free(_imopVarPre182);
    ;
    void *_imopVarPre184;
    _imopVarPre184 = (void *) B;
    free(_imopVarPre184);
    ;
    return 0;
}
