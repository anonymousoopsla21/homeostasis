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
static void init_array(int n, double A[10000 + 0] , double B[10000 + 0]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 37_0;>}*/
    for (i = 0; i < n; i++) {
        /*OUT: {
        Reverse<--, 37_0;>}*/
        A[i] = ((double) i + 2) / n;
        /*OUT: {
        Reverse<--, 37_0;>}*/
        B[i] = ((double) i + 3) / n;
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void print_array(int n, double A[10000 + 0]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 51_0;>}*/
    for (i = 0; i < n; i++) {
        /*OUT: {
        Reverse<--, 51_0;>}*/
        double _imopVarPre140;
        /*OUT: {
        Reverse<--, 51_0;>}*/
        _imopVarPre140 = A[i];
        /*OUT: {
        Reverse<--, 51_0;>}*/
        fprintf(__stderrp, "%0.2lf ", _imopVarPre140);
        /*OUT: {
        Reverse<--, 51_0;>}*/
        /*OUT: {
        Reverse<--, 51_0;>}*/
        if (i % 20 == 0) {
            /*OUT: {
            Reverse<--, 62_0; 51_0;>}*/
            fprintf(__stderrp, "\n");
            /*OUT: {
            Reverse<--, 62_0; 51_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 51_1;>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--, 51_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void kernel_jacobi_1d_imper(int tsteps, int n , double A[10000 + 0] , double B[10000 + 0]) {
    /*OUT: {
    Reverse<--,>}*/
    int t;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
#pragma omp parallel
    {
        /*OUT: {
        Reverse<244,>}*/
        /*OUT: {
        Reverse<244,>
        Reverse<107,>}*/
        /*OUT: {
        Reverse<107,>}*/
        for (t = 0; t < tsteps; t++) {
#pragma omp for schedule(static) nowait
            /*OUT: {
            Reverse<244, 81_0;>
            Reverse<107, 81_0;>}*/
            /*OUT: {
            Reverse<244, 81_0;>
            Reverse<107, 81_0;>}*/
            /*OUT: {
            Reverse<244, 81_0;>
            Reverse<107, 81_0;>}*/
            for (i = 1; i < n - 1; i++) {
                /*OUT: {
                Reverse<244, 81_0;>
                Reverse<107, 81_0;>}*/
                B[i] = 0.33333 * (A[i - 1] + A[i] + A[i + 1]);
            }
            /*OUT: {
            Reverse<244, 81_0;>
            Reverse<107, 81_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<95,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<95,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<96,>}*/
#pragma omp barrier
#pragma omp for schedule(static) nowait
            /*OUT: {
            Reverse<96,>}*/
            /*OUT: {
            Reverse<96,>}*/
            /*OUT: {
            Reverse<96,>}*/
            for (j = 1; j < n - 1; j++) {
                /*OUT: {
                Reverse<96,>}*/
                A[j] = B[j];
            }
            /*OUT: {
            Reverse<96,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<106,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<106,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<107,>}*/
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
    int n = 10000;
    /*OUT: {
    Reverse<--,>}*/
    int tsteps = 100;
    /*OUT: {
    Reverse<--,>}*/
    double ( *A )[10000 + 0];
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
    _imopVarPre145 = 10000 + 0;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre146 = polybench_alloc_data(_imopVarPre145, _imopVarPre144);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    A = (double (*)[10000 + 0]) _imopVarPre146;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double ( *B )[10000 + 0];
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
    _imopVarPre151 = 10000 + 0;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre152 = polybench_alloc_data(_imopVarPre151, _imopVarPre150);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    B = (double (*)[10000 + 0]) _imopVarPre152;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre155;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre156;
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
    double *_imopVarPre159;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre160;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre159 = *B;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre160 = *A;
    /*OUT: {
    Reverse<--,>}*/
    kernel_jacobi_1d_imper(tsteps, n, _imopVarPre160, _imopVarPre159);
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
        Reverse<--, 176_0;>}*/
        _imopVarPre165 = argv[0];
        /*OUT: {
        Reverse<--, 176_0;>}*/
        _imopVarPre166 = strcmp(_imopVarPre165, "");
        /*OUT: {
        Reverse<--, 176_0;>}*/
        /*OUT: {
        Reverse<--, 176_0;>}*/
        _imopVarPre164 = !_imopVarPre166;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre164) {
        /*OUT: {
        Reverse<--, 188_0;>}*/
        double *_imopVarPre168;
        /*OUT: {
        Reverse<--, 188_0;>}*/
        _imopVarPre168 = *A;
        /*OUT: {
        Reverse<--, 188_0;>}*/
        print_array(n, _imopVarPre168);
        /*OUT: {
        Reverse<--, 188_0;>}*/
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
