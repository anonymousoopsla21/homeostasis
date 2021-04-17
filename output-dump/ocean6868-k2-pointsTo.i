extern double fabs(double __x);
typedef long unsigned int size_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef long int __time_t;
typedef long int __suseconds_t;
struct timeval {
    __time_t tv_sec;
    __suseconds_t tv_usec;
} ;
extern void *malloc(size_t __size);
extern void exit(int __status);
extern void *memcpy(void *__restrict __dest, __const void *__restrict __src , size_t __n);
extern int strcmp(__const char *__s1, __const char *__s2);
extern int omp_get_thread_num(void );
struct _IO_FILE ;
typedef struct _IO_FILE FILE;
struct _IO_jump_t ;
struct _IO_FILE ;
typedef void _IO_lock_t;
struct _IO_FILE {
    int _flags;
    char *_IO_read_ptr;
    char *_IO_read_end;
    char *_IO_read_base;
    char *_IO_write_base;
    char *_IO_write_ptr;
    char *_IO_write_end;
    char *_IO_buf_base;
    char *_IO_buf_end;
    char *_IO_save_base;
    char *_IO_backup_base;
    char *_IO_save_end;
    struct _IO_marker *_markers;
    struct _IO_FILE *_chain;
    int _fileno;
    int _flags2;
    __off_t _old_offset;
    unsigned short _cur_column;
    signed char _vtable_offset;
    char _shortbuf[1];
    _IO_lock_t *_lock;
    __off64_t _offset;
    void *__pad1;
    void *__pad2;
    void *__pad3;
    void *__pad4;
    size_t __pad5;
    int _mode;
    char _unused2[15 * sizeof(int) - 4 * sizeof(void *) - sizeof(size_t)];
} ;
struct _IO_FILE_plus ;
extern struct _IO_FILE *stderr;
extern int fprintf(FILE *__restrict __stream, __const char *__restrict __format, ...);
extern int printf(__const char *__restrict __format, ...);
extern int scanf(__const char *__restrict __format, ...);
extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...);
extern int scanf(__const char *__restrict __format, ...);
extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...);
typedef struct timezone *__restrict __timezone_ptr_t;
extern int gettimeofday(struct timeval *__restrict __tv, __timezone_ptr_t __tz);
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(heapCell#1) := [heapCell#2];
ptsTo(heapCell#5) := [heapCell#6];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(heapCell#1) := [heapCell#2];
ptsTo(heapCell#5) := [heapCell#6];
]*/
int min(int a, int b) {
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    int _imopVarPre28;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    int _imopVarPre29;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    _imopVarPre28 = a <= b;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    if (_imopVarPre28) {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre29 = a;
    } else {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre29 = b;
    }
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    return _imopVarPre29;
}
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
]*/
int simulate_ocean_currents(double **A, int n , double tol) {
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    int done = 0;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    double diff;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    double old;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    int iter = 0;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    double **B;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    double **C;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    unsigned long int _imopVarPre32;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre33) := [nullCell];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    void *_imopVarPre33;
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre33) := [nullCell];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    _imopVarPre32 = n * sizeof(double *);
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre33) := [nullCell];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    _imopVarPre33 = malloc(_imopVarPre32);
    /*OUT: [ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    B = (double **) _imopVarPre33;
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    int k;
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ]*/
    for (k = 0; k < n; k++) {
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        unsigned long int _imopVarPre36;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [nullCell];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        void *_imopVarPre37;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [nullCell];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        _imopVarPre36 = n * sizeof(double);
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [nullCell];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        _imopVarPre37 = malloc(_imopVarPre36);
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        B[k] = (double *) _imopVarPre37;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        unsigned long int _imopVarPre41;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(_imopVarPre42) := [nullCell];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        double *_imopVarPre42;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(_imopVarPre42) := [nullCell];
        ptsTo(_imopVarPre43) := [nullCell];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        double *_imopVarPre43;
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(_imopVarPre42) := [nullCell];
        ptsTo(_imopVarPre43) := [nullCell];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        _imopVarPre41 = n * sizeof(double);
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(_imopVarPre42) := [heapCell#2];
        ptsTo(_imopVarPre43) := [nullCell];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        _imopVarPre42 = A[k];
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(_imopVarPre42) := [heapCell#2];
        ptsTo(_imopVarPre43) := [heapCell#4];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        _imopVarPre43 = B[k];
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(_imopVarPre42) := [heapCell#2];
        ptsTo(_imopVarPre43) := [heapCell#4];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        memcpy(_imopVarPre43, _imopVarPre42, _imopVarPre41);
        /*OUT: [ptsTo(B) := [heapCell#3];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre37) := [heapCell#4];
        ptsTo(_imopVarPre42) := [heapCell#2];
        ptsTo(_imopVarPre43) := [heapCell#4];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
    }
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#3, heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ]*/
    while (!done) {
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        iter++;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        diff = 0;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        int i;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        int j;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        for (i = 1; i < n - 1; ++i) {
            /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
            ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
            ptsTo(_imopVarPre33) := [heapCell#3];
            ptsTo(stderr) := [nullCell];
            ptsTo(A) := [heapCell#3, heapCell#1];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#3) := [heapCell#4];
            ]*/
            /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
            ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
            ptsTo(_imopVarPre33) := [heapCell#3];
            ptsTo(stderr) := [nullCell];
            ptsTo(A) := [heapCell#3, heapCell#1];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#3) := [heapCell#4];
            ]*/
            /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
            ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
            ptsTo(_imopVarPre33) := [heapCell#3];
            ptsTo(stderr) := [nullCell];
            ptsTo(A) := [heapCell#3, heapCell#1];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#3) := [heapCell#4];
            ]*/
            for (j = 1; j < n - 1; ++j) {
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
                ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
                ptsTo(_imopVarPre33) := [heapCell#3];
                ptsTo(stderr) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#1];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#3) := [heapCell#4];
                ]*/
                old = A[i][j];
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
                ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
                ptsTo(_imopVarPre33) := [heapCell#3];
                ptsTo(stderr) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#1];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#3) := [heapCell#4];
                ]*/
                B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
                ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
                ptsTo(_imopVarPre33) := [heapCell#3];
                ptsTo(stderr) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#1];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#3) := [heapCell#4];
                ]*/
                double _imopVarPre45;
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
                ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
                ptsTo(_imopVarPre33) := [heapCell#3];
                ptsTo(stderr) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#1];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#3) := [heapCell#4];
                ]*/
                double _imopVarPre46;
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
                ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
                ptsTo(_imopVarPre33) := [heapCell#3];
                ptsTo(stderr) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#1];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#3) := [heapCell#4];
                ]*/
                _imopVarPre45 = B[i][j] - old;
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
                ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
                ptsTo(_imopVarPre33) := [heapCell#3];
                ptsTo(stderr) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#1];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#3) := [heapCell#4];
                ]*/
                _imopVarPre46 = fabs(_imopVarPre45);
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
                ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
                ptsTo(_imopVarPre33) := [heapCell#3];
                ptsTo(stderr) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#1];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#3) := [heapCell#4];
                ]*/
                /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
                ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
                ptsTo(_imopVarPre33) := [heapCell#3];
                ptsTo(stderr) := [nullCell];
                ptsTo(A) := [heapCell#3, heapCell#1];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#3) := [heapCell#4];
                ]*/
                diff += _imopVarPre46;
            }
        }
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        C = A;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        A = B;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        B = C;
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#3, heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
        if (diff / (n * n) < tol) {
            /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
            ptsTo(C) := [heapCell#3, heapCell#1];
            ptsTo(_imopVarPre33) := [heapCell#3];
            ptsTo(stderr) := [nullCell];
            ptsTo(A) := [heapCell#3, heapCell#1];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#3) := [heapCell#4];
            ]*/
            done = 1;
        }
    }
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#3, heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ]*/
    return iter;
}
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
]*/
int simulate_ocean_currents_parallel(double **A, int dim , double tol , int procs) {
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    int done = 0;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    int iter = 0;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    double diff = 0;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    double **B;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    double **C;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    unsigned long int _imopVarPre49;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    void *_imopVarPre50;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    _imopVarPre49 = dim * sizeof(double *);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    _imopVarPre50 = malloc(_imopVarPre49);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [nullCell];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#5];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    B = (double **) _imopVarPre50;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#5];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
#pragma omp parallel num_threads(procs) shared(A, B, dim)
    {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        int _imopVarPre51;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        _imopVarPre51 = omp_get_thread_num();
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        int tid = _imopVarPre51;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        int _imopVarPre53;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        int _imopVarPre54;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        _imopVarPre53 = tid * dim / procs;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        _imopVarPre54 = min(dim, _imopVarPre53);
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int start = _imopVarPre54;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int _imopVarPre56;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int _imopVarPre57;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre56 = (tid + 1) * dim / procs;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre57 = min(dim, _imopVarPre56);
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int end = _imopVarPre57;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int i;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        for (i = start; i < end; ++i) {
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            unsigned long int _imopVarPre60;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [nullCell];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            void *_imopVarPre61;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [nullCell];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            _imopVarPre60 = dim * sizeof(double);
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [nullCell];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            _imopVarPre61 = malloc(_imopVarPre60);
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            B[i] = (double *) _imopVarPre61;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            unsigned long int _imopVarPre65;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(_imopVarPre66) := [nullCell];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            double *_imopVarPre66;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(_imopVarPre66) := [nullCell];
            ptsTo(_imopVarPre67) := [nullCell];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            double *_imopVarPre67;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(_imopVarPre66) := [nullCell];
            ptsTo(_imopVarPre67) := [nullCell];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            _imopVarPre65 = dim * sizeof(double);
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(_imopVarPre66) := [heapCell#2];
            ptsTo(_imopVarPre67) := [nullCell];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            _imopVarPre66 = A[i];
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(_imopVarPre66) := [heapCell#2];
            ptsTo(_imopVarPre67) := [heapCell#6];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            _imopVarPre67 = B[i];
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(_imopVarPre66) := [heapCell#2];
            ptsTo(_imopVarPre67) := [heapCell#6];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            memcpy(_imopVarPre67, _imopVarPre66, _imopVarPre65);
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#5];
            ptsTo(C) := [nullCell];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1];
            ptsTo(_imopVarPre61) := [heapCell#6];
            ptsTo(_imopVarPre66) := [heapCell#2];
            ptsTo(_imopVarPre67) := [heapCell#6];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
        }
    }
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#5];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    int chunk = 1 + (dim - 3) / procs;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#5];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
#pragma omp parallel num_threads(procs) firstprivate(done)
    {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int _imopVarPre68;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre68 = omp_get_thread_num();
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int tid = _imopVarPre68;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int _imopVarPre72;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int _imopVarPre73;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int _imopVarPre74;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre72 = tid * chunk;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre73 = dim - 2;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre74 = min(_imopVarPre73, _imopVarPre72);
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int start = 1 + _imopVarPre74;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int _imopVarPre78;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int _imopVarPre79;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int _imopVarPre80;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre78 = (tid + 1) * chunk;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre79 = dim - 2;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        _imopVarPre80 = min(_imopVarPre79, _imopVarPre78);
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        int end = 1 + _imopVarPre80;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        double old;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#5];
        ptsTo(C) := [nullCell];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        double mydiff;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#1, heapCell#5];
        ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(A) := [heapCell#1, heapCell#5];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        while (!done) {
#pragma omp single nowait
            {
                /*OUT: [ptsTo(stderr) := [nullCell];
                ptsTo(B) := [heapCell#1, heapCell#5];
                ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                ptsTo(_imopVarPre50) := [heapCell#5];
                ptsTo(A) := [heapCell#1, heapCell#5];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#5) := [heapCell#6];
                ]*/
                iter++;
            }
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            diff = 0;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            mydiff = 0;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            int i;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            int j;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            for (i = start; i < end; ++i) {
                /*OUT: [ptsTo(stderr) := [nullCell];
                ptsTo(B) := [heapCell#1, heapCell#5];
                ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                ptsTo(_imopVarPre50) := [heapCell#5];
                ptsTo(A) := [heapCell#1, heapCell#5];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#5) := [heapCell#6];
                ]*/
                /*OUT: [ptsTo(stderr) := [nullCell];
                ptsTo(B) := [heapCell#1, heapCell#5];
                ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                ptsTo(_imopVarPre50) := [heapCell#5];
                ptsTo(A) := [heapCell#1, heapCell#5];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#5) := [heapCell#6];
                ]*/
                /*OUT: [ptsTo(stderr) := [nullCell];
                ptsTo(B) := [heapCell#1, heapCell#5];
                ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                ptsTo(_imopVarPre50) := [heapCell#5];
                ptsTo(A) := [heapCell#1, heapCell#5];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#5) := [heapCell#6];
                ]*/
                for (j = 1; j < dim - 1; ++j) {
                    /*OUT: [ptsTo(stderr) := [nullCell];
                    ptsTo(B) := [heapCell#1, heapCell#5];
                    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                    ptsTo(_imopVarPre50) := [heapCell#5];
                    ptsTo(A) := [heapCell#1, heapCell#5];
                    ptsTo(heapCell#1) := [heapCell#2];
                    ptsTo(heapCell#5) := [heapCell#6];
                    ]*/
                    old = A[i][j];
                    /*OUT: [ptsTo(stderr) := [nullCell];
                    ptsTo(B) := [heapCell#1, heapCell#5];
                    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                    ptsTo(_imopVarPre50) := [heapCell#5];
                    ptsTo(A) := [heapCell#1, heapCell#5];
                    ptsTo(heapCell#1) := [heapCell#2];
                    ptsTo(heapCell#5) := [heapCell#6];
                    ]*/
                    B[i][j] = (A[i][j] + A[i][j - 1] + A[i - 1][j] + A[i][j + 1] + A[i + 1][j]) / 5.0;
                    /*OUT: [ptsTo(stderr) := [nullCell];
                    ptsTo(B) := [heapCell#1, heapCell#5];
                    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                    ptsTo(_imopVarPre50) := [heapCell#5];
                    ptsTo(A) := [heapCell#1, heapCell#5];
                    ptsTo(heapCell#1) := [heapCell#2];
                    ptsTo(heapCell#5) := [heapCell#6];
                    ]*/
                    double _imopVarPre82;
                    /*OUT: [ptsTo(stderr) := [nullCell];
                    ptsTo(B) := [heapCell#1, heapCell#5];
                    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                    ptsTo(_imopVarPre50) := [heapCell#5];
                    ptsTo(A) := [heapCell#1, heapCell#5];
                    ptsTo(heapCell#1) := [heapCell#2];
                    ptsTo(heapCell#5) := [heapCell#6];
                    ]*/
                    double _imopVarPre83;
                    /*OUT: [ptsTo(stderr) := [nullCell];
                    ptsTo(B) := [heapCell#1, heapCell#5];
                    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                    ptsTo(_imopVarPre50) := [heapCell#5];
                    ptsTo(A) := [heapCell#1, heapCell#5];
                    ptsTo(heapCell#1) := [heapCell#2];
                    ptsTo(heapCell#5) := [heapCell#6];
                    ]*/
                    _imopVarPre82 = B[i][j] - old;
                    /*OUT: [ptsTo(stderr) := [nullCell];
                    ptsTo(B) := [heapCell#1, heapCell#5];
                    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                    ptsTo(_imopVarPre50) := [heapCell#5];
                    ptsTo(A) := [heapCell#1, heapCell#5];
                    ptsTo(heapCell#1) := [heapCell#2];
                    ptsTo(heapCell#5) := [heapCell#6];
                    ]*/
                    _imopVarPre83 = fabs(_imopVarPre82);
                    /*OUT: [ptsTo(stderr) := [nullCell];
                    ptsTo(B) := [heapCell#1, heapCell#5];
                    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                    ptsTo(_imopVarPre50) := [heapCell#5];
                    ptsTo(A) := [heapCell#1, heapCell#5];
                    ptsTo(heapCell#1) := [heapCell#2];
                    ptsTo(heapCell#5) := [heapCell#6];
                    ]*/
                    /*OUT: [ptsTo(stderr) := [nullCell];
                    ptsTo(B) := [heapCell#1, heapCell#5];
                    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
                    ptsTo(_imopVarPre50) := [heapCell#5];
                    ptsTo(A) := [heapCell#1, heapCell#5];
                    ptsTo(heapCell#1) := [heapCell#2];
                    ptsTo(heapCell#5) := [heapCell#6];
                    ]*/
                    mydiff += _imopVarPre83;
                }
            }
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            // #pragma omp dummyFlush ATOMIC_START
#pragma omp atomic
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            diff += mydiff;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            // #pragma omp dummyFlush ATOMIC_END
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
#pragma omp barrier
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            done = diff / (dim * dim) < tol;
#pragma omp single nowait
            {
                /*OUT: [ptsTo(stderr) := [nullCell];
                ptsTo(B) := [heapCell#1, heapCell#5];
                ptsTo(C) := [heapCell#1, heapCell#5];
                ptsTo(_imopVarPre50) := [heapCell#5];
                ptsTo(A) := [heapCell#1, heapCell#5];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#5) := [heapCell#6];
                ]*/
                C = A;
                /*OUT: [ptsTo(stderr) := [nullCell];
                ptsTo(B) := [heapCell#1, heapCell#5];
                ptsTo(C) := [heapCell#1, heapCell#5];
                ptsTo(_imopVarPre50) := [heapCell#5];
                ptsTo(A) := [heapCell#1, heapCell#5];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#5) := [heapCell#6];
                ]*/
                A = B;
                /*OUT: [ptsTo(stderr) := [nullCell];
                ptsTo(B) := [heapCell#1, heapCell#5];
                ptsTo(C) := [heapCell#1, heapCell#5];
                ptsTo(_imopVarPre50) := [heapCell#5];
                ptsTo(A) := [heapCell#1, heapCell#5];
                ptsTo(heapCell#1) := [heapCell#2];
                ptsTo(heapCell#5) := [heapCell#6];
                ]*/
                B = C;
            }
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(B) := [heapCell#1, heapCell#5];
            ptsTo(C) := [heapCell#1, heapCell#5];
            ptsTo(_imopVarPre50) := [heapCell#5];
            ptsTo(A) := [heapCell#1, heapCell#5];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
#pragma omp barrier
        }
    }
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#1, heapCell#5];
    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(A) := [heapCell#1, heapCell#5];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    return iter;
}
/*OUT: [ptsTo(stderr) := [nullCell];
]*/
double **read_input(int n) {
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    double **X;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [nullCell];
    ]*/
    unsigned long int _imopVarPre86;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre87) := [nullCell];
    ]*/
    void *_imopVarPre87;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre87) := [nullCell];
    ]*/
    _imopVarPre86 = n * sizeof(double *);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre87) := [nullCell];
    ]*/
    _imopVarPre87 = malloc(_imopVarPre86);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [nullCell];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ]*/
    X = (double **) _imopVarPre87;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ]*/
    int i;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ]*/
    int j;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    for (i = 0; i < n; ++i) {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        unsigned long int _imopVarPre90;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(_imopVarPre91) := [nullCell];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        void *_imopVarPre91;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(_imopVarPre91) := [nullCell];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        _imopVarPre90 = n * sizeof(double);
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(_imopVarPre91) := [nullCell];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        _imopVarPre91 = malloc(_imopVarPre90);
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(_imopVarPre91) := [heapCell#2];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(_imopVarPre91) := [heapCell#2];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        X[i] = (double *) _imopVarPre91;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(_imopVarPre91) := [heapCell#2];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(_imopVarPre91) := [heapCell#2];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(_imopVarPre91) := [heapCell#2];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        for (j = 0; j < n; ++j) {
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(_imopVarPre91) := [heapCell#2];
            ptsTo(X) := [heapCell#1];
            ptsTo(_imopVarPre87) := [heapCell#1];
            ptsTo(_imopVarPre93) := [nullCell];
            ptsTo(heapCell#1) := [heapCell#2];
            ]*/
            double *_imopVarPre93;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(_imopVarPre91) := [heapCell#2];
            ptsTo(X) := [heapCell#1];
            ptsTo(_imopVarPre87) := [heapCell#1];
            ptsTo(_imopVarPre93) := [heapCell#2];
            ptsTo(heapCell#1) := [heapCell#2];
            ]*/
            _imopVarPre93 = &X[i][j];
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(_imopVarPre91) := [heapCell#2];
            ptsTo(X) := [heapCell#1];
            ptsTo(_imopVarPre87) := [heapCell#1];
            ptsTo(_imopVarPre93) := [heapCell#2];
            ptsTo(heapCell#1) := [heapCell#2];
            ]*/
            scanf("%lf", _imopVarPre93);
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(_imopVarPre91) := [heapCell#2];
            ptsTo(X) := [heapCell#1];
            ptsTo(_imopVarPre87) := [heapCell#1];
            ptsTo(_imopVarPre93) := [heapCell#2];
            ptsTo(heapCell#1) := [heapCell#2];
            ]*/
        }
    }
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    return X;
}
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
ptsTo(heapCell#3) := [heapCell#4];
ptsTo(heapCell#5) := [heapCell#6];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
ptsTo(heapCell#3) := [heapCell#4];
ptsTo(heapCell#5) := [heapCell#6];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(A) := [heapCell#1];
ptsTo(heapCell#1) := [heapCell#2];
ptsTo(heapCell#3) := [heapCell#4];
ptsTo(heapCell#5) := [heapCell#6];
]*/
void print_output(double **A, int n , int niter) {
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    printf("Number of iterations = %d\n", niter);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    int i;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    int j;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    for (i = 0; i < n; ++i) {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        for (j = 0; j < n; ++j) {
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(A) := [heapCell#1];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#3) := [heapCell#4];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            double _imopVarPre95;
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(A) := [heapCell#1];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#3) := [heapCell#4];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            _imopVarPre95 = A[i][j];
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(A) := [heapCell#1];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#3) := [heapCell#4];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
            printf("%lf ", _imopVarPre95);
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(A) := [heapCell#1];
            ptsTo(heapCell#1) := [heapCell#2];
            ptsTo(heapCell#3) := [heapCell#4];
            ptsTo(heapCell#5) := [heapCell#6];
            ]*/
        }
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
        printf("\n");
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(A) := [heapCell#1];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
    }
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    printf("\n");
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(A) := [heapCell#1];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
}
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(heapCell#1) := [heapCell#2];
ptsTo(heapCell#3) := [heapCell#4];
ptsTo(heapCell#5) := [heapCell#6];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(heapCell#1) := [heapCell#2];
ptsTo(heapCell#3) := [heapCell#4];
ptsTo(heapCell#5) := [heapCell#6];
]*/
void print_statistics(struct timeval start_time, struct timeval end_time) {
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    double _imopVarPre97;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    _imopVarPre97 = start_time.tv_sec + (start_time.tv_usec / 1000000.0);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    printf("Start time:\t%lf \n", _imopVarPre97);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    double _imopVarPre99;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    _imopVarPre99 = end_time.tv_sec + (end_time.tv_usec / 1000000.0);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    printf("End time:\t%lf\n", _imopVarPre99);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    double _imopVarPre101;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    _imopVarPre101 = end_time.tv_sec - start_time.tv_sec + ((end_time.tv_usec - start_time.tv_usec) / 1000000.0);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    printf("Total time: \t%lf (s)\n", _imopVarPre101);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
}
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(prog) := [nullCell];
]*/
void print_usage_and_exit(char *prog) {
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(prog) := [nullCell];
    ]*/
    fprintf(stderr, "Usage: %s <nprocs> <tol> <-serial|-parallel>\n", prog);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(prog) := [nullCell];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(prog) := [nullCell];
    ]*/
    exit(1);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(prog) := [nullCell];
    ]*/
}
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(stderr) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    struct timeval start_time;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    struct timeval end_time;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int num_iter = 0;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double tol;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ]*/
    double **A;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ]*/
    int procs;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ]*/
    int dim;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ]*/
    if (argc != 4) {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre103) := [nullCell];
        ]*/
        char *_imopVarPre103;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre103) := [nullCell];
        ]*/
        _imopVarPre103 = argv[0];
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre103) := [nullCell];
        ]*/
        print_usage_and_exit(_imopVarPre103);
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre103) := [nullCell];
        ]*/
    }
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [nullCell];
    ]*/
    int *_imopVarPre106;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [nullCell];
    ptsTo(_imopVarPre107) := [nullCell];
    ]*/
    char *_imopVarPre107;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ]*/
    _imopVarPre106 = &procs;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ]*/
    _imopVarPre107 = argv[1];
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ]*/
    sscanf(_imopVarPre107, "%d", _imopVarPre106);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [nullCell];
    ]*/
    double *_imopVarPre110;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [nullCell];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    char *_imopVarPre111;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    _imopVarPre110 = &tol;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    _imopVarPre111 = argv[2];
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    sscanf(_imopVarPre111, "%lf", _imopVarPre110);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    char *option = argv[3];
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    int _imopVarPre112;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    int _imopVarPre122;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    int _imopVarPre123;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    int _imopVarPre124;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    _imopVarPre112 = option == ((void *) 0);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    if (!_imopVarPre112) {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ]*/
        _imopVarPre122 = strcmp(option, "-serial");
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ]*/
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ]*/
        _imopVarPre123 = _imopVarPre122 != 0;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ]*/
        if (_imopVarPre123) {
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(A) := [nullCell];
            ptsTo(_imopVarPre106) := [procs];
            ptsTo(_imopVarPre107) := [nullCell];
            ptsTo(_imopVarPre110) := [tol];
            ptsTo(_imopVarPre111) := [nullCell];
            ]*/
            _imopVarPre124 = strcmp(option, "-parallel");
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(A) := [nullCell];
            ptsTo(_imopVarPre106) := [procs];
            ptsTo(_imopVarPre107) := [nullCell];
            ptsTo(_imopVarPre110) := [tol];
            ptsTo(_imopVarPre111) := [nullCell];
            ]*/
            /*OUT: [ptsTo(stderr) := [nullCell];
            ptsTo(argv) := [heapCell#0];
            ptsTo(A) := [nullCell];
            ptsTo(_imopVarPre106) := [procs];
            ptsTo(_imopVarPre107) := [nullCell];
            ptsTo(_imopVarPre110) := [tol];
            ptsTo(_imopVarPre111) := [nullCell];
            ]*/
            _imopVarPre123 = _imopVarPre124 != 0;
        }
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ]*/
        _imopVarPre112 = _imopVarPre123;
    }
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    if (_imopVarPre112) {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ptsTo(_imopVarPre126) := [nullCell];
        ]*/
        char *_imopVarPre126;
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ptsTo(_imopVarPre126) := [nullCell];
        ]*/
        _imopVarPre126 = argv[0];
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ptsTo(_imopVarPre126) := [nullCell];
        ]*/
        print_usage_and_exit(_imopVarPre126);
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [nullCell];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ptsTo(_imopVarPre126) := [nullCell];
        ]*/
    }
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    printf("Options: Procs = %d, Tol = %lf, Execution%s\n\n", procs, tol, option);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [nullCell];
    ]*/
    int *_imopVarPre128;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ]*/
    _imopVarPre128 = &dim;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ]*/
    scanf("%d", _imopVarPre128);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [nullCell];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ]*/
    A = read_input(dim);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    void *_imopVarPre131;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    struct timeval *_imopVarPre132;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    _imopVarPre131 = ((void *) 0);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    _imopVarPre132 = &start_time;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    gettimeofday(_imopVarPre132, _imopVarPre131);
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    int _imopVarPre134;
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    _imopVarPre134 = strcmp(option, "-serial");
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    /*OUT: [ptsTo(stderr) := [nullCell];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ]*/
    if (_imopVarPre134 == 0) {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ptsTo(_imopVarPre128) := [dim];
        ptsTo(_imopVarPre131) := [nullCell];
        ptsTo(_imopVarPre132) := [start_time];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        num_iter = simulate_ocean_currents(A, dim, tol);
        /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
        ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
        ptsTo(_imopVarPre33) := [heapCell#3];
        ptsTo(stderr) := [nullCell];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ptsTo(_imopVarPre128) := [dim];
        ptsTo(_imopVarPre131) := [nullCell];
        ptsTo(_imopVarPre132) := [start_time];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#3) := [heapCell#4];
        ]*/
    } else {
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ptsTo(_imopVarPre128) := [dim];
        ptsTo(_imopVarPre131) := [nullCell];
        ptsTo(_imopVarPre132) := [start_time];
        ptsTo(heapCell#1) := [heapCell#2];
        ]*/
        num_iter = simulate_ocean_currents_parallel(A, dim, tol, procs);
        /*OUT: [ptsTo(stderr) := [nullCell];
        ptsTo(B) := [heapCell#1, heapCell#5];
        ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
        ptsTo(_imopVarPre50) := [heapCell#5];
        ptsTo(X) := [heapCell#1];
        ptsTo(_imopVarPre87) := [heapCell#1];
        ptsTo(argv) := [heapCell#0];
        ptsTo(A) := [heapCell#1];
        ptsTo(_imopVarPre106) := [procs];
        ptsTo(_imopVarPre107) := [nullCell];
        ptsTo(_imopVarPre110) := [tol];
        ptsTo(_imopVarPre111) := [nullCell];
        ptsTo(_imopVarPre128) := [dim];
        ptsTo(_imopVarPre131) := [nullCell];
        ptsTo(_imopVarPre132) := [start_time];
        ptsTo(heapCell#1) := [heapCell#2];
        ptsTo(heapCell#5) := [heapCell#6];
        ]*/
    }
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#1, heapCell#5];
    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    void *_imopVarPre137;
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#1, heapCell#5];
    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(_imopVarPre138) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    struct timeval *_imopVarPre138;
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#1, heapCell#5];
    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(_imopVarPre138) := [nullCell];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    _imopVarPre137 = ((void *) 0);
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#1, heapCell#5];
    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(_imopVarPre138) := [end_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    _imopVarPre138 = &end_time;
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#1, heapCell#5];
    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(_imopVarPre138) := [end_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    gettimeofday(_imopVarPre138, _imopVarPre137);
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#1, heapCell#5];
    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(_imopVarPre138) := [end_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#1, heapCell#5];
    ptsTo(C) := [heapCell#1, nullCell, heapCell#5];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(_imopVarPre138) := [end_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    print_output(A, dim, num_iter);
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#5];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(_imopVarPre138) := [end_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#5];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(_imopVarPre138) := [end_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
    print_statistics(start_time, end_time);
    /*OUT: [ptsTo(B) := [heapCell#3, heapCell#1];
    ptsTo(C) := [heapCell#3, heapCell#1, nullCell];
    ptsTo(_imopVarPre33) := [heapCell#3];
    ptsTo(stderr) := [nullCell];
    ptsTo(B) := [heapCell#5];
    ptsTo(C) := [nullCell];
    ptsTo(_imopVarPre50) := [heapCell#5];
    ptsTo(X) := [heapCell#1];
    ptsTo(_imopVarPre87) := [heapCell#1];
    ptsTo(argv) := [heapCell#0];
    ptsTo(A) := [heapCell#1];
    ptsTo(_imopVarPre106) := [procs];
    ptsTo(_imopVarPre107) := [nullCell];
    ptsTo(_imopVarPre110) := [tol];
    ptsTo(_imopVarPre111) := [nullCell];
    ptsTo(_imopVarPre128) := [dim];
    ptsTo(_imopVarPre131) := [nullCell];
    ptsTo(_imopVarPre132) := [start_time];
    ptsTo(_imopVarPre137) := [nullCell];
    ptsTo(_imopVarPre138) := [end_time];
    ptsTo(heapCell#1) := [heapCell#2];
    ptsTo(heapCell#3) := [heapCell#4];
    ptsTo(heapCell#5) := [heapCell#6];
    ]*/
}
