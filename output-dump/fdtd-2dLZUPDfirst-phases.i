
/*[]*/
typedef long long __int64_t;
/*[]*/
typedef __int64_t __darwin_off_t;
/*[]*/
typedef __darwin_off_t fpos_t;
/*[]*/
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
/*[]*/
struct __sFILEX ;
/*[]*/
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
/*[]*/
typedef struct __sFILE FILE;
/*[]*/
extern FILE *__stderrp;
/*[]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*[]*/
struct fssearchblock ;
/*[]*/
struct searchstate ;
/*[]*/
int strcmp(const char *__s1, const char *__s2);
/*[]*/
void free(void *);
/*[]*/
extern char *suboptarg;
/*[]*/
extern void *polybench_alloc_data(unsigned long long int n, int elt_size);
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void init_array(int tmax, int nx , int ny , double ex[1000 + 0][1000 + 0] , double ey[1000 + 0][1000 + 0] , double hz[1000 + 0][1000 + 0] , double _fict_[50 + 0]) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < tmax; i++) {
    /*[]*/
        /*[]*/
        _fict_[i] = (double) i;
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < nx; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < ny; j++) {
        /*[]*/
            /*[]*/
            ex[i][j] = ((double) i * (j + 1)) / nx;
            /*[]*/
            ey[i][j] = ((double) i * (j + 2)) / ny;
            /*[]*/
            hz[i][j] = ((double) i * (j + 3)) / nx;
        }
    }
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void print_array(int nx, int ny , double ex[1000 + 0][1000 + 0] , double ey[1000 + 0][1000 + 0] , double hz[1000 + 0][1000 + 0]) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < nx; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < ny; j++) {
        /*[]*/
            /*[]*/
            double _imopVarPre140;
            /*[]*/
            _imopVarPre140 = ex[i][j];
            /*[]*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            /*[]*/
            /*[]*/
            double _imopVarPre142;
            /*[]*/
            _imopVarPre142 = ey[i][j];
            /*[]*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre142);
            /*[]*/
            /*[]*/
            double _imopVarPre144;
            /*[]*/
            _imopVarPre144 = hz[i][j];
            /*[]*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre144);
            /*[]*/
            /*[]*/
            /*[]*/
            if ((i * nx + j) % 20 == 0) {
            /*[]*/
                /*[]*/
                fprintf(__stderrp, "\n");
                /*[]*/
            }
        }
    }
    /*[]*/
    fprintf(__stderrp, "\n");
    /*[]*/
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void kernel_fdtd_2d(int tmax, int nx , int ny , double ex[1000 + 0][1000 + 0] , double ey[1000 + 0][1000 + 0] , double hz[1000 + 0][1000 + 0] , double _fict_[50 + 0]) {
/*[]*/
    /*[]*/
    int t;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[1]*/
#pragma omp parallel private(t, i, j)
    {
    /*[1]*/
        /*[1]*/
        /*[1, 2]*/
        /*[2]*/
        /*[1]*/
        for (t = 0; t < tmax; t++) {
        /*[1, 2]*/
            /*[1, 2]*/
#pragma omp for nowait
            /*[1, 2]*/
            /*[1, 2]*/
            /*[1, 2]*/
            for (j = 0; j < ny; j++) {
            /*[1, 2]*/
                /*[1, 2]*/
                ey[0][j] = _fict_[t];
            }
            /*[1, 2]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[1, 2]*/
#pragma omp barrier
            /*[3]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[3]*/
#pragma omp barrier
            /*[4]*/
#pragma omp for collapse(2) schedule(static) nowait
            /*[4]*/
            /*[4]*/
            /*[4]*/
            for (i = 1; i < nx; i++) {
            /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                /*[4]*/
                for (j = 0; j < ny; j++) {
                /*[4]*/
                    /*[4]*/
                    ey[i][j] = ey[i][j] - 0.5 * (hz[i][j] - hz[i - 1][j]);
                }
            }
            /*[4]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[4]*/
#pragma omp barrier
            /*[5]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[5]*/
#pragma omp barrier
            /*[6]*/
#pragma omp for collapse(2) schedule(static) nowait
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (i = 0; i < nx; i++) {
            /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                /*[6]*/
                for (j = 1; j < ny; j++) {
                /*[6]*/
                    /*[6]*/
                    ex[i][j] = ex[i][j] - 0.5 * (hz[i][j] - hz[i][j - 1]);
                }
            }
            /*[6]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6]*/
#pragma omp barrier
            /*[7]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[7]*/
#pragma omp barrier
            /*[8]*/
#pragma omp for collapse(2) schedule(static) nowait
            /*[8]*/
            /*[8]*/
            /*[8]*/
            for (i = 0; i < nx - 1; i++) {
            /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                for (j = 0; j < ny - 1; j++) {
                /*[8]*/
                    /*[8]*/
                    hz[i][j] = hz[i][j] - 0.7 * (ex[i][j + 1] - ex[i][j] + ey[i + 1][j] - ey[i][j]);
                }
            }
            /*[8]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[8]*/
#pragma omp barrier
            /*[9]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[9]*/
#pragma omp barrier
        }
    }
}
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    int tmax = 50;
    /*[]*/
    int nx = 1000;
    /*[]*/
    int ny = 1000;
    /*[]*/
    double ( *ex )[1000 + 0][1000 + 0];
    /*[]*/
    unsigned long int _imopVarPre148;
    /*[]*/
    int _imopVarPre149;
    /*[]*/
    void *_imopVarPre150;
    /*[]*/
    _imopVarPre148 = sizeof(double);
    /*[]*/
    _imopVarPre149 = (1000 + 0) * (1000 + 0);
    /*[]*/
    _imopVarPre150 = polybench_alloc_data(_imopVarPre149, _imopVarPre148);
    /*[]*/
    /*[]*/
    ex = (double (*)[1000 + 0][1000 + 0]) _imopVarPre150;
    /*[]*/
    ;
    /*[]*/
    double ( *ey )[1000 + 0][1000 + 0];
    /*[]*/
    unsigned long int _imopVarPre154;
    /*[]*/
    int _imopVarPre155;
    /*[]*/
    void *_imopVarPre156;
    /*[]*/
    _imopVarPre154 = sizeof(double);
    /*[]*/
    _imopVarPre155 = (1000 + 0) * (1000 + 0);
    /*[]*/
    _imopVarPre156 = polybench_alloc_data(_imopVarPre155, _imopVarPre154);
    /*[]*/
    /*[]*/
    ey = (double (*)[1000 + 0][1000 + 0]) _imopVarPre156;
    /*[]*/
    ;
    /*[]*/
    double ( *hz )[1000 + 0][1000 + 0];
    /*[]*/
    unsigned long int _imopVarPre160;
    /*[]*/
    int _imopVarPre161;
    /*[]*/
    void *_imopVarPre162;
    /*[]*/
    _imopVarPre160 = sizeof(double);
    /*[]*/
    _imopVarPre161 = (1000 + 0) * (1000 + 0);
    /*[]*/
    _imopVarPre162 = polybench_alloc_data(_imopVarPre161, _imopVarPre160);
    /*[]*/
    /*[]*/
    hz = (double (*)[1000 + 0][1000 + 0]) _imopVarPre162;
    /*[]*/
    ;
    /*[]*/
    double ( *_fict_ )[50 + 0];
    /*[]*/
    unsigned long int _imopVarPre166;
    /*[]*/
    int _imopVarPre167;
    /*[]*/
    void *_imopVarPre168;
    /*[]*/
    _imopVarPre166 = sizeof(double);
    /*[]*/
    _imopVarPre167 = 50 + 0;
    /*[]*/
    _imopVarPre168 = polybench_alloc_data(_imopVarPre167, _imopVarPre166);
    /*[]*/
    /*[]*/
    _fict_ = (double (*)[50 + 0]) _imopVarPre168;
    /*[]*/
    ;
    /*[]*/
    double *_imopVarPre173;
    /*[]*/
    double ( *_imopVarPre174 )[1000 + 0];
    /*[]*/
    double ( *_imopVarPre175 )[1000 + 0];
    /*[]*/
    double ( *_imopVarPre176 )[1000 + 0];
    /*[]*/
    _imopVarPre173 = *_fict_;
    /*[]*/
    _imopVarPre174 = *hz;
    /*[]*/
    _imopVarPre175 = *ey;
    /*[]*/
    _imopVarPre176 = *ex;
    /*[]*/
    init_array(tmax, nx, ny, _imopVarPre176, _imopVarPre175, _imopVarPre174, _imopVarPre173);
    /*[]*/
    /*[]*/
    ;
    /*[]*/
    double *_imopVarPre181;
    /*[]*/
    double ( *_imopVarPre182 )[1000 + 0];
    /*[]*/
    double ( *_imopVarPre183 )[1000 + 0];
    /*[]*/
    double ( *_imopVarPre184 )[1000 + 0];
    /*[]*/
    _imopVarPre181 = *_fict_;
    /*[]*/
    _imopVarPre182 = *hz;
    /*[]*/
    _imopVarPre183 = *ey;
    /*[]*/
    _imopVarPre184 = *ex;
    /*[]*/
    kernel_fdtd_2d(tmax, nx, ny, _imopVarPre184, _imopVarPre183, _imopVarPre182, _imopVarPre181);
    /*[]*/
    /*[]*/
    ;
    /*[]*/
    ;
    /*[]*/
    int _imopVarPre188;
    /*[]*/
    char *_imopVarPre189;
    /*[]*/
    int _imopVarPre190;
    /*[]*/
    _imopVarPre188 = argc > 42;
    /*[]*/
    /*[]*/
    if (_imopVarPre188) {
    /*[]*/
        /*[]*/
        _imopVarPre189 = argv[0];
        /*[]*/
        _imopVarPre190 = strcmp(_imopVarPre189, "");
        /*[]*/
        /*[]*/
        _imopVarPre188 = !_imopVarPre190;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre188) {
    /*[]*/
        /*[]*/
        double ( *_imopVarPre194 )[1000 + 0];
        /*[]*/
        double ( *_imopVarPre195 )[1000 + 0];
        /*[]*/
        double ( *_imopVarPre196 )[1000 + 0];
        /*[]*/
        _imopVarPre194 = *hz;
        /*[]*/
        _imopVarPre195 = *ey;
        /*[]*/
        _imopVarPre196 = *ex;
        /*[]*/
        print_array(nx, ny, _imopVarPre196, _imopVarPre195, _imopVarPre194);
        /*[]*/
    }
    /*[]*/
    void *_imopVarPre198;
    /*[]*/
    _imopVarPre198 = (void *) ex;
    /*[]*/
    free(_imopVarPre198);
    /*[]*/
    /*[]*/
    ;
    /*[]*/
    void *_imopVarPre200;
    /*[]*/
    _imopVarPre200 = (void *) ey;
    /*[]*/
    free(_imopVarPre200);
    /*[]*/
    /*[]*/
    ;
    /*[]*/
    void *_imopVarPre202;
    /*[]*/
    _imopVarPre202 = (void *) hz;
    /*[]*/
    free(_imopVarPre202);
    /*[]*/
    /*[]*/
    ;
    /*[]*/
    void *_imopVarPre204;
    /*[]*/
    _imopVarPre204 = (void *) _fict_;
    /*[]*/
    free(_imopVarPre204);
    /*[]*/
    /*[]*/
    ;
    /*[]*/
    return 0;
}
