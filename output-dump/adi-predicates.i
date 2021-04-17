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
static void init_array(int n, double X[1024 + 0][1024 + 0] , double A[1024 + 0][1024 + 0] , double B[1024 + 0][1024 + 0]) {
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
    Reverse<--, 42_1; 39_0;>}*/
    for (i = 0; i < n; i++) {
        /*OUT: {
        Reverse<--, 39_0;>}*/
        /*OUT: {
        Reverse<--, 39_0;>}*/
        /*OUT: {
        Reverse<--, 42_0; 39_0;>}*/
        for (j = 0; j < n; j++) {
            /*OUT: {
            Reverse<--, 42_0; 39_0;>}*/
            X[i][j] = ((double) i * (j + 1) + 1) / n;
            /*OUT: {
            Reverse<--, 42_0; 39_0;>}*/
            A[i][j] = ((double) i * (j + 2) + 2) / n;
            /*OUT: {
            Reverse<--, 42_0; 39_0;>}*/
            B[i][j] = ((double) i * (j + 3) + 3) / n;
        }
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void print_array(int n, double X[1024 + 0][1024 + 0]) {
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
    Reverse<--, 70_1; 67_0;>}*/
    for (i = 0; i < n; i++) {
        /*OUT: {
        Reverse<--, 67_0;>}*/
        /*OUT: {
        Reverse<--, 67_0;>}*/
        /*OUT: {
        Reverse<--, 70_0; 67_0;>}*/
        for (j = 0; j < n; j++) {
            /*OUT: {
            Reverse<--, 70_0; 67_0;>}*/
            double _imopVarPre140;
            /*OUT: {
            Reverse<--, 70_0; 67_0;>}*/
            _imopVarPre140 = X[i][j];
            /*OUT: {
            Reverse<--, 70_0; 67_0;>}*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            /*OUT: {
            Reverse<--, 70_0; 67_0;>}*/
            /*OUT: {
            Reverse<--, 70_0; 67_0;>}*/
            if ((i * 1024 + j) % 20 == 0) {
                /*OUT: {
                Reverse<--, 83_0; 70_0; 67_0;>}*/
                fprintf(__stderrp, "\n");
                /*OUT: {
                Reverse<--, 83_0; 70_0; 67_0;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 67_1;>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--, 67_1;>}*/
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
static void kernel_adi(int tsteps, int n , double X[1024 + 0][1024 + 0] , double A[1024 + 0][1024 + 0] , double B[1024 + 0][1024 + 0]) {
    /*OUT: {
    Reverse<--,>}*/
    int t;
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
#pragma omp parallel private(t, i1, i2)
    {
        /*OUT: {
        Reverse<425,>}*/
        /*OUT: {
        Reverse<425,>
        Reverse<242,>}*/
        /*OUT: {
        Reverse<242,>}*/
        for (t = 0; t < tsteps; t++) {
#pragma omp for nowait
            /*OUT: {
            Reverse<425, 103_0;>
            Reverse<242, 103_0;>}*/
            /*OUT: {
            Reverse<425, 103_0;>
            Reverse<242, 103_0;>}*/
            /*OUT: {
            Reverse<425, 111_1; 103_0;>
            Reverse<242, 111_1; 103_0;>}*/
            for (i1 = 0; i1 < n; i1++) {
                /*OUT: {
                Reverse<425, 103_0;>
                Reverse<242, 103_0;>}*/
                /*OUT: {
                Reverse<425, 103_0;>
                Reverse<242, 103_0;>}*/
                /*OUT: {
                Reverse<425, 111_0; 103_0;>
                Reverse<242, 111_0; 103_0;>}*/
                for (i2 = 1; i2 < n; i2++) {
                    /*OUT: {
                    Reverse<425, 111_0; 103_0;>
                    Reverse<242, 111_0; 103_0;>}*/
                    X[i1][i2] = X[i1][i2] - X[i1][i2 - 1] * A[i1][i2] / B[i1][i2 - 1];
                    /*OUT: {
                    Reverse<425, 111_0; 103_0;>
                    Reverse<242, 111_0; 103_0;>}*/
                    B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1][i2 - 1];
                }
            }
            /*OUT: {
            Reverse<425, 103_0;>
            Reverse<242, 103_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<137,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<137,>}*/
            /*OUT: {
            Reverse<137,>}*/
            /*OUT: {
            Reverse<137,>}*/
            for (i1 = 0; i1 < n; i1++) {
                /*OUT: {
                Reverse<137,>}*/
                X[i1][n - 1] = X[i1][n - 1] / B[i1][n - 1];
            }
            /*OUT: {
            Reverse<137,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<151,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<151,>}*/
            /*OUT: {
            Reverse<151,>}*/
            /*OUT: {
            Reverse<151, 158_1;>}*/
            for (i1 = 0; i1 < n; i1++) {
                /*OUT: {
                Reverse<151,>}*/
                /*OUT: {
                Reverse<151,>}*/
                /*OUT: {
                Reverse<151, 158_0;>}*/
                for (i2 = 0; i2 < n - 2; i2++) {
                    /*OUT: {
                    Reverse<151, 158_0;>}*/
                    X[i1][n - i2 - 2] = (X[i1][n - 2 - i2] - X[i1][n - 2 - i2 - 1] * A[i1][n - i2 - 3]) / B[i1][n - 3 - i2];
                }
            }
            /*OUT: {
            Reverse<151,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<173,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<173,>}*/
            /*OUT: {
            Reverse<173,>}*/
            /*OUT: {
            Reverse<173, 180_1;>}*/
            for (i1 = 1; i1 < n; i1++) {
                /*OUT: {
                Reverse<173,>}*/
                /*OUT: {
                Reverse<173,>}*/
                /*OUT: {
                Reverse<173, 180_0;>}*/
                for (i2 = 0; i2 < n; i2++) {
                    /*OUT: {
                    Reverse<173, 180_0;>}*/
                    X[i1][i2] = X[i1][i2] - X[i1 - 1][i2] * A[i1][i2] / B[i1 - 1][i2];
                    /*OUT: {
                    Reverse<173, 180_0;>}*/
                    B[i1][i2] = B[i1][i2] - A[i1][i2] * A[i1][i2] / B[i1 - 1][i2];
                }
            }
            /*OUT: {
            Reverse<173,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<206,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<206,>}*/
            /*OUT: {
            Reverse<206,>}*/
            /*OUT: {
            Reverse<206,>}*/
            for (i2 = 0; i2 < n; i2++) {
                /*OUT: {
                Reverse<206,>}*/
                X[n - 1][i2] = X[n - 1][i2] / B[n - 1][i2];
            }
            /*OUT: {
            Reverse<206,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<220,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<220,>}*/
            /*OUT: {
            Reverse<220,>}*/
            /*OUT: {
            Reverse<220, 227_1;>}*/
            for (i1 = 0; i1 < n - 2; i1++) {
                /*OUT: {
                Reverse<220,>}*/
                /*OUT: {
                Reverse<220,>}*/
                /*OUT: {
                Reverse<220, 227_0;>}*/
                for (i2 = 0; i2 < n; i2++) {
                    /*OUT: {
                    Reverse<220, 227_0;>}*/
                    X[n - 2 - i1][i2] = (X[n - 2 - i1][i2] - X[n - i1 - 3][i2] * A[n - 3 - i1][i2]) / B[n - 2 - i1][i2];
                }
            }
            /*OUT: {
            Reverse<220,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<242,>}*/
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
    int n = 1024;
    /*OUT: {
    Reverse<--,>}*/
    int tsteps = 50;
    /*OUT: {
    Reverse<--,>}*/
    double ( *X )[1024 + 0][1024 + 0];
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre144;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre146;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre144 = sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre145 = (1024 + 0) * (1024 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    X = (double (*)[1024 + 0][1024 + 0]) _imopVarPre146;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *A )[1024 + 0][1024 + 0];
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre150;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre151;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre152;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre150 = sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre151 = (1024 + 0) * (1024 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    A = (double (*)[1024 + 0][1024 + 0]) _imopVarPre152;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *B )[1024 + 0][1024 + 0];
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre156;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre157;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre158;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre156 = sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre157 = (1024 + 0) * (1024 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre158 = polybench_alloc_data(_imopVarPre157, _imopVarPre156);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    B = (double (*)[1024 + 0][1024 + 0]) _imopVarPre158;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre162 )[1024 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre163 )[1024 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre164 )[1024 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre162 = *B;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre163 = *A;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre164 = *X;
    /*OUT: {
    Reverse<--,>}*/
    init_array(n, _imopVarPre164, _imopVarPre163, _imopVarPre162);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre168 )[1024 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre169 )[1024 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre170 )[1024 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre168 = *B;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre169 = *A;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre170 = *X;
    /*OUT: {
    Reverse<--,>}*/
    kernel_adi(tsteps, n, _imopVarPre170, _imopVarPre169, _imopVarPre168);
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
    int _imopVarPre174;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre175;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre176;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre174 = argc > 42;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre174) {
        /*OUT: {
        Reverse<--, 340_0;>}*/
        _imopVarPre175 = argv[0];
        /*OUT: {
        Reverse<--, 340_0;>}*/
        _imopVarPre176 = strcmp(_imopVarPre175, "");
        /*OUT: {
        Reverse<--, 340_0;>}*/
        /*OUT: {
        Reverse<--, 340_0;>}*/
        _imopVarPre174 = !_imopVarPre176;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre174) {
        /*OUT: {
        Reverse<--, 352_0;>}*/
        double ( *_imopVarPre178 )[1024 + 0];
        /*OUT: {
        Reverse<--, 352_0;>}*/
        _imopVarPre178 = *X;
        /*OUT: {
        Reverse<--, 352_0;>}*/
        print_array(n, _imopVarPre178);
        /*OUT: {
        Reverse<--, 352_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre180;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre180 = (void *) X;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre180);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre182;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre182 = (void *) A;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre182);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre184;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre184 = (void *) B;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre184);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    return 0;
}
