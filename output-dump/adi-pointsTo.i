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
ptsTo(X) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(A) := [nullCell];
ptsTo(X) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(B) := [nullCell];
ptsTo(A) := [nullCell];
ptsTo(X) := [nullCell];
]*/
static void init_array(int n, double X[1024 + 0][1024 + 0] , double A[1024 + 0][1024 + 0] , double B[1024 + 0][1024 + 0]) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    for (i = 0; i < n; i++) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(B) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(X) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(B) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(X) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(B) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(X) := [nullCell];
        ]*/
        for (j = 0; j < n; j++) {
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            X[i][j] = ((double) i * (j + 1) + 1) / n;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            A[i][j] = ((double) i * (j + 2) + 2) / n;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
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
ptsTo(X) := [nullCell];
]*/
static void print_array(int n, double X[1024 + 0][1024 + 0]) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    for (i = 0; i < n; i++) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(X) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(X) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(X) := [nullCell];
        ]*/
        for (j = 0; j < n; j++) {
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            double _imopVarPre140;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            _imopVarPre140 = X[i][j];
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            if ((i * 1024 + j) % 20 == 0) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                fprintf(__stderrp, "\n");
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
            }
        }
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    fprintf(__stderrp, "\n");
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(X) := [nullCell];
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
ptsTo(X) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(A) := [nullCell];
ptsTo(X) := [nullCell];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(suboptarg) := [nullCell];
ptsTo(B) := [nullCell];
ptsTo(A) := [nullCell];
ptsTo(X) := [nullCell];
]*/
static void kernel_adi(int tsteps, int n , double X[1024 + 0][1024 + 0] , double A[1024 + 0][1024 + 0] , double B[1024 + 0][1024 + 0]) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    int t;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    int i1;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(A) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    int i2;
#pragma omp parallel private(t, i1, i2)
    {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(B) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(X) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(B) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(X) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(B) := [nullCell];
        ptsTo(A) := [nullCell];
        ptsTo(X) := [nullCell];
        ]*/
        for (t = 0; t < tsteps; t++) {
#pragma omp for nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            for (i1 = 0; i1 < n; i1++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                for (i2 = 1; i2 < n; i2++) {
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(B) := [nullCell];
                    ptsTo(A) := [nullCell];
                    ptsTo(X) := [nullCell];
                    ]*/
                    X[i1][i2] = X[i1][i2] - X[i1][i2 - 1] * A[i1][i2] / B[i1][i2 - 1];
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(B) := [nullCell];
                    ptsTo(A) := [nullCell];
                    ptsTo(X) := [nullCell];
                    ]*/
                    B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1][i2 - 1];
                }
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            for (i1 = 0; i1 < n; i1++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                X[i1][n - 1] = X[i1][n - 1] / B[i1][n - 1];
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            for (i1 = 0; i1 < n; i1++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                for (i2 = 0; i2 < n - 2; i2++) {
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(B) := [nullCell];
                    ptsTo(A) := [nullCell];
                    ptsTo(X) := [nullCell];
                    ]*/
                    X[i1][n - i2 - 2] = (X[i1][n - 2 - i2] - X[i1][n - 2 - i2 - 1] * A[i1][n - i2 - 3]) / B[i1][n - 3 - i2];
                }
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            for (i1 = 1; i1 < n; i1++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                for (i2 = 0; i2 < n; i2++) {
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(B) := [nullCell];
                    ptsTo(A) := [nullCell];
                    ptsTo(X) := [nullCell];
                    ]*/
                    X[i1][i2] = X[i1][i2] - X[i1 - 1][i2] * A[i1][i2] / B[i1 - 1][i2];
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(B) := [nullCell];
                    ptsTo(A) := [nullCell];
                    ptsTo(X) := [nullCell];
                    ]*/
                    B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1 - 1][i2];
                }
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            for (i2 = 0; i2 < n; i2++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                X[n - 1][i2] = X[n - 1][i2] / B[n - 1][i2];
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            for (i1 = 0; i1 < n - 2; i1++) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(suboptarg) := [nullCell];
                ptsTo(B) := [nullCell];
                ptsTo(A) := [nullCell];
                ptsTo(X) := [nullCell];
                ]*/
                for (i2 = 0; i2 < n; i2++) {
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(suboptarg) := [nullCell];
                    ptsTo(B) := [nullCell];
                    ptsTo(A) := [nullCell];
                    ptsTo(X) := [nullCell];
                    ]*/
                    X[n - 2 - i1][i2] = (X[n - 2 - i1][i2] - X[n - i1 - 3][i2] * A[n - 3 - i1][i2]) / B[n - 2 - i1][i2];
                }
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(suboptarg) := [nullCell];
            ptsTo(B) := [nullCell];
            ptsTo(A) := [nullCell];
            ptsTo(X) := [nullCell];
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
    int n = 1024;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int tsteps = 50;
    /*OUT: [ptsTo(X) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *X )[1024 + 0][1024 + 0];
    /*OUT: [ptsTo(X) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre144;
    /*OUT: [ptsTo(X) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre145;
    /*OUT: [ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre146) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre146;
    /*OUT: [ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre146) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre144 = sizeof(double);
    /*OUT: [ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre146) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre145 = (1024 + 0) * (1024 + 0);
    /*OUT: [ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre146) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    /*OUT: [ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    X = (double (*)[1024 + 0][1024 + 0]) _imopVarPre146;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *A )[1024 + 0][1024 + 0];
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre150;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre151;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre152) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre152;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre152) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre150 = sizeof(double);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre152) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre151 = (1024 + 0) * (1024 + 0);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre152) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    A = (double (*)[1024 + 0][1024 + 0]) _imopVarPre152;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *B )[1024 + 0][1024 + 0];
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre156;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre157;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre158) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre158;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre158) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre156 = sizeof(double);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre158) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre157 = (1024 + 0) * (1024 + 0);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre158) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre158 = polybench_alloc_data(_imopVarPre157, _imopVarPre156);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [nullCell];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    B = (double (*)[1024 + 0][1024 + 0]) _imopVarPre158;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre162 )[1024 + 0];
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre163 )[1024 + 0];
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre164 )[1024 + 0];
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre162 = *B;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre163 = *A;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre164 = *X;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    init_array(n, _imopVarPre164, _imopVarPre163, _imopVarPre162);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre168 )[1024 + 0];
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre169 )[1024 + 0];
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double ( *_imopVarPre170 )[1024 + 0];
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre168 = *B;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre169 = *A;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre170 = *X;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    kernel_adi(tsteps, n, _imopVarPre170, _imopVarPre169, _imopVarPre168);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre174;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    char *_imopVarPre175;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int _imopVarPre176;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre174 = argc > 42;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre174) {
        /*OUT: [ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(A) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(B) := [heapCell#3];
        ptsTo(_imopVarPre158) := [heapCell#3];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(_imopVarPre164) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(_imopVarPre170) := [nullCell];
        ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre175 = argv[0];
        /*OUT: [ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(A) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(B) := [heapCell#3];
        ptsTo(_imopVarPre158) := [heapCell#3];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(_imopVarPre164) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(_imopVarPre170) := [nullCell];
        ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre176 = strcmp(_imopVarPre175, "");
        /*OUT: [ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(A) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(B) := [heapCell#3];
        ptsTo(_imopVarPre158) := [heapCell#3];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(_imopVarPre164) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(_imopVarPre170) := [nullCell];
        ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(A) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(B) := [heapCell#3];
        ptsTo(_imopVarPre158) := [heapCell#3];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(_imopVarPre164) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(_imopVarPre170) := [nullCell];
        ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        _imopVarPre174 = !_imopVarPre176;
    }
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    if (_imopVarPre174) {
        /*OUT: [ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(A) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(B) := [heapCell#3];
        ptsTo(_imopVarPre158) := [heapCell#3];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(_imopVarPre164) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(_imopVarPre170) := [nullCell];
        ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre178) := [nullCell];
        ]*/
        double ( *_imopVarPre178 )[1024 + 0];
        /*OUT: [ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(A) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(B) := [heapCell#3];
        ptsTo(_imopVarPre158) := [heapCell#3];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(_imopVarPre164) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(_imopVarPre170) := [nullCell];
        ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre178) := [nullCell];
        ]*/
        _imopVarPre178 = *X;
        /*OUT: [ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(A) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(B) := [heapCell#3];
        ptsTo(_imopVarPre158) := [heapCell#3];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(_imopVarPre164) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(_imopVarPre170) := [nullCell];
        ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre178) := [nullCell];
        ]*/
        print_array(n, _imopVarPre178);
        /*OUT: [ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre146) := [heapCell#1];
        ptsTo(A) := [heapCell#2];
        ptsTo(_imopVarPre152) := [heapCell#2];
        ptsTo(B) := [heapCell#3];
        ptsTo(_imopVarPre158) := [heapCell#3];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(_imopVarPre164) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre169) := [nullCell];
        ptsTo(_imopVarPre170) := [nullCell];
        ptsTo(_imopVarPre175) := [nullCell];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(suboptarg) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre178) := [nullCell];
        ]*/
    }
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre180;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre180 = (void *) X;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    free(_imopVarPre180);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre182;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre182 = (void *) A;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    free(_imopVarPre182);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(_imopVarPre184) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre184;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(_imopVarPre184) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre184 = (void *) B;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(_imopVarPre184) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    free(_imopVarPre184);
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(_imopVarPre184) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(_imopVarPre184) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    ;
    /*OUT: [ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre146) := [heapCell#1];
    ptsTo(A) := [heapCell#2];
    ptsTo(_imopVarPre152) := [heapCell#2];
    ptsTo(B) := [heapCell#3];
    ptsTo(_imopVarPre158) := [heapCell#3];
    ptsTo(_imopVarPre162) := [nullCell];
    ptsTo(_imopVarPre163) := [nullCell];
    ptsTo(_imopVarPre164) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre169) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(_imopVarPre175) := [nullCell];
    ptsTo(_imopVarPre180) := [heapCell#1];
    ptsTo(_imopVarPre182) := [heapCell#2];
    ptsTo(_imopVarPre184) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    return 0;
}