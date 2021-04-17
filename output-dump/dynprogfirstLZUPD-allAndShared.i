
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
static void init_array(int length, int c[50 + 0][50 + 0] , int W[50 + 0][50 + 0]) {
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
    for (i = 0; i < length; i++) {
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
        for (j = 0; j < length; j++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            c[i][j] = i * j % 2;
            /*READ_S: []
            WRITE_S: []*/
            W[i][j] = ((int) i - j) / length;
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [__stderrp, fprintf]
WRITE_S: []*/
static void print_array(int out) {
/*READ_S: [__stderrp, fprintf]
WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf]
    WRITE_S: []*/
    fprintf(__stderrp, "%d ", out);
    /*READ_S: []
    WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [length, W, c, i, j, iter, out_l, k, sum_c, tsteps]
WRITE_S: [j, iter, out_l, k]*/
static void kernel_dynprog(int tsteps, int length , int c[50 + 0][50 + 0] , int W[50 + 0][50 + 0] , int sum_c[50 + 0][50 + 0][50 + 0] , int *out) {
/*READ_S: [length, W, c, i, j, iter, out_l, k, sum_c, tsteps]
WRITE_S: [j, iter, out_l, k]*/
    /*READ_S: []
    WRITE_S: []*/
    int iter;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int out_l = 0;
    /*READ_S: [length, W, c, i, j, iter, out_l, k, sum_c, tsteps]
    WRITE_S: [j, iter, out_l, k]*/
#pragma omp parallel
    {
    /*READ_S: [length, W, c, i, j, iter, out_l, k, sum_c, tsteps]
    WRITE_S: [j, iter, out_l, k]*/
        /*READ_S: []
        WRITE_S: [iter]*/
        /*READ_S: [iter, tsteps]
        WRITE_S: []*/
        /*READ_S: [iter]
        WRITE_S: [iter]*/
        /*READ_S: [length, W, c, i, j, iter, out_l, k, sum_c, tsteps]
        WRITE_S: [j, iter, out_l, k]*/
        for (iter = 0; iter < tsteps; iter++) {
        /*READ_S: [length, W, c, i, j, k, out_l, sum_c]
        WRITE_S: [j, out_l, k]*/
            /*READ_S: [length, i, c, j]
            WRITE_S: [j]*/
#pragma omp for private(j) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [length]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i <= length - 1; i++) {
            /*READ_S: [length, c, j]
            WRITE_S: [j]*/
                /*READ_S: []
                WRITE_S: [j]*/
                /*READ_S: [length, j]
                WRITE_S: []*/
                /*READ_S: [j]
                WRITE_S: [j]*/
                /*READ_S: [length, c, j]
                WRITE_S: [j]*/
                for (j = 0; j <= length - 1; j++) {
                /*READ_S: [c, j]
                WRITE_S: []*/
                    /*READ_S: [c, j]
                    WRITE_S: []*/
                    c[i][j] = 0;
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [length, W, c, i, j, k, sum_c]
            WRITE_S: [j, k]*/
#pragma omp for private(j, k) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [length]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i <= length - 2; i++) {
            /*READ_S: [length, W, c, j, k, sum_c]
            WRITE_S: [j, k]*/
                /*READ_S: []
                WRITE_S: [j]*/
                /*READ_S: [length, j]
                WRITE_S: []*/
                /*READ_S: [j]
                WRITE_S: [j]*/
                /*READ_S: [length, W, c, j, k, sum_c]
                WRITE_S: [j, k]*/
                for (j = i + 1; j <= length - 1; j++) {
                /*READ_S: [W, c, j, k, sum_c]
                WRITE_S: [k]*/
                    /*READ_S: [j, sum_c]
                    WRITE_S: []*/
                    sum_c[i][j][i] = 0;
                    /*READ_S: []
                    WRITE_S: [k]*/
                    /*READ_S: [j, k]
                    WRITE_S: []*/
                    /*READ_S: [k]
                    WRITE_S: [k]*/
                    /*READ_S: [c, j, k, sum_c]
                    WRITE_S: [k]*/
                    for (k = i + 1; k <= j - 1; k++) {
                    /*READ_S: [c, j, k, sum_c]
                    WRITE_S: []*/
                        /*READ_S: [c, j, k, sum_c]
                        WRITE_S: []*/
                        sum_c[i][j][k] = sum_c[i][j][k - 1] + c[i][k] + c[k][j];
                    }
                    /*READ_S: [W, c, j, sum_c]
                    WRITE_S: []*/
                    c[i][j] = sum_c[i][j][j - 1] + W[i][j];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [length, c, out_l]
            WRITE_S: [out_l]*/
            out_l += c[0][length - 1];
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    *out = out_l;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [polybench_alloc_data, length, __stderrp, free, heapCell#0, print_array, W, fprintf, heapCell#3, iter, sum_c, tsteps, kernel_dynprog, heapCell#2, _imopVarPre172, i, c, j, init_array, k, out_l, heapCell#1, strcmp]
WRITE_S: [heapCell#2, heapCell#3, iter, j, k, out_l, heapCell#1]*/
int main(int argc, char **argv) {
/*READ_S: [polybench_alloc_data, length, __stderrp, free, heapCell#0, print_array, W, fprintf, heapCell#3, iter, sum_c, tsteps, kernel_dynprog, heapCell#2, _imopVarPre172, i, c, j, init_array, k, out_l, heapCell#1, strcmp]
WRITE_S: [heapCell#2, heapCell#3, iter, j, k, out_l, heapCell#1]*/
    /*READ_S: []
    WRITE_S: []*/
    int length = 50;
    /*READ_S: []
    WRITE_S: []*/
    int tsteps = 10000;
    /*READ_S: []
    WRITE_S: []*/
    int out;
    /*READ_S: []
    WRITE_S: []*/
    int ( *sum_c )[50 + 0][50 + 0][50 + 0];
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre142;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre143;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre144;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre142 = sizeof(int);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre143 = (50 + 0) * (50 + 0) * (50 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre144 = polybench_alloc_data(_imopVarPre143, _imopVarPre142);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    sum_c = (int (*)[50 + 0][50 + 0][50 + 0]) _imopVarPre144;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    int ( *c )[50 + 0][50 + 0];
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre148;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre149;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre150;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre148 = sizeof(int);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre149 = (50 + 0) * (50 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre150 = polybench_alloc_data(_imopVarPre149, _imopVarPre148);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    c = (int (*)[50 + 0][50 + 0]) _imopVarPre150;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    int ( *W )[50 + 0][50 + 0];
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre154;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre155;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre156;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre154 = sizeof(int);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre155 = (50 + 0) * (50 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre156 = polybench_alloc_data(_imopVarPre155, _imopVarPre154);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    W = (int (*)[50 + 0][50 + 0]) _imopVarPre156;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    int ( *_imopVarPre159 )[50 + 0];
    /*READ_S: []
    WRITE_S: []*/
    int ( *_imopVarPre160 )[50 + 0];
    /*READ_S: [heapCell#3]
    WRITE_S: []*/
    _imopVarPre159 = *W;
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    _imopVarPre160 = *c;
    /*READ_S: [init_array]
    WRITE_S: []*/
    init_array(length, _imopVarPre160, _imopVarPre159);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre165;
    /*READ_S: []
    WRITE_S: []*/
    int ( *_imopVarPre166 )[50 + 0][50 + 0];
    /*READ_S: []
    WRITE_S: []*/
    int ( *_imopVarPre167 )[50 + 0];
    /*READ_S: []
    WRITE_S: []*/
    int ( *_imopVarPre168 )[50 + 0];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre165 = &out;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    _imopVarPre166 = *sum_c;
    /*READ_S: [heapCell#3]
    WRITE_S: []*/
    _imopVarPre167 = *W;
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    _imopVarPre168 = *c;
    /*READ_S: [kernel_dynprog]
    WRITE_S: []*/
    kernel_dynprog(tsteps, length, _imopVarPre168, _imopVarPre167, _imopVarPre166, _imopVarPre165);
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
    int _imopVarPre172;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre173;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre174;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre172 = argc > 42;
    /*READ_S: [_imopVarPre172]
    WRITE_S: []*/
    /*READ_S: [heapCell#0, _imopVarPre172, strcmp]
    WRITE_S: []*/
    if (_imopVarPre172) {
    /*READ_S: [heapCell#0, strcmp]
    WRITE_S: []*/
        /*READ_S: [heapCell#0]
        WRITE_S: []*/
        _imopVarPre173 = argv[0];
        /*READ_S: [strcmp]
        WRITE_S: []*/
        _imopVarPre174 = strcmp(_imopVarPre173, "");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre172 = !_imopVarPre174;
    }
    /*READ_S: [_imopVarPre172]
    WRITE_S: []*/
    /*READ_S: [__stderrp, print_array, _imopVarPre172, fprintf]
    WRITE_S: []*/
    if (_imopVarPre172) {
    /*READ_S: [__stderrp, print_array, fprintf]
    WRITE_S: []*/
        /*READ_S: [print_array]
        WRITE_S: []*/
        print_array(out);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre176;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre176 = (void *) sum_c;
    /*READ_S: [free, heapCell#1]
    WRITE_S: [heapCell#1]*/
    free(_imopVarPre176);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre178;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre178 = (void *) c;
    /*READ_S: [free, heapCell#2]
    WRITE_S: [heapCell#2]*/
    free(_imopVarPre178);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre180;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre180 = (void *) W;
    /*READ_S: [free, heapCell#3]
    WRITE_S: [heapCell#3]*/
    free(_imopVarPre180);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
