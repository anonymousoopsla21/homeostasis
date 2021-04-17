
/*READ_S: []
WRITE_S: []*/
typedef long long __int64_t;
/*READ_S: []
WRITE_S: []*/
typedef long unsigned int __darwin_size_t;
/*READ_S: []
WRITE_S: []*/
typedef __int64_t __darwin_off_t;
/*READ_S: []
WRITE_S: []*/
typedef __darwin_size_t size_t;
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
WRITE_S: [fclose]*/
int fclose(FILE *);
/*READ_S: []
WRITE_S: [fgetc]*/
int fgetc(FILE *);
/*READ_S: []
WRITE_S: [fopen]*/
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
/*READ_S: []
WRITE_S: [fscanf]*/
int fscanf(FILE *restrict , const char *restrict , ...);
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [malloc]*/
void *malloc(size_t __size);
/*READ_S: []
WRITE_S: [fabs]*/
extern double fabs(double );
/*READ_S: []
WRITE_S: [pow]*/
extern double pow(double , double );
/*READ_S: []
WRITE_S: [sqrt]*/
extern double sqrt(double );
/*READ_S: []
WRITE_S: []*/
typedef int boolean;
/*READ_S: []
WRITE_S: [randlc]*/
extern double randlc(double *, double );
/*READ_S: []
WRITE_S: [vranlc]*/
extern void vranlc(int , double * , double  , double *);
/*READ_S: []
WRITE_S: [timer_clear]*/
extern void timer_clear(int );
/*READ_S: []
WRITE_S: [timer_start]*/
extern void timer_start(int );
/*READ_S: []
WRITE_S: [timer_stop]*/
extern void timer_stop(int );
/*READ_S: []
WRITE_S: [timer_read]*/
extern double timer_read(int );
/*READ_S: []
WRITE_S: [c_print_results]*/
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
/*READ_S: []
WRITE_S: [nx, nx.f]*/
static int nx[11 + 1];
/*READ_S: []
WRITE_S: [ny.f, ny]*/
static int ny[11 + 1];
/*READ_S: []
WRITE_S: [nz, nz.f]*/
static int nz[11 + 1];
/*READ_S: []
WRITE_S: [Class]*/
static char Class;
/*READ_S: []
WRITE_S: [debug_vec, debug_vec.f]*/
static int debug_vec[8];
/*READ_S: []
WRITE_S: [m1, m1.f]*/
static int m1[11 + 1];
/*READ_S: []
WRITE_S: [m2.f, m2]*/
static int m2[11 + 1];
/*READ_S: []
WRITE_S: [m3, m3.f]*/
static int m3[11 + 1];
/*READ_S: []
WRITE_S: [lt]*/
static int lt;
/*READ_S: []
WRITE_S: [lb]*/
static int lb;
/*READ_S: []
WRITE_S: [is1]*/
static int is1;
/*READ_S: []
WRITE_S: [is2]*/
static int is2;
/*READ_S: []
WRITE_S: [is3]*/
static int is3;
/*READ_S: []
WRITE_S: [ie1]*/
static int ie1;
/*READ_S: []
WRITE_S: [ie2]*/
static int ie2;
/*READ_S: []
WRITE_S: [ie3]*/
static int ie3;
/*READ_S: []
WRITE_S: [setup]*/
static void setup(int *n1, int *n2 , int *n3 , int lt);
/*READ_S: []
WRITE_S: [mg3P]*/
static void mg3P(double ****u, double ***v , double ****r , double a[4] , double c[4] , int n1 , int n2 , int n3 , int k);
/*READ_S: []
WRITE_S: [psinv]*/
static void psinv(double ***r, double ***u , int n1 , int n2 , int n3 , double c[4] , int k);
/*READ_S: []
WRITE_S: [resid]*/
static void resid(double ***u, double ***v , double ***r , int n1 , int n2 , int n3 , double a[4] , int k);
/*READ_S: []
WRITE_S: [rprj3]*/
static void rprj3(double ***r, int m1k , int m2k , int m3k , double ***s , int m1j , int m2j , int m3j , int k);
/*READ_S: []
WRITE_S: [interp]*/
static void interp(double ***z, int mm1 , int mm2 , int mm3 , double ***u , int n1 , int n2 , int n3 , int k);
/*READ_S: []
WRITE_S: [norm2u3]*/
static void norm2u3(double ***r, int n1 , int n2 , int n3 , double *rnm2 , double *rnmu , int nx , int ny , int nz);
/*READ_S: []
WRITE_S: [rep_nrm]*/
static void rep_nrm(double ***u, int n1 , int n2 , int n3 , char *title , int kk);
/*READ_S: []
WRITE_S: [comm3]*/
static void comm3(double ***u, int n1 , int n2 , int n3 , int kk);
/*READ_S: []
WRITE_S: [zran3]*/
static void zran3(double ***z, int n1 , int n2 , int n3 , int nx , int ny , int k);
/*READ_S: []
WRITE_S: [showall]*/
static void showall(double ***z, int n1 , int n2 , int n3);
/*READ_S: []
WRITE_S: [power]*/
static double power(double a, int n);
/*READ_S: []
WRITE_S: [bubble]*/
static void bubble(double ten[1037][2], int j1[1037][2] , int j2[1037][2] , int j3[1037][2] , int m , int ind);
/*READ_S: []
WRITE_S: [zero3]*/
static void zero3(double ***z, int n1 , int n2 , int n3);
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [lt, v, m3.f, nx, r, c_print_results, n2, mm3, _imopVarPre436, _imopVarPre168, r, is2, n1, j3, pow, norm2u3, _imopVarPre166, m3, m2.f, i3, heapCell#8, mm2, bubble, n1, lb, nullCell, malloc, is1, c.f, c, m2j, n2, tmp, i3, d1, m1.f, m2, n2, &lt, fgetc, _imopVarPre483, t1, vranlc, r, n3, heapCell#7, timer_clear, Class, u, interp, n3, n1, i3, m1, n1, d2, u, fscanf, n3, i3, t2, resid, i3, m3j, printf, power, zran3, is3, _imopVarPre435, s, u, heapCell#4, rep_nrm, fabs, r, ie2, d3, comm3, _imopVarPre160, z, timer_start, i2, t3, n2, fopen, a, debug_vec, psinv, _imopVarPre158, heapCell#2, _imopVarPre162, d3, n3, _imopVarPre164, ie1, timer_stop, setup, zero3, nz.f, heapCell#6, showall, i3, n3, heapCell#3, n1, debug_vec.f, _imopVarPre169, fclose, n2, d2, z, rprj3, heapCell#5, heapCell#10, _imopVarPre487, ny.f, nz, _imopVarPre491, mm1, &heapCell#8, n2, i3, s, d1, z, randlc, timer_read, sqrt, ie3, mg3P, u, ny, nx.f, n1, heapCell#1, a.f, heapCell#0, n3, m1j, heapCell#9]
WRITE_S: [ie2, m1.f, lt, heapCell#5, m3.f, heapCell#10, ny.f, is2, s, heapCell#7, heapCell#2, Class, m2.f, ie1, ie3, heapCell#8, nx.f, nz.f, heapCell#6, heapCell#1, heapCell#3, lb, nullCell, is1, heapCell#0, is3, debug_vec.f, tmp, heapCell#9, heapCell#4]*/
int main(int argc, char *argv[]) {
/*READ_S: [lt, v, m3.f, nx, r, c_print_results, n2, mm3, _imopVarPre436, _imopVarPre168, r, is2, n1, j3, pow, norm2u3, _imopVarPre166, m3, m2.f, i3, heapCell#8, mm2, bubble, n1, lb, nullCell, malloc, is1, c.f, c, m2j, n2, tmp, i3, d1, m1.f, m2, n2, &lt, fgetc, _imopVarPre483, t1, vranlc, r, n3, heapCell#7, timer_clear, Class, u, interp, n3, n1, i3, m1, n1, d2, u, fscanf, n3, i3, t2, resid, i3, m3j, printf, power, zran3, is3, _imopVarPre435, s, u, heapCell#4, rep_nrm, fabs, r, ie2, d3, comm3, _imopVarPre160, z, timer_start, i2, t3, n2, fopen, a, debug_vec, psinv, _imopVarPre158, heapCell#2, _imopVarPre162, d3, n3, _imopVarPre164, ie1, timer_stop, setup, zero3, nz.f, heapCell#6, showall, i3, n3, heapCell#3, n1, debug_vec.f, _imopVarPre169, fclose, n2, d2, z, rprj3, heapCell#5, heapCell#10, _imopVarPre487, ny.f, nz, _imopVarPre491, mm1, &heapCell#8, n2, i3, s, d1, z, randlc, timer_read, sqrt, ie3, mg3P, u, ny, nx.f, n1, heapCell#1, a.f, heapCell#0, n3, m1j, heapCell#9]
WRITE_S: [ie2, m1.f, lt, heapCell#5, m3.f, heapCell#10, ny.f, is2, s, heapCell#7, heapCell#2, Class, m2.f, ie1, ie3, heapCell#8, nx.f, nz.f, heapCell#6, heapCell#1, heapCell#3, lb, nullCell, is1, heapCell#0, is3, debug_vec.f, tmp, heapCell#9, heapCell#4]*/
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int it;
    /*READ_S: []
    WRITE_S: []*/
    double t;
    /*READ_S: []
    WRITE_S: []*/
    double tinit;
    /*READ_S: []
    WRITE_S: []*/
    double mflops;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads = 1;
    /*READ_S: []
    WRITE_S: []*/
    double ****u;
    /*READ_S: []
    WRITE_S: []*/
    double ***v;
    /*READ_S: []
    WRITE_S: []*/
    double ****r;
    /*READ_S: []
    WRITE_S: []*/
    double a[4];
    /*READ_S: []
    WRITE_S: []*/
    double c[4];
    /*READ_S: []
    WRITE_S: []*/
    double rnm2;
    /*READ_S: []
    WRITE_S: []*/
    double rnmu;
    /*READ_S: []
    WRITE_S: []*/
    double epsilon = 1.0e-8;
    /*READ_S: []
    WRITE_S: []*/
    int n1;
    /*READ_S: []
    WRITE_S: []*/
    int n2;
    /*READ_S: []
    WRITE_S: []*/
    int n3;
    /*READ_S: []
    WRITE_S: []*/
    int nit;
    /*READ_S: []
    WRITE_S: []*/
    double verify_value;
    /*READ_S: []
    WRITE_S: []*/
    boolean verified;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int l;
    /*READ_S: []
    WRITE_S: []*/
    FILE *fp;
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    timer_clear(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    timer_clear(2);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_start]
    WRITE_S: []*/
    timer_start(2);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - MG Benchmark\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fopen]
    WRITE_S: []*/
    fp = fopen("mg.input", "r");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lt, &lt, nx, nz, fscanf, ny.f, fgetc, ny, nx.f, nz.f, printf, debug_vec, nullCell, debug_vec.f, fclose]
    WRITE_S: [lt, nullCell, debug_vec.f, ny.f, nx.f, nz.f]*/
    if (fp != ((void *) 0)) {
    /*READ_S: [lt, &lt, nx, fscanf, ny.f, nz, fgetc, ny, nx.f, nz.f, printf, debug_vec, nullCell, debug_vec.f, fclose]
    WRITE_S: [lt, nullCell, debug_vec.f, ny.f, nx.f, nz.f]*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Reading from input file mg.input\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre141;
        /*READ_S: [&lt]
        WRITE_S: []*/
        _imopVarPre141 = &lt;
        /*READ_S: [lt, nullCell, fscanf]
        WRITE_S: [lt, nullCell]*/
        fscanf(fp, "%d", _imopVarPre141);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre143;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre143 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre143 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre143 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre147;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre148;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre149;
        /*READ_S: [lt, nz]
        WRITE_S: []*/
        _imopVarPre147 = &nz[lt];
        /*READ_S: [lt, ny]
        WRITE_S: []*/
        _imopVarPre148 = &ny[lt];
        /*READ_S: [lt, nx]
        WRITE_S: []*/
        _imopVarPre149 = &nx[lt];
        /*READ_S: [nullCell, fscanf, ny.f, nx.f, nz.f]
        WRITE_S: [nullCell, ny.f, nx.f, nz.f]*/
        fscanf(fp, "%d%d%d", _imopVarPre149, _imopVarPre148, _imopVarPre147);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre151;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre151 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre151 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre151 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre153;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre153 = &nit;
        /*READ_S: [nullCell, fscanf]
        WRITE_S: [nullCell]*/
        fscanf(fp, "%d", _imopVarPre153);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre155;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre155 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre155 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre155 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [debug_vec, nullCell, debug_vec.f, fscanf]
        WRITE_S: [nullCell, debug_vec.f]*/
        for (i = 0; i <= 7; i++) {
        /*READ_S: [debug_vec, nullCell, debug_vec.f, fscanf]
        WRITE_S: [nullCell, debug_vec.f]*/
            /*READ_S: []
            WRITE_S: []*/
            int *_imopVarPre157;
            /*READ_S: [debug_vec]
            WRITE_S: []*/
            _imopVarPre157 = &debug_vec[i];
            /*READ_S: [nullCell, debug_vec.f, fscanf]
            WRITE_S: [nullCell, debug_vec.f]*/
            fscanf(fp, "%d", _imopVarPre157);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [nullCell, fclose]
        WRITE_S: [nullCell]*/
        fclose(fp);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf, debug_vec, lt, nx, nz, ny]
    WRITE_S: [lt, debug_vec.f, ny.f, nx.f, nz.f]*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" No input file. Using compiled defaults\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [lt]*/
        lt = 5;
        /*READ_S: []
        WRITE_S: []*/
        nit = 4;
        /*READ_S: [lt, nx]
        WRITE_S: [nx.f]*/
        nx[lt] = 32;
        /*READ_S: [lt, ny]
        WRITE_S: [ny.f]*/
        ny[lt] = 32;
        /*READ_S: [lt, nz]
        WRITE_S: [nz.f]*/
        nz[lt] = 32;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [debug_vec]
        WRITE_S: [debug_vec.f]*/
        for (i = 0; i <= 7; i++) {
        /*READ_S: [debug_vec]
        WRITE_S: [debug_vec.f]*/
            /*READ_S: [debug_vec]
            WRITE_S: [debug_vec.f]*/
            debug_vec[i] = 0;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre158;
    /*READ_S: [lt, nx, ny.f, nx.f, ny]
    WRITE_S: []*/
    _imopVarPre158 = (nx[lt] != ny[lt]);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lt, nx, nz, nx.f, nz.f]
    WRITE_S: []*/
    if (!_imopVarPre158) {
    /*READ_S: [lt, nx, nz, nx.f, nz.f]
    WRITE_S: []*/
        /*READ_S: [lt, nx, nz, nx.f, nz.f]
        WRITE_S: []*/
        _imopVarPre158 = (nx[lt] != nz[lt]);
    }
    /*READ_S: [_imopVarPre158]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre168, _imopVarPre164, lt, nx, _imopVarPre160, nx.f, _imopVarPre158, _imopVarPre166, _imopVarPre162]
    WRITE_S: [Class]*/
    if (_imopVarPre158) {
    /*READ_S: []
    WRITE_S: [Class]*/
        /*READ_S: []
        WRITE_S: [Class]*/
        Class = 'U';
    } else {
    /*READ_S: [_imopVarPre168, _imopVarPre164, lt, nx, _imopVarPre160, nx.f, _imopVarPre166, _imopVarPre162]
    WRITE_S: [Class]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre160;
        /*READ_S: [lt, nx, nx.f]
        WRITE_S: []*/
        _imopVarPre160 = nx[lt] == 32;
        /*READ_S: [_imopVarPre160]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre160]
        WRITE_S: []*/
        if (_imopVarPre160) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre160 = nit == 4;
        }
        /*READ_S: [_imopVarPre160]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre168, _imopVarPre164, lt, nx, _imopVarPre160, nx.f, _imopVarPre166, _imopVarPre162]
        WRITE_S: [Class]*/
        if (_imopVarPre160) {
        /*READ_S: []
        WRITE_S: [Class]*/
            /*READ_S: []
            WRITE_S: [Class]*/
            Class = 'S';
        } else {
        /*READ_S: [_imopVarPre168, _imopVarPre164, lt, nx, nx.f, _imopVarPre166, _imopVarPre162]
        WRITE_S: [Class]*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre162;
            /*READ_S: [lt, nx, nx.f]
            WRITE_S: []*/
            _imopVarPre162 = nx[lt] == 64;
            /*READ_S: [_imopVarPre162]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre162]
            WRITE_S: []*/
            if (_imopVarPre162) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre162 = nit == 40;
            }
            /*READ_S: [_imopVarPre162]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre168, _imopVarPre164, lt, nx, nx.f, _imopVarPre166, _imopVarPre162]
            WRITE_S: [Class]*/
            if (_imopVarPre162) {
            /*READ_S: []
            WRITE_S: [Class]*/
                /*READ_S: []
                WRITE_S: [Class]*/
                Class = 'W';
            } else {
            /*READ_S: [_imopVarPre168, _imopVarPre164, lt, nx, nx.f, _imopVarPre166]
            WRITE_S: [Class]*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre164;
                /*READ_S: [lt, nx, nx.f]
                WRITE_S: []*/
                _imopVarPre164 = nx[lt] == 256;
                /*READ_S: [_imopVarPre164]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre164]
                WRITE_S: []*/
                if (_imopVarPre164) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre164 = nit == 20;
                }
                /*READ_S: [_imopVarPre164]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre168, _imopVarPre164, lt, nx, nx.f, _imopVarPre166]
                WRITE_S: [Class]*/
                if (_imopVarPre164) {
                /*READ_S: []
                WRITE_S: [Class]*/
                    /*READ_S: []
                    WRITE_S: [Class]*/
                    Class = 'B';
                } else {
                /*READ_S: [_imopVarPre168, lt, nx, nx.f, _imopVarPre166]
                WRITE_S: [Class]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre166;
                    /*READ_S: [lt, nx, nx.f]
                    WRITE_S: []*/
                    _imopVarPre166 = nx[lt] == 512;
                    /*READ_S: [_imopVarPre166]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre166]
                    WRITE_S: []*/
                    if (_imopVarPre166) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre166 = nit == 20;
                    }
                    /*READ_S: [_imopVarPre166]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre168, lt, nx, nx.f, _imopVarPre166]
                    WRITE_S: [Class]*/
                    if (_imopVarPre166) {
                    /*READ_S: []
                    WRITE_S: [Class]*/
                        /*READ_S: []
                        WRITE_S: [Class]*/
                        Class = 'C';
                    } else {
                    /*READ_S: [_imopVarPre168, lt, nx, nx.f]
                    WRITE_S: [Class]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        int _imopVarPre168;
                        /*READ_S: [lt, nx, nx.f]
                        WRITE_S: []*/
                        _imopVarPre168 = nx[lt] == 256;
                        /*READ_S: [_imopVarPre168]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre168]
                        WRITE_S: []*/
                        if (_imopVarPre168) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre168 = nit == 4;
                        }
                        /*READ_S: [_imopVarPre168]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre168]
                        WRITE_S: [Class]*/
                        if (_imopVarPre168) {
                        /*READ_S: []
                        WRITE_S: [Class]*/
                            /*READ_S: []
                            WRITE_S: [Class]*/
                            Class = 'A';
                        } else {
                        /*READ_S: []
                        WRITE_S: [Class]*/
                            /*READ_S: []
                            WRITE_S: [Class]*/
                            Class = 'U';
                        }
                    }
                }
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    a[0] = -8.0 / 3.0;
    /*READ_S: []
    WRITE_S: []*/
    a[1] = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    a[2] = 1.0 / 6.0;
    /*READ_S: []
    WRITE_S: []*/
    a[3] = 1.0 / 12.0;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre169;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre170;
    /*READ_S: [Class]
    WRITE_S: []*/
    _imopVarPre169 = Class == 'A';
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Class]
    WRITE_S: []*/
    if (!_imopVarPre169) {
    /*READ_S: [Class]
    WRITE_S: []*/
        /*READ_S: [Class]
        WRITE_S: []*/
        _imopVarPre170 = Class == 'S';
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [Class]
        WRITE_S: []*/
        if (!_imopVarPre170) {
        /*READ_S: [Class]
        WRITE_S: []*/
            /*READ_S: [Class]
            WRITE_S: []*/
            _imopVarPre170 = Class == 'W';
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre169 = _imopVarPre170;
    }
    /*READ_S: [_imopVarPre169]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre169]
    WRITE_S: []*/
    if (_imopVarPre169) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        c[0] = -3.0 / 8.0;
        /*READ_S: []
        WRITE_S: []*/
        c[1] = 1.0 / 32.0;
        /*READ_S: []
        WRITE_S: []*/
        c[2] = -1.0 / 64.0;
        /*READ_S: []
        WRITE_S: []*/
        c[3] = 0.0;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        c[0] = -3.0 / 17.0;
        /*READ_S: []
        WRITE_S: []*/
        c[1] = 1.0 / 33.0;
        /*READ_S: []
        WRITE_S: []*/
        c[2] = -1.0 / 61.0;
        /*READ_S: []
        WRITE_S: []*/
        c[3] = 0.0;
    }
    /*READ_S: []
    WRITE_S: [lb]*/
    lb = 1;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre174;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre175;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre176;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre174 = &n3;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre175 = &n2;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre176 = &n1;
    /*READ_S: [lt, setup]
    WRITE_S: []*/
    setup(_imopVarPre176, _imopVarPre175, _imopVarPre174, lt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre179;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre180;
    /*READ_S: [lt]
    WRITE_S: []*/
    _imopVarPre179 = (lt + 1) * sizeof(double ***);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre180 = malloc(_imopVarPre179);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    u = (double ****) _imopVarPre180;
    /*READ_S: [lt]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [m1, m3, m2.f, m1.f, m2, lt, m3.f, malloc, heapCell#0, heapCell#4]
    WRITE_S: [heapCell#0, heapCell#4, heapCell#6]*/
    for (l = lt; l >= 1; l--) {
    /*READ_S: [m1, m3, m2.f, m1.f, m2, m3.f, malloc, heapCell#0, heapCell#4]
    WRITE_S: [heapCell#0, heapCell#4, heapCell#6]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre183;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre184;
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        _imopVarPre183 = m3[l] * sizeof(double **);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre184 = malloc(_imopVarPre183);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#4]*/
        u[l] = (double ***) _imopVarPre184;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [m1, m2.f, m3, m1.f, m2, malloc, heapCell#0, m3.f, heapCell#4]
        WRITE_S: [heapCell#0, heapCell#6]*/
        for (k = 0; k < m3[l]; k++) {
        /*READ_S: [m1, m2.f, m1.f, m2, malloc, heapCell#0, heapCell#4]
        WRITE_S: [heapCell#0, heapCell#6]*/
            /*READ_S: []
            WRITE_S: []*/
            unsigned long int _imopVarPre187;
            /*READ_S: []
            WRITE_S: []*/
            void *_imopVarPre188;
            /*READ_S: [m2.f, m2]
            WRITE_S: []*/
            _imopVarPre187 = m2[l] * sizeof(double *);
            /*READ_S: [malloc]
            WRITE_S: []*/
            _imopVarPre188 = malloc(_imopVarPre187);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#4]
            WRITE_S: [heapCell#0]*/
            u[l][k] = (double **) _imopVarPre188;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [m2.f, m2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [m1, m2.f, m1.f, m2, heapCell#0, malloc, heapCell#4]
            WRITE_S: [heapCell#6]*/
            for (j = 0; j < m2[l]; j++) {
            /*READ_S: [m1, m1.f, heapCell#0, malloc, heapCell#4]
            WRITE_S: [heapCell#6]*/
                /*READ_S: []
                WRITE_S: []*/
                unsigned long int _imopVarPre191;
                /*READ_S: []
                WRITE_S: []*/
                void *_imopVarPre192;
                /*READ_S: [m1, m1.f]
                WRITE_S: []*/
                _imopVarPre191 = m1[l] * sizeof(double);
                /*READ_S: [malloc]
                WRITE_S: []*/
                _imopVarPre192 = malloc(_imopVarPre191);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#0, heapCell#4]
                WRITE_S: [heapCell#6]*/
                u[l][k][j] = (double *) _imopVarPre192;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre195;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre196;
    /*READ_S: [m3, lt, m3.f]
    WRITE_S: []*/
    _imopVarPre195 = m3[lt] * sizeof(double **);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre196 = malloc(_imopVarPre195);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    v = (double ***) _imopVarPre196;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [m3, lt, m3.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [m1, m2.f, m3, m1.f, m2, lt, malloc, m3.f, heapCell#7]
    WRITE_S: [heapCell#1, heapCell#7]*/
    for (k = 0; k < m3[lt]; k++) {
    /*READ_S: [m1, m2.f, m1.f, m2, lt, malloc, heapCell#7]
    WRITE_S: [heapCell#1, heapCell#7]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre199;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre200;
        /*READ_S: [m2.f, m2, lt]
        WRITE_S: []*/
        _imopVarPre199 = m2[lt] * sizeof(double *);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre200 = malloc(_imopVarPre199);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#7]*/
        v[k] = (double **) _imopVarPre200;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [m2.f, m2, lt]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [m1, m2.f, m1.f, m2, lt, malloc, heapCell#7]
        WRITE_S: [heapCell#1]*/
        for (j = 0; j < m2[lt]; j++) {
        /*READ_S: [m1, m1.f, lt, malloc, heapCell#7]
        WRITE_S: [heapCell#1]*/
            /*READ_S: []
            WRITE_S: []*/
            unsigned long int _imopVarPre203;
            /*READ_S: []
            WRITE_S: []*/
            void *_imopVarPre204;
            /*READ_S: [m1, m1.f, lt]
            WRITE_S: []*/
            _imopVarPre203 = m1[lt] * sizeof(double);
            /*READ_S: [malloc]
            WRITE_S: []*/
            _imopVarPre204 = malloc(_imopVarPre203);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#7]
            WRITE_S: [heapCell#1]*/
            v[k][j] = (double *) _imopVarPre204;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre207;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre208;
    /*READ_S: [lt]
    WRITE_S: []*/
    _imopVarPre207 = (lt + 1) * sizeof(double ***);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre208 = malloc(_imopVarPre207);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    r = (double ****) _imopVarPre208;
    /*READ_S: [lt]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [m1, m3, m2.f, m2, m1.f, lt, m3.f, malloc, heapCell#10, heapCell#2]
    WRITE_S: [heapCell#10, heapCell#2, heapCell#9]*/
    for (l = lt; l >= 1; l--) {
    /*READ_S: [m1, m3, m2.f, m2, m1.f, m3.f, malloc, heapCell#10, heapCell#2]
    WRITE_S: [heapCell#10, heapCell#2, heapCell#9]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre211;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre212;
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        _imopVarPre211 = m3[l] * sizeof(double **);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre212 = malloc(_imopVarPre211);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [heapCell#10]*/
        r[l] = (double ***) _imopVarPre212;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [m1, m2.f, m3, m2, m1.f, heapCell#10, m3.f, malloc, heapCell#2]
        WRITE_S: [heapCell#2, heapCell#9]*/
        for (k = 0; k < m3[l]; k++) {
        /*READ_S: [m1, m2.f, m2, m1.f, heapCell#10, malloc, heapCell#2]
        WRITE_S: [heapCell#2, heapCell#9]*/
            /*READ_S: []
            WRITE_S: []*/
            unsigned long int _imopVarPre215;
            /*READ_S: []
            WRITE_S: []*/
            void *_imopVarPre216;
            /*READ_S: [m2.f, m2]
            WRITE_S: []*/
            _imopVarPre215 = m2[l] * sizeof(double *);
            /*READ_S: [malloc]
            WRITE_S: []*/
            _imopVarPre216 = malloc(_imopVarPre215);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#10]
            WRITE_S: [heapCell#2]*/
            r[l][k] = (double **) _imopVarPre216;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [m2.f, m2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [m1, m2.f, m2, m1.f, heapCell#10, malloc, heapCell#2]
            WRITE_S: [heapCell#9]*/
            for (j = 0; j < m2[l]; j++) {
            /*READ_S: [m1, m1.f, malloc, heapCell#10, heapCell#2]
            WRITE_S: [heapCell#9]*/
                /*READ_S: []
                WRITE_S: []*/
                unsigned long int _imopVarPre219;
                /*READ_S: []
                WRITE_S: []*/
                void *_imopVarPre220;
                /*READ_S: [m1, m1.f]
                WRITE_S: []*/
                _imopVarPre219 = m1[l] * sizeof(double);
                /*READ_S: [malloc]
                WRITE_S: []*/
                _imopVarPre220 = malloc(_imopVarPre219);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#10, heapCell#2]
                WRITE_S: [heapCell#9]*/
                r[l][k][j] = (double *) _imopVarPre220;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre222;
    /*READ_S: [lt, heapCell#4]
    WRITE_S: []*/
    _imopVarPre222 = u[lt];
    /*READ_S: [zero3]
    WRITE_S: []*/
    zero3(_imopVarPre222, n1, n2, n3);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre225;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre226;
    /*READ_S: [lt, ny.f, ny]
    WRITE_S: []*/
    _imopVarPre225 = ny[lt];
    /*READ_S: [lt, nx, nx.f]
    WRITE_S: []*/
    _imopVarPre226 = nx[lt];
    /*READ_S: [zran3, lt]
    WRITE_S: []*/
    zran3(v, n1, n2, n3, _imopVarPre226, _imopVarPre225, lt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre232;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre233;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre234;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre235;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre236;
    /*READ_S: [lt, nz, nz.f]
    WRITE_S: []*/
    _imopVarPre232 = nz[lt];
    /*READ_S: [lt, ny.f, ny]
    WRITE_S: []*/
    _imopVarPre233 = ny[lt];
    /*READ_S: [lt, nx, nx.f]
    WRITE_S: []*/
    _imopVarPre234 = nx[lt];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre235 = &rnmu;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre236 = &rnm2;
    /*READ_S: [norm2u3]
    WRITE_S: []*/
    norm2u3(v, n1, n2, n3, _imopVarPre236, _imopVarPre235, _imopVarPre234, _imopVarPre233, _imopVarPre232);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre240;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre241;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre242;
    /*READ_S: [lt, nz, nz.f]
    WRITE_S: []*/
    _imopVarPre240 = nz[lt];
    /*READ_S: [lt, ny.f, ny]
    WRITE_S: []*/
    _imopVarPre241 = ny[lt];
    /*READ_S: [lt, nx, nx.f]
    WRITE_S: []*/
    _imopVarPre242 = nx[lt];
    /*READ_S: [printf, Class]
    WRITE_S: []*/
    printf(" Size: %3dx%3dx%3d (class %1c)\n", _imopVarPre242, _imopVarPre241, _imopVarPre240, Class);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Iterations: %3d\n", nit);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre245;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre246;
    /*READ_S: [lt, heapCell#10]
    WRITE_S: []*/
    _imopVarPre245 = r[lt];
    /*READ_S: [lt, heapCell#4]
    WRITE_S: []*/
    _imopVarPre246 = u[lt];
    /*READ_S: [lt, resid]
    WRITE_S: []*/
    resid(_imopVarPre246, v, _imopVarPre245, n1, n2, n3, a, lt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre253;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre254;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre255;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre256;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre257;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre258;
    /*READ_S: [lt, nz, nz.f]
    WRITE_S: []*/
    _imopVarPre253 = nz[lt];
    /*READ_S: [lt, ny.f, ny]
    WRITE_S: []*/
    _imopVarPre254 = ny[lt];
    /*READ_S: [lt, nx, nx.f]
    WRITE_S: []*/
    _imopVarPre255 = nx[lt];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre256 = &rnmu;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre257 = &rnm2;
    /*READ_S: [lt, heapCell#10]
    WRITE_S: []*/
    _imopVarPre258 = r[lt];
    /*READ_S: [norm2u3]
    WRITE_S: []*/
    norm2u3(_imopVarPre258, n1, n2, n3, _imopVarPre257, _imopVarPre256, _imopVarPre255, _imopVarPre254, _imopVarPre253);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lt, mg3P]
    WRITE_S: []*/
    mg3P(u, v, r, a, c, n1, n2, n3, lt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre261;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre262;
    /*READ_S: [lt, heapCell#10]
    WRITE_S: []*/
    _imopVarPre261 = r[lt];
    /*READ_S: [lt, heapCell#4]
    WRITE_S: []*/
    _imopVarPre262 = u[lt];
    /*READ_S: [lt, resid]
    WRITE_S: []*/
    resid(_imopVarPre262, v, _imopVarPre261, n1, n2, n3, a, lt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre266;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre267;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre268;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre266 = &n3;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre267 = &n2;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre268 = &n1;
    /*READ_S: [lt, setup]
    WRITE_S: []*/
    setup(_imopVarPre268, _imopVarPre267, _imopVarPre266, lt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre270;
    /*READ_S: [lt, heapCell#4]
    WRITE_S: []*/
    _imopVarPre270 = u[lt];
    /*READ_S: [zero3]
    WRITE_S: []*/
    zero3(_imopVarPre270, n1, n2, n3);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre273;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre274;
    /*READ_S: [lt, ny.f, ny]
    WRITE_S: []*/
    _imopVarPre273 = ny[lt];
    /*READ_S: [lt, nx, nx.f]
    WRITE_S: []*/
    _imopVarPre274 = nx[lt];
    /*READ_S: [zran3, lt]
    WRITE_S: []*/
    zran3(v, n1, n2, n3, _imopVarPre274, _imopVarPre273, lt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_stop]
    WRITE_S: []*/
    timer_stop(2);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_start]
    WRITE_S: []*/
    timer_start(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre277;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre278;
    /*READ_S: [lt, heapCell#10]
    WRITE_S: []*/
    _imopVarPre277 = r[lt];
    /*READ_S: [lt, heapCell#4]
    WRITE_S: []*/
    _imopVarPre278 = u[lt];
    /*READ_S: [lt, resid]
    WRITE_S: []*/
    resid(_imopVarPre278, v, _imopVarPre277, n1, n2, n3, a, lt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre285;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre286;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre287;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre288;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre289;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre290;
    /*READ_S: [lt, nz, nz.f]
    WRITE_S: []*/
    _imopVarPre285 = nz[lt];
    /*READ_S: [lt, ny.f, ny]
    WRITE_S: []*/
    _imopVarPre286 = ny[lt];
    /*READ_S: [lt, nx, nx.f]
    WRITE_S: []*/
    _imopVarPre287 = nx[lt];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre288 = &rnmu;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre289 = &rnm2;
    /*READ_S: [lt, heapCell#10]
    WRITE_S: []*/
    _imopVarPre290 = r[lt];
    /*READ_S: [norm2u3]
    WRITE_S: []*/
    norm2u3(_imopVarPre290, n1, n2, n3, _imopVarPre289, _imopVarPre288, _imopVarPre287, _imopVarPre286, _imopVarPre285);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lt, v, m3.f, nx, r, n2, mm3, _imopVarPre436, r, n1, j3, norm2u3, m2.f, m3, i3, heapCell#8, mm2, n1, lb, nullCell, c.f, c, m2j, n2, tmp, d1, m1.f, m2, n2, _imopVarPre483, t1, r, n3, heapCell#7, u, interp, n3, n1, i3, m1, n1, d2, u, n3, i3, t2, resid, i3, m3j, printf, _imopVarPre435, s, u, heapCell#4, rep_nrm, fabs, r, d3, comm3, z, i2, t3, a, debug_vec, psinv, heapCell#2, d3, n3, zero3, nz.f, heapCell#6, showall, i3, heapCell#3, n1, debug_vec.f, n2, d2, rprj3, heapCell#5, heapCell#10, _imopVarPre487, ny.f, nz, _imopVarPre491, mm1, n2, i3, s, d1, z, sqrt, mg3P, u, ny, nx.f, heapCell#1, a.f, heapCell#0, n3, m1j, heapCell#9]
    WRITE_S: [heapCell#3, nullCell, heapCell#8, heapCell#5, s, tmp]*/
    for (it = 1; it <= nit; it++) {
    /*READ_S: [lt, v, m3.f, nx, r, n2, mm3, _imopVarPre436, r, n1, j3, norm2u3, m2.f, m3, i3, heapCell#8, mm2, n1, lb, nullCell, c.f, c, m2j, n2, tmp, d1, m1.f, m2, n2, _imopVarPre483, t1, r, n3, heapCell#7, u, interp, n3, n1, i3, m1, n1, d2, u, n3, i3, t2, resid, i3, m3j, printf, _imopVarPre435, s, u, heapCell#4, rep_nrm, fabs, r, d3, comm3, z, i2, t3, a, debug_vec, psinv, heapCell#2, d3, n3, zero3, nz.f, heapCell#6, showall, i3, heapCell#3, n1, debug_vec.f, n2, d2, rprj3, heapCell#5, heapCell#10, _imopVarPre487, ny.f, nz, _imopVarPre491, mm1, n2, i3, s, d1, z, sqrt, mg3P, u, ny, nx.f, heapCell#1, a.f, heapCell#0, n3, m1j, heapCell#9]
    WRITE_S: [heapCell#3, nullCell, heapCell#8, heapCell#5, s, tmp]*/
        /*READ_S: [lt, mg3P]
        WRITE_S: []*/
        mg3P(u, v, r, a, c, n1, n2, n3, lt);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre293;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre294;
        /*READ_S: [lt, heapCell#10]
        WRITE_S: []*/
        _imopVarPre293 = r[lt];
        /*READ_S: [lt, heapCell#4]
        WRITE_S: []*/
        _imopVarPre294 = u[lt];
        /*READ_S: [lt, resid]
        WRITE_S: []*/
        resid(_imopVarPre294, v, _imopVarPre293, n1, n2, n3, a, lt);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre301;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre302;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre303;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre304;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre305;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre306;
    /*READ_S: [lt, nz, nz.f]
    WRITE_S: []*/
    _imopVarPre301 = nz[lt];
    /*READ_S: [lt, ny.f, ny]
    WRITE_S: []*/
    _imopVarPre302 = ny[lt];
    /*READ_S: [lt, nx, nx.f]
    WRITE_S: []*/
    _imopVarPre303 = nx[lt];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre304 = &rnmu;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre305 = &rnm2;
    /*READ_S: [lt, heapCell#10]
    WRITE_S: []*/
    _imopVarPre306 = r[lt];
    /*READ_S: [norm2u3]
    WRITE_S: []*/
    norm2u3(_imopVarPre306, n1, n2, n3, _imopVarPre305, _imopVarPre304, _imopVarPre303, _imopVarPre302, _imopVarPre301);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
#pragma omp parallel
    {
    /*READ_S: []
    WRITE_S: []*/
    }
    /*READ_S: [timer_stop]
    WRITE_S: []*/
    timer_stop(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_read]
    WRITE_S: []*/
    t = timer_read(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_read]
    WRITE_S: []*/
    tinit = timer_read(2);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    verified = 0;
    /*READ_S: []
    WRITE_S: []*/
    verify_value = 0.0;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Initialization time: %15.3f seconds\n", tinit);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Benchmark completed\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Class]
    WRITE_S: []*/
    /*READ_S: [printf, Class, fabs]
    WRITE_S: []*/
    if (Class != 'U') {
    /*READ_S: [printf, Class, fabs]
    WRITE_S: []*/
        /*READ_S: [Class]
        WRITE_S: []*/
        /*READ_S: [Class]
        WRITE_S: []*/
        if (Class == 'S') {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            verify_value = 0.530770700573e-04;
        } else {
        /*READ_S: [Class]
        WRITE_S: []*/
            /*READ_S: [Class]
            WRITE_S: []*/
            /*READ_S: [Class]
            WRITE_S: []*/
            if (Class == 'W') {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                verify_value = 0.250391406439e-17;
            } else {
            /*READ_S: [Class]
            WRITE_S: []*/
                /*READ_S: [Class]
                WRITE_S: []*/
                /*READ_S: [Class]
                WRITE_S: []*/
                if (Class == 'A') {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    verify_value = 0.2433365309e-5;
                } else {
                /*READ_S: [Class]
                WRITE_S: []*/
                    /*READ_S: [Class]
                    WRITE_S: []*/
                    /*READ_S: [Class]
                    WRITE_S: []*/
                    if (Class == 'B') {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        verify_value = 0.180056440132e-5;
                    } else {
                    /*READ_S: [Class]
                    WRITE_S: []*/
                        /*READ_S: [Class]
                        WRITE_S: []*/
                        /*READ_S: [Class]
                        WRITE_S: []*/
                        if (Class == 'C') {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            verify_value = 0.570674826298e-06;
                        }
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre309;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre310;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre309 = rnm2 - verify_value;
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre310 = fabs(_imopVarPre309);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (_imopVarPre310 <= epsilon) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            verified = 1;
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" VERIFICATION SUCCESSFUL\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" L2 Norm is %20.12e\n", rnm2);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre312;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre312 = rnm2 - verify_value;
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" Error is   %20.12e\n", _imopVarPre312);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            verified = 0;
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" VERIFICATION FAILED\n");
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" L2 Norm is             %20.12e\n", rnm2);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" The correct L2 Norm is %20.12e\n", verify_value);
            /*READ_S: []
            WRITE_S: []*/
        }
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        verified = 0;
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Problem size unknown\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" NO VERIFICATION PERFORMED\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lt, nx, ny.f, nz, nx.f, ny, nz.f]
    WRITE_S: []*/
    if (t != 0.0) {
    /*READ_S: [lt, nx, ny.f, nz, nx.f, ny, nz.f]
    WRITE_S: []*/
        /*READ_S: [lt, nx, ny.f, nz, nx.f, ny, nz.f]
        WRITE_S: []*/
        int nn = nx[lt] * ny[lt] * nz[lt];
        /*READ_S: []
        WRITE_S: []*/
        mflops = 58. * nit * nn * 1.0e-6 / t;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        mflops = 0.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre316;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre317;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre318;
    /*READ_S: [lt, nz, nz.f]
    WRITE_S: []*/
    _imopVarPre316 = nz[lt];
    /*READ_S: [lt, ny.f, ny]
    WRITE_S: []*/
    _imopVarPre317 = ny[lt];
    /*READ_S: [lt, nx, nx.f]
    WRITE_S: []*/
    _imopVarPre318 = nx[lt];
    /*READ_S: [c_print_results, Class]
    WRITE_S: []*/
    c_print_results("MG", Class, _imopVarPre318, _imopVarPre317, _imopVarPre316, nit, nthreads, t, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
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
/*READ_S: [m1, m3, ie2, ie1, m2, ie3, nx, ny.f, nz, ny, nx.f, nz.f, printf, debug_vec, is2, is1, debug_vec.f, is3]
WRITE_S: [ie2, m2.f, m1.f, ie1, is2, is1, m3.f, ie3, is3, ny.f, nx.f, nz.f]*/
static void setup(int *n1, int *n2 , int *n3 , int lt) {
/*READ_S: [m1, m3, ie2, ie1, m2, ie3, nx, ny.f, nz, ny, nx.f, nz.f, printf, debug_vec, is2, is1, debug_vec.f, is3]
WRITE_S: [ie2, m2.f, m1.f, ie1, is2, is1, m3.f, ie3, is3, ny.f, nx.f, nz.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nx, nz, ny.f, ny, nx.f, nz.f]
    WRITE_S: [ny.f, nx.f, nz.f]*/
    for (k = lt - 1; k >= 1; k--) {
    /*READ_S: [nx, nz, ny.f, ny, nx.f, nz.f]
    WRITE_S: [ny.f, nx.f, nz.f]*/
        /*READ_S: [nx, nx.f]
        WRITE_S: [nx.f]*/
        nx[k] = nx[k + 1] / 2;
        /*READ_S: [ny.f, ny]
        WRITE_S: [ny.f]*/
        ny[k] = ny[k + 1] / 2;
        /*READ_S: [nz, nz.f]
        WRITE_S: [nz.f]*/
        nz[k] = nz[k + 1] / 2;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [m1, m3, m2, nx, ny.f, nz, nx.f, ny, nz.f]
    WRITE_S: [m2.f, m1.f, m3.f]*/
    for (k = 1; k <= lt; k++) {
    /*READ_S: [m1, m3, m2, nx, ny.f, nz, nx.f, ny, nz.f]
    WRITE_S: [m2.f, m1.f, m3.f]*/
        /*READ_S: [m1, nx, nx.f]
        WRITE_S: [m1.f]*/
        m1[k] = nx[k] + 2;
        /*READ_S: [m2, nz, nz.f]
        WRITE_S: [m2.f]*/
        m2[k] = nz[k] + 2;
        /*READ_S: [m3, ny.f, ny]
        WRITE_S: [m3.f]*/
        m3[k] = ny[k] + 2;
    }
    /*READ_S: []
    WRITE_S: [is1]*/
    is1 = 1;
    /*READ_S: [nx, nx.f]
    WRITE_S: [ie1]*/
    ie1 = nx[lt];
    /*READ_S: [nx, nx.f]
    WRITE_S: []*/
    *n1 = nx[lt] + 2;
    /*READ_S: []
    WRITE_S: [is2]*/
    is2 = 1;
    /*READ_S: [ny.f, ny]
    WRITE_S: [ie2]*/
    ie2 = ny[lt];
    /*READ_S: [ny.f, ny]
    WRITE_S: []*/
    *n2 = ny[lt] + 2;
    /*READ_S: []
    WRITE_S: [is3]*/
    is3 = 1;
    /*READ_S: [nz, nz.f]
    WRITE_S: [ie3]*/
    ie3 = nz[lt];
    /*READ_S: [nz, nz.f]
    WRITE_S: []*/
    *n3 = nz[lt] + 2;
    /*READ_S: [debug_vec, debug_vec.f]
    WRITE_S: []*/
    /*READ_S: [ie2, ie1, ie3, nx, nz, ny.f, nx.f, ny, nz.f, printf, debug_vec, is2, is1, debug_vec.f, is3]
    WRITE_S: []*/
    if (debug_vec[1] >= 1) {
    /*READ_S: [ie2, ie1, ie3, nx, nz, ny.f, nx.f, ny, nz.f, printf, is2, is1, is3]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" in setup, \n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("  lt  nx  ny  nz  n1  n2  n3 is1 is2 is3 ie1 ie2 ie3\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre325;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre326;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre327;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre328;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre329;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre330;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre325 = *n3;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre326 = *n2;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre327 = *n1;
        /*READ_S: [nz, nz.f]
        WRITE_S: []*/
        _imopVarPre328 = nz[lt];
        /*READ_S: [ny.f, ny]
        WRITE_S: []*/
        _imopVarPre329 = ny[lt];
        /*READ_S: [nx, nx.f]
        WRITE_S: []*/
        _imopVarPre330 = nx[lt];
        /*READ_S: [printf, ie2, ie1, is2, is1, ie3, is3]
        WRITE_S: []*/
        printf("%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d\n", lt, _imopVarPre330, _imopVarPre329, _imopVarPre328, _imopVarPre327, _imopVarPre326, _imopVarPre325, is1, is2, is3, ie1, ie2, ie3);
        /*READ_S: []
        WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [lt, v, m3.f, nx, r, n2, mm3, _imopVarPre436, r, n1, j3, norm2u3, m2.f, m3, i3, heapCell#8, mm2, n1, lb, nullCell, c.f, c, m2j, n2, tmp, d1, m1.f, m2, n2, _imopVarPre483, t1, r, n3, heapCell#7, u, interp, n3, n1, i3, m1, n1, d2, u, n3, i3, t2, resid, i3, m3j, printf, _imopVarPre435, s, u, heapCell#4, rep_nrm, fabs, r, d3, comm3, z, i2, t3, a, debug_vec, psinv, heapCell#2, d3, n3, zero3, nz.f, heapCell#6, showall, i3, heapCell#3, n1, debug_vec.f, n2, d2, rprj3, heapCell#5, heapCell#10, _imopVarPre487, ny.f, nz, _imopVarPre491, mm1, n2, i3, s, d1, z, sqrt, u, ny, nx.f, heapCell#1, a.f, heapCell#0, n3, m1j, heapCell#9]
WRITE_S: [heapCell#3, nullCell, heapCell#8, heapCell#5, s, tmp]*/
static void mg3P(double ****u, double ***v , double ****r , double a[4] , double c[4] , int n1 , int n2 , int n3 , int k) {
/*READ_S: [lt, v, m3.f, nx, r, n2, mm3, _imopVarPre436, r, n1, j3, norm2u3, m2.f, m3, i3, heapCell#8, mm2, n1, lb, nullCell, c.f, c, m2j, n2, tmp, d1, m1.f, m2, n2, _imopVarPre483, t1, r, n3, heapCell#7, u, interp, n3, n1, i3, m1, n1, d2, u, n3, i3, t2, resid, i3, m3j, printf, _imopVarPre435, s, u, heapCell#4, rep_nrm, fabs, r, d3, comm3, z, i2, t3, a, debug_vec, psinv, heapCell#2, d3, n3, zero3, nz.f, heapCell#6, showall, i3, heapCell#3, n1, debug_vec.f, n2, d2, rprj3, heapCell#5, heapCell#10, _imopVarPre487, ny.f, nz, _imopVarPre491, mm1, n2, i3, s, d1, z, sqrt, u, ny, nx.f, heapCell#1, a.f, heapCell#0, n3, m1j, heapCell#9]
WRITE_S: [heapCell#3, nullCell, heapCell#8, heapCell#5, s, tmp]*/
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: [lt]
    WRITE_S: []*/
    /*READ_S: [lb]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lt, m3.f, nx, comm3, n2, i2, r, debug_vec, j3, heapCell#2, norm2u3, d3, n3, m3, m2.f, heapCell#8, nz.f, heapCell#6, n1, showall, heapCell#3, lb, nullCell, debug_vec.f, m2j, tmp, n2, d2, rprj3, m1.f, m2, heapCell#5, heapCell#10, _imopVarPre487, _imopVarPre491, ny.f, nz, _imopVarPre483, r, s, heapCell#7, u, d1, n1, m1, sqrt, n3, ny, nx.f, i3, i3, heapCell#1, m3j, printf, heapCell#0, m1j, s, heapCell#9, fabs, rep_nrm]
    WRITE_S: [heapCell#8, nullCell, heapCell#5, s, tmp]*/
    for (k = lt; k >= lb + 1; k--) {
    /*READ_S: [m3.f, nx, comm3, n2, i2, r, debug_vec, j3, heapCell#2, norm2u3, d3, n3, m3, m2.f, heapCell#8, nz.f, heapCell#6, n1, showall, heapCell#3, nullCell, debug_vec.f, m2j, tmp, n2, d2, rprj3, m1.f, m2, heapCell#5, heapCell#10, _imopVarPre487, _imopVarPre491, ny.f, nz, _imopVarPre483, r, s, heapCell#7, u, d1, n1, m1, sqrt, n3, ny, nx.f, i3, i3, heapCell#1, m3j, printf, heapCell#0, m1j, s, heapCell#9, fabs, rep_nrm]
    WRITE_S: [heapCell#8, nullCell, heapCell#5, s, tmp]*/
        /*READ_S: []
        WRITE_S: []*/
        j = k - 1;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre339;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre340;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre341;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre342;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre343;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre344;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre345;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre346;
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        _imopVarPre339 = m3[j];
        /*READ_S: [m2.f, m2]
        WRITE_S: []*/
        _imopVarPre340 = m2[j];
        /*READ_S: [m1, m1.f]
        WRITE_S: []*/
        _imopVarPre341 = m1[j];
        /*READ_S: [heapCell#10]
        WRITE_S: []*/
        _imopVarPre342 = r[j];
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        _imopVarPre343 = m3[k];
        /*READ_S: [m2.f, m2]
        WRITE_S: []*/
        _imopVarPre344 = m2[k];
        /*READ_S: [m1, m1.f]
        WRITE_S: []*/
        _imopVarPre345 = m1[k];
        /*READ_S: [heapCell#10]
        WRITE_S: []*/
        _imopVarPre346 = r[k];
        /*READ_S: [rprj3]
        WRITE_S: []*/
        rprj3(_imopVarPre346, _imopVarPre345, _imopVarPre344, _imopVarPre343, _imopVarPre342, _imopVarPre341, _imopVarPre340, _imopVarPre339, k);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [lb]
    WRITE_S: []*/
    k = lb;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre351;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre352;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre353;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre354;
    /*READ_S: [m3, m3.f]
    WRITE_S: []*/
    _imopVarPre351 = m3[k];
    /*READ_S: [m2.f, m2]
    WRITE_S: []*/
    _imopVarPre352 = m2[k];
    /*READ_S: [m1, m1.f]
    WRITE_S: []*/
    _imopVarPre353 = m1[k];
    /*READ_S: [heapCell#4]
    WRITE_S: []*/
    _imopVarPre354 = u[k];
    /*READ_S: [zero3]
    WRITE_S: []*/
    zero3(_imopVarPre354, _imopVarPre353, _imopVarPre352, _imopVarPre351);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre360;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre361;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre362;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre363;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre364;
    /*READ_S: [m3, m3.f]
    WRITE_S: []*/
    _imopVarPre360 = m3[k];
    /*READ_S: [m2.f, m2]
    WRITE_S: []*/
    _imopVarPre361 = m2[k];
    /*READ_S: [m1, m1.f]
    WRITE_S: []*/
    _imopVarPre362 = m1[k];
    /*READ_S: [heapCell#4]
    WRITE_S: []*/
    _imopVarPre363 = u[k];
    /*READ_S: [heapCell#10]
    WRITE_S: []*/
    _imopVarPre364 = r[k];
    /*READ_S: [psinv]
    WRITE_S: []*/
    psinv(_imopVarPre364, _imopVarPre363, _imopVarPre362, _imopVarPre361, _imopVarPre360, c, k);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lb]
    WRITE_S: []*/
    /*READ_S: [lt]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [r, d3, lt, v, m3.f, nx, r, comm3, n2, z, i2, t3, mm3, _imopVarPre436, a, debug_vec, n1, psinv, heapCell#2, norm2u3, n3, m3, m2.f, i3, heapCell#8, zero3, nz.f, mm2, heapCell#6, n1, showall, i3, heapCell#3, lb, n1, nullCell, c.f, c, debug_vec.f, n2, tmp, n2, d1, m1.f, m2, n2, heapCell#5, heapCell#10, _imopVarPre487, ny.f, nz, _imopVarPre491, mm1, _imopVarPre483, t1, r, n2, i3, s, n3, heapCell#7, u, n3, interp, n1, i3, m1, z, n1, d2, sqrt, u, u, n3, ny, nx.f, i3, t2, resid, i3, heapCell#1, printf, a.f, heapCell#0, n3, _imopVarPre435, heapCell#9, u, heapCell#4, rep_nrm, fabs]
    WRITE_S: [heapCell#3, nullCell, heapCell#8, heapCell#5, s, tmp]*/
    for (k = lb + 1; k <= lt - 1; k++) {
    /*READ_S: [r, d3, v, m3.f, nx, r, comm3, n2, z, i2, t3, mm3, _imopVarPre436, a, debug_vec, n1, psinv, heapCell#2, norm2u3, n3, m3, m2.f, i3, heapCell#8, zero3, nz.f, mm2, heapCell#6, n1, showall, i3, heapCell#3, n1, nullCell, c.f, c, debug_vec.f, n2, tmp, n2, d1, m1.f, m2, n2, heapCell#5, heapCell#10, _imopVarPre487, ny.f, nz, _imopVarPre491, mm1, _imopVarPre483, t1, r, n2, i3, s, n3, heapCell#7, u, n3, interp, n1, i3, m1, z, n1, d2, sqrt, u, u, n3, ny, nx.f, i3, t2, resid, i3, heapCell#1, printf, a.f, heapCell#0, n3, _imopVarPre435, heapCell#9, u, heapCell#4, rep_nrm, fabs]
    WRITE_S: [heapCell#3, nullCell, heapCell#8, heapCell#5, s, tmp]*/
        /*READ_S: []
        WRITE_S: []*/
        j = k - 1;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre369;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre370;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre371;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre372;
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        _imopVarPre369 = m3[k];
        /*READ_S: [m2.f, m2]
        WRITE_S: []*/
        _imopVarPre370 = m2[k];
        /*READ_S: [m1, m1.f]
        WRITE_S: []*/
        _imopVarPre371 = m1[k];
        /*READ_S: [heapCell#4]
        WRITE_S: []*/
        _imopVarPre372 = u[k];
        /*READ_S: [zero3]
        WRITE_S: []*/
        zero3(_imopVarPre372, _imopVarPre371, _imopVarPre370, _imopVarPre369);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre381;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre382;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre383;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre384;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre385;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre386;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre387;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre388;
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        _imopVarPre381 = m3[k];
        /*READ_S: [m2.f, m2]
        WRITE_S: []*/
        _imopVarPre382 = m2[k];
        /*READ_S: [m1, m1.f]
        WRITE_S: []*/
        _imopVarPre383 = m1[k];
        /*READ_S: [heapCell#4]
        WRITE_S: []*/
        _imopVarPre384 = u[k];
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        _imopVarPre385 = m3[j];
        /*READ_S: [m2.f, m2]
        WRITE_S: []*/
        _imopVarPre386 = m2[j];
        /*READ_S: [m1, m1.f]
        WRITE_S: []*/
        _imopVarPre387 = m1[j];
        /*READ_S: [heapCell#4]
        WRITE_S: []*/
        _imopVarPre388 = u[j];
        /*READ_S: [interp]
        WRITE_S: []*/
        interp(_imopVarPre388, _imopVarPre387, _imopVarPre386, _imopVarPre385, _imopVarPre384, _imopVarPre383, _imopVarPre382, _imopVarPre381, k);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre395;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre396;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre397;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre398;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre399;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre400;
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        _imopVarPre395 = m3[k];
        /*READ_S: [m2.f, m2]
        WRITE_S: []*/
        _imopVarPre396 = m2[k];
        /*READ_S: [m1, m1.f]
        WRITE_S: []*/
        _imopVarPre397 = m1[k];
        /*READ_S: [heapCell#10]
        WRITE_S: []*/
        _imopVarPre398 = r[k];
        /*READ_S: [heapCell#10]
        WRITE_S: []*/
        _imopVarPre399 = r[k];
        /*READ_S: [heapCell#4]
        WRITE_S: []*/
        _imopVarPre400 = u[k];
        /*READ_S: [resid]
        WRITE_S: []*/
        resid(_imopVarPre400, _imopVarPre399, _imopVarPre398, _imopVarPre397, _imopVarPre396, _imopVarPre395, a, k);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre406;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre407;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre408;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre409;
        /*READ_S: []
        WRITE_S: []*/
        double ***_imopVarPre410;
        /*READ_S: [m3, m3.f]
        WRITE_S: []*/
        _imopVarPre406 = m3[k];
        /*READ_S: [m2.f, m2]
        WRITE_S: []*/
        _imopVarPre407 = m2[k];
        /*READ_S: [m1, m1.f]
        WRITE_S: []*/
        _imopVarPre408 = m1[k];
        /*READ_S: [heapCell#4]
        WRITE_S: []*/
        _imopVarPre409 = u[k];
        /*READ_S: [heapCell#10]
        WRITE_S: []*/
        _imopVarPre410 = r[k];
        /*READ_S: [psinv]
        WRITE_S: []*/
        psinv(_imopVarPre410, _imopVarPre409, _imopVarPre408, _imopVarPre407, _imopVarPre406, c, k);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [lt]
    WRITE_S: []*/
    j = lt - 1;
    /*READ_S: [lt]
    WRITE_S: []*/
    k = lt;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre416;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre417;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre418;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre419;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre420;
    /*READ_S: [lt, heapCell#4]
    WRITE_S: []*/
    _imopVarPre416 = u[lt];
    /*READ_S: [m3, m3.f]
    WRITE_S: []*/
    _imopVarPre417 = m3[j];
    /*READ_S: [m2.f, m2]
    WRITE_S: []*/
    _imopVarPre418 = m2[j];
    /*READ_S: [m1, m1.f]
    WRITE_S: []*/
    _imopVarPre419 = m1[j];
    /*READ_S: [heapCell#4]
    WRITE_S: []*/
    _imopVarPre420 = u[j];
    /*READ_S: [interp]
    WRITE_S: []*/
    interp(_imopVarPre420, _imopVarPre419, _imopVarPre418, _imopVarPre417, _imopVarPre416, n1, n2, n3, k);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre423;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre424;
    /*READ_S: [lt, heapCell#10]
    WRITE_S: []*/
    _imopVarPre423 = r[lt];
    /*READ_S: [lt, heapCell#4]
    WRITE_S: []*/
    _imopVarPre424 = u[lt];
    /*READ_S: [resid]
    WRITE_S: []*/
    resid(_imopVarPre424, v, _imopVarPre423, n1, n2, n3, a, k);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre427;
    /*READ_S: []
    WRITE_S: []*/
    double ***_imopVarPre428;
    /*READ_S: [lt, heapCell#4]
    WRITE_S: []*/
    _imopVarPre427 = u[lt];
    /*READ_S: [lt, heapCell#10]
    WRITE_S: []*/
    _imopVarPre428 = r[lt];
    /*READ_S: [psinv]
    WRITE_S: []*/
    psinv(_imopVarPre428, _imopVarPre427, n1, n2, n3, c, k);
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
/*READ_S: [nx, r, comm3, n2, i2, n1, debug_vec, heapCell#2, norm2u3, n3, heapCell#8, nz.f, heapCell#6, n1, showall, i3, heapCell#3, nullCell, c.f, c, n2, debug_vec.f, tmp, n2, heapCell#5, _imopVarPre487, _imopVarPre491, nz, ny.f, _imopVarPre483, r, n3, s, heapCell#7, u, n1, u, sqrt, n3, ny, nx.f, i3, i3, heapCell#1, printf, heapCell#0, heapCell#9, fabs, rep_nrm]
WRITE_S: [heapCell#3, nullCell, heapCell#8, s, tmp]*/
static void psinv(double ***r, double ***u , int n1 , int n2 , int n3 , double c[4] , int k) {
/*READ_S: [nx, r, comm3, n2, i2, n1, debug_vec, heapCell#2, norm2u3, n3, heapCell#8, nz.f, heapCell#6, n1, showall, i3, heapCell#3, nullCell, c.f, c, n2, debug_vec.f, tmp, n2, heapCell#5, _imopVarPre487, _imopVarPre491, nz, ny.f, _imopVarPre483, r, n3, s, heapCell#7, u, n1, u, sqrt, n3, ny, nx.f, i3, i3, heapCell#1, printf, heapCell#0, heapCell#9, fabs, rep_nrm]
WRITE_S: [heapCell#3, nullCell, heapCell#8, s, tmp]*/
    /*READ_S: []
    WRITE_S: []*/
    int i3;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    double r1[1037];
    /*READ_S: []
    WRITE_S: []*/
    double r2[1037];
    /*READ_S: [u, heapCell#5, r, heapCell#6, i3, heapCell#3, n1, nullCell, heapCell#0, c.f, c, n3, n2, heapCell#2, heapCell#9]
    WRITE_S: [heapCell#3, nullCell]*/
#pragma omp parallel default(shared) private(i1, i2, i3, r1, r2)
    {
    /*READ_S: [u, heapCell#5, r, heapCell#6, i3, heapCell#3, n1, nullCell, heapCell#0, c.f, c, n3, n2, heapCell#2, heapCell#9]
    WRITE_S: [heapCell#3, nullCell]*/
        /*READ_S: [u, heapCell#5, r, heapCell#6, i3, heapCell#3, n1, nullCell, heapCell#0, c.f, c, n3, n2, heapCell#2, heapCell#9]
        WRITE_S: [heapCell#3, nullCell]*/
#pragma omp for nowait
        /*READ_S: [i3]
        WRITE_S: []*/
        /*READ_S: [n3]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i3 = 1; i3 < n3 - 1; i3++) {
        /*READ_S: [u, heapCell#5, r, heapCell#6, heapCell#3, n1, nullCell, heapCell#0, c.f, c, n2, heapCell#2, heapCell#9]
        WRITE_S: [heapCell#3, nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, heapCell#5, r, heapCell#6, heapCell#3, n1, nullCell, heapCell#0, c.f, c, n2, heapCell#2, heapCell#9]
            WRITE_S: [heapCell#3, nullCell]*/
            for (i2 = 1; i2 < n2 - 1; i2++) {
            /*READ_S: [heapCell#3, u, n1, nullCell, heapCell#5, heapCell#0, c.f, c, r, heapCell#2, heapCell#9, heapCell#6]
            WRITE_S: [heapCell#3, nullCell]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n1]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n1, nullCell, heapCell#5, r, heapCell#2, heapCell#9]
                WRITE_S: []*/
                for (i1 = 0; i1 < n1; i1++) {
                /*READ_S: [nullCell, heapCell#5, r, heapCell#2, heapCell#9]
                WRITE_S: []*/
                    /*READ_S: [nullCell, heapCell#5, r, heapCell#2, heapCell#9]
                    WRITE_S: []*/
                    r1[i1] = r[i3][i2 - 1][i1] + r[i3][i2 + 1][i1] + r[i3 - 1][i2][i1] + r[i3 + 1][i2][i1];
                    /*READ_S: [nullCell, heapCell#5, r, heapCell#2, heapCell#9]
                    WRITE_S: []*/
                    r2[i1] = r[i3 - 1][i2 - 1][i1] + r[i3 - 1][i2 + 1][i1] + r[i3 + 1][i2 - 1][i1] + r[i3 + 1][i2 + 1][i1];
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n1]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#3, u, n1, nullCell, heapCell#0, c.f, heapCell#5, c, r, heapCell#2, heapCell#9, heapCell#6]
                WRITE_S: [heapCell#3, nullCell]*/
                for (i1 = 1; i1 < n1 - 1; i1++) {
                /*READ_S: [heapCell#3, u, nullCell, heapCell#0, c.f, heapCell#5, c, r, heapCell#2, heapCell#9, heapCell#6]
                WRITE_S: [heapCell#3, nullCell]*/
                    /*READ_S: [heapCell#3, u, nullCell, heapCell#0, c.f, heapCell#5, c, r, heapCell#2, heapCell#9, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    u[i3][i2][i1] = u[i3][i2][i1] + c[0] * r[i3][i2][i1] + c[1] * (r[i3][i2][i1 - 1] + r[i3][i2][i1 + 1] + r1[i1]) + c[2] * (r2[i1] + r1[i1 - 1] + r1[i1 + 1]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [comm3]
    WRITE_S: []*/
    comm3(u, n1, n2, n3, k);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [debug_vec, debug_vec.f]
    WRITE_S: []*/
    /*READ_S: [heapCell#5, nx, nz, ny.f, r, debug_vec, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, debug_vec.f, tmp, heapCell#9, fabs, n2, rep_nrm]
    WRITE_S: [s, tmp]*/
    if (debug_vec[0] >= 1) {
    /*READ_S: [heapCell#5, nx, nz, ny.f, r, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, tmp, heapCell#9, fabs, n2, rep_nrm]
    WRITE_S: [s, tmp]*/
        /*READ_S: [rep_nrm]
        WRITE_S: []*/
        rep_nrm(u, n1, n2, n3, "   psinv", k);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [debug_vec, debug_vec.f]
    WRITE_S: []*/
    /*READ_S: [heapCell#5, _imopVarPre487, _imopVarPre491, _imopVarPre483, heapCell#6, showall, heapCell#3, printf, debug_vec, nullCell, heapCell#0, debug_vec.f, heapCell#2, heapCell#9]
    WRITE_S: []*/
    if (debug_vec[3] >= k) {
    /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, _imopVarPre487, _imopVarPre491, heapCell#2, heapCell#9, _imopVarPre483, heapCell#6, showall]
    WRITE_S: []*/
        /*READ_S: [showall]
        WRITE_S: []*/
        showall(u, n1, n2, n3);
        /*READ_S: []
        WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [r, v, nx, comm3, n2, i2, a, debug_vec, heapCell#2, norm2u3, n3, heapCell#8, nz.f, heapCell#6, n1, showall, heapCell#3, n1, nullCell, debug_vec.f, tmp, n2, heapCell#5, _imopVarPre487, _imopVarPre491, nz, ny.f, _imopVarPre483, r, n2, i3, s, heapCell#7, u, n1, sqrt, u, n3, ny, nx.f, i3, i3, heapCell#1, printf, a.f, heapCell#0, n3, heapCell#9, fabs, rep_nrm]
WRITE_S: [heapCell#8, nullCell, heapCell#5, s, tmp]*/
static void resid(double ***u, double ***v , double ***r , int n1 , int n2 , int n3 , double a[4] , int k) {
/*READ_S: [r, v, nx, comm3, n2, i2, a, debug_vec, heapCell#2, norm2u3, n3, heapCell#8, nz.f, heapCell#6, n1, showall, heapCell#3, n1, nullCell, debug_vec.f, tmp, n2, heapCell#5, _imopVarPre487, _imopVarPre491, nz, ny.f, _imopVarPre483, r, n2, i3, s, heapCell#7, u, n1, sqrt, u, n3, ny, nx.f, i3, i3, heapCell#1, printf, a.f, heapCell#0, n3, heapCell#9, fabs, rep_nrm]
WRITE_S: [heapCell#8, nullCell, heapCell#5, s, tmp]*/
    /*READ_S: []
    WRITE_S: []*/
    int i3;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    double u1[1037];
    /*READ_S: []
    WRITE_S: []*/
    double u2[1037];
    /*READ_S: [r, v, heapCell#8, heapCell#5, u, heapCell#6, heapCell#1, heapCell#3, n1, a, a.f, n2, nullCell, heapCell#0, n3, i3, heapCell#7, heapCell#2, heapCell#9]
    WRITE_S: [nullCell, heapCell#5]*/
#pragma omp parallel default(shared) private(i1, i2, i3, u1, u2)
    {
    /*READ_S: [r, v, heapCell#8, heapCell#5, u, heapCell#6, heapCell#1, heapCell#3, n1, a, a.f, n2, nullCell, heapCell#0, n3, i3, heapCell#7, heapCell#2, heapCell#9]
    WRITE_S: [nullCell, heapCell#5]*/
        /*READ_S: [r, v, heapCell#8, heapCell#5, u, heapCell#6, heapCell#1, heapCell#3, n1, a, a.f, n2, nullCell, heapCell#0, n3, i3, heapCell#7, heapCell#2, heapCell#9]
        WRITE_S: [nullCell, heapCell#5]*/
#pragma omp for nowait
        /*READ_S: [i3]
        WRITE_S: []*/
        /*READ_S: [n3]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i3 = 1; i3 < n3 - 1; i3++) {
        /*READ_S: [r, v, heapCell#8, heapCell#5, u, heapCell#6, heapCell#1, heapCell#3, n1, a, a.f, n2, nullCell, heapCell#0, heapCell#7, heapCell#2, heapCell#9]
        WRITE_S: [nullCell, heapCell#5]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [r, v, heapCell#8, heapCell#5, u, heapCell#6, heapCell#1, heapCell#3, a, a.f, n1, n2, nullCell, heapCell#0, heapCell#7, heapCell#2, heapCell#9]
            WRITE_S: [nullCell, heapCell#5]*/
            for (i2 = 1; i2 < n2 - 1; i2++) {
            /*READ_S: [r, v, heapCell#8, heapCell#5, u, heapCell#6, heapCell#1, heapCell#3, a, a.f, n1, nullCell, heapCell#0, heapCell#7, heapCell#2, heapCell#9]
            WRITE_S: [nullCell, heapCell#5]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n1]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#3, n1, nullCell, heapCell#0, u, heapCell#6]
                WRITE_S: []*/
                for (i1 = 0; i1 < n1; i1++) {
                /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                WRITE_S: []*/
                    /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                    WRITE_S: []*/
                    u1[i1] = u[i3][i2 - 1][i1] + u[i3][i2 + 1][i1] + u[i3 - 1][i2][i1] + u[i3 + 1][i2][i1];
                    /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                    WRITE_S: []*/
                    u2[i1] = u[i3 - 1][i2 - 1][i1] + u[i3 - 1][i2 + 1][i1] + u[i3 + 1][i2 - 1][i1] + u[i3 + 1][i2 + 1][i1];
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n1]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [r, v, heapCell#8, heapCell#5, u, heapCell#6, heapCell#1, heapCell#3, a, a.f, n1, nullCell, heapCell#0, heapCell#7, heapCell#2, heapCell#9]
                WRITE_S: [nullCell, heapCell#5]*/
                for (i1 = 1; i1 < n1 - 1; i1++) {
                /*READ_S: [r, v, heapCell#8, heapCell#5, u, heapCell#6, heapCell#1, heapCell#3, a, a.f, nullCell, heapCell#0, heapCell#7, heapCell#2, heapCell#9]
                WRITE_S: [nullCell, heapCell#5]*/
                    /*READ_S: [r, v, heapCell#8, heapCell#5, u, heapCell#6, heapCell#1, heapCell#3, a, a.f, nullCell, heapCell#0, heapCell#7, heapCell#2, heapCell#9]
                    WRITE_S: [nullCell, heapCell#5]*/
                    r[i3][i2][i1] = v[i3][i2][i1] - a[0] * u[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [comm3]
    WRITE_S: []*/
    comm3(r, n1, n2, n3, k);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [debug_vec, debug_vec.f]
    WRITE_S: []*/
    /*READ_S: [heapCell#5, nx, nz, ny.f, r, debug_vec, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, debug_vec.f, tmp, heapCell#9, rep_nrm, fabs, n2]
    WRITE_S: [s, tmp]*/
    if (debug_vec[0] >= 1) {
    /*READ_S: [heapCell#5, nx, nz, ny.f, r, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, tmp, heapCell#9, rep_nrm, fabs, n2]
    WRITE_S: [s, tmp]*/
        /*READ_S: [rep_nrm]
        WRITE_S: []*/
        rep_nrm(r, n1, n2, n3, "   resid", k);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [debug_vec, debug_vec.f]
    WRITE_S: []*/
    /*READ_S: [heapCell#5, _imopVarPre487, _imopVarPre491, _imopVarPre483, heapCell#6, showall, heapCell#3, printf, debug_vec, nullCell, heapCell#0, debug_vec.f, heapCell#2, heapCell#9]
    WRITE_S: []*/
    if (debug_vec[2] >= k) {
    /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, _imopVarPre487, _imopVarPre491, heapCell#2, heapCell#9, _imopVarPre483, heapCell#6, showall]
    WRITE_S: []*/
        /*READ_S: [showall]
        WRITE_S: []*/
        showall(r, n1, n2, n3);
        /*READ_S: []
        WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [nx, comm3, n2, i2, r, debug_vec, j3, heapCell#2, norm2u3, d3, n3, heapCell#8, nz.f, heapCell#6, n1, showall, heapCell#3, nullCell, debug_vec.f, m2j, tmp, n2, d2, heapCell#5, _imopVarPre487, _imopVarPre491, nz, ny.f, _imopVarPre483, r, s, heapCell#7, u, d1, n1, sqrt, n3, ny, nx.f, i3, i3, heapCell#1, m3j, printf, heapCell#0, m1j, s, heapCell#9, fabs, rep_nrm]
WRITE_S: [heapCell#8, nullCell, heapCell#5, s, tmp]*/
static void rprj3(double ***r, int m1k , int m2k , int m3k , double ***s , int m1j , int m2j , int m3j , int k) {
/*READ_S: [nx, comm3, n2, i2, r, debug_vec, j3, heapCell#2, norm2u3, d3, n3, heapCell#8, nz.f, heapCell#6, n1, showall, heapCell#3, nullCell, debug_vec.f, m2j, tmp, n2, d2, heapCell#5, _imopVarPre487, _imopVarPre491, nz, ny.f, _imopVarPre483, r, s, heapCell#7, u, d1, n1, sqrt, n3, ny, nx.f, i3, i3, heapCell#1, m3j, printf, heapCell#0, m1j, s, heapCell#9, fabs, rep_nrm]
WRITE_S: [heapCell#8, nullCell, heapCell#5, s, tmp]*/
    /*READ_S: []
    WRITE_S: []*/
    int j3;
    /*READ_S: []
    WRITE_S: []*/
    int j2;
    /*READ_S: []
    WRITE_S: []*/
    int j1;
    /*READ_S: []
    WRITE_S: []*/
    int i3;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    int d1;
    /*READ_S: []
    WRITE_S: []*/
    int d2;
    /*READ_S: []
    WRITE_S: []*/
    int d3;
    /*READ_S: []
    WRITE_S: []*/
    double x1[1037];
    /*READ_S: []
    WRITE_S: []*/
    double y1[1037];
    /*READ_S: []
    WRITE_S: []*/
    double x2;
    /*READ_S: []
    WRITE_S: []*/
    double y2;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (m1k == 3) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        d1 = 2;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        d1 = 1;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (m2k == 3) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        d2 = 2;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        d2 = 1;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (m3k == 3) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        d3 = 2;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        d3 = 1;
    }
    /*READ_S: [heapCell#5, m3j, r, nullCell, m1j, m2j, s, j3, heapCell#2, heapCell#9, d1, d3, d2]
    WRITE_S: [nullCell, heapCell#5]*/
#pragma omp parallel default(shared) private(j1, j2, j3, i1, i2, i3, x1, y1, x2, y2)
    {
    /*READ_S: [heapCell#5, m3j, r, nullCell, m1j, m2j, s, j3, heapCell#2, heapCell#9, d1, d3, d2]
    WRITE_S: [nullCell, heapCell#5]*/
        /*READ_S: [heapCell#5, m3j, r, nullCell, m1j, m2j, s, j3, heapCell#2, heapCell#9, d1, d3, d2]
        WRITE_S: [nullCell, heapCell#5]*/
#pragma omp for nowait
        /*READ_S: [j3]
        WRITE_S: []*/
        /*READ_S: [m3j]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j3 = 1; j3 < m3j - 1; j3++) {
        /*READ_S: [r, nullCell, heapCell#5, m1j, m2j, s, heapCell#2, heapCell#9, d1, d3, d2]
        WRITE_S: [nullCell, heapCell#5]*/
            /*READ_S: [d3]
            WRITE_S: []*/
            i3 = 2 * j3 - d3;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [m2j]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [r, nullCell, heapCell#5, m1j, m2j, s, heapCell#2, heapCell#9, d1, d2]
            WRITE_S: [nullCell, heapCell#5]*/
            for (j2 = 1; j2 < m2j - 1; j2++) {
            /*READ_S: [r, nullCell, heapCell#5, m1j, s, heapCell#2, heapCell#9, d1, d2]
            WRITE_S: [nullCell, heapCell#5]*/
                /*READ_S: [d2]
                WRITE_S: []*/
                i2 = 2 * j2 - d2;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [m1j]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [r, nullCell, heapCell#5, m1j, heapCell#2, heapCell#9, d1]
                WRITE_S: []*/
                for (j1 = 1; j1 < m1j; j1++) {
                /*READ_S: [r, nullCell, heapCell#5, heapCell#2, heapCell#9, d1]
                WRITE_S: []*/
                    /*READ_S: [d1]
                    WRITE_S: []*/
                    i1 = 2 * j1 - d1;
                    /*READ_S: [r, nullCell, heapCell#5, heapCell#2, heapCell#9]
                    WRITE_S: []*/
                    x1[i1] = r[i3 + 1][i2][i1] + r[i3 + 1][i2 + 2][i1] + r[i3][i2 + 1][i1] + r[i3 + 2][i2 + 1][i1];
                    /*READ_S: [r, nullCell, heapCell#5, heapCell#2, heapCell#9]
                    WRITE_S: []*/
                    y1[i1] = r[i3][i2][i1] + r[i3 + 2][i2][i1] + r[i3][i2 + 2][i1] + r[i3 + 2][i2 + 2][i1];
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [m1j]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [r, nullCell, heapCell#5, m1j, s, heapCell#2, heapCell#9, d1]
                WRITE_S: [nullCell, heapCell#5]*/
                for (j1 = 1; j1 < m1j - 1; j1++) {
                /*READ_S: [r, nullCell, heapCell#5, s, heapCell#2, heapCell#9, d1]
                WRITE_S: [nullCell, heapCell#5]*/
                    /*READ_S: [d1]
                    WRITE_S: []*/
                    i1 = 2 * j1 - d1;
                    /*READ_S: [r, nullCell, heapCell#5, heapCell#2, heapCell#9]
                    WRITE_S: []*/
                    y2 = r[i3][i2][i1 + 1] + r[i3 + 2][i2][i1 + 1] + r[i3][i2 + 2][i1 + 1] + r[i3 + 2][i2 + 2][i1 + 1];
                    /*READ_S: [r, nullCell, heapCell#5, heapCell#2, heapCell#9]
                    WRITE_S: []*/
                    x2 = r[i3 + 1][i2][i1 + 1] + r[i3 + 1][i2 + 2][i1 + 1] + r[i3][i2 + 1][i1 + 1] + r[i3 + 2][i2 + 1][i1 + 1];
                    /*READ_S: [r, nullCell, heapCell#5, s, heapCell#2, heapCell#9]
                    WRITE_S: [nullCell, heapCell#5]*/
                    s[j3][j2][j1] = 0.5 * r[i3 + 1][i2 + 1][i1 + 1] + 0.25 * (r[i3 + 1][i2 + 1][i1] + r[i3 + 1][i2 + 1][i1 + 2] + x2) + 0.125 * (x1[i1] + x1[i1 + 2] + y2) + 0.0625 * (y1[i1] + y1[i1 + 2]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre430;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre430 = k - 1;
    /*READ_S: [comm3]
    WRITE_S: []*/
    comm3(s, m1j, m2j, m3j, _imopVarPre430);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [debug_vec, debug_vec.f]
    WRITE_S: []*/
    /*READ_S: [heapCell#5, nx, nz, ny.f, r, debug_vec, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, debug_vec.f, tmp, heapCell#9, fabs, n2, rep_nrm]
    WRITE_S: [s, tmp]*/
    if (debug_vec[0] >= 1) {
    /*READ_S: [heapCell#5, nx, nz, ny.f, r, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, tmp, heapCell#9, fabs, n2, rep_nrm]
    WRITE_S: [s, tmp]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre432;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre432 = k - 1;
        /*READ_S: [rep_nrm]
        WRITE_S: []*/
        rep_nrm(s, m1j, m2j, m3j, "   rprj3", _imopVarPre432);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [debug_vec, debug_vec.f]
    WRITE_S: []*/
    /*READ_S: [heapCell#5, _imopVarPre487, _imopVarPre491, _imopVarPre483, heapCell#6, showall, heapCell#3, printf, debug_vec, nullCell, heapCell#0, debug_vec.f, heapCell#2, heapCell#9]
    WRITE_S: []*/
    if (debug_vec[4] >= k) {
    /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, _imopVarPre487, _imopVarPre491, heapCell#2, heapCell#9, _imopVarPre483, heapCell#6, showall]
    WRITE_S: []*/
        /*READ_S: [showall]
        WRITE_S: []*/
        showall(s, m1j, m2j, m3j);
        /*READ_S: []
        WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [d1, d3, heapCell#5, nx, _imopVarPre487, _imopVarPre491, ny.f, nz, mm1, _imopVarPre483, t3, mm3, t1, r, _imopVarPre436, debug_vec, s, heapCell#7, heapCell#2, n1, norm2u3, n3, i3, z, d2, sqrt, heapCell#8, ny, nx.f, i3, mm2, nz.f, t2, heapCell#6, showall, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, debug_vec.f, _imopVarPre435, tmp, heapCell#9, u, rep_nrm, fabs, n2]
WRITE_S: [heapCell#3, nullCell, s, tmp]*/
static void interp(double ***z, int mm1 , int mm2 , int mm3 , double ***u , int n1 , int n2 , int n3 , int k) {
/*READ_S: [d1, d3, heapCell#5, nx, _imopVarPre487, _imopVarPre491, ny.f, nz, mm1, _imopVarPre483, t3, mm3, t1, r, _imopVarPre436, debug_vec, s, heapCell#7, heapCell#2, n1, norm2u3, n3, i3, z, d2, sqrt, heapCell#8, ny, nx.f, i3, mm2, nz.f, t2, heapCell#6, showall, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, debug_vec.f, _imopVarPre435, tmp, heapCell#9, u, rep_nrm, fabs, n2]
WRITE_S: [heapCell#3, nullCell, s, tmp]*/
    /*READ_S: []
    WRITE_S: []*/
    int i3;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    int d1;
    /*READ_S: []
    WRITE_S: []*/
    int d2;
    /*READ_S: []
    WRITE_S: []*/
    int d3;
    /*READ_S: []
    WRITE_S: []*/
    int t1;
    /*READ_S: []
    WRITE_S: []*/
    int t2;
    /*READ_S: []
    WRITE_S: []*/
    int t3;
    /*READ_S: []
    WRITE_S: []*/
    double z1[1037];
    /*READ_S: []
    WRITE_S: []*/
    double z2[1037];
    /*READ_S: []
    WRITE_S: []*/
    double z3[1037];
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre435;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre436;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre435 = n1 != 3;
    /*READ_S: [_imopVarPre435]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre436, _imopVarPre435]
    WRITE_S: []*/
    if (_imopVarPre435) {
    /*READ_S: [_imopVarPre436]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre436 = n2 != 3;
        /*READ_S: [_imopVarPre436]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre436]
        WRITE_S: []*/
        if (_imopVarPre436) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre436 = n3 != 3;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre435 = _imopVarPre436;
    }
    /*READ_S: [_imopVarPre435]
    WRITE_S: []*/
    /*READ_S: [z, d1, d2, d3, mm1, t3, mm2, mm3, t2, heapCell#6, t1, heapCell#3, nullCell, heapCell#0, _imopVarPre435, u, i3]
    WRITE_S: [heapCell#3, nullCell]*/
    if (_imopVarPre435) {
    /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, mm2, mm3, u, heapCell#6, i3]
    WRITE_S: [heapCell#3, nullCell]*/
        /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, mm2, mm3, u, heapCell#6, i3]
        WRITE_S: [heapCell#3, nullCell]*/
#pragma omp parallel default(shared) private(i1, i2, i3, z1, z2, z3)
        {
        /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, mm2, mm3, u, heapCell#6, i3]
        WRITE_S: [heapCell#3, nullCell]*/
            /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, mm2, mm3, u, heapCell#6, i3]
            WRITE_S: [heapCell#3, nullCell]*/
#pragma omp for nowait
            /*READ_S: [i3]
            WRITE_S: []*/
            /*READ_S: [mm3]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i3 = 0; i3 < mm3 - 1; i3++) {
            /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, mm2, u, heapCell#6]
            WRITE_S: [heapCell#3, nullCell]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [mm2]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, mm2, u, heapCell#6]
                WRITE_S: [heapCell#3, nullCell]*/
                for (i2 = 0; i2 < mm2 - 1; i2++) {
                /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, u, heapCell#6]
                WRITE_S: [heapCell#3, nullCell]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, heapCell#6]
                    WRITE_S: []*/
                    for (i1 = 0; i1 < mm1; i1++) {
                    /*READ_S: [z, heapCell#3, nullCell, heapCell#0, heapCell#6]
                    WRITE_S: []*/
                        /*READ_S: [z, heapCell#3, nullCell, heapCell#0, heapCell#6]
                        WRITE_S: []*/
                        z1[i1] = z[i3][i2 + 1][i1] + z[i3][i2][i1];
                        /*READ_S: [z, heapCell#3, nullCell, heapCell#0, heapCell#6]
                        WRITE_S: []*/
                        z2[i1] = z[i3 + 1][i2][i1] + z[i3][i2][i1];
                        /*READ_S: [z, heapCell#3, nullCell, heapCell#0, heapCell#6]
                        WRITE_S: []*/
                        z3[i1] = z[i3 + 1][i2 + 1][i1] + z[i3 + 1][i2][i1] + z1[i1];
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                    /*READ_S: [z, heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [z, heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3][2 * i2][2 * i1] = u[2 * i3][2 * i2][2 * i1] + z[i3][i2][i1];
                        /*READ_S: [z, heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3][2 * i2][2 * i1 + 1] = u[2 * i3][2 * i2][2 * i1 + 1] + 0.5 * (z[i3][i2][i1 + 1] + z[i3][i2][i1]);
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [heapCell#3, nullCell, heapCell#0, mm1, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                    /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3][2 * i2 + 1][2 * i1] = u[2 * i3][2 * i2 + 1][2 * i1] + 0.5 * z1[i1];
                        /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3][2 * i2 + 1][2 * i1 + 1] = u[2 * i3][2 * i2 + 1][2 * i1 + 1] + 0.25 * (z1[i1] + z1[i1 + 1]);
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [heapCell#3, nullCell, heapCell#0, mm1, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                    /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 + 1][2 * i2][2 * i1] = u[2 * i3 + 1][2 * i2][2 * i1] + 0.5 * z2[i1];
                        /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 + 1][2 * i2][2 * i1 + 1] = u[2 * i3 + 1][2 * i2][2 * i1 + 1] + 0.25 * (z2[i1] + z2[i1 + 1]);
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [heapCell#3, nullCell, heapCell#0, mm1, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                    /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 + 1][2 * i2 + 1][2 * i1] = u[2 * i3 + 1][2 * i2 + 1][2 * i1] + 0.25 * z3[i1];
                        /*READ_S: [heapCell#3, nullCell, heapCell#0, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] = u[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] + 0.125 * (z3[i1] + z3[i1 + 1]);
                    }
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
    } else {
    /*READ_S: [z, d1, d2, d3, mm1, mm2, t3, mm3, t2, t1, heapCell#6, heapCell#3, nullCell, heapCell#0, u, i3]
    WRITE_S: [heapCell#3, nullCell]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (n1 == 3) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            d1 = 2;
            /*READ_S: []
            WRITE_S: []*/
            t1 = 1;
        } else {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            d1 = 1;
            /*READ_S: []
            WRITE_S: []*/
            t1 = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (n2 == 3) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            d2 = 2;
            /*READ_S: []
            WRITE_S: []*/
            t2 = 1;
        } else {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            d2 = 1;
            /*READ_S: []
            WRITE_S: []*/
            t2 = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (n3 == 3) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            d3 = 2;
            /*READ_S: []
            WRITE_S: []*/
            t3 = 1;
        } else {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            d3 = 1;
            /*READ_S: []
            WRITE_S: []*/
            t3 = 0;
        }
        /*READ_S: [z, d1, d2, d3, mm1, mm2, t3, mm3, t2, t1, heapCell#6, heapCell#3, nullCell, heapCell#0, u, i3]
        WRITE_S: [heapCell#3, nullCell]*/
#pragma omp parallel default(shared) private(i1, i2, i3)
        {
        /*READ_S: [z, d1, d2, d3, mm1, mm2, t3, mm3, t2, t1, heapCell#6, heapCell#3, nullCell, heapCell#0, u, i3]
        WRITE_S: [heapCell#3, nullCell]*/
            /*READ_S: [z, d1, d2, d3, mm1, mm2, mm3, t2, heapCell#6, t1, heapCell#3, nullCell, heapCell#0, u, i3]
            WRITE_S: [heapCell#3, nullCell]*/
#pragma omp for nowait
            /*READ_S: [d3, i3]
            WRITE_S: []*/
            /*READ_S: [mm3]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i3 = d3; i3 <= mm3 - 1; i3++) {
            /*READ_S: [z, d1, d2, d3, mm1, mm2, t2, heapCell#6, t1, heapCell#3, nullCell, heapCell#0, u]
            WRITE_S: [heapCell#3, nullCell]*/
                /*READ_S: [d2]
                WRITE_S: []*/
                /*READ_S: [mm2]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [z, d1, heapCell#3, d2, d3, nullCell, heapCell#0, mm1, mm2, u, heapCell#6, t1]
                WRITE_S: [heapCell#3, nullCell]*/
                for (i2 = d2; i2 <= mm2 - 1; i2++) {
                /*READ_S: [z, d1, heapCell#3, d2, d3, nullCell, heapCell#0, mm1, u, heapCell#6, t1]
                WRITE_S: [heapCell#3, nullCell]*/
                    /*READ_S: [d1]
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, d1, heapCell#3, d2, d3, nullCell, heapCell#0, mm1, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                    /*READ_S: [z, d1, heapCell#3, d2, d3, nullCell, heapCell#0, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [z, d1, heapCell#3, d2, d3, nullCell, heapCell#0, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + z[i3 - 1][i2 - 1][i1 - 1];
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, heapCell#3, d2, d3, nullCell, heapCell#0, mm1, u, t1, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                    /*READ_S: [z, heapCell#3, d2, d3, nullCell, heapCell#0, u, t1, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [z, heapCell#3, d2, d3, nullCell, heapCell#0, u, t1, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.5 * (z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [mm2]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [z, heapCell#3, d1, d3, nullCell, heapCell#0, mm1, mm2, t2, u, t1, heapCell#6]
                WRITE_S: [heapCell#3, nullCell]*/
                for (i2 = 1; i2 <= mm2 - 1; i2++) {
                /*READ_S: [z, heapCell#3, d1, d3, nullCell, heapCell#0, mm1, t2, u, t1, heapCell#6]
                WRITE_S: [heapCell#3, nullCell]*/
                    /*READ_S: [d1]
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, d1, heapCell#3, d3, nullCell, heapCell#0, mm1, t2, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                    /*READ_S: [z, d1, heapCell#3, d3, nullCell, heapCell#0, t2, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [z, d1, heapCell#3, d3, nullCell, heapCell#0, t2, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, heapCell#3, d3, nullCell, heapCell#0, mm1, t2, u, t1, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                    /*READ_S: [z, heapCell#3, d3, nullCell, heapCell#0, t2, u, t1, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [z, heapCell#3, d3, nullCell, heapCell#0, t2, u, t1, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [z, d1, d2, mm1, t3, mm2, t2, mm3, t1, heapCell#6, heapCell#3, nullCell, heapCell#0, u, i3]
            WRITE_S: [heapCell#3, nullCell]*/
#pragma omp for nowait
            /*READ_S: [i3]
            WRITE_S: []*/
            /*READ_S: [mm3]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i3 = 1; i3 <= mm3 - 1; i3++) {
            /*READ_S: [z, d1, d2, mm1, mm2, t3, t2, heapCell#6, t1, heapCell#3, nullCell, heapCell#0, u]
            WRITE_S: [heapCell#3, nullCell]*/
                /*READ_S: [d2]
                WRITE_S: []*/
                /*READ_S: [mm2]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [z, d1, heapCell#3, d2, nullCell, heapCell#0, mm1, mm2, t3, u, heapCell#6, t1]
                WRITE_S: [heapCell#3, nullCell]*/
                for (i2 = d2; i2 <= mm2 - 1; i2++) {
                /*READ_S: [z, d1, heapCell#3, d2, nullCell, heapCell#0, mm1, t3, u, heapCell#6, t1]
                WRITE_S: [heapCell#3, nullCell]*/
                    /*READ_S: [d1]
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, d1, heapCell#3, d2, nullCell, heapCell#0, mm1, t3, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                    /*READ_S: [z, d1, heapCell#3, d2, nullCell, heapCell#0, t3, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [z, d1, heapCell#3, d2, nullCell, heapCell#0, t3, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, heapCell#3, d2, nullCell, heapCell#0, mm1, t3, u, t1, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                    /*READ_S: [z, heapCell#3, d2, nullCell, heapCell#0, t3, u, t1, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [z, heapCell#3, d2, nullCell, heapCell#0, t3, u, t1, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3][i2 - 1][i1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [mm2]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [z, d1, heapCell#3, nullCell, heapCell#0, mm1, t3, mm2, t2, u, heapCell#6, t1]
                WRITE_S: [heapCell#3, nullCell]*/
                for (i2 = 1; i2 <= mm2 - 1; i2++) {
                /*READ_S: [z, d1, heapCell#3, nullCell, heapCell#0, mm1, t3, t2, u, heapCell#6, t1]
                WRITE_S: [heapCell#3, nullCell]*/
                    /*READ_S: [d1]
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, d1, heapCell#3, nullCell, heapCell#0, mm1, t3, t2, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                    /*READ_S: [z, d1, heapCell#3, nullCell, heapCell#0, t3, t2, u, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [z, d1, heapCell#3, nullCell, heapCell#0, t3, t2, u, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.25 * (z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [mm1]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [z, heapCell#3, nullCell, heapCell#0, mm1, t3, t2, u, t1, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                    /*READ_S: [z, heapCell#3, nullCell, heapCell#0, t3, t2, u, t1, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell]*/
                        /*READ_S: [z, heapCell#3, nullCell, heapCell#0, t3, t2, u, t1, heapCell#6]
                        WRITE_S: [heapCell#3, nullCell]*/
                        u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.125 * (z[i3][i2][i1] + z[i3][i2 - 1][i1] + z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
            }
        }
    }
    /*READ_S: [debug_vec, debug_vec.f]
    WRITE_S: []*/
    /*READ_S: [heapCell#5, nx, nz, ny.f, r, debug_vec, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, debug_vec.f, tmp, heapCell#9, rep_nrm, fabs, n2]
    WRITE_S: [s, tmp]*/
    if (debug_vec[0] >= 1) {
    /*READ_S: [heapCell#5, nx, nz, ny.f, r, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, tmp, heapCell#9, rep_nrm, fabs, n2]
    WRITE_S: [s, tmp]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre438;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre438 = k - 1;
        /*READ_S: [rep_nrm]
        WRITE_S: []*/
        rep_nrm(z, mm1, mm2, mm3, "z: inter", _imopVarPre438);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rep_nrm]
        WRITE_S: []*/
        rep_nrm(u, n1, n2, n3, "u: inter", k);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [debug_vec, debug_vec.f]
    WRITE_S: []*/
    /*READ_S: [heapCell#5, _imopVarPre487, _imopVarPre491, _imopVarPre483, heapCell#6, showall, heapCell#3, printf, debug_vec, nullCell, heapCell#0, debug_vec.f, heapCell#2, heapCell#9]
    WRITE_S: []*/
    if (debug_vec[5] >= k) {
    /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, _imopVarPre487, _imopVarPre491, heapCell#2, heapCell#9, _imopVarPre483, heapCell#6, showall]
    WRITE_S: []*/
        /*READ_S: [showall]
        WRITE_S: []*/
        showall(z, mm1, mm2, mm3);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [showall]
        WRITE_S: []*/
        showall(u, n1, n2, n3);
        /*READ_S: []
        WRITE_S: []*/
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [sqrt, heapCell#8, heapCell#5, i3, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, n1, fabs, n2, n3]
WRITE_S: [s, tmp]*/
static void norm2u3(double ***r, int n1 , int n2 , int n3 , double *rnm2 , double *rnmu , int nx , int ny , int nz) {
/*READ_S: [sqrt, heapCell#8, heapCell#5, i3, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, n1, fabs, n2, n3]
WRITE_S: [s, tmp]*/
    /*READ_S: []
    WRITE_S: []*/
    double s = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    int i3;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    int n;
    /*READ_S: []
    WRITE_S: []*/
    double aman = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    double tmp = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    n = nx * ny * nz;
    /*READ_S: [heapCell#8, heapCell#5, i3, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, n1, fabs, n2, n3]
    WRITE_S: [s, tmp]*/
#pragma omp parallel default(shared) private(i1, i2, i3, aman)
    {
    /*READ_S: [heapCell#8, heapCell#5, i3, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, n1, fabs, n2, n3]
    WRITE_S: [s, tmp]*/
        /*READ_S: [heapCell#8, heapCell#5, i3, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, n1, fabs, n2, n3]
        WRITE_S: [s, tmp]*/
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
        /*READ_S: [i3]
        WRITE_S: []*/
        /*READ_S: [n3]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i3 = 1; i3 < n3 - 1; i3++) {
        /*READ_S: [heapCell#8, heapCell#5, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, n1, fabs, n2]
        WRITE_S: [s, tmp]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#8, heapCell#5, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, n1, fabs, n2]
            WRITE_S: [s, tmp]*/
            for (i2 = 1; i2 < n2 - 1; i2++) {
            /*READ_S: [heapCell#8, heapCell#5, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, n1, fabs]
            WRITE_S: [s, tmp]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n1]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#8, heapCell#5, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, n1, fabs]
                WRITE_S: [s, tmp]*/
                for (i1 = 1; i1 < n1 - 1; i1++) {
                /*READ_S: [heapCell#8, heapCell#5, heapCell#6, r, heapCell#1, heapCell#3, nullCell, heapCell#0, s, heapCell#7, tmp, heapCell#2, heapCell#9, fabs]
                WRITE_S: [s, tmp]*/
                    /*READ_S: [heapCell#1, heapCell#3, nullCell, heapCell#0, heapCell#8, heapCell#5, s, heapCell#7, heapCell#2, heapCell#9, heapCell#6, r]
                    WRITE_S: [s]*/
                    s = s + r[i3][i2][i1] * r[i3][i2][i1];
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre440;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre441;
                    /*READ_S: [heapCell#1, heapCell#3, nullCell, heapCell#0, heapCell#8, heapCell#5, heapCell#7, heapCell#2, heapCell#9, heapCell#6, r]
                    WRITE_S: []*/
                    _imopVarPre440 = r[i3][i2][i1];
                    /*READ_S: [fabs]
                    WRITE_S: []*/
                    _imopVarPre441 = fabs(_imopVarPre440);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    aman = _imopVarPre441;
                    /*READ_S: [tmp]
                    WRITE_S: []*/
                    /*READ_S: [tmp]
                    WRITE_S: [tmp]*/
                    if (aman > tmp) {
                    /*READ_S: []
                    WRITE_S: [tmp]*/
                        /*READ_S: []
                        WRITE_S: [tmp]*/
                        tmp = aman;
                    }
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    *rnmu = tmp;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre443;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre444;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre443 = s / (double) n;
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre444 = sqrt(_imopVarPre443);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    *rnm2 = _imopVarPre444;
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
/*READ_S: [heapCell#5, nx, nz, ny.f, r, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, tmp, heapCell#9, fabs, n2]
WRITE_S: [s, tmp]*/
static void rep_nrm(double ***u, int n1 , int n2 , int n3 , char *title , int kk) {
/*READ_S: [heapCell#5, nx, nz, ny.f, r, s, heapCell#7, heapCell#2, n1, norm2u3, n3, sqrt, heapCell#8, ny, nx.f, i3, nz.f, heapCell#6, heapCell#1, heapCell#3, printf, nullCell, heapCell#0, tmp, heapCell#9, fabs, n2]
WRITE_S: [s, tmp]*/
    /*READ_S: []
    WRITE_S: []*/
    double rnm2;
    /*READ_S: []
    WRITE_S: []*/
    double rnmu;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre450;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre451;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre452;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre453;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre454;
    /*READ_S: [nz, nz.f]
    WRITE_S: []*/
    _imopVarPre450 = nz[kk];
    /*READ_S: [ny.f, ny]
    WRITE_S: []*/
    _imopVarPre451 = ny[kk];
    /*READ_S: [nx, nx.f]
    WRITE_S: []*/
    _imopVarPre452 = nx[kk];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre453 = &rnmu;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre454 = &rnm2;
    /*READ_S: [norm2u3]
    WRITE_S: []*/
    norm2u3(u, n1, n2, n3, _imopVarPre454, _imopVarPre453, _imopVarPre452, _imopVarPre451, _imopVarPre450);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
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
/*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, n3, i2, u, i3, n1]
WRITE_S: [heapCell#8]*/
static void comm3(double ***u, int n1 , int n2 , int n3 , int kk) {
/*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, n3, i2, u, i3, n1]
WRITE_S: [heapCell#8]*/
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: []
    WRITE_S: []*/
    int i3;
    /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, n3, i2, u, i3, n1]
    WRITE_S: [heapCell#8]*/
#pragma omp parallel default(shared) private(i1, i2, i3)
    {
    /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, n3, i2, u, i3, n1]
    WRITE_S: [heapCell#8]*/
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, n3, u, i3, n1]
        WRITE_S: [heapCell#8]*/
#pragma omp for nowait
        /*READ_S: [i3]
        WRITE_S: []*/
        /*READ_S: [n3]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i3 = 1; i3 < n3 - 1; i3++) {
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, u, n1]
        WRITE_S: [heapCell#8]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, u, n1]
            WRITE_S: [heapCell#8]*/
            for (i2 = 1; i2 < n2 - 1; i2++) {
            /*READ_S: [heapCell#1, heapCell#8, heapCell#7, u, n1]
            WRITE_S: [heapCell#8]*/
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, u, n1]
                WRITE_S: [heapCell#8]*/
                u[i3][i2][n1 - 1] = u[i3][i2][1];
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, u, n1]
                WRITE_S: [heapCell#8]*/
                u[i3][i2][0] = u[i3][i2][n1 - 2];
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n1]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, u, n1]
            WRITE_S: [heapCell#8]*/
            for (i1 = 0; i1 < n1; i1++) {
            /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, u]
            WRITE_S: [heapCell#8]*/
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, u]
                WRITE_S: [heapCell#8]*/
                u[i3][n2 - 1][i1] = u[i3][1][i1];
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, u]
                WRITE_S: [heapCell#8]*/
                u[i3][0][i1] = u[i3][n2 - 2][i1];
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n2, n3, i2, u, n1]
        WRITE_S: [heapCell#8]*/
#pragma omp for nowait
        /*READ_S: [i2]
        WRITE_S: []*/
        /*READ_S: [n2]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i2 = 0; i2 < n2; i2++) {
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n3, u, n1]
        WRITE_S: [heapCell#8]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n1]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n3, u, n1]
            WRITE_S: [heapCell#8]*/
            for (i1 = 0; i1 < n1; i1++) {
            /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n3, u]
            WRITE_S: [heapCell#8]*/
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n3, u]
                WRITE_S: [heapCell#8]*/
                u[n3 - 1][i2][i1] = u[1][i2][i1];
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, n3, u]
                WRITE_S: [heapCell#8]*/
                u[0][i2][i1] = u[n3 - 2][i2][i1];
            }
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [z, i3, ie2, n2, comm3, n2, z, i2, n2, vranlc, &heapCell#8, is2, heapCell#7, u, pow, n3, randlc, n1, ie1, i3, heapCell#8, ie3, zero3, n3, bubble, heapCell#6, n1, i3, n1, n3, heapCell#1, power, is1, nullCell, heapCell#0, is3]
WRITE_S: [heapCell#3, heapCell#8, nullCell]*/
static void zran3(double ***z, int n1 , int n2 , int n3 , int nx , int ny , int k) {
/*READ_S: [z, i3, ie2, n2, comm3, n2, z, i2, n2, vranlc, &heapCell#8, is2, heapCell#7, u, pow, n3, randlc, n1, ie1, i3, heapCell#8, ie3, zero3, n3, bubble, heapCell#6, n1, i3, n1, n3, heapCell#1, power, is1, nullCell, heapCell#0, is3]
WRITE_S: [heapCell#3, heapCell#8, nullCell]*/
    /*READ_S: []
    WRITE_S: []*/
    int i0;
    /*READ_S: []
    WRITE_S: []*/
    int m0;
    /*READ_S: []
    WRITE_S: []*/
    int m1;
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: []
    WRITE_S: []*/
    int i3;
    /*READ_S: []
    WRITE_S: []*/
    int d1;
    /*READ_S: []
    WRITE_S: []*/
    int e1;
    /*READ_S: []
    WRITE_S: []*/
    int e2;
    /*READ_S: []
    WRITE_S: []*/
    int e3;
    /*READ_S: []
    WRITE_S: []*/
    double xx;
    /*READ_S: []
    WRITE_S: []*/
    double x0;
    /*READ_S: []
    WRITE_S: []*/
    double x1;
    /*READ_S: []
    WRITE_S: []*/
    double a1;
    /*READ_S: []
    WRITE_S: []*/
    double a2;
    /*READ_S: []
    WRITE_S: []*/
    double ai;
    /*READ_S: []
    WRITE_S: []*/
    double ten[10][2];
    /*READ_S: []
    WRITE_S: []*/
    double best;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j1[10][2];
    /*READ_S: []
    WRITE_S: []*/
    int j2[10][2];
    /*READ_S: []
    WRITE_S: []*/
    int j3[10][2];
    /*READ_S: []
    WRITE_S: []*/
    int jg[4][10][2];
    /*READ_S: []
    WRITE_S: []*/
    double rdummy;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre456;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre457;
    /*READ_S: [pow]
    WRITE_S: []*/
    _imopVarPre456 = pow(5.0, 13);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [power]
    WRITE_S: []*/
    _imopVarPre457 = power(_imopVarPre456, nx);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    a1 = _imopVarPre457;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre460;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre461;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre462;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre460 = nx * ny;
    /*READ_S: [pow]
    WRITE_S: []*/
    _imopVarPre461 = pow(5.0, 13);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [power]
    WRITE_S: []*/
    _imopVarPre462 = power(_imopVarPre461, _imopVarPre460);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    a2 = _imopVarPre462;
    /*READ_S: [zero3]
    WRITE_S: []*/
    zero3(z, n1, n2, n3);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [is2, is1, is3]
    WRITE_S: []*/
    i = is1 - 1 + nx * (is2 - 1 + ny * (is3 - 1));
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre464;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre465;
    /*READ_S: [pow]
    WRITE_S: []*/
    _imopVarPre464 = pow(5.0, 13);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [power]
    WRITE_S: []*/
    _imopVarPre465 = power(_imopVarPre464, i);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ai = _imopVarPre465;
    /*READ_S: [ie1, is1]
    WRITE_S: []*/
    d1 = ie1 - is1 + 1;
    /*READ_S: [ie1, is1]
    WRITE_S: []*/
    e1 = ie1 - is1 + 2;
    /*READ_S: [ie2, is2]
    WRITE_S: []*/
    e2 = ie2 - is2 + 2;
    /*READ_S: [ie3, is3]
    WRITE_S: []*/
    e3 = ie3 - is3 + 2;
    /*READ_S: []
    WRITE_S: []*/
    x0 = 314159265.e0;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre467;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre468;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre467 = &x0;
    /*READ_S: [randlc]
    WRITE_S: []*/
    _imopVarPre468 = randlc(_imopVarPre467, ai);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    rdummy = _imopVarPre468;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [randlc, heapCell#1, nullCell, heapCell#8, heapCell#7, pow, vranlc, &heapCell#8]
    WRITE_S: [nullCell, heapCell#8]*/
    for (i3 = 1; i3 < e3; i3++) {
    /*READ_S: [randlc, heapCell#1, nullCell, heapCell#8, heapCell#7, pow, vranlc, &heapCell#8]
    WRITE_S: [nullCell, heapCell#8]*/
        /*READ_S: []
        WRITE_S: []*/
        x1 = x0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [randlc, heapCell#1, nullCell, heapCell#8, heapCell#7, pow, vranlc, &heapCell#8]
        WRITE_S: [nullCell, heapCell#8]*/
        for (i2 = 1; i2 < e2; i2++) {
        /*READ_S: [heapCell#1, randlc, nullCell, heapCell#8, heapCell#7, pow, vranlc, &heapCell#8]
        WRITE_S: [nullCell, heapCell#8]*/
            /*READ_S: []
            WRITE_S: []*/
            xx = x1;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre472;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre473;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre474;
            /*READ_S: [heapCell#1, heapCell#7, &heapCell#8]
            WRITE_S: []*/
            _imopVarPre472 = &(z[i3][i2][0]);
            /*READ_S: [pow]
            WRITE_S: []*/
            _imopVarPre473 = pow(5.0, 13);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre474 = &xx;
            /*READ_S: [nullCell, heapCell#8, vranlc]
            WRITE_S: [nullCell, heapCell#8]*/
            vranlc(d1, _imopVarPre474, _imopVarPre473, _imopVarPre472);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre476;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre477;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre476 = &x1;
            /*READ_S: [randlc]
            WRITE_S: []*/
            _imopVarPre477 = randlc(_imopVarPre476, a1);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            rdummy = _imopVarPre477;
        }
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre479;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre480;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre479 = &x0;
        /*READ_S: [randlc]
        WRITE_S: []*/
        _imopVarPre480 = randlc(_imopVarPre479, a2);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        rdummy = _imopVarPre480;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < 10; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        ten[i][1] = 0.0;
        /*READ_S: []
        WRITE_S: []*/
        j1[i][1] = 0;
        /*READ_S: []
        WRITE_S: []*/
        j2[i][1] = 0;
        /*READ_S: []
        WRITE_S: []*/
        j3[i][1] = 0;
        /*READ_S: []
        WRITE_S: []*/
        ten[i][0] = 1.0;
        /*READ_S: []
        WRITE_S: []*/
        j1[i][0] = 0;
        /*READ_S: []
        WRITE_S: []*/
        j2[i][0] = 0;
        /*READ_S: []
        WRITE_S: []*/
        j3[i][0] = 0;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
    WRITE_S: []*/
    for (i3 = 1; i3 < n3 - 1; i3++) {
    /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
        WRITE_S: []*/
        for (i2 = 1; i2 < n2 - 1; i2++) {
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
            WRITE_S: []*/
            for (i1 = 1; i1 < n1 - 1; i1++) {
            /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
            WRITE_S: []*/
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7]
                WRITE_S: []*/
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
                WRITE_S: []*/
                if (z[i3][i2][i1] > ten[0][1]) {
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
                WRITE_S: []*/
                    /*READ_S: [heapCell#1, heapCell#8, heapCell#7]
                    WRITE_S: []*/
                    ten[0][1] = z[i3][i2][i1];
                    /*READ_S: []
                    WRITE_S: []*/
                    j1[0][1] = i1;
                    /*READ_S: []
                    WRITE_S: []*/
                    j2[0][1] = i2;
                    /*READ_S: []
                    WRITE_S: []*/
                    j3[0][1] = i3;
                    /*READ_S: [bubble]
                    WRITE_S: []*/
                    bubble(ten, j1, j2, j3, 10, 1);
                    /*READ_S: []
                    WRITE_S: []*/
                }
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7]
                WRITE_S: []*/
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
                WRITE_S: []*/
                if (z[i3][i2][i1] < ten[0][0]) {
                /*READ_S: [heapCell#1, heapCell#8, heapCell#7, bubble]
                WRITE_S: []*/
                    /*READ_S: [heapCell#1, heapCell#8, heapCell#7]
                    WRITE_S: []*/
                    ten[0][0] = z[i3][i2][i1];
                    /*READ_S: []
                    WRITE_S: []*/
                    j1[0][0] = i1;
                    /*READ_S: []
                    WRITE_S: []*/
                    j2[0][0] = i2;
                    /*READ_S: []
                    WRITE_S: []*/
                    j3[0][0] = i3;
                    /*READ_S: [bubble]
                    WRITE_S: []*/
                    bubble(ten, j1, j2, j3, 10, 0);
                    /*READ_S: []
                    WRITE_S: []*/
                }
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    i1 = 10 - 1;
    /*READ_S: []
    WRITE_S: []*/
    i0 = 10 - 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1, is2, is1, heapCell#8, heapCell#7, is3]
    WRITE_S: []*/
    for (i = 10 - 1; i >= 0; i--) {
    /*READ_S: [heapCell#1, is2, is1, heapCell#8, heapCell#7, is3]
    WRITE_S: []*/
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7]
        WRITE_S: []*/
        best = z[j3[i1][1]][j2[i1][1]][j1[i1][1]];
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7]
        WRITE_S: []*/
        /*READ_S: [heapCell#1, is2, heapCell#8, is1, heapCell#7, is3]
        WRITE_S: []*/
        if (best == z[j3[i1][1]][j2[i1][1]][j1[i1][1]]) {
        /*READ_S: [is2, is1, is3]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            jg[0][i][1] = 0;
            /*READ_S: [is1]
            WRITE_S: []*/
            jg[1][i][1] = is1 - 1 + j1[i1][1];
            /*READ_S: [is2]
            WRITE_S: []*/
            jg[2][i][1] = is2 - 1 + j2[i1][1];
            /*READ_S: [is3]
            WRITE_S: []*/
            jg[3][i][1] = is3 - 1 + j3[i1][1];
            /*READ_S: []
            WRITE_S: []*/
            i1 = i1 - 1;
        } else {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            jg[0][i][1] = 0;
            /*READ_S: []
            WRITE_S: []*/
            jg[1][i][1] = 0;
            /*READ_S: []
            WRITE_S: []*/
            jg[2][i][1] = 0;
            /*READ_S: []
            WRITE_S: []*/
            jg[3][i][1] = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        ten[i][1] = best;
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7]
        WRITE_S: []*/
        best = z[j3[i0][0]][j2[i0][0]][j1[i0][0]];
        /*READ_S: [heapCell#1, heapCell#8, heapCell#7]
        WRITE_S: []*/
        /*READ_S: [heapCell#1, is2, is1, heapCell#8, is3, heapCell#7]
        WRITE_S: []*/
        if (best == z[j3[i0][0]][j2[i0][0]][j1[i0][0]]) {
        /*READ_S: [is2, is1, is3]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            jg[0][i][0] = 0;
            /*READ_S: [is1]
            WRITE_S: []*/
            jg[1][i][0] = is1 - 1 + j1[i0][0];
            /*READ_S: [is2]
            WRITE_S: []*/
            jg[2][i][0] = is2 - 1 + j2[i0][0];
            /*READ_S: [is3]
            WRITE_S: []*/
            jg[3][i][0] = is3 - 1 + j3[i0][0];
            /*READ_S: []
            WRITE_S: []*/
            i0 = i0 - 1;
        } else {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            jg[0][i][0] = 0;
            /*READ_S: []
            WRITE_S: []*/
            jg[1][i][0] = 0;
            /*READ_S: []
            WRITE_S: []*/
            jg[2][i][0] = 0;
            /*READ_S: []
            WRITE_S: []*/
            jg[3][i][0] = 0;
        }
        /*READ_S: []
        WRITE_S: []*/
        ten[i][0] = best;
    }
    /*READ_S: []
    WRITE_S: []*/
    m1 = i1 + 1;
    /*READ_S: []
    WRITE_S: []*/
    m0 = i0 + 1;
    /*READ_S: [i3, z, heapCell#1, heapCell#7, n2, n1, n3]
    WRITE_S: [heapCell#8]*/
#pragma omp parallel private(i2, i1)
    {
    /*READ_S: [i3, z, heapCell#1, heapCell#7, n2, n1, n3]
    WRITE_S: [heapCell#8]*/
        /*READ_S: [z, heapCell#1, i3, heapCell#7, n2, n1, n3]
        WRITE_S: [heapCell#8]*/
#pragma omp for nowait
        /*READ_S: [i3]
        WRITE_S: []*/
        /*READ_S: [n3]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i3 = 0; i3 < n3; i3++) {
        /*READ_S: [z, heapCell#1, heapCell#7, n2, n1]
        WRITE_S: [heapCell#8]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [z, heapCell#1, heapCell#7, n2, n1]
            WRITE_S: [heapCell#8]*/
            for (i2 = 0; i2 < n2; i2++) {
            /*READ_S: [z, heapCell#1, heapCell#7, n1]
            WRITE_S: [heapCell#8]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n1]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [z, heapCell#1, heapCell#7, n1]
                WRITE_S: [heapCell#8]*/
                for (i1 = 0; i1 < n1; i1++) {
                /*READ_S: [z, heapCell#1, heapCell#7]
                WRITE_S: [heapCell#8]*/
                    /*READ_S: [z, heapCell#1, heapCell#7]
                    WRITE_S: [heapCell#8]*/
                    z[i3][i2][i1] = 0.0;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1, heapCell#7]
    WRITE_S: [heapCell#8]*/
    for (i = 10 - 1; i >= m0; i--) {
    /*READ_S: [heapCell#1, heapCell#7]
    WRITE_S: [heapCell#8]*/
        /*READ_S: [heapCell#1, heapCell#7]
        WRITE_S: [heapCell#8]*/
        z[j3[i][0]][j2[i][0]][j1[i][0]] = -1.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#1, heapCell#7]
    WRITE_S: [heapCell#8]*/
    for (i = 10 - 1; i >= m1; i--) {
    /*READ_S: [heapCell#1, heapCell#7]
    WRITE_S: [heapCell#8]*/
        /*READ_S: [heapCell#1, heapCell#7]
        WRITE_S: [heapCell#8]*/
        z[j3[i][1]][j2[i][1]][j1[i][1]] = 1.0;
    }
    /*READ_S: [comm3]
    WRITE_S: []*/
    comm3(z, n1, n2, n3, k);
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
/*READ_S: [printf, heapCell#3, nullCell, heapCell#0, heapCell#5, _imopVarPre487, _imopVarPre491, heapCell#2, _imopVarPre483, heapCell#9, heapCell#6]
WRITE_S: []*/
static void showall(double ***z, int n1 , int n2 , int n3) {
/*READ_S: [printf, heapCell#3, nullCell, heapCell#0, heapCell#5, _imopVarPre487, _imopVarPre491, heapCell#2, _imopVarPre483, heapCell#9, heapCell#6]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: []
    WRITE_S: []*/
    int i3;
    /*READ_S: []
    WRITE_S: []*/
    int m1;
    /*READ_S: []
    WRITE_S: []*/
    int m2;
    /*READ_S: []
    WRITE_S: []*/
    int m3;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre483;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre484;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre483 = (n1 < 18);
    /*READ_S: [_imopVarPre483]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre483]
    WRITE_S: []*/
    if (_imopVarPre483) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre484 = n1;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre484 = 18;
    }
    /*READ_S: []
    WRITE_S: []*/
    m1 = _imopVarPre484;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre487;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre488;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre487 = (n2 < 14);
    /*READ_S: [_imopVarPre487]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre487]
    WRITE_S: []*/
    if (_imopVarPre487) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre488 = n2;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre488 = 14;
    }
    /*READ_S: []
    WRITE_S: []*/
    m2 = _imopVarPre488;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre491;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre492;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre491 = (n3 < 18);
    /*READ_S: [_imopVarPre491]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre491]
    WRITE_S: []*/
    if (_imopVarPre491) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre492 = n3;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre492 = 18;
    }
    /*READ_S: []
    WRITE_S: []*/
    m3 = _imopVarPre492;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, heapCell#2, heapCell#9, heapCell#6]
    WRITE_S: []*/
    for (i3 = 0; i3 < m3; i3++) {
    /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, heapCell#2, heapCell#9, heapCell#6]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, heapCell#2, heapCell#9, heapCell#6]
        WRITE_S: []*/
        for (i1 = 0; i1 < m1; i1++) {
        /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, heapCell#2, heapCell#9, heapCell#6]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, heapCell#2, heapCell#9, heapCell#6]
            WRITE_S: []*/
            for (i2 = 0; i2 < m2; i2++) {
            /*READ_S: [heapCell#3, printf, nullCell, heapCell#0, heapCell#5, heapCell#2, heapCell#9, heapCell#6]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre494;
                /*READ_S: [heapCell#3, nullCell, heapCell#0, heapCell#5, heapCell#2, heapCell#9, heapCell#6]
                WRITE_S: []*/
                _imopVarPre494 = z[i3][i2][i1];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("%6.3f", _imopVarPre494);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("\n");
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" - - - - - - - \n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [randlc]
WRITE_S: []*/
static double power(double ax, int n) {
/*READ_S: [randlc]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double aj;
    /*READ_S: []
    WRITE_S: []*/
    int nj;
    /*READ_S: []
    WRITE_S: []*/
    double rdummy;
    /*READ_S: []
    WRITE_S: []*/
    double power;
    /*READ_S: []
    WRITE_S: []*/
    power = 1.0;
    /*READ_S: []
    WRITE_S: []*/
    nj = n;
    /*READ_S: []
    WRITE_S: []*/
    aj = ax;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [randlc]
    WRITE_S: []*/
    while (nj != 0) {
    /*READ_S: [randlc]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [randlc]
        WRITE_S: []*/
        if ((nj % 2) == 1) {
        /*READ_S: [randlc]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre496;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre497;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre496 = &power;
            /*READ_S: [randlc]
            WRITE_S: []*/
            _imopVarPre497 = randlc(_imopVarPre496, aj);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            rdummy = _imopVarPre497;
        }
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre499;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre500;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre499 = &aj;
        /*READ_S: [randlc]
        WRITE_S: []*/
        _imopVarPre500 = randlc(_imopVarPre499, aj);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        rdummy = _imopVarPre500;
        /*READ_S: []
        WRITE_S: []*/
        nj = nj / 2;
    }
    /*READ_S: []
    WRITE_S: []*/
    return power;
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
static void bubble(double ten[1037][2], int j1[1037][2] , int j2[1037][2] , int j3[1037][2] , int m , int ind) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double temp;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j_temp;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (ind == 1) {
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
        for (i = 0; i < m - 1; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (ten[i][ind] > ten[i + 1][ind]) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                temp = ten[i + 1][ind];
                /*READ_S: []
                WRITE_S: []*/
                ten[i + 1][ind] = ten[i][ind];
                /*READ_S: []
                WRITE_S: []*/
                ten[i][ind] = temp;
                /*READ_S: []
                WRITE_S: []*/
                j_temp = j1[i + 1][ind];
                /*READ_S: []
                WRITE_S: []*/
                j1[i + 1][ind] = j1[i][ind];
                /*READ_S: []
                WRITE_S: []*/
                j1[i][ind] = j_temp;
                /*READ_S: []
                WRITE_S: []*/
                j_temp = j2[i + 1][ind];
                /*READ_S: []
                WRITE_S: []*/
                j2[i + 1][ind] = j2[i][ind];
                /*READ_S: []
                WRITE_S: []*/
                j2[i][ind] = j_temp;
                /*READ_S: []
                WRITE_S: []*/
                j_temp = j3[i + 1][ind];
                /*READ_S: []
                WRITE_S: []*/
                j3[i + 1][ind] = j3[i][ind];
                /*READ_S: []
                WRITE_S: []*/
                j3[i][ind] = j_temp;
            } else {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                return;
            }
        }
    } else {
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
        for (i = 0; i < m - 1; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            if (ten[i][ind] < ten[i + 1][ind]) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                temp = ten[i + 1][ind];
                /*READ_S: []
                WRITE_S: []*/
                ten[i + 1][ind] = ten[i][ind];
                /*READ_S: []
                WRITE_S: []*/
                ten[i][ind] = temp;
                /*READ_S: []
                WRITE_S: []*/
                j_temp = j1[i + 1][ind];
                /*READ_S: []
                WRITE_S: []*/
                j1[i + 1][ind] = j1[i][ind];
                /*READ_S: []
                WRITE_S: []*/
                j1[i][ind] = j_temp;
                /*READ_S: []
                WRITE_S: []*/
                j_temp = j2[i + 1][ind];
                /*READ_S: []
                WRITE_S: []*/
                j2[i + 1][ind] = j2[i][ind];
                /*READ_S: []
                WRITE_S: []*/
                j2[i][ind] = j_temp;
                /*READ_S: []
                WRITE_S: []*/
                j_temp = j3[i + 1][ind];
                /*READ_S: []
                WRITE_S: []*/
                j3[i + 1][ind] = j3[i][ind];
                /*READ_S: []
                WRITE_S: []*/
                j3[i][ind] = j_temp;
            } else {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                return;
            }
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
/*READ_S: [heapCell#1, n1, n2, i3, nullCell, heapCell#0, heapCell#7, z, n3, heapCell#6]
WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
static void zero3(double ***z, int n1 , int n2 , int n3) {
/*READ_S: [heapCell#1, n1, n2, i3, nullCell, heapCell#0, heapCell#7, z, n3, heapCell#6]
WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
    /*READ_S: []
    WRITE_S: []*/
    int i1;
    /*READ_S: []
    WRITE_S: []*/
    int i2;
    /*READ_S: []
    WRITE_S: []*/
    int i3;
    /*READ_S: [heapCell#1, n1, n2, i3, nullCell, heapCell#0, heapCell#7, z, n3, heapCell#6]
    WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
#pragma omp parallel private(i1, i2, i3)
    {
    /*READ_S: [heapCell#1, n1, n2, i3, nullCell, heapCell#0, heapCell#7, z, n3, heapCell#6]
    WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
        /*READ_S: [heapCell#1, n1, i3, n2, nullCell, heapCell#0, heapCell#7, z, n3, heapCell#6]
        WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
#pragma omp for nowait
        /*READ_S: [i3]
        WRITE_S: []*/
        /*READ_S: [n3]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i3 = 0; i3 < n3; i3++) {
        /*READ_S: [heapCell#1, n1, n2, nullCell, heapCell#0, heapCell#7, z, heapCell#6]
        WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [n2]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#1, n1, n2, nullCell, heapCell#0, heapCell#7, z, heapCell#6]
            WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
            for (i2 = 0; i2 < n2; i2++) {
            /*READ_S: [heapCell#1, n1, nullCell, heapCell#0, heapCell#7, z, heapCell#6]
            WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [n1]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#1, n1, nullCell, heapCell#0, heapCell#7, z, heapCell#6]
                WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
                for (i1 = 0; i1 < n1; i1++) {
                /*READ_S: [heapCell#1, nullCell, heapCell#0, heapCell#7, z, heapCell#6]
                WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
                    /*READ_S: [heapCell#1, nullCell, heapCell#0, heapCell#7, z, heapCell#6]
                    WRITE_S: [heapCell#3, nullCell, heapCell#8]*/
                    z[i3][i2][i1] = 0.0;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
}
