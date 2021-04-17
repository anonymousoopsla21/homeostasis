extern double fabs(double );
typedef int __int32_t;
typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_suseconds_t;
typedef __darwin_size_t size_t;
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
void exit(int );
void *malloc(size_t __size);
int strcmp(const char *__s1, const char *__s2);
extern int omp_get_thread_num(void );
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
int printf(const char *restrict , ...);
int scanf(const char *restrict , ...);
int sscanf(const char *restrict , const char *restrict , ...);
int gettimeofday(struct timeval *restrict , void *restrict );
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(heapCell#2) := [heapCell#1];
ptsTo(heapCell#4) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(heapCell#2) := [heapCell#1];
ptsTo(heapCell#4) := [heapCell#0];
]*/
int min(int a, int b) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int _imopVarPre142;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int _imopVarPre143;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre142 = a <= b;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    if (_imopVarPre142) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre143 = a;
    } else {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre143 = b;
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    return _imopVarPre143;
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(A) := [heapCell#4];
ptsTo(heapCell#4) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(A) := [heapCell#4];
ptsTo(heapCell#4) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(A) := [heapCell#4];
ptsTo(heapCell#4) := [heapCell#0];
]*/
int simulate_ocean_currents(double **A, int n , double tol) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int done = 0;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double diff;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double old;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int iter = 0;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double **B;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double **C;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre146;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre147) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    void *_imopVarPre147;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre147) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre146 = n * sizeof(double *);
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre147) := [nullCell];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre147 = malloc(_imopVarPre146);
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    B = (double **) _imopVarPre147;
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int k;
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    for (k = 0; k < n; k++) {
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        unsigned long int _imopVarPre150;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        void *_imopVarPre151;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre150 = n * sizeof(double);
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre151 = malloc(_imopVarPre150);
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        B[k] = (double *) _imopVarPre151;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        double *_imopVarPre159;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        unsigned int _imopVarPre160;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        unsigned long int _imopVarPre161;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        double *_imopVarPre162;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [nullCell];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        double *_imopVarPre163;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [heapCell#5];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre159 = B[k];
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [heapCell#5];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre160 = __builtin_object_size(_imopVarPre159, 0);
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [heapCell#5];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [heapCell#5];
        ptsTo(_imopVarPre162) := [nullCell];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre161 = n * sizeof(double);
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [heapCell#5];
        ptsTo(_imopVarPre162) := [heapCell#0];
        ptsTo(_imopVarPre163) := [nullCell];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre162 = A[k];
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [heapCell#5];
        ptsTo(_imopVarPre162) := [heapCell#0];
        ptsTo(_imopVarPre163) := [heapCell#5];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre163 = B[k];
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [heapCell#5];
        ptsTo(_imopVarPre162) := [heapCell#0];
        ptsTo(_imopVarPre163) := [heapCell#5];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        __builtin___memcpy_chk(_imopVarPre163, _imopVarPre162, _imopVarPre161, _imopVarPre160);
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre151) := [heapCell#5];
        ptsTo(_imopVarPre159) := [heapCell#5];
        ptsTo(_imopVarPre162) := [heapCell#0];
        ptsTo(_imopVarPre163) := [heapCell#5];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
    }
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#3, heapCell#4];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    while (!done) {
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        iter++;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        diff = 0;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int i;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int j;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        for (i = 1; i < n - 1; ++i) {
            /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
            ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
            ptsTo(_imopVarPre147) := [heapCell#3];
            ptsTo(__stderrp) := [nullCell];
            ptsTo(A) := [heapCell#3, heapCell#4];
            ptsTo(heapCell#3) := [heapCell#5];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
            ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
            ptsTo(_imopVarPre147) := [heapCell#3];
            ptsTo(__stderrp) := [nullCell];
            ptsTo(A) := [heapCell#3, heapCell#4];
            ptsTo(heapCell#3) := [heapCell#5];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
            ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
            ptsTo(_imopVarPre147) := [heapCell#3];
            ptsTo(__stderrp) := [nullCell];
            ptsTo(A) := [heapCell#3, heapCell#4];
            ptsTo(heapCell#3) := [heapCell#5];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            for (j = 1; j < n - 1; ++j) {
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
                ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
                ptsTo(_imopVarPre147) := [heapCell#3];
                ptsTo(__stderrp) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#4];
                ptsTo(heapCell#3) := [heapCell#5];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                old = A[i][j];
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
                ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
                ptsTo(_imopVarPre147) := [heapCell#3];
                ptsTo(__stderrp) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#4];
                ptsTo(heapCell#3) := [heapCell#5];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
                ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
                ptsTo(_imopVarPre147) := [heapCell#3];
                ptsTo(__stderrp) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#4];
                ptsTo(heapCell#3) := [heapCell#5];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                double _imopVarPre165;
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
                ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
                ptsTo(_imopVarPre147) := [heapCell#3];
                ptsTo(__stderrp) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#4];
                ptsTo(heapCell#3) := [heapCell#5];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                double _imopVarPre166;
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
                ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
                ptsTo(_imopVarPre147) := [heapCell#3];
                ptsTo(__stderrp) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#4];
                ptsTo(heapCell#3) := [heapCell#5];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                _imopVarPre165 = B[i][j] - old;
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
                ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
                ptsTo(_imopVarPre147) := [heapCell#3];
                ptsTo(__stderrp) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#4];
                ptsTo(heapCell#3) := [heapCell#5];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                _imopVarPre166 = fabs(_imopVarPre165);
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
                ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
                ptsTo(_imopVarPre147) := [heapCell#3];
                ptsTo(__stderrp) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#4];
                ptsTo(heapCell#3) := [heapCell#5];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
                ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
                ptsTo(_imopVarPre147) := [heapCell#3];
                ptsTo(__stderrp) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#4];
                ptsTo(heapCell#3) := [heapCell#5];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                diff += _imopVarPre166;
            }
        }
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        C = A;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        A = B;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        B = C;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#4];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        if (diff / (n * n) < tol) {
            /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
            ptsTo(C) := [heapCell#3, heapCell#4];
            ptsTo(_imopVarPre147) := [heapCell#3];
            ptsTo(__stderrp) := [nullCell];
            ptsTo(A) := [heapCell#3, heapCell#4];
            ptsTo(heapCell#3) := [heapCell#5];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            done = 1;
        }
    }
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#3, heapCell#4];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    return iter;
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(heapCell#4) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(heapCell#4) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(heapCell#4) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(heapCell#4) := [heapCell#0];
]*/
int simulate_ocean_currents_parallel(double **A, int dim , double tol , int procs) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int done = 0;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int iter = 0;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double diff = 0;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double **B;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double **C;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre169;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    void *_imopVarPre170;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre169 = dim * sizeof(double *);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre170 = malloc(_imopVarPre169);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [heapCell#2];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    B = (double **) _imopVarPre170;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [heapCell#2];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
#pragma omp parallel num_threads(procs) shared(A, B, dim)
    {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre171;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre171 = omp_get_thread_num();
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int tid = _imopVarPre171;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre173;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre174;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre173 = tid * dim / procs;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre174 = min(dim, _imopVarPre173);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int start = _imopVarPre174;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre176;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre177;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre176 = (tid + 1) * dim / procs;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre177 = min(dim, _imopVarPre176);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int end = _imopVarPre177;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int i;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        for (i = start; i < end; ++i) {
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            unsigned long int _imopVarPre180;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            void *_imopVarPre181;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            _imopVarPre180 = dim * sizeof(double);
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            _imopVarPre181 = malloc(_imopVarPre180);
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            B[i] = (double *) _imopVarPre181;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            double *_imopVarPre189;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            unsigned int _imopVarPre190;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            unsigned long int _imopVarPre191;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [nullCell];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            double *_imopVarPre192;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [nullCell];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(_imopVarPre193) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            double *_imopVarPre193;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [heapCell#1];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(_imopVarPre193) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            _imopVarPre189 = B[i];
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [heapCell#1];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(_imopVarPre193) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            _imopVarPre190 = __builtin_object_size(_imopVarPre189, 0);
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [heapCell#1];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(_imopVarPre193) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [heapCell#1];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(_imopVarPre193) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            _imopVarPre191 = dim * sizeof(double);
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [heapCell#1];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(_imopVarPre193) := [nullCell];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            _imopVarPre192 = A[i];
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [heapCell#1];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(_imopVarPre193) := [heapCell#1];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            _imopVarPre193 = B[i];
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [heapCell#1];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(_imopVarPre193) := [heapCell#1];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            __builtin___memcpy_chk(_imopVarPre193, _imopVarPre192, _imopVarPre191, _imopVarPre190);
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [heapCell#2];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(_imopVarPre181) := [heapCell#1];
            ptsTo(_imopVarPre189) := [heapCell#1];
            ptsTo(_imopVarPre192) := [nullCell];
            ptsTo(_imopVarPre193) := [heapCell#1];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
        }
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [heapCell#2];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int chunk = 1 + (dim - 3) / procs;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [heapCell#2];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
#pragma omp parallel num_threads(procs) firstprivate(done)
    {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre194;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre194 = omp_get_thread_num();
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int tid = _imopVarPre194;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre198;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre199;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre200;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre198 = tid * chunk;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre199 = dim - 2;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre200 = min(_imopVarPre199, _imopVarPre198);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int start = 1 + _imopVarPre200;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre204;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre205;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int _imopVarPre206;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre204 = (tid + 1) * chunk;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre205 = dim - 2;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre206 = min(_imopVarPre205, _imopVarPre204);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int end = 1 + _imopVarPre206;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        double old;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        double mydiff;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int i;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [heapCell#2];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        int j;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [nullCell, heapCell#2];
        ptsTo(C) := [nullCell, heapCell#2];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(A) := [nullCell, heapCell#2];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        while (!done) {
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
            {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(B) := [nullCell, heapCell#2];
                ptsTo(C) := [nullCell, heapCell#2];
                ptsTo(_imopVarPre170) := [heapCell#2];
                ptsTo(A) := [nullCell, heapCell#2];
                ptsTo(heapCell#2) := [heapCell#1];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                iter++;
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            diff = 0;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            mydiff = 0;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            for (i = start; i < end; ++i) {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(B) := [nullCell, heapCell#2];
                ptsTo(C) := [nullCell, heapCell#2];
                ptsTo(_imopVarPre170) := [heapCell#2];
                ptsTo(A) := [nullCell, heapCell#2];
                ptsTo(heapCell#2) := [heapCell#1];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(B) := [nullCell, heapCell#2];
                ptsTo(C) := [nullCell, heapCell#2];
                ptsTo(_imopVarPre170) := [heapCell#2];
                ptsTo(A) := [nullCell, heapCell#2];
                ptsTo(heapCell#2) := [heapCell#1];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(B) := [nullCell, heapCell#2];
                ptsTo(C) := [nullCell, heapCell#2];
                ptsTo(_imopVarPre170) := [heapCell#2];
                ptsTo(A) := [nullCell, heapCell#2];
                ptsTo(heapCell#2) := [heapCell#1];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                for (j = 1; j < dim - 1; ++j) {
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(B) := [nullCell, heapCell#2];
                    ptsTo(C) := [nullCell, heapCell#2];
                    ptsTo(_imopVarPre170) := [heapCell#2];
                    ptsTo(A) := [nullCell, heapCell#2];
                    ptsTo(heapCell#2) := [heapCell#1];
                    ptsTo(heapCell#4) := [heapCell#0];
                    ]*/
                    old = A[i][j];
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(B) := [nullCell, heapCell#2];
                    ptsTo(C) := [nullCell, heapCell#2];
                    ptsTo(_imopVarPre170) := [heapCell#2];
                    ptsTo(A) := [nullCell, heapCell#2];
                    ptsTo(heapCell#2) := [heapCell#1];
                    ptsTo(heapCell#4) := [heapCell#0];
                    ]*/
                    B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(B) := [nullCell, heapCell#2];
                    ptsTo(C) := [nullCell, heapCell#2];
                    ptsTo(_imopVarPre170) := [heapCell#2];
                    ptsTo(A) := [nullCell, heapCell#2];
                    ptsTo(heapCell#2) := [heapCell#1];
                    ptsTo(heapCell#4) := [heapCell#0];
                    ]*/
                    double _imopVarPre208;
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(B) := [nullCell, heapCell#2];
                    ptsTo(C) := [nullCell, heapCell#2];
                    ptsTo(_imopVarPre170) := [heapCell#2];
                    ptsTo(A) := [nullCell, heapCell#2];
                    ptsTo(heapCell#2) := [heapCell#1];
                    ptsTo(heapCell#4) := [heapCell#0];
                    ]*/
                    double _imopVarPre209;
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(B) := [nullCell, heapCell#2];
                    ptsTo(C) := [nullCell, heapCell#2];
                    ptsTo(_imopVarPre170) := [heapCell#2];
                    ptsTo(A) := [nullCell, heapCell#2];
                    ptsTo(heapCell#2) := [heapCell#1];
                    ptsTo(heapCell#4) := [heapCell#0];
                    ]*/
                    _imopVarPre208 = B[i][j] - old;
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(B) := [nullCell, heapCell#2];
                    ptsTo(C) := [nullCell, heapCell#2];
                    ptsTo(_imopVarPre170) := [heapCell#2];
                    ptsTo(A) := [nullCell, heapCell#2];
                    ptsTo(heapCell#2) := [heapCell#1];
                    ptsTo(heapCell#4) := [heapCell#0];
                    ]*/
                    _imopVarPre209 = fabs(_imopVarPre208);
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(B) := [nullCell, heapCell#2];
                    ptsTo(C) := [nullCell, heapCell#2];
                    ptsTo(_imopVarPre170) := [heapCell#2];
                    ptsTo(A) := [nullCell, heapCell#2];
                    ptsTo(heapCell#2) := [heapCell#1];
                    ptsTo(heapCell#4) := [heapCell#0];
                    ]*/
                    /*OUT: [ptsTo(__stderrp) := [nullCell];
                    ptsTo(B) := [nullCell, heapCell#2];
                    ptsTo(C) := [nullCell, heapCell#2];
                    ptsTo(_imopVarPre170) := [heapCell#2];
                    ptsTo(A) := [nullCell, heapCell#2];
                    ptsTo(heapCell#2) := [heapCell#1];
                    ptsTo(heapCell#4) := [heapCell#0];
                    ]*/
                    mydiff += _imopVarPre209;
                }
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            diff += mydiff;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            // #pragma omp dummyFlush ATOMIC_END
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            done = diff / (dim * dim) < tol;
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp single nowait
            {
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(B) := [nullCell, heapCell#2];
                ptsTo(C) := [nullCell, heapCell#2];
                ptsTo(_imopVarPre170) := [heapCell#2];
                ptsTo(A) := [nullCell, heapCell#2];
                ptsTo(heapCell#2) := [heapCell#1];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                C = A;
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(B) := [nullCell, heapCell#2];
                ptsTo(C) := [nullCell, heapCell#2];
                ptsTo(_imopVarPre170) := [heapCell#2];
                ptsTo(A) := [nullCell, heapCell#2];
                ptsTo(heapCell#2) := [heapCell#1];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                A = B;
                /*OUT: [ptsTo(__stderrp) := [nullCell];
                ptsTo(B) := [nullCell, heapCell#2];
                ptsTo(C) := [nullCell, heapCell#2];
                ptsTo(_imopVarPre170) := [heapCell#2];
                ptsTo(A) := [nullCell, heapCell#2];
                ptsTo(heapCell#2) := [heapCell#1];
                ptsTo(heapCell#4) := [heapCell#0];
                ]*/
                B = C;
            }
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(B) := [nullCell, heapCell#2];
            ptsTo(C) := [nullCell, heapCell#2];
            ptsTo(_imopVarPre170) := [heapCell#2];
            ptsTo(A) := [nullCell, heapCell#2];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell, heapCell#2];
    ptsTo(C) := [nullCell, heapCell#2];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(A) := [nullCell, heapCell#2];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    return iter;
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
]*/
double **read_input(int n) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    double **X;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    unsigned long int _imopVarPre212;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre213) := [nullCell];
    ]*/
    void *_imopVarPre213;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre213) := [nullCell];
    ]*/
    _imopVarPre212 = n * sizeof(double *);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre213) := [nullCell];
    ]*/
    _imopVarPre213 = malloc(_imopVarPre212);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ]*/
    X = (double **) _imopVarPre213;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ]*/
    int i;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ]*/
    int j;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    for (i = 0; i < n; ++i) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        unsigned long int _imopVarPre216;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(_imopVarPre217) := [nullCell];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        void *_imopVarPre217;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(_imopVarPre217) := [nullCell];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre216 = n * sizeof(double);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(_imopVarPre217) := [nullCell];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        _imopVarPre217 = malloc(_imopVarPre216);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(_imopVarPre217) := [heapCell#0];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(_imopVarPre217) := [heapCell#0];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        X[i] = (double *) _imopVarPre217;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(_imopVarPre217) := [heapCell#0];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(_imopVarPre217) := [heapCell#0];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(_imopVarPre217) := [heapCell#0];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        for (j = 0; j < n; ++j) {
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(_imopVarPre217) := [heapCell#0];
            ptsTo(X) := [heapCell#4];
            ptsTo(_imopVarPre213) := [heapCell#4];
            ptsTo(_imopVarPre219) := [nullCell];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            double *_imopVarPre219;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(_imopVarPre217) := [heapCell#0];
            ptsTo(X) := [heapCell#4];
            ptsTo(_imopVarPre213) := [heapCell#4];
            ptsTo(_imopVarPre219) := [heapCell#0];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            _imopVarPre219 = &X[i][j];
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(_imopVarPre217) := [heapCell#0];
            ptsTo(X) := [heapCell#4];
            ptsTo(_imopVarPre213) := [heapCell#4];
            ptsTo(_imopVarPre219) := [heapCell#0];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            scanf("%lf", _imopVarPre219);
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(_imopVarPre217) := [heapCell#0];
            ptsTo(X) := [heapCell#4];
            ptsTo(_imopVarPre213) := [heapCell#4];
            ptsTo(_imopVarPre219) := [heapCell#0];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
        }
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    return X;
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(A) := [heapCell#4];
ptsTo(heapCell#2) := [heapCell#1];
ptsTo(heapCell#3) := [heapCell#5];
ptsTo(heapCell#4) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(A) := [heapCell#4];
ptsTo(heapCell#2) := [heapCell#1];
ptsTo(heapCell#3) := [heapCell#5];
ptsTo(heapCell#4) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(A) := [heapCell#4];
ptsTo(heapCell#2) := [heapCell#1];
ptsTo(heapCell#3) := [heapCell#5];
ptsTo(heapCell#4) := [heapCell#0];
]*/
void print_output(double **A, int n , int niter) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    printf("Number of iterations = %d\n", niter);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int i;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int j;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    for (i = 0; i < n; ++i) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        for (j = 0; j < n; ++j) {
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(A) := [heapCell#4];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#3) := [heapCell#5];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            double _imopVarPre221;
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(A) := [heapCell#4];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#3) := [heapCell#5];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            _imopVarPre221 = A[i][j];
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(A) := [heapCell#4];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#3) := [heapCell#5];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
            printf("%lf ", _imopVarPre221);
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(A) := [heapCell#4];
            ptsTo(heapCell#2) := [heapCell#1];
            ptsTo(heapCell#3) := [heapCell#5];
            ptsTo(heapCell#4) := [heapCell#0];
            ]*/
        }
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        printf("\n");
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(A) := [heapCell#4];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(A) := [heapCell#4];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(heapCell#2) := [heapCell#1];
ptsTo(heapCell#3) := [heapCell#5];
ptsTo(heapCell#4) := [heapCell#0];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(heapCell#2) := [heapCell#1];
ptsTo(heapCell#3) := [heapCell#5];
ptsTo(heapCell#4) := [heapCell#0];
]*/
void print_statistics(struct timeval start_time, struct timeval end_time) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double _imopVarPre223;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre223 = start_time.tv_sec + (start_time.tv_usec / 1000000.0);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    printf("Start time:\t%lf \n", _imopVarPre223);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double _imopVarPre225;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre225 = end_time.tv_sec + (end_time.tv_usec / 1000000.0);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    printf("End time:\t%lf\n", _imopVarPre225);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    double _imopVarPre227;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre227 = end_time.tv_sec - start_time.tv_sec + ((end_time.tv_usec - start_time.tv_usec) / 1000000.0);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    printf("Total time: \t%lf (s)\n", _imopVarPre227);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(prog) := [nullCell];
]*/
void print_usage_and_exit(char *prog) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(prog) := [nullCell];
    ]*/
    fprintf(__stderrp, "Usage: %s <nprocs> <tol> <-serial|-parallel>\n", prog);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(prog) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(prog) := [nullCell];
    ]*/
    exit(1);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(prog) := [nullCell];
    ]*/
}
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(argv) := [heapCell#6];
]*/
/*OUT: [ptsTo(__stderrp) := [nullCell];
ptsTo(argv) := [heapCell#6];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ]*/
    struct timeval start_time;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ]*/
    struct timeval end_time;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ]*/
    int num_iter = 0;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ]*/
    double tol;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ]*/
    double **A;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ]*/
    int procs;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ]*/
    int dim;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ]*/
    if (argc != 4) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre229) := [nullCell];
        ]*/
        char *_imopVarPre229;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre229) := [nullCell];
        ]*/
        _imopVarPre229 = argv[0];
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre229) := [nullCell];
        ]*/
        print_usage_and_exit(_imopVarPre229);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre229) := [nullCell];
        ]*/
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [nullCell];
    ]*/
    int *_imopVarPre232;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [nullCell];
    ptsTo(_imopVarPre233) := [nullCell];
    ]*/
    char *_imopVarPre233;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ]*/
    _imopVarPre232 = &procs;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ]*/
    _imopVarPre233 = argv[1];
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ]*/
    sscanf(_imopVarPre233, "%d", _imopVarPre232);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [nullCell];
    ]*/
    double *_imopVarPre236;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [nullCell];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    char *_imopVarPre237;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    _imopVarPre236 = &tol;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    _imopVarPre237 = argv[2];
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    sscanf(_imopVarPre237, "%lf", _imopVarPre236);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    char *option = argv[3];
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    int _imopVarPre238;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    int _imopVarPre248;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    int _imopVarPre249;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    int _imopVarPre250;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    _imopVarPre238 = option == ((void *) 0);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    if (!_imopVarPre238) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ]*/
        _imopVarPre248 = strcmp(option, "-serial");
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ]*/
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ]*/
        _imopVarPre249 = _imopVarPre248 != 0;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ]*/
        if (_imopVarPre249) {
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(argv) := [heapCell#6];
            ptsTo(A) := [nullCell];
            ptsTo(_imopVarPre232) := [procs];
            ptsTo(_imopVarPre233) := [nullCell];
            ptsTo(_imopVarPre236) := [tol];
            ptsTo(_imopVarPre237) := [nullCell];
            ]*/
            _imopVarPre250 = strcmp(option, "-parallel");
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(argv) := [heapCell#6];
            ptsTo(A) := [nullCell];
            ptsTo(_imopVarPre232) := [procs];
            ptsTo(_imopVarPre233) := [nullCell];
            ptsTo(_imopVarPre236) := [tol];
            ptsTo(_imopVarPre237) := [nullCell];
            ]*/
            /*OUT: [ptsTo(__stderrp) := [nullCell];
            ptsTo(argv) := [heapCell#6];
            ptsTo(A) := [nullCell];
            ptsTo(_imopVarPre232) := [procs];
            ptsTo(_imopVarPre233) := [nullCell];
            ptsTo(_imopVarPre236) := [tol];
            ptsTo(_imopVarPre237) := [nullCell];
            ]*/
            _imopVarPre249 = _imopVarPre250 != 0;
        }
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ]*/
        _imopVarPre238 = _imopVarPre249;
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    if (_imopVarPre238) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ptsTo(_imopVarPre252) := [nullCell];
        ]*/
        char *_imopVarPre252;
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ptsTo(_imopVarPre252) := [nullCell];
        ]*/
        _imopVarPre252 = argv[0];
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ptsTo(_imopVarPre252) := [nullCell];
        ]*/
        print_usage_and_exit(_imopVarPre252);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ptsTo(_imopVarPre252) := [nullCell];
        ]*/
    }
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    printf("Options: Procs = %d, Tol = %lf, Execution%s\n\n", procs, tol, option);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [nullCell];
    ]*/
    int *_imopVarPre254;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ]*/
    _imopVarPre254 = &dim;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ]*/
    scanf("%d", _imopVarPre254);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ]*/
    A = read_input(dim);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    void *_imopVarPre257;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    struct timeval *_imopVarPre258;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [nullCell];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre257 = ((void *) 0);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre258 = &start_time;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    gettimeofday(_imopVarPre258, _imopVarPre257);
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    int _imopVarPre260;
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre260 = strcmp(option, "-serial");
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(__stderrp) := [nullCell];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    if (_imopVarPre260 == 0) {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ptsTo(_imopVarPre254) := [dim];
        ptsTo(_imopVarPre257) := [nullCell];
        ptsTo(_imopVarPre258) := [start_time];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        num_iter = simulate_ocean_currents(A, dim, tol);
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
        ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
        ptsTo(_imopVarPre147) := [heapCell#3];
        ptsTo(__stderrp) := [nullCell];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ptsTo(_imopVarPre254) := [dim];
        ptsTo(_imopVarPre257) := [nullCell];
        ptsTo(_imopVarPre258) := [start_time];
        ptsTo(heapCell#3) := [heapCell#5];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
    } else {
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ptsTo(_imopVarPre254) := [dim];
        ptsTo(_imopVarPre257) := [nullCell];
        ptsTo(_imopVarPre258) := [start_time];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
        num_iter = simulate_ocean_currents_parallel(A, dim, tol, procs);
        /*OUT: [ptsTo(__stderrp) := [nullCell];
        ptsTo(B) := [nullCell, heapCell#2];
        ptsTo(C) := [nullCell, heapCell#2];
        ptsTo(_imopVarPre170) := [heapCell#2];
        ptsTo(X) := [heapCell#4];
        ptsTo(_imopVarPre213) := [heapCell#4];
        ptsTo(argv) := [heapCell#6];
        ptsTo(A) := [heapCell#4];
        ptsTo(_imopVarPre232) := [procs];
        ptsTo(_imopVarPre233) := [nullCell];
        ptsTo(_imopVarPre236) := [tol];
        ptsTo(_imopVarPre237) := [nullCell];
        ptsTo(_imopVarPre254) := [dim];
        ptsTo(_imopVarPre257) := [nullCell];
        ptsTo(_imopVarPre258) := [start_time];
        ptsTo(heapCell#2) := [heapCell#1];
        ptsTo(heapCell#4) := [heapCell#0];
        ]*/
    }
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell, heapCell#2];
    ptsTo(C) := [nullCell, heapCell#2];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    void *_imopVarPre263;
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell, heapCell#2];
    ptsTo(C) := [nullCell, heapCell#2];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(_imopVarPre264) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    struct timeval *_imopVarPre264;
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell, heapCell#2];
    ptsTo(C) := [nullCell, heapCell#2];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(_imopVarPre264) := [nullCell];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre263 = ((void *) 0);
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell, heapCell#2];
    ptsTo(C) := [nullCell, heapCell#2];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(_imopVarPre264) := [end_time];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    _imopVarPre264 = &end_time;
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell, heapCell#2];
    ptsTo(C) := [nullCell, heapCell#2];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(_imopVarPre264) := [end_time];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    gettimeofday(_imopVarPre264, _imopVarPre263);
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell, heapCell#2];
    ptsTo(C) := [nullCell, heapCell#2];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(_imopVarPre264) := [end_time];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [nullCell, heapCell#2];
    ptsTo(C) := [nullCell, heapCell#2];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(_imopVarPre264) := [end_time];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    print_output(A, dim, num_iter);
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [heapCell#2];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(_imopVarPre264) := [end_time];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [heapCell#2];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(_imopVarPre264) := [end_time];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
    print_statistics(start_time, end_time);
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#4];
    ptsTo(C) := [nullCell, heapCell#3, heapCell#4];
    ptsTo(_imopVarPre147) := [heapCell#3];
    ptsTo(__stderrp) := [nullCell];
    ptsTo(B) := [heapCell#2];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre170) := [heapCell#2];
    ptsTo(X) := [heapCell#4];
    ptsTo(_imopVarPre213) := [heapCell#4];
    ptsTo(argv) := [heapCell#6];
    ptsTo(A) := [heapCell#4];
    ptsTo(_imopVarPre232) := [procs];
    ptsTo(_imopVarPre233) := [nullCell];
    ptsTo(_imopVarPre236) := [tol];
    ptsTo(_imopVarPre237) := [nullCell];
    ptsTo(_imopVarPre254) := [dim];
    ptsTo(_imopVarPre257) := [nullCell];
    ptsTo(_imopVarPre258) := [start_time];
    ptsTo(_imopVarPre263) := [nullCell];
    ptsTo(_imopVarPre264) := [end_time];
    ptsTo(heapCell#2) := [heapCell#1];
    ptsTo(heapCell#3) := [heapCell#5];
    ptsTo(heapCell#4) := [heapCell#0];
    ]*/
}
