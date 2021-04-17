
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
static void init_array(int tmax, int nx , int ny , double ex[1000 + 0][1000 + 0] , double ey[1000 + 0][1000 + 0] , double hz[1000 + 0][1000 + 0] , double _fict_[50 + 0]) {
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
    for (i = 0; i < tmax; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _fict_[i] = (double) i;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < nx; i++) {
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
        for (j = 0; j < ny; j++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            ex[i][j] = ((double) i * (j + 1)) / nx;
            /*READ_S: []
            WRITE_S: []*/
            ey[i][j] = ((double) i * (j + 2)) / ny;
            /*READ_S: []
            WRITE_S: []*/
            hz[i][j] = ((double) i * (j + 3)) / nx;
        }
    }
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
/*READ_S: [__stderrp, fprintf]
WRITE_S: []*/
static void print_array(int nx, int ny , double ex[1000 + 0][1000 + 0] , double ey[1000 + 0][1000 + 0] , double hz[1000 + 0][1000 + 0]) {
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
    for (i = 0; i < nx; i++) {
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
        for (j = 0; j < ny; j++) {
        /*READ_S: [__stderrp, fprintf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre140;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre140 = ex[i][j];
            /*READ_S: [__stderrp, fprintf]
            WRITE_S: []*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre142;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre142 = ey[i][j];
            /*READ_S: [__stderrp, fprintf]
            WRITE_S: []*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre142);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre144;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre144 = hz[i][j];
            /*READ_S: [__stderrp, fprintf]
            WRITE_S: []*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre144);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [__stderrp, fprintf]
            WRITE_S: []*/
            if ((i * nx + j) % 20 == 0) {
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [j, nx, ny, tmax, i, _fict_, hz, ex, ey]
WRITE_S: []*/
static void kernel_fdtd_2d(int tmax, int nx , int ny , double ex[1000 + 0][1000 + 0] , double ey[1000 + 0][1000 + 0] , double hz[1000 + 0][1000 + 0] , double _fict_[50 + 0]) {
/*READ_S: [j, nx, ny, tmax, i, _fict_, hz, ex, ey]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int t;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: [j, nx, ny, tmax, i, _fict_, hz, ex, ey]
    WRITE_S: []*/
#pragma omp parallel private(t, i, j)
    {
    /*READ_S: [j, nx, ny, tmax, i, _fict_, hz, ex, ey]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [tmax]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [j, nx, ny, tmax, i, _fict_, hz, ex, ey]
        WRITE_S: []*/
        for (t = 0; t < tmax; t++) {
        /*READ_S: [j, nx, ny, i, _fict_, hz, ex, ey]
        WRITE_S: []*/
            /*READ_S: [j, ny, _fict_, ey]
            WRITE_S: []*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [ny]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j < ny; j++) {
            /*READ_S: [_fict_, ey]
            WRITE_S: []*/
                /*READ_S: [_fict_, ey]
                WRITE_S: []*/
                ey[0][j] = _fict_[t];
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [nx, ny, i, hz, ey]
            WRITE_S: []*/
#pragma omp for collapse(2) schedule(static) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [nx]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i < nx; i++) {
            /*READ_S: [ny, hz, ey]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ny]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ny, hz, ey]
                WRITE_S: []*/
                for (j = 0; j < ny; j++) {
                /*READ_S: [hz, ey]
                WRITE_S: []*/
                    /*READ_S: [hz, ey]
                    WRITE_S: []*/
                    ey[i][j] = ey[i][j] - 0.5 * (hz[i][j] - hz[i - 1][j]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [nx, ny, i, hz, ex]
            WRITE_S: []*/
#pragma omp for collapse(2) schedule(static) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [nx]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < nx; i++) {
            /*READ_S: [ny, hz, ex]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ny]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ny, hz, ex]
                WRITE_S: []*/
                for (j = 1; j < ny; j++) {
                /*READ_S: [hz, ex]
                WRITE_S: []*/
                    /*READ_S: [hz, ex]
                    WRITE_S: []*/
                    ex[i][j] = ex[i][j] - 0.5 * (hz[i][j] - hz[i][j - 1]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [nx, ny, i, hz, ex, ey]
            WRITE_S: []*/
#pragma omp for collapse(2) schedule(static) nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [nx]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < nx - 1; i++) {
            /*READ_S: [ny, hz, ex, ey]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ny]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ny, hz, ex, ey]
                WRITE_S: []*/
                for (j = 0; j < ny - 1; j++) {
                /*READ_S: [hz, ex, ey]
                WRITE_S: []*/
                    /*READ_S: [hz, ex, ey]
                    WRITE_S: []*/
                    hz[i][j] = hz[i][j] - 0.7 * (ex[i][j + 1] - ex[i][j] + ey[i + 1][j] - ey[i][j]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
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
/*READ_S: [kernel_fdtd_2d, heapCell#1, init_array, _fict_, hz, polybench_alloc_data, ex, ey, strcmp, _imopVarPre188, __stderrp, heapCell#0, print_array, j, nx, ny, fprintf, i, free, tmax, heapCell#4, heapCell#3, heapCell#2]
WRITE_S: [heapCell#1, heapCell#4, heapCell#3, heapCell#2]*/
int main(int argc, char **argv) {
/*READ_S: [kernel_fdtd_2d, heapCell#1, init_array, _fict_, hz, polybench_alloc_data, ex, ey, strcmp, _imopVarPre188, __stderrp, heapCell#0, print_array, j, nx, ny, fprintf, i, free, tmax, heapCell#4, heapCell#3, heapCell#2]
WRITE_S: [heapCell#1, heapCell#4, heapCell#3, heapCell#2]*/
    /*READ_S: []
    WRITE_S: []*/
    int tmax = 50;
    /*READ_S: []
    WRITE_S: []*/
    int nx = 1000;
    /*READ_S: []
    WRITE_S: []*/
    int ny = 1000;
    /*READ_S: []
    WRITE_S: []*/
    double ( *ex )[1000 + 0][1000 + 0];
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
    _imopVarPre148 = sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre149 = (1000 + 0) * (1000 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre150 = polybench_alloc_data(_imopVarPre149, _imopVarPre148);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ex = (double (*)[1000 + 0][1000 + 0]) _imopVarPre150;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *ey )[1000 + 0][1000 + 0];
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
    _imopVarPre154 = sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre155 = (1000 + 0) * (1000 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre156 = polybench_alloc_data(_imopVarPre155, _imopVarPre154);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ey = (double (*)[1000 + 0][1000 + 0]) _imopVarPre156;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *hz )[1000 + 0][1000 + 0];
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre160;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre161;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre162;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre160 = sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre161 = (1000 + 0) * (1000 + 0);
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre162 = polybench_alloc_data(_imopVarPre161, _imopVarPre160);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    hz = (double (*)[1000 + 0][1000 + 0]) _imopVarPre162;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double ( *_fict_ )[50 + 0];
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre166;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre167;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre168;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre166 = sizeof(double);
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre167 = 50 + 0;
    /*READ_S: [polybench_alloc_data]
    WRITE_S: []*/
    _imopVarPre168 = polybench_alloc_data(_imopVarPre167, _imopVarPre166);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    _fict_ = (double (*)[50 + 0]) _imopVarPre168;
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre173;
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre174 )[1000 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre175 )[1000 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre176 )[1000 + 0];
    /*READ_S: [heapCell#4]
    WRITE_S: []*/
    _imopVarPre173 = *_fict_;
    /*READ_S: [heapCell#3]
    WRITE_S: []*/
    _imopVarPre174 = *hz;
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    _imopVarPre175 = *ey;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    _imopVarPre176 = *ex;
    /*READ_S: [init_array]
    WRITE_S: []*/
    init_array(tmax, nx, ny, _imopVarPre176, _imopVarPre175, _imopVarPre174, _imopVarPre173);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre181;
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre182 )[1000 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre183 )[1000 + 0];
    /*READ_S: []
    WRITE_S: []*/
    double ( *_imopVarPre184 )[1000 + 0];
    /*READ_S: [heapCell#4]
    WRITE_S: []*/
    _imopVarPre181 = *_fict_;
    /*READ_S: [heapCell#3]
    WRITE_S: []*/
    _imopVarPre182 = *hz;
    /*READ_S: [heapCell#2]
    WRITE_S: []*/
    _imopVarPre183 = *ey;
    /*READ_S: [heapCell#1]
    WRITE_S: []*/
    _imopVarPre184 = *ex;
    /*READ_S: [kernel_fdtd_2d]
    WRITE_S: []*/
    kernel_fdtd_2d(tmax, nx, ny, _imopVarPre184, _imopVarPre183, _imopVarPre182, _imopVarPre181);
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
    int _imopVarPre188;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre189;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre190;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre188 = argc > 42;
    /*READ_S: [_imopVarPre188]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre188, heapCell#0, strcmp]
    WRITE_S: []*/
    if (_imopVarPre188) {
    /*READ_S: [heapCell#0, strcmp]
    WRITE_S: []*/
        /*READ_S: [heapCell#0]
        WRITE_S: []*/
        _imopVarPre189 = argv[0];
        /*READ_S: [strcmp]
        WRITE_S: []*/
        _imopVarPre190 = strcmp(_imopVarPre189, "");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre188 = !_imopVarPre190;
    }
    /*READ_S: [_imopVarPre188]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre188, __stderrp, print_array, heapCell#1, fprintf, heapCell#3, heapCell#2]
    WRITE_S: []*/
    if (_imopVarPre188) {
    /*READ_S: [__stderrp, print_array, heapCell#1, fprintf, heapCell#3, heapCell#2]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double ( *_imopVarPre194 )[1000 + 0];
        /*READ_S: []
        WRITE_S: []*/
        double ( *_imopVarPre195 )[1000 + 0];
        /*READ_S: []
        WRITE_S: []*/
        double ( *_imopVarPre196 )[1000 + 0];
        /*READ_S: [heapCell#3]
        WRITE_S: []*/
        _imopVarPre194 = *hz;
        /*READ_S: [heapCell#2]
        WRITE_S: []*/
        _imopVarPre195 = *ey;
        /*READ_S: [heapCell#1]
        WRITE_S: []*/
        _imopVarPre196 = *ex;
        /*READ_S: [print_array]
        WRITE_S: []*/
        print_array(nx, ny, _imopVarPre196, _imopVarPre195, _imopVarPre194);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre198;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre198 = (void *) ex;
    /*READ_S: [heapCell#1, free]
    WRITE_S: [heapCell#1]*/
    free(_imopVarPre198);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre200;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre200 = (void *) ey;
    /*READ_S: [free, heapCell#2]
    WRITE_S: [heapCell#2]*/
    free(_imopVarPre200);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre202;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre202 = (void *) hz;
    /*READ_S: [free, heapCell#3]
    WRITE_S: [heapCell#3]*/
    free(_imopVarPre202);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre204;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre204 = (void *) _fict_;
    /*READ_S: [free, heapCell#4]
    WRITE_S: [heapCell#4]*/
    free(_imopVarPre204);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ;
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
