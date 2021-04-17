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
extern char *suboptarg;
extern void *polybench_alloc_data(unsigned long long int n, int elt_size);
static void init_array(int n, double A[1000 + 0][1000 + 0] , double B[1000 + 0][1000 + 0]) {
    int i;
    int j;
    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            A[i][j] = ((double) i * (j + 2) + 2) / n;
            B[i][j] = ((double) i * (j + 3) + 3) / n;
        }
    }
}
static void print_array(int n, double A[1000 + 0][1000 + 0]) {
    int i;
    int j;
    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            double _imopVarPre140;
            _imopVarPre140 = A[i][j];
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            if ((i * n + j) % 20 == 0) {
                fprintf(__stderrp, "\n");
            }
        }
    }
    fprintf(__stderrp, "\n");
}
static void kernel_jacobi_2d_imper(int tsteps, int n , double A[1000 + 0][1000 + 0] , double B[1000 + 0][1000 + 0]) {
    int t;
    int i;
    int j;
#pragma omp parallel private(i, j, t)
    {
        for (t = 0; t < tsteps; t++) {
#pragma omp for schedule(static) nowait
            for (i = 1; i < n - 1; i++) {
                for (j = 1; j < n - 1; j++) {
                    B[i][j] = 0.2 * (A[i][j] + A[i][j - 1] + A[i][1 + j] + A[1 + i][j] + A[i - 1][j]);
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for schedule(static) nowait
            for (i = 1; i < n - 1; i++) {
                for (j = 1; j < n - 1; j++) {
                    A[i][j] = B[i][j];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        }
    }
}
int main(int argc, char **argv) {
    int n = 1000;
    int tsteps = 20;
    double ( *A )[1000 + 0][1000 + 0];
    unsigned long int _imopVarPre144;
    int _imopVarPre145;
    void *_imopVarPre146;
    _imopVarPre144 = sizeof(double);
    _imopVarPre145 = (1000 + 0) * (1000 + 0);
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    A = (double (*)[1000 + 0][1000 + 0]) _imopVarPre146;
    ;
    double ( *B )[1000 + 0][1000 + 0];
    unsigned long int _imopVarPre150;
    int _imopVarPre151;
    void *_imopVarPre152;
    _imopVarPre150 = sizeof(double);
    _imopVarPre151 = (1000 + 0) * (1000 + 0);
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    B = (double (*)[1000 + 0][1000 + 0]) _imopVarPre152;
    ;
    double ( *_imopVarPre155 )[1000 + 0];
    double ( *_imopVarPre156 )[1000 + 0];
    _imopVarPre155 = *B;
    _imopVarPre156 = *A;
    init_array(n, _imopVarPre156, _imopVarPre155);
    ;
    double ( *_imopVarPre159 )[1000 + 0];
    double ( *_imopVarPre160 )[1000 + 0];
    _imopVarPre159 = *B;
    _imopVarPre160 = *A;
    kernel_jacobi_2d_imper(tsteps, n, _imopVarPre160, _imopVarPre159);
    ;
    ;
    int _imopVarPre164;
    char *_imopVarPre165;
    int _imopVarPre166;
    _imopVarPre164 = argc > 42;
    if (_imopVarPre164) {
        _imopVarPre165 = argv[0];
        _imopVarPre166 = strcmp(_imopVarPre165, "");
        _imopVarPre164 = !_imopVarPre166;
    }
    if (_imopVarPre164) {
        double ( *_imopVarPre168 )[1000 + 0];
        _imopVarPre168 = *A;
        print_array(n, _imopVarPre168);
    }
    void *_imopVarPre170;
    _imopVarPre170 = (void *) A;
    free(_imopVarPre170);
    ;
    void *_imopVarPre172;
    _imopVarPre172 = (void *) B;
    free(_imopVarPre172);
    ;
    return 0;
}
