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
static void init_array(int length, int c[50 + 0][50 + 0] , int W[50 + 0][50 + 0]) {
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
    for (i = 0; i < length; i++) {
        /*OUT: {
        Reverse<--, 38_0;>}*/
        /*OUT: {
        Reverse<--, 38_0;>}*/
        /*OUT: {
        Reverse<--, 41_0; 38_0;>}*/
        for (j = 0; j < length; j++) {
            /*OUT: {
            Reverse<--, 41_0; 38_0;>}*/
            c[i][j] = i * j % 2;
            /*OUT: {
            Reverse<--, 41_0; 38_0;>}*/
            W[i][j] = ((int) i - j) / length;
        }
    }
}
/*OUT: {
Reverse<--,>}*/
static void print_array(int out) {
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "%d ", out);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--,>}*/
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
static void kernel_dynprog(int tsteps, int length , int c[50 + 0][50 + 0] , int W[50 + 0][50 + 0] , int sum_c[50 + 0][50 + 0][50 + 0] , int *out) {
    /*OUT: {
    Reverse<--,>}*/
    int iter;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int out_l = 0;
#pragma omp parallel
    {
        /*OUT: {
        Reverse<303,>}*/
        /*OUT: {
        Reverse<303,>
        Reverse<127,>}*/
        /*OUT: {
        Reverse<127,>}*/
        for (iter = 0; iter < tsteps; iter++) {
#pragma omp for private(j) nowait
            /*OUT: {
            Reverse<303, 75_0;>
            Reverse<127, 75_0;>}*/
            /*OUT: {
            Reverse<303, 75_0;>
            Reverse<127, 75_0;>}*/
            /*OUT: {
            Reverse<303, 83_1; 75_0;>
            Reverse<127, 83_1; 75_0;>}*/
            for (i = 0; i <= length - 1; i++) {
                /*OUT: {
                Reverse<303, 75_0;>
                Reverse<127, 75_0;>}*/
                /*OUT: {
                Reverse<303, 75_0;>
                Reverse<127, 75_0;>}*/
                /*OUT: {
                Reverse<303, 83_0; 75_0;>
                Reverse<127, 83_0; 75_0;>}*/
                for (j = 0; j <= length - 1; j++) {
                    /*OUT: {
                    Reverse<303, 83_0; 75_0;>
                    Reverse<127, 83_0; 75_0;>}*/
                    c[i][j] = 0;
                }
            }
            /*OUT: {
            Reverse<303, 75_0;>
            Reverse<127, 75_0;>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<89,>}*/
#pragma omp barrier
#pragma omp for private(j, k) nowait
            /*OUT: {
            Reverse<89,>}*/
            /*OUT: {
            Reverse<89,>}*/
            /*OUT: {
            Reverse<89, 96_1;>}*/
            for (i = 0; i <= length - 2; i++) {
                /*OUT: {
                Reverse<89,>}*/
                /*OUT: {
                Reverse<89,>}*/
                /*OUT: {
                Reverse<89, 104_1; 96_0;>}*/
                for (j = i + 1; j <= length - 1; j++) {
                    /*OUT: {
                    Reverse<89, 96_0;>}*/
                    sum_c[i][j][i] = 0;
                    /*OUT: {
                    Reverse<89, 96_0;>}*/
                    /*OUT: {
                    Reverse<89, 96_0;>}*/
                    /*OUT: {
                    Reverse<89, 104_0; 96_0;>}*/
                    for (k = i + 1; k <= j - 1; k++) {
                        /*OUT: {
                        Reverse<89, 104_0; 96_0;>}*/
                        sum_c[i][j][k] = sum_c[i][j][k - 1] + c[i][k] + c[k][j];
                    }
                    /*OUT: {
                    Reverse<89, 104_1; 96_0;>}*/
                    c[i][j] = sum_c[i][j][j - 1] + W[i][j];
                }
            }
            /*OUT: {
            Reverse<89,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<127,>}*/
#pragma omp barrier
            /*OUT: {
            Reverse<127,>}*/
            out_l += c[0][length - 1];
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    *out = out_l;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    int length = 50;
    /*OUT: {
    Reverse<--,>}*/
    int tsteps = 10000;
    /*OUT: {
    Reverse<--,>}*/
    int out;
    /*OUT: {
    Reverse<--,>}*/
    int ( *sum_c )[50 + 0][50 + 0][50 + 0];
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre142;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre143;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre144;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre142 = sizeof(int);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre143 = (50 + 0) * (50 + 0) * (50 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre144 = polybench_alloc_data(_imopVarPre143, _imopVarPre142);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    sum_c = (int (*)[50 + 0][50 + 0][50 + 0]) _imopVarPre144;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    int ( *c )[50 + 0][50 + 0];
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
    _imopVarPre148 = sizeof(int);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre149 = (50 + 0) * (50 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre150 = polybench_alloc_data(_imopVarPre149, _imopVarPre148);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    c = (int (*)[50 + 0][50 + 0]) _imopVarPre150;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    int ( *W )[50 + 0][50 + 0];
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
    _imopVarPre154 = sizeof(int);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre155 = (50 + 0) * (50 + 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre156 = polybench_alloc_data(_imopVarPre155, _imopVarPre154);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    W = (int (*)[50 + 0][50 + 0]) _imopVarPre156;
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    int ( *_imopVarPre159 )[50 + 0];
    /*OUT: {
    Reverse<--,>}*/
    int ( *_imopVarPre160 )[50 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre159 = *W;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre160 = *c;
    /*OUT: {
    Reverse<--,>}*/
    init_array(length, _imopVarPre160, _imopVarPre159);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre165;
    /*OUT: {
    Reverse<--,>}*/
    int ( *_imopVarPre166 )[50 + 0][50 + 0];
    /*OUT: {
    Reverse<--,>}*/
    int ( *_imopVarPre167 )[50 + 0];
    /*OUT: {
    Reverse<--,>}*/
    int ( *_imopVarPre168 )[50 + 0];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre165 = &out;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre166 = *sum_c;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre167 = *W;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre168 = *c;
    /*OUT: {
    Reverse<--,>}*/
    kernel_dynprog(tsteps, length, _imopVarPre168, _imopVarPre167, _imopVarPre166, _imopVarPre165);
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
    int _imopVarPre172;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre173;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre174;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre172 = argc > 42;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre172) {
        /*OUT: {
        Reverse<--, 233_0;>}*/
        _imopVarPre173 = argv[0];
        /*OUT: {
        Reverse<--, 233_0;>}*/
        _imopVarPre174 = strcmp(_imopVarPre173, "");
        /*OUT: {
        Reverse<--, 233_0;>}*/
        /*OUT: {
        Reverse<--, 233_0;>}*/
        _imopVarPre172 = !_imopVarPre174;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre172) {
        /*OUT: {
        Reverse<--, 245_0;>}*/
        print_array(out);
        /*OUT: {
        Reverse<--, 245_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre176;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre176 = (void *) sum_c;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre176);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre178;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre178 = (void *) c;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre178);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre180;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre180 = (void *) W;
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
    return 0;
}
