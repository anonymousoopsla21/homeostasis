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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void init_array(int tmax, int nx , int ny , double ex[1000 + 0][1000 + 0] , double ey[1000 + 0][1000 + 0] , double hz[1000 + 0][1000 + 0] , double _fict_[50 + 0]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 42_0;>}*/
    for (i = 0; i < tmax; i++) {
        /*OUT: {
        Reverse<--, 42_0;>}*/
        _fict_[i] = (double) i;
    }
    /*OUT: {
    Reverse<--, 42_1;>}*/
    /*OUT: {
    Reverse<--, 42_1;>}*/
    /*OUT: {
    Reverse<--, 51_1; 48_0; 42_1;>}*/
    for (i = 0; i < nx; i++) {
        /*OUT: {
        Reverse<--, 48_0; 42_1;>}*/
        /*OUT: {
        Reverse<--, 48_0; 42_1;>}*/
        /*OUT: {
        Reverse<--, 51_0; 48_0; 42_1;>}*/
        for (j = 0; j < ny; j++) {
            /*OUT: {
            Reverse<--, 51_0; 48_0; 42_1;>}*/
            ex[i][j] = ((double) i * (j + 1)) / nx;
            /*OUT: {
            Reverse<--, 51_0; 48_0; 42_1;>}*/
            ey[i][j] = ((double) i * (j + 2)) / ny;
            /*OUT: {
            Reverse<--, 51_0; 48_0; 42_1;>}*/
            hz[i][j] = ((double) i * (j + 3)) / nx;
        }
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void print_array(int nx, int ny , double ex[1000 + 0][1000 + 0] , double ey[1000 + 0][1000 + 0] , double hz[1000 + 0][1000 + 0]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 82_1; 79_0;>}*/
    for (i = 0; i < nx; i++) {
        /*OUT: {
        Reverse<--, 79_0;>}*/
        /*OUT: {
        Reverse<--, 79_0;>}*/
        /*OUT: {
        Reverse<--, 82_0; 79_0;>}*/
        for (j = 0; j < ny; j++) {
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            double _imopVarPre140;
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            _imopVarPre140 = ex[i][j];
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            double _imopVarPre142;
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            _imopVarPre142 = ey[i][j];
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre142);
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            double _imopVarPre144;
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            _imopVarPre144 = hz[i][j];
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre144);
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            /*OUT: {
            Reverse<--, 82_0; 79_0;>}*/
            if ((i * nx + j) % 20 == 0) {
                /*OUT: {
                Reverse<--, 115_0; 82_0; 79_0;>}*/
                fprintf(__stderrp, "\n");
                /*OUT: {
                Reverse<--, 115_0; 82_0; 79_0;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 79_1;>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--, 79_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void kernel_fdtd_2d(int tmax, int nx , int ny , double ex[1000 + 0][1000 + 0] , double ey[1000 + 0][1000 + 0] , double hz[1000 + 0][1000 + 0] , double _fict_[50 + 0]) {
    /*OUT: {
    Reverse<--,>}*/
    int t;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
#pragma omp parallel private(t, i, j)
    {
        /*OUT: {
        Reverse<458,>}*/
        /*OUT: {
        Reverse<458,>
        Reverse<220,>}*/
        /*OUT: {
        Reverse<220,>}*/
        for (t = 0; t < tmax; t++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<458, 137_0;>
            Reverse<220, 137_0;>}*/
            /*OUT: {
            Reverse<458, 137_0;>
            Reverse<220, 137_0;>}*/
            /*OUT: {
            Reverse<458, 137_0;>
            Reverse<220, 137_0;>}*/
            for (j = 0; j < ny; j++) {
                /*OUT: {
                Reverse<458, 137_0;>
                Reverse<220, 137_0;>}*/
                ey[0][j] = _fict_[t];
            }
            /*OUT: {
            Reverse<458, 137_0;>
            Reverse<220, 137_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<149,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<149,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<150,>}*/
#pragma omp barrier
#pragma omp for collapse(2) schedule(static) nowait
            /*OUT: {
            Reverse<150,>}*/
            /*OUT: {
            Reverse<150,>}*/
            /*OUT: {
            Reverse<150, 158_1;>}*/
            for (i = 1; i < nx; i++) {
                /*OUT: {
                Reverse<150,>}*/
                /*OUT: {
                Reverse<150,>}*/
                /*OUT: {
                Reverse<150, 158_0;>}*/
                for (j = 0; j < ny; j++) {
                    /*OUT: {
                    Reverse<150, 158_0;>}*/
                    ey[i][j] = ey[i][j] - 0.5 * (hz[i][j] - hz[i - 1][j]);
                }
            }
            /*OUT: {
            Reverse<150,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<171,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<171,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<172,>}*/
#pragma omp barrier
#pragma omp for collapse(2) schedule(static) nowait
            /*OUT: {
            Reverse<172,>}*/
            /*OUT: {
            Reverse<172,>}*/
            /*OUT: {
            Reverse<172, 180_1;>}*/
            for (i = 0; i < nx; i++) {
                /*OUT: {
                Reverse<172,>}*/
                /*OUT: {
                Reverse<172,>}*/
                /*OUT: {
                Reverse<172, 180_0;>}*/
                for (j = 1; j < ny; j++) {
                    /*OUT: {
                    Reverse<172, 180_0;>}*/
                    ex[i][j] = ex[i][j] - 0.5 * (hz[i][j] - hz[i][j - 1]);
                }
            }
            /*OUT: {
            Reverse<172,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<193,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<193,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<194,>}*/
#pragma omp barrier
#pragma omp for collapse(2) schedule(static) nowait
            /*OUT: {
            Reverse<194,>}*/
            /*OUT: {
            Reverse<194,>}*/
            /*OUT: {
            Reverse<194, 202_1;>}*/
            for (i = 0; i < nx - 1; i++) {
                /*OUT: {
                Reverse<194,>}*/
                /*OUT: {
                Reverse<194,>}*/
                /*OUT: {
                Reverse<194, 202_0;>}*/
                for (j = 0; j < ny - 1; j++) {
                    /*OUT: {
                    Reverse<194, 202_0;>}*/
                    hz[i][j] = hz[i][j] - 0.7 * (ex[i][j + 1] - ex[i][j] + ey[i + 1][j] - ey[i][j]);
                }
            }
            /*OUT: {
            Reverse<194,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<219,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<219,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<220,>}*/
#pragma omp barrier
        }
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    int tmax = 50;
    /*OUT: {
    Reverse<--,>}*/
    int nx = 1000;
    /*OUT: {
    Reverse<--,>}*/
    int ny = 1000;
    /*OUT: {
    Reverse<--,>}*/
    double ( *ex )[1000 + 0][1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre148;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre149;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre150;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre148 = sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre149 = (1000 + 0) * (1000 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre150 = polybench_alloc_data(_imopVarPre149, _imopVarPre148);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ex = (double (*)[1000 + 0][1000 + 0]) _imopVarPre150;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *ey )[1000 + 0][1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre154;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre155;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre156;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre154 = sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre155 = (1000 + 0) * (1000 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre156 = polybench_alloc_data(_imopVarPre155, _imopVarPre154);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ey = (double (*)[1000 + 0][1000 + 0]) _imopVarPre156;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *hz )[1000 + 0][1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre160;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre161;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre162;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre160 = sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre161 = (1000 + 0) * (1000 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre162 = polybench_alloc_data(_imopVarPre161, _imopVarPre160);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    hz = (double (*)[1000 + 0][1000 + 0]) _imopVarPre162;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *_fict_ )[50 + 0];
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre166;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre167;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre168;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre166 = sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre167 = 50 + 0;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre168 = polybench_alloc_data(_imopVarPre167, _imopVarPre166);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _fict_ = (double (*)[50 + 0]) _imopVarPre168;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre173;
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre174 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre175 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre176 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre173 = *_fict_;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre174 = *hz;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre175 = *ey;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre176 = *ex;
    /*OUT: {
    Reverse<--,>}*/
    init_array(tmax, nx, ny, _imopVarPre176, _imopVarPre175, _imopVarPre174, _imopVarPre173);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre181;
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre182 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre183 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre184 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre181 = *_fict_;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre182 = *hz;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre183 = *ey;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre184 = *ex;
    /*OUT: {
    Reverse<--,>}*/
    kernel_fdtd_2d(tmax, nx, ny, _imopVarPre184, _imopVarPre183, _imopVarPre182, _imopVarPre181);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre188;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre189;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre190;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre188 = argc > 42;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre188) {
        /*OUT: {
        Reverse<--, 342_0;>}*/
        _imopVarPre189 = argv[0];
        /*OUT: {
        Reverse<--, 342_0;>}*/
        _imopVarPre190 = strcmp(_imopVarPre189, "");
        /*OUT: {
        Reverse<--, 342_0;>}*/
        /*OUT: {
        Reverse<--, 342_0;>}*/
        _imopVarPre188 = !_imopVarPre190;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre188) {
        /*OUT: {
        Reverse<--, 354_0;>}*/
        double ( *_imopVarPre194 )[1000 + 0];
        /*OUT: {
        Reverse<--, 354_0;>}*/
        double ( *_imopVarPre195 )[1000 + 0];
        /*OUT: {
        Reverse<--, 354_0;>}*/
        double ( *_imopVarPre196 )[1000 + 0];
        /*OUT: {
        Reverse<--, 354_0;>}*/
        _imopVarPre194 = *hz;
        /*OUT: {
        Reverse<--, 354_0;>}*/
        _imopVarPre195 = *ey;
        /*OUT: {
        Reverse<--, 354_0;>}*/
        _imopVarPre196 = *ex;
        /*OUT: {
        Reverse<--, 354_0;>}*/
        print_array(nx, ny, _imopVarPre196, _imopVarPre195, _imopVarPre194);
        /*OUT: {
        Reverse<--, 354_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre198;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre198 = (void *) ex;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre198);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre200;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre200 = (void *) ey;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre200);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre202;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre202 = (void *) hz;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre202);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre204;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre204 = (void *) _fict_;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre204);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    return 0;
}
