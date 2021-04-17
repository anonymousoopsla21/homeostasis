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
ptsTo(A) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(A) := [nullCell];
ptsTo(B) := [nullCell];
]*/
static void init_array(int n, double A[1000 + 0][1000 + 0] , double B[1000 + 0][1000 + 0]) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(B) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(B) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(B) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(B) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(B) := [nullCell];
    ]*/
    for (i = 0; i < n; i++) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(B) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(B) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(B) := [nullCell];
        ]*/
        for (j = 0; j < n; j++) {
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            A[i][j] = ((double) i * (j + 2) + 2) / n;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            B[i][j] = ((double) i * (j + 3) + 3) / n;
        }
    }
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(A) := [nullCell];
]*/
static void print_array(int n, double A[1000 + 0][1000 + 0]) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ]*/
    for (i = 0; i < n; i++) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [nullCell];
        ]*/
        for (j = 0; j < n; j++) {
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ]*/
            double _imopVarPre140;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ]*/
            _imopVarPre140 = A[i][j];
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ]*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ]*/
            if ((i * n + j) % 20 == 0) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(A) := [nullCell];
                ]*/
                fprintf(__stderrp, "\n");
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(A) := [nullCell];
                ]*/
            }
        }
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ]*/
    fprintf(__stderrp, "\n");
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
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
ptsTo(A) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(A) := [nullCell];
ptsTo(B) := [nullCell];
]*/
static void kernel_jacobi_2d_imper(int tsteps, int n , double A[1000 + 0][1000 + 0] , double B[1000 + 0][1000 + 0]) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(B) := [nullCell];
    ]*/
    int t;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(B) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(B) := [nullCell];
    ]*/
    int j;
#pragma omp parallel private(i, j, t)
    {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(B) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(B) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(B) := [nullCell];
        ]*/
        for (t = 0; t < tsteps; t++) {
#pragma omp for schedule(static) nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            for (i = 1; i < n - 1; i++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(B) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(B) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(B) := [nullCell];
                ]*/
                for (j = 1; j < n - 1; j++) {
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(A) := [nullCell];
                    ptsTo(B) := [nullCell];
                    ]*/
                    B[i][j] = 0.2 * (A[i][j] + A[i][j - 1] + A[i][1 + j] + A[1 + i][j] + A[i - 1][j]);
                }
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
#pragma omp barrier
#pragma omp for schedule(static) nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            for (i = 1; i < n - 1; i++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(B) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(B) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(B) := [nullCell];
                ]*/
                for (j = 1; j < n - 1; j++) {
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(A) := [nullCell];
                    ptsTo(B) := [nullCell];
                    ]*/
                    A[i][j] = B[i][j];
                }
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(B) := [nullCell];
            ]*/
#pragma omp barrier
        }
    }
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
    int n = 1000;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int tsteps = 20;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *A )[1000 + 0][1000 + 0];
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre144;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre145;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre146) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre146;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre146) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre144 = sizeof(double);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre146) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre145 = (1000 + 0) * (1000 + 0);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre146) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    A = (double (*)[1000 + 0][1000 + 0]) _imopVarPre146;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *B )[1000 + 0][1000 + 0];
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre150;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre151;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre152) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre152;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre152) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre150 = sizeof(double);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre152) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre151 = (1000 + 0) * (1000 + 0);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre152) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(argv) := [heapCell#0];
    ]*/
    B = (double (*)[1000 + 0][1000 + 0]) _imopVarPre152;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre155 )[1000 + 0];
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre156 )[1000 + 0];
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre155 = *B;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre156 = *A;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    init_array(n, _imopVarPre156, _imopVarPre155);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre159 )[1000 + 0];
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre160 )[1000 + 0];
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre159 = *B;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre160 = *A;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    kernel_jacobi_2d_imper(tsteps, n, _imopVarPre160, _imopVarPre159);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre164;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    char *_imopVarPre165;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre166;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre164 = argc > 42;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre164) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(B) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(_imopVarPre155) := [nullCell];
        ptsTo(_imopVarPre156) := [nullCell];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre165 = argv[0];
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(B) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(_imopVarPre155) := [nullCell];
        ptsTo(_imopVarPre156) := [nullCell];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre166 = strcmp(_imopVarPre165, "");
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(B) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(_imopVarPre155) := [nullCell];
        ptsTo(_imopVarPre156) := [nullCell];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(B) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(_imopVarPre155) := [nullCell];
        ptsTo(_imopVarPre156) := [nullCell];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre164 = !_imopVarPre166;
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre164) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(B) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(_imopVarPre155) := [nullCell];
        ptsTo(_imopVarPre156) := [nullCell];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre168) := [nullCell];
        ]*/
        double ( *_imopVarPre168 )[1000 + 0];
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(B) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(_imopVarPre155) := [nullCell];
        ptsTo(_imopVarPre156) := [nullCell];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre168) := [nullCell];
        ]*/
        _imopVarPre168 = *A;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(B) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(_imopVarPre155) := [nullCell];
        ptsTo(_imopVarPre156) := [nullCell];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre168) := [nullCell];
        ]*/
        print_array(n, _imopVarPre168);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(B) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(_imopVarPre155) := [nullCell];
        ptsTo(_imopVarPre156) := [nullCell];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre160) := [nullCell];
        ptsTo(_imopVarPre165) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre168) := [nullCell];
        ]*/
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre170;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre170 = (void *) A;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    free(_imopVarPre170);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(_imopVarPre172) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre172;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(_imopVarPre172) := [heapCell#2];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre172 = (void *) B;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(_imopVarPre172) := [heapCell#2];
    ptsTo(argv) := [heapCell#0];
    ]*/
    free(_imopVarPre172);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(_imopVarPre172) := [heapCell#2];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(_imopVarPre172) := [heapCell#2];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(B) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(_imopVarPre155) := [nullCell];
    ptsTo(_imopVarPre156) := [nullCell];
    ptsTo(_imopVarPre159) := [nullCell];
    ptsTo(_imopVarPre160) := [nullCell];
    ptsTo(_imopVarPre165) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#1];
    ptsTo(_imopVarPre172) := [heapCell#2];
    ptsTo(argv) := [heapCell#0];
    ]*/
    return 0;
}
