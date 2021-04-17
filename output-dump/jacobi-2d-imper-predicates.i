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
static void init_array(int n, double A[1000 + 0][1000 + 0] , double B[1000 + 0][1000 + 0]) {
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
    Reverse<--, 41_1; 38_0;>}*/
    for (i = 0; i < n; i++) {
        /*OUT: {
        Reverse<--, 38_0;>}*/
        /*OUT: {
        Reverse<--, 38_0;>}*/
        /*OUT: {
        Reverse<--, 41_0; 38_0;>}*/
        for (j = 0; j < n; j++) {
            /*OUT: {
            Reverse<--, 41_0; 38_0;>}*/
            A[i][j] = ((double) i * (j + 2) + 2) / n;
            /*OUT: {
            Reverse<--, 41_0; 38_0;>}*/
            B[i][j] = ((double) i * (j + 3) + 3) / n;
        }
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void print_array(int n, double A[1000 + 0][1000 + 0]) {
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
    Reverse<--, 63_1; 60_0;>}*/
    for (i = 0; i < n; i++) {
        /*OUT: {
        Reverse<--, 60_0;>}*/
        /*OUT: {
        Reverse<--, 60_0;>}*/
        /*OUT: {
        Reverse<--, 63_0; 60_0;>}*/
        for (j = 0; j < n; j++) {
            /*OUT: {
            Reverse<--, 63_0; 60_0;>}*/
            double _imopVarPre140;
            /*OUT: {
            Reverse<--, 63_0; 60_0;>}*/
            _imopVarPre140 = A[i][j];
            /*OUT: {
            Reverse<--, 63_0; 60_0;>}*/
            fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
            /*OUT: {
            Reverse<--, 63_0; 60_0;>}*/
            /*OUT: {
            Reverse<--, 63_0; 60_0;>}*/
            if ((i * n + j) % 20 == 0) {
                /*OUT: {
                Reverse<--, 76_0; 63_0; 60_0;>}*/
                fprintf(__stderrp, "\n");
                /*OUT: {
                Reverse<--, 76_0; 63_0; 60_0;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 60_1;>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--, 60_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void kernel_jacobi_2d_imper(int tsteps, int n , double A[1000 + 0][1000 + 0] , double B[1000 + 0][1000 + 0]) {
    /*OUT: {
    Reverse<--,>}*/
    int t;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
#pragma omp parallel private(i, j, t)
    {
        /*OUT: {
        Reverse<296,>}*/
        /*OUT: {
        Reverse<296,>
        Reverse<135,>}*/
        /*OUT: {
        Reverse<135,>}*/
        for (t = 0; t < tsteps; t++) {
#pragma omp for schedule(static) nowait
            /*OUT: {
            Reverse<296, 95_0;>
            Reverse<135, 95_0;>}*/
            /*OUT: {
            Reverse<296, 95_0;>
            Reverse<135, 95_0;>}*/
            /*OUT: {
            Reverse<296, 103_1; 95_0;>
            Reverse<135, 103_1; 95_0;>}*/
            for (i = 1; i < n - 1; i++) {
                /*OUT: {
                Reverse<296, 95_0;>
                Reverse<135, 95_0;>}*/
                /*OUT: {
                Reverse<296, 95_0;>
                Reverse<135, 95_0;>}*/
                /*OUT: {
                Reverse<296, 103_0; 95_0;>
                Reverse<135, 103_0; 95_0;>}*/
                for (j = 1; j < n - 1; j++) {
                    /*OUT: {
                    Reverse<296, 103_0; 95_0;>
                    Reverse<135, 103_0; 95_0;>}*/
                    B[i][j] = 0.2 * (A[i][j] + A[i][j - 1] + A[i][1 + j] + A[1 + i][j] + A[i - 1][j]);
                }
            }
            /*OUT: {
            Reverse<296, 95_0;>
            Reverse<135, 95_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<120,>}*/
#pragma omp barrier
#pragma omp for schedule(static) nowait
            /*OUT: {
            Reverse<120,>}*/
            /*OUT: {
            Reverse<120,>}*/
            /*OUT: {
            Reverse<120, 127_1;>}*/
            for (i = 1; i < n - 1; i++) {
                /*OUT: {
                Reverse<120,>}*/
                /*OUT: {
                Reverse<120,>}*/
                /*OUT: {
                Reverse<120, 127_0;>}*/
                for (j = 1; j < n - 1; j++) {
                    /*OUT: {
                    Reverse<120, 127_0;>}*/
                    A[i][j] = B[i][j];
                }
            }
            /*OUT: {
            Reverse<120,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<135,>}*/
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
    int n = 1000;
    /*OUT: {
    Reverse<--,>}*/
    int tsteps = 20;
    /*OUT: {
    Reverse<--,>}*/
    double ( *A )[1000 + 0][1000 + 0];
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
    _imopVarPre145 = (1000 + 0) * (1000 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    A = (double (*)[1000 + 0][1000 + 0]) _imopVarPre146;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *B )[1000 + 0][1000 + 0];
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
    _imopVarPre151 = (1000 + 0) * (1000 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    B = (double (*)[1000 + 0][1000 + 0]) _imopVarPre152;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre155 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre156 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre155 = *B;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre156 = *A;
    /*OUT: {
    Reverse<--,>}*/
    init_array(n, _imopVarPre156, _imopVarPre155);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre159 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    double ( *_imopVarPre160 )[1000 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre159 = *B;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre160 = *A;
    /*OUT: {
    Reverse<--,>}*/
    kernel_jacobi_2d_imper(tsteps, n, _imopVarPre160, _imopVarPre159);
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
    int _imopVarPre164;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre165;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre166;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre164 = argc > 42;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre164) {
        /*OUT: {
        Reverse<--, 208_0;>}*/
        _imopVarPre165 = argv[0];
        /*OUT: {
        Reverse<--, 208_0;>}*/
        _imopVarPre166 = strcmp(_imopVarPre165, "");
        /*OUT: {
        Reverse<--, 208_0;>}*/
        /*OUT: {
        Reverse<--, 208_0;>}*/
        _imopVarPre164 = !_imopVarPre166;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre164) {
        /*OUT: {
        Reverse<--, 220_0;>}*/
        double ( *_imopVarPre168 )[1000 + 0];
        /*OUT: {
        Reverse<--, 220_0;>}*/
        _imopVarPre168 = *A;
        /*OUT: {
        Reverse<--, 220_0;>}*/
        print_array(n, _imopVarPre168);
        /*OUT: {
        Reverse<--, 220_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre170;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre170 = (void *) A;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre170);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre172;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre172 = (void *) B;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre172);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    return 0;
}
