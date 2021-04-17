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
static void init_array(int length, int c[50 + 0][50 + 0] , int W[50 + 0][50 + 0]) {
    int i;
    int j;
    for (i = 0; i < length; i++) {
        for (j = 0; j < length; j++) {
            c[i][j] = i * j % 2;
            W[i][j] = ((int) i - j) / length;
        }
    }
}
static void print_array(int out) {
    fprintf(__stderrp, "%d ", out);
    fprintf(__stderrp, "\n");
}
static void kernel_dynprog(int tsteps, int length , int c[50 + 0][50 + 0] , int W[50 + 0][50 + 0] , int sum_c[50 + 0][50 + 0][50 + 0] , int *out) {
    int iter;
    int i;
    int j;
    int k;
    int out_l = 0;
#pragma omp parallel
    {
        for (iter = 0; iter < tsteps; iter++) {
#pragma omp for private(j) nowait
            for (i = 0; i <= length - 1; i++) {
                for (j = 0; j <= length - 1; j++) {
                    c[i][j] = 0;
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for private(j, k) nowait
            for (i = 0; i <= length - 2; i++) {
                for (j = i + 1; j <= length - 1; j++) {
                    sum_c[i][j][i] = 0;
                    for (k = i + 1; k <= j - 1; k++) {
                        sum_c[i][j][k] = sum_c[i][j][k - 1] + c[i][k] + c[k][j];
                    }
                    c[i][j] = sum_c[i][j][j - 1] + W[i][j];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            out_l += c[0][length - 1];
        }
    }
    *out = out_l;
}
int main(int argc, char **argv) {
    int length = 50;
    int tsteps = 10000;
    int out;
    int ( *sum_c )[50 + 0][50 + 0][50 + 0];
    unsigned long int _imopVarPre142;
    int _imopVarPre143;
    void *_imopVarPre144;
    _imopVarPre142 = sizeof(int);
    _imopVarPre143 = (50 + 0) * (50 + 0) * (50 + 0);
    _imopVarPre144 = polybench_alloc_data(_imopVarPre143, _imopVarPre142);
    sum_c = (int (*)[50 + 0][50 + 0][50 + 0]) _imopVarPre144;
    ;
    int ( *c )[50 + 0][50 + 0];
    unsigned long int _imopVarPre148;
    int _imopVarPre149;
    void *_imopVarPre150;
    _imopVarPre148 = sizeof(int);
    _imopVarPre149 = (50 + 0) * (50 + 0);
    _imopVarPre150 = polybench_alloc_data(_imopVarPre149, _imopVarPre148);
    c = (int (*)[50 + 0][50 + 0]) _imopVarPre150;
    ;
    int ( *W )[50 + 0][50 + 0];
    unsigned long int _imopVarPre154;
    int _imopVarPre155;
    void *_imopVarPre156;
    _imopVarPre154 = sizeof(int);
    _imopVarPre155 = (50 + 0) * (50 + 0);
    _imopVarPre156 = polybench_alloc_data(_imopVarPre155, _imopVarPre154);
    W = (int (*)[50 + 0][50 + 0]) _imopVarPre156;
    ;
    int ( *_imopVarPre159 )[50 + 0];
    int ( *_imopVarPre160 )[50 + 0];
    _imopVarPre159 = *W;
    _imopVarPre160 = *c;
    init_array(length, _imopVarPre160, _imopVarPre159);
    ;
    int *_imopVarPre165;
    int ( *_imopVarPre166 )[50 + 0][50 + 0];
    int ( *_imopVarPre167 )[50 + 0];
    int ( *_imopVarPre168 )[50 + 0];
    _imopVarPre165 = &out;
    _imopVarPre166 = *sum_c;
    _imopVarPre167 = *W;
    _imopVarPre168 = *c;
    int ( *c_imopVar0 )[50 + 0];
    int ( *W_imopVar1 )[50 + 0];
    int ( *sum_c_imopVar2 )[50 + 0][50 + 0];
    int *out_imopVar3;
    c_imopVar0 = _imopVarPre168;
    W_imopVar1 = _imopVarPre167;
    sum_c_imopVar2 = _imopVarPre166;
    out_imopVar3 = _imopVarPre165;
    int iter;
    int i;
    int j;
    int k;
    int out_l = 0;
#pragma omp parallel
    {
        for (iter = 0; iter < tsteps; iter++) {
#pragma omp for private(j) nowait
            for (i = 0; i <= length - 1; i++) {
                for (j = 0; j <= length - 1; j++) {
                    c_imopVar0[i][j] = 0;
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for private(j, k) nowait
            for (i = 0; i <= length - 2; i++) {
                for (j = i + 1; j <= length - 1; j++) {
                    sum_c_imopVar2[i][j][i] = 0;
                    for (k = i + 1; k <= j - 1; k++) {
                        sum_c_imopVar2[i][j][k] = sum_c_imopVar2[i][j][k - 1] + c_imopVar0[i][k] + c_imopVar0[k][j];
                    }
                    c_imopVar0[i][j] = sum_c_imopVar2[i][j][j - 1] + W_imopVar1[i][j];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            out_l += c_imopVar0[0][length - 1];
        }
    }
    *out_imopVar3 = out_l;
    ;
    ;
    int _imopVarPre172;
    char *_imopVarPre173;
    int _imopVarPre174;
    _imopVarPre172 = argc > 42;
    if (_imopVarPre172) {
        _imopVarPre173 = argv[0];
        _imopVarPre174 = strcmp(_imopVarPre173, "");
        _imopVarPre172 = !_imopVarPre174;
    }
    if (_imopVarPre172) {
        print_array(out);
    }
    void *_imopVarPre176;
    _imopVarPre176 = (void *) sum_c;
    free(_imopVarPre176);
    ;
    void *_imopVarPre178;
    _imopVarPre178 = (void *) c;
    free(_imopVarPre178);
    ;
    void *_imopVarPre180;
    _imopVarPre180 = (void *) W;
    free(_imopVarPre180);
    ;
    return 0;
}
