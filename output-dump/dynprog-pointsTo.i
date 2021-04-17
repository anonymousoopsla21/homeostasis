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
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(c) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(c) := [nullCell];
ptsTo(W) := [nullCell];
]*/
static void init_array(int length, int c[50 + 0][50 + 0] , int W[50 + 0][50 + 0]) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ]*/
    for (i = 0; i < length; i++) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(c) := [nullCell];
        ptsTo(W) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(c) := [nullCell];
        ptsTo(W) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(c) := [nullCell];
        ptsTo(W) := [nullCell];
        ]*/
        for (j = 0; j < length; j++) {
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ]*/
            c[i][j] = i * j % 2;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ]*/
            W[i][j] = ((int) i - j) / length;
        }
    }
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
]*/
static void print_array(int out) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ]*/
    fprintf(__stderrp, "%d ", out);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ]*/
    fprintf(__stderrp, "\n");
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ]*/
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(c) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(c) := [nullCell];
ptsTo(W) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(c) := [nullCell];
ptsTo(W) := [nullCell];
ptsTo(sum_c) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(out) := [out];
ptsTo(c) := [nullCell];
ptsTo(W) := [nullCell];
ptsTo(sum_c) := [nullCell];
]*/
static void kernel_dynprog(int tsteps, int length , int c[50 + 0][50 + 0] , int W[50 + 0][50 + 0] , int sum_c[50 + 0][50 + 0][50 + 0] , int *out) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(out) := [out];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ptsTo(sum_c) := [nullCell];
    ]*/
    int iter;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(out) := [out];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ptsTo(sum_c) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(out) := [out];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ptsTo(sum_c) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(out) := [out];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ptsTo(sum_c) := [nullCell];
    ]*/
    int k;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(out) := [out];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ptsTo(sum_c) := [nullCell];
    ]*/
    int out_l = 0;
#pragma omp parallel
    {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(out) := [out];
        ptsTo(c) := [nullCell];
        ptsTo(W) := [nullCell];
        ptsTo(sum_c) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(out) := [out];
        ptsTo(c) := [nullCell];
        ptsTo(W) := [nullCell];
        ptsTo(sum_c) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(out) := [out];
        ptsTo(c) := [nullCell];
        ptsTo(W) := [nullCell];
        ptsTo(sum_c) := [nullCell];
        ]*/
        for (iter = 0; iter < tsteps; iter++) {
#pragma omp for private(j) nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
            for (i = 0; i <= length - 1; i++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(out) := [out];
                ptsTo(c) := [nullCell];
                ptsTo(W) := [nullCell];
                ptsTo(sum_c) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(out) := [out];
                ptsTo(c) := [nullCell];
                ptsTo(W) := [nullCell];
                ptsTo(sum_c) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(out) := [out];
                ptsTo(c) := [nullCell];
                ptsTo(W) := [nullCell];
                ptsTo(sum_c) := [nullCell];
                ]*/
                for (j = 0; j <= length - 1; j++) {
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(out) := [out];
                    ptsTo(c) := [nullCell];
                    ptsTo(W) := [nullCell];
                    ptsTo(sum_c) := [nullCell];
                    ]*/
                    c[i][j] = 0;
                }
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
#pragma omp barrier
#pragma omp for private(j, k) nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
            for (i = 0; i <= length - 2; i++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(out) := [out];
                ptsTo(c) := [nullCell];
                ptsTo(W) := [nullCell];
                ptsTo(sum_c) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(out) := [out];
                ptsTo(c) := [nullCell];
                ptsTo(W) := [nullCell];
                ptsTo(sum_c) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(out) := [out];
                ptsTo(c) := [nullCell];
                ptsTo(W) := [nullCell];
                ptsTo(sum_c) := [nullCell];
                ]*/
                for (j = i + 1; j <= length - 1; j++) {
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(out) := [out];
                    ptsTo(c) := [nullCell];
                    ptsTo(W) := [nullCell];
                    ptsTo(sum_c) := [nullCell];
                    ]*/
                    sum_c[i][j][i] = 0;
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(out) := [out];
                    ptsTo(c) := [nullCell];
                    ptsTo(W) := [nullCell];
                    ptsTo(sum_c) := [nullCell];
                    ]*/
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(out) := [out];
                    ptsTo(c) := [nullCell];
                    ptsTo(W) := [nullCell];
                    ptsTo(sum_c) := [nullCell];
                    ]*/
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(out) := [out];
                    ptsTo(c) := [nullCell];
                    ptsTo(W) := [nullCell];
                    ptsTo(sum_c) := [nullCell];
                    ]*/
                    for (k = i + 1; k <= j - 1; k++) {
                        /*OUT: [ptsTo(__stderrp) := [nullCell];
                        ptsTo(suboptarg) := [nullCell];
                        ptsTo(out) := [out];
                        ptsTo(c) := [nullCell];
                        ptsTo(W) := [nullCell];
                        ptsTo(sum_c) := [nullCell];
                        ]*/
                        sum_c[i][j][k] = sum_c[i][j][k - 1] + c[i][k] + c[k][j];
                    }
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(out) := [out];
                    ptsTo(c) := [nullCell];
                    ptsTo(W) := [nullCell];
                    ptsTo(sum_c) := [nullCell];
                    ]*/
                    c[i][j] = sum_c[i][j][j - 1] + W[i][j];
                }
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(out) := [out];
            ptsTo(c) := [nullCell];
            ptsTo(W) := [nullCell];
            ptsTo(sum_c) := [nullCell];
            ]*/
            out_l += c[0][length - 1];
        }
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(out) := [out];
    ptsTo(c) := [nullCell];
    ptsTo(W) := [nullCell];
    ptsTo(sum_c) := [nullCell];
    ]*/
    *out = out_l;
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int length = 50;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int tsteps = 10000;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int out;
    /*OUT: [ptsTo(sum_c) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ( *sum_c )[50 + 0][50 + 0][50 + 0];
    /*OUT: [ptsTo(sum_c) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre142;
    /*OUT: [ptsTo(sum_c) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre143;
    /*OUT: [ptsTo(sum_c) := [nullCell];
    ptsTo(_imopVarPre144) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre144;
    /*OUT: [ptsTo(sum_c) := [nullCell];
    ptsTo(_imopVarPre144) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre142 = sizeof(int);
    /*OUT: [ptsTo(sum_c) := [nullCell];
    ptsTo(_imopVarPre144) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre143 = (50 + 0) * (50 + 0) * (50 + 0);
    /*OUT: [ptsTo(sum_c) := [nullCell];
    ptsTo(_imopVarPre144) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre144 = polybench_alloc_data(_imopVarPre143, _imopVarPre142);
    /*OUT: [ptsTo(sum_c) := [nullCell];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    sum_c = (int (*)[50 + 0][50 + 0][50 + 0]) _imopVarPre144;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ( *c )[50 + 0][50 + 0];
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre148;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre149;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [nullCell];
    ptsTo(_imopVarPre150) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre150;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [nullCell];
    ptsTo(_imopVarPre150) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre148 = sizeof(int);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [nullCell];
    ptsTo(_imopVarPre150) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre149 = (50 + 0) * (50 + 0);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [nullCell];
    ptsTo(_imopVarPre150) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre150 = polybench_alloc_data(_imopVarPre149, _imopVarPre148);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [nullCell];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    c = (int (*)[50 + 0][50 + 0]) _imopVarPre150;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ( *W )[50 + 0][50 + 0];
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre154;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre155;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre156;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre154 = sizeof(int);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre155 = (50 + 0) * (50 + 0);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre156 = polybench_alloc_data(_imopVarPre155, _imopVarPre154);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [nullCell];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    W = (int (*)[50 + 0][50 + 0]) _imopVarPre156;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ( *_imopVarPre159 )[50 + 0];
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ( *_imopVarPre160 )[50 + 0];
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre159 = *W;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre160 = *c;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    init_array(length, _imopVarPre160, _imopVarPre159);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int *_imopVarPre165;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ( *_imopVarPre166 )[50 + 0][50 + 0];
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ( *_imopVarPre167 )[50 + 0];
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int ( *_imopVarPre168 )[50 + 0];
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre165 = &out;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre166 = *sum_c;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre167 = *W;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre168 = *c;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    kernel_dynprog(tsteps, length, _imopVarPre168, _imopVarPre167, _imopVarPre166, _imopVarPre165);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre172;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    char *_imopVarPre173;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre174;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre172 = argc > 42;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre172) {
        /*OUT: [ptsTo(sum_c) := [heapCell#1];
        ptsTo(_imopVarPre144) := [heapCell#1];
        ptsTo(c) := [heapCell#2];
        ptsTo(_imopVarPre150) := [heapCell#2];
        ptsTo(W) := [heapCell#3];
        ptsTo(_imopVarPre156) := [heapCell#3];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [out];
        ptsTo(_imopVarPre166) := [nullCell];
        ptsTo(_imopVarPre167) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre173) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre173 = argv[0];
        /*OUT: [ptsTo(sum_c) := [heapCell#1];
        ptsTo(_imopVarPre144) := [heapCell#1];
        ptsTo(c) := [heapCell#2];
        ptsTo(_imopVarPre150) := [heapCell#2];
        ptsTo(W) := [heapCell#3];
        ptsTo(_imopVarPre156) := [heapCell#3];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [out];
        ptsTo(_imopVarPre166) := [nullCell];
        ptsTo(_imopVarPre167) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre173) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre174 = strcmp(_imopVarPre173, "");
        /*OUT: [ptsTo(sum_c) := [heapCell#1];
        ptsTo(_imopVarPre144) := [heapCell#1];
        ptsTo(c) := [heapCell#2];
        ptsTo(_imopVarPre150) := [heapCell#2];
        ptsTo(W) := [heapCell#3];
        ptsTo(_imopVarPre156) := [heapCell#3];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [out];
        ptsTo(_imopVarPre166) := [nullCell];
        ptsTo(_imopVarPre167) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre173) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(sum_c) := [heapCell#1];
        ptsTo(_imopVarPre144) := [heapCell#1];
        ptsTo(c) := [heapCell#2];
        ptsTo(_imopVarPre150) := [heapCell#2];
        ptsTo(W) := [heapCell#3];
        ptsTo(_imopVarPre156) := [heapCell#3];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [out];
        ptsTo(_imopVarPre166) := [nullCell];
        ptsTo(_imopVarPre167) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre173) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre172 = !_imopVarPre174;
    }
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre172) {
        /*OUT: [ptsTo(sum_c) := [heapCell#1];
        ptsTo(_imopVarPre144) := [heapCell#1];
        ptsTo(c) := [heapCell#2];
        ptsTo(_imopVarPre150) := [heapCell#2];
        ptsTo(W) := [heapCell#3];
        ptsTo(_imopVarPre156) := [heapCell#3];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [out];
        ptsTo(_imopVarPre166) := [nullCell];
        ptsTo(_imopVarPre167) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre173) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        print_array(out);
        /*OUT: [ptsTo(sum_c) := [heapCell#1];
        ptsTo(_imopVarPre144) := [heapCell#1];
        ptsTo(c) := [heapCell#2];
        ptsTo(_imopVarPre150) := [heapCell#2];
        ptsTo(W) := [heapCell#3];
        ptsTo(_imopVarPre156) := [heapCell#3];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [out];
        ptsTo(_imopVarPre166) := [nullCell];
        ptsTo(_imopVarPre167) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre173) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
    }
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre176;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre176 = (void *) sum_c;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    free(_imopVarPre176);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre178;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre178 = (void *) c;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    free(_imopVarPre178);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(_imopVarPre180) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre180;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(_imopVarPre180) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre180 = (void *) W;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(_imopVarPre180) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    free(_imopVarPre180);
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(_imopVarPre180) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(_imopVarPre180) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(sum_c) := [heapCell#1];
    ptsTo(_imopVarPre144) := [heapCell#1];
    ptsTo(c) := [heapCell#2];
    ptsTo(_imopVarPre150) := [heapCell#2];
    ptsTo(W) := [heapCell#3];
    ptsTo(_imopVarPre156) := [heapCell#3];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [out];
    ptsTo(_imopVarPre166) := [nullCell];
    ptsTo(_imopVarPre167) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre173) := [nullCell];
    ptsTo(_imopVarPre176) := [heapCell#1];
    ptsTo(_imopVarPre178) := [heapCell#2];
    ptsTo(_imopVarPre180) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    return 0;
}
