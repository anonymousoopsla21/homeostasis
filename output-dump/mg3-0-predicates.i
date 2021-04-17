typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef __int64_t __darwin_off_t;
typedef __darwin_size_t size_t;
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
int fclose(FILE *);
int fgetc(FILE *);
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
int fscanf(FILE *restrict , const char *restrict , ...);
int printf(const char *restrict , ...);
void *malloc(size_t __size);
extern double fabs(double );
extern double pow(double , double );
extern double sqrt(double );
typedef int boolean;
extern double randlc(double *, double );
extern void vranlc(int , double * , double  , double *);
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
static int nx[11 + 1];
static int ny[11 + 1];
static int nz[11 + 1];
static char Class;
static int debug_vec[8];
static int m1[11 + 1];
static int m2[11 + 1];
static int m3[11 + 1];
static int lt;
static int lb;
static int is1;
static int is2;
static int is3;
static int ie1;
static int ie2;
static int ie3;
static void setup(int *n1, int *n2 , int *n3 , int lt);
static void mg3P(double ****u, double ***v , double ****r , double a[4] , double c[4] , int n1 , int n2 , int n3 , int k);
static void psinv(double ***r, double ***u , int n1 , int n2 , int n3 , double c[4] , int k);
static void resid(double ***u, double ***v , double ***r , int n1 , int n2 , int n3 , double a[4] , int k);
static void rprj3(double ***r, int m1k , int m2k , int m3k , double ***s , int m1j , int m2j , int m3j , int k);
static void interp(double ***z, int mm1 , int mm2 , int mm3 , double ***u , int n1 , int n2 , int n3 , int k);
static void norm2u3(double ***r, int n1 , int n2 , int n3 , double *rnm2 , double *rnmu , int nx , int ny , int nz);
static void rep_nrm(double ***u, int n1 , int n2 , int n3 , char *title , int kk);
static void comm3(double ***u, int n1 , int n2 , int n3 , int kk);
static void zran3(double ***z, int n1 , int n2 , int n3 , int nx , int ny , int k);
static void showall(double ***z, int n1 , int n2 , int n3);
static double power(double a, int n);
static void bubble(double ten[1037][2], int j1[1037][2] , int j2[1037][2] , int j3[1037][2] , int m , int ind);
static void zero3(double ***z, int n1 , int n2 , int n3);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char *argv[]) {
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    int it;
    /*OUT: {
    Reverse<--,>}*/
    double t;
    /*OUT: {
    Reverse<--,>}*/
    double tinit;
    /*OUT: {
    Reverse<--,>}*/
    double mflops;
    /*OUT: {
    Reverse<--,>}*/
    int nthreads = 1;
    /*OUT: {
    Reverse<--,>}*/
    double ****u;
    /*OUT: {
    Reverse<--,>}*/
    double ***v;
    /*OUT: {
    Reverse<--,>}*/
    double ****r;
    /*OUT: {
    Reverse<--,>}*/
    double a[4];
    /*OUT: {
    Reverse<--,>}*/
    double c[4];
    /*OUT: {
    Reverse<--,>}*/
    double rnm2;
    /*OUT: {
    Reverse<--,>}*/
    double rnmu;
    /*OUT: {
    Reverse<--,>}*/
    double epsilon = 1.0e-8;
    /*OUT: {
    Reverse<--,>}*/
    int n1;
    /*OUT: {
    Reverse<--,>}*/
    int n2;
    /*OUT: {
    Reverse<--,>}*/
    int n3;
    /*OUT: {
    Reverse<--,>}*/
    int nit;
    /*OUT: {
    Reverse<--,>}*/
    double verify_value;
    /*OUT: {
    Reverse<--,>}*/
    boolean verified;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int l;
    /*OUT: {
    Reverse<--,>}*/
    FILE *fp;
    /*OUT: {
    Reverse<--,>}*/
    timer_clear(1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    timer_clear(2);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    timer_start(2);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - MG Benchmark\n\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fp = fopen("mg.input", "r");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (fp != ((void *) 0)) {
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        printf(" Reading from input file mg.input\n");
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        int *_imopVarPre141;
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        _imopVarPre141 = &lt;
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        fscanf(fp, "%d", _imopVarPre141);
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        int _imopVarPre143;
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        _imopVarPre143 = fgetc(fp);
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5420_0;>}*/
        while (_imopVarPre143 != '\n') {
            /*OUT: {
            Reverse<--, 5441_0; 5420_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 5441_0; 5420_0;>}*/
            _imopVarPre143 = fgetc(fp);
            /*OUT: {
            Reverse<--, 5441_0; 5420_0;>}*/
        }
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        int *_imopVarPre147;
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        int *_imopVarPre148;
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        int *_imopVarPre149;
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        _imopVarPre147 = &nz[lt];
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        _imopVarPre148 = &ny[lt];
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        _imopVarPre149 = &nx[lt];
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        fscanf(fp, "%d%d%d", _imopVarPre149, _imopVarPre148, _imopVarPre147);
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        int _imopVarPre151;
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        _imopVarPre151 = fgetc(fp);
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5441_1; 5420_0;>}*/
        while (_imopVarPre151 != '\n') {
            /*OUT: {
            Reverse<--, 5473_0; 5441_1; 5420_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 5473_0; 5441_1; 5420_0;>}*/
            _imopVarPre151 = fgetc(fp);
            /*OUT: {
            Reverse<--, 5473_0; 5441_1; 5420_0;>}*/
        }
        /*OUT: {
        Reverse<--, 5473_1; 5441_1; 5420_0;>}*/
        int *_imopVarPre153;
        /*OUT: {
        Reverse<--, 5473_1; 5441_1; 5420_0;>}*/
        _imopVarPre153 = &nit;
        /*OUT: {
        Reverse<--, 5473_1; 5441_1; 5420_0;>}*/
        fscanf(fp, "%d", _imopVarPre153);
        /*OUT: {
        Reverse<--, 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5473_1; 5441_1; 5420_0;>}*/
        int _imopVarPre155;
        /*OUT: {
        Reverse<--, 5473_1; 5441_1; 5420_0;>}*/
        _imopVarPre155 = fgetc(fp);
        /*OUT: {
        Reverse<--, 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5473_1; 5441_1; 5420_0;>}*/
        while (_imopVarPre155 != '\n') {
            /*OUT: {
            Reverse<--, 5496_0; 5473_1; 5441_1; 5420_0;>}*/
            ;
            /*OUT: {
            Reverse<--, 5496_0; 5473_1; 5441_1; 5420_0;>}*/
            _imopVarPre155 = fgetc(fp);
            /*OUT: {
            Reverse<--, 5496_0; 5473_1; 5441_1; 5420_0;>}*/
        }
        /*OUT: {
        Reverse<--, 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5505_0; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        for (i = 0; i <= 7; i++) {
            /*OUT: {
            Reverse<--, 5505_0; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            int *_imopVarPre157;
            /*OUT: {
            Reverse<--, 5505_0; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            _imopVarPre157 = &debug_vec[i];
            /*OUT: {
            Reverse<--, 5505_0; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            fscanf(fp, "%d", _imopVarPre157);
            /*OUT: {
            Reverse<--, 5505_0; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        }
        /*OUT: {
        Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        fclose(fp);
        /*OUT: {
        Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    } else {
        /*OUT: {
        Reverse<--, 5420_1;>}*/
        printf(" No input file. Using compiled defaults\n");
        /*OUT: {
        Reverse<--, 5420_1;>}*/
        /*OUT: {
        Reverse<--, 5420_1;>}*/
        lt = 5;
        /*OUT: {
        Reverse<--, 5420_1;>}*/
        nit = 4;
        /*OUT: {
        Reverse<--, 5420_1;>}*/
        nx[lt] = 32;
        /*OUT: {
        Reverse<--, 5420_1;>}*/
        ny[lt] = 32;
        /*OUT: {
        Reverse<--, 5420_1;>}*/
        nz[lt] = 32;
        /*OUT: {
        Reverse<--, 5420_1;>}*/
        /*OUT: {
        Reverse<--, 5420_1;>}*/
        /*OUT: {
        Reverse<--, 5540_0; 5420_1;>}*/
        for (i = 0; i <= 7; i++) {
            /*OUT: {
            Reverse<--, 5540_0; 5420_1;>}*/
            debug_vec[i] = 0;
        }
    }
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    int _imopVarPre158;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    _imopVarPre158 = (nx[lt] != ny[lt]);
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    if (!_imopVarPre158) {
        /*OUT: {
        Reverse<--, 5551_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5551_0; 5540_1; 5420_1;>}*/
        _imopVarPre158 = (nx[lt] != nz[lt]);
    }
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    if (_imopVarPre158) {
        /*OUT: {
        Reverse<--, 5557_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5557_0; 5540_1; 5420_1;>}*/
        Class = 'U';
    } else {
        /*OUT: {
        Reverse<--, 5557_1; 5540_1; 5420_1;>
        Reverse<--, 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        int _imopVarPre160;
        /*OUT: {
        Reverse<--, 5557_1; 5540_1; 5420_1;>
        Reverse<--, 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        _imopVarPre160 = nx[lt] == 32;
        /*OUT: {
        Reverse<--, 5557_1; 5540_1; 5420_1;>
        Reverse<--, 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        if (_imopVarPre160) {
            /*OUT: {
            Reverse<--, 5564_0; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 5564_0; 5557_1; 5540_1; 5420_1;>}*/
            _imopVarPre160 = nit == 4;
        }
        /*OUT: {
        Reverse<--, 5557_1; 5540_1; 5420_1;>
        Reverse<--, 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        if (_imopVarPre160) {
            /*OUT: {
            Reverse<--, 5567_0; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 5567_0; 5557_1; 5540_1; 5420_1;>}*/
            Class = 'S';
        } else {
            /*OUT: {
            Reverse<--, 5567_1; 5557_1; 5540_1; 5420_1;>
            Reverse<--, 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            int _imopVarPre162;
            /*OUT: {
            Reverse<--, 5567_1; 5557_1; 5540_1; 5420_1;>
            Reverse<--, 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            _imopVarPre162 = nx[lt] == 64;
            /*OUT: {
            Reverse<--, 5567_1; 5557_1; 5540_1; 5420_1;>
            Reverse<--, 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            if (_imopVarPre162) {
                /*OUT: {
                Reverse<--, 5574_0; 5567_1; 5557_1; 5540_1; 5420_1;>
                Reverse<--, 5574_0; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                _imopVarPre162 = nit == 40;
            }
            /*OUT: {
            Reverse<--, 5567_1; 5557_1; 5540_1; 5420_1;>
            Reverse<--, 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            if (_imopVarPre162) {
                /*OUT: {
                Reverse<--, 5577_0; 5567_1; 5557_1; 5540_1; 5420_1;>
                Reverse<--, 5577_0; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                Class = 'W';
            } else {
                /*OUT: {
                Reverse<--, 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                Reverse<--, 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                int _imopVarPre164;
                /*OUT: {
                Reverse<--, 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                Reverse<--, 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                _imopVarPre164 = nx[lt] == 256;
                /*OUT: {
                Reverse<--, 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                Reverse<--, 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                if (_imopVarPre164) {
                    /*OUT: {
                    Reverse<--, 5584_0; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>
                    Reverse<--, 5584_0; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                    _imopVarPre164 = nit == 20;
                }
                /*OUT: {
                Reverse<--, 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                Reverse<--, 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                if (_imopVarPre164) {
                    /*OUT: {
                    Reverse<--, 5587_0; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                    Reverse<--, 5587_0; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                    Class = 'B';
                } else {
                    /*OUT: {
                    Reverse<--, 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>
                    Reverse<--, 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                    int _imopVarPre166;
                    /*OUT: {
                    Reverse<--, 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>
                    Reverse<--, 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                    _imopVarPre166 = nx[lt] == 512;
                    /*OUT: {
                    Reverse<--, 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>
                    Reverse<--, 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                    if (_imopVarPre166) {
                        /*OUT: {
                        Reverse<--, 5594_0; 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>
                        Reverse<--, 5594_0; 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                        _imopVarPre166 = nit == 20;
                    }
                    /*OUT: {
                    Reverse<--, 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>
                    Reverse<--, 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                    if (_imopVarPre166) {
                        /*OUT: {
                        Reverse<--, 5597_0; 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                        Reverse<--, 5597_0; 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                        Class = 'C';
                    } else {
                        /*OUT: {
                        Reverse<--, 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                        Reverse<--, 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                        int _imopVarPre168;
                        /*OUT: {
                        Reverse<--, 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                        Reverse<--, 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                        _imopVarPre168 = nx[lt] == 256;
                        /*OUT: {
                        Reverse<--, 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                        Reverse<--, 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                        if (_imopVarPre168) {
                            /*OUT: {
                            Reverse<--, 5604_0; 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                            Reverse<--, 5604_0; 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                            _imopVarPre168 = nit == 4;
                        }
                        /*OUT: {
                        Reverse<--, 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                        Reverse<--, 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                        if (_imopVarPre168) {
                            /*OUT: {
                            Reverse<--, 5607_0; 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                            Reverse<--, 5607_0; 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                            Class = 'A';
                        } else {
                            /*OUT: {
                            Reverse<--, 5607_1; 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                            Reverse<--, 5607_1; 5597_1; 5587_1; 5577_1; 5567_1; 5557_1; 5540_1; 5420_1;>}*/
                            Class = 'U';
                        }
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    a[0] = -8.0 / 3.0;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    a[1] = 0.0;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    a[2] = 1.0 / 6.0;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    a[3] = 1.0 / 12.0;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    int _imopVarPre169;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    int _imopVarPre170;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    _imopVarPre169 = Class == 'A';
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    if (!_imopVarPre169) {
        /*OUT: {
        Reverse<--, 5628_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5628_0; 5540_1; 5420_1;>}*/
        _imopVarPre170 = Class == 'S';
        /*OUT: {
        Reverse<--, 5628_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5628_0; 5540_1; 5420_1;>}*/
        if (!_imopVarPre170) {
            /*OUT: {
            Reverse<--, 5631_0; 5628_0; 5540_1; 5420_1;>
            Reverse<--, 5631_0; 5628_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            _imopVarPre170 = Class == 'W';
        }
        /*OUT: {
        Reverse<--, 5628_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5628_0; 5540_1; 5420_1;>}*/
        _imopVarPre169 = _imopVarPre170;
    }
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    if (_imopVarPre169) {
        /*OUT: {
        Reverse<--, 5636_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5636_0; 5540_1; 5420_1;>}*/
        c[0] = -3.0 / 8.0;
        /*OUT: {
        Reverse<--, 5636_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5636_0; 5540_1; 5420_1;>}*/
        c[1] = 1.0 / 32.0;
        /*OUT: {
        Reverse<--, 5636_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5636_0; 5540_1; 5420_1;>}*/
        c[2] = -1.0 / 64.0;
        /*OUT: {
        Reverse<--, 5636_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5636_0; 5540_1; 5420_1;>}*/
        c[3] = 0.0;
    } else {
        /*OUT: {
        Reverse<--, 5636_1; 5540_1; 5420_1;>
        Reverse<--, 5636_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        c[0] = -3.0 / 17.0;
        /*OUT: {
        Reverse<--, 5636_1; 5540_1; 5420_1;>
        Reverse<--, 5636_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        c[1] = 1.0 / 33.0;
        /*OUT: {
        Reverse<--, 5636_1; 5540_1; 5420_1;>
        Reverse<--, 5636_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        c[2] = -1.0 / 61.0;
        /*OUT: {
        Reverse<--, 5636_1; 5540_1; 5420_1;>
        Reverse<--, 5636_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        c[3] = 0.0;
    }
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    lb = 1;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    int *_imopVarPre174;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    int *_imopVarPre175;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    int *_imopVarPre176;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    _imopVarPre174 = &n3;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    _imopVarPre175 = &n2;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    _imopVarPre176 = &n1;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    setup(_imopVarPre176, _imopVarPre175, _imopVarPre174, lt);
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    unsigned long int _imopVarPre179;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    void *_imopVarPre180;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    _imopVarPre179 = (lt + 1) * sizeof(double ***);
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    _imopVarPre180 = malloc(_imopVarPre179);
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    u = (double ****) _imopVarPre180;
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    /*OUT: {
    Reverse<--, 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 5540_1; 5420_1;>}*/
    /*OUT: {
    Reverse<--, 5709_1; 5691_0; 5540_1; 5420_1;>
    Reverse<--, 5709_1; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    for (l = lt; l >= 1; l--) {
        /*OUT: {
        Reverse<--, 5691_0; 5540_1; 5420_1;>
        Reverse<--, 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        unsigned long int _imopVarPre183;
        /*OUT: {
        Reverse<--, 5691_0; 5540_1; 5420_1;>
        Reverse<--, 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        void *_imopVarPre184;
        /*OUT: {
        Reverse<--, 5691_0; 5540_1; 5420_1;>
        Reverse<--, 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        _imopVarPre183 = m3[l] * sizeof(double **);
        /*OUT: {
        Reverse<--, 5691_0; 5540_1; 5420_1;>
        Reverse<--, 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        _imopVarPre184 = malloc(_imopVarPre183);
        /*OUT: {
        Reverse<--, 5691_0; 5540_1; 5420_1;>
        Reverse<--, 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5691_0; 5540_1; 5420_1;>
        Reverse<--, 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        u[l] = (double ***) _imopVarPre184;
        /*OUT: {
        Reverse<--, 5691_0; 5540_1; 5420_1;>
        Reverse<--, 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5691_0; 5540_1; 5420_1;>
        Reverse<--, 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5728_1; 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5728_1; 5709_0; 5691_0; 5540_1; 5420_1;>}*/
        for (k = 0; k < m3[l]; k++) {
            /*OUT: {
            Reverse<--, 5709_0; 5691_0; 5540_1; 5420_1;>
            Reverse<--, 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            unsigned long int _imopVarPre187;
            /*OUT: {
            Reverse<--, 5709_0; 5691_0; 5540_1; 5420_1;>
            Reverse<--, 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            void *_imopVarPre188;
            /*OUT: {
            Reverse<--, 5709_0; 5691_0; 5540_1; 5420_1;>
            Reverse<--, 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            _imopVarPre187 = m2[l] * sizeof(double *);
            /*OUT: {
            Reverse<--, 5709_0; 5691_0; 5540_1; 5420_1;>
            Reverse<--, 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            _imopVarPre188 = malloc(_imopVarPre187);
            /*OUT: {
            Reverse<--, 5709_0; 5691_0; 5540_1; 5420_1;>
            Reverse<--, 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            /*OUT: {
            Reverse<--, 5709_0; 5691_0; 5540_1; 5420_1;>
            Reverse<--, 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            u[l][k] = (double **) _imopVarPre188;
            /*OUT: {
            Reverse<--, 5709_0; 5691_0; 5540_1; 5420_1;>
            Reverse<--, 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            /*OUT: {
            Reverse<--, 5709_0; 5691_0; 5540_1; 5420_1;>
            Reverse<--, 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            /*OUT: {
            Reverse<--, 5728_0; 5709_0; 5691_0; 5540_1; 5420_1;>
            Reverse<--, 5728_0; 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            for (j = 0; j < m2[l]; j++) {
                /*OUT: {
                Reverse<--, 5728_0; 5709_0; 5691_0; 5540_1; 5420_1;>
                Reverse<--, 5728_0; 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                unsigned long int _imopVarPre191;
                /*OUT: {
                Reverse<--, 5728_0; 5709_0; 5691_0; 5540_1; 5420_1;>
                Reverse<--, 5728_0; 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                void *_imopVarPre192;
                /*OUT: {
                Reverse<--, 5728_0; 5709_0; 5691_0; 5540_1; 5420_1;>
                Reverse<--, 5728_0; 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                _imopVarPre191 = m1[l] * sizeof(double);
                /*OUT: {
                Reverse<--, 5728_0; 5709_0; 5691_0; 5540_1; 5420_1;>
                Reverse<--, 5728_0; 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                _imopVarPre192 = malloc(_imopVarPre191);
                /*OUT: {
                Reverse<--, 5728_0; 5709_0; 5691_0; 5540_1; 5420_1;>
                Reverse<--, 5728_0; 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                /*OUT: {
                Reverse<--, 5728_0; 5709_0; 5691_0; 5540_1; 5420_1;>
                Reverse<--, 5728_0; 5709_0; 5691_0; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                u[l][k][j] = (double *) _imopVarPre192;
            }
        }
    }
    /*OUT: {
    Reverse<--, 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    unsigned long int _imopVarPre195;
    /*OUT: {
    Reverse<--, 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    void *_imopVarPre196;
    /*OUT: {
    Reverse<--, 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre195 = m3[lt] * sizeof(double **);
    /*OUT: {
    Reverse<--, 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre196 = malloc(_imopVarPre195);
    /*OUT: {
    Reverse<--, 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    v = (double ***) _imopVarPre196;
    /*OUT: {
    Reverse<--, 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5779_1; 5761_0; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5779_1; 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    for (k = 0; k < m3[lt]; k++) {
        /*OUT: {
        Reverse<--, 5761_0; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        unsigned long int _imopVarPre199;
        /*OUT: {
        Reverse<--, 5761_0; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        void *_imopVarPre200;
        /*OUT: {
        Reverse<--, 5761_0; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        _imopVarPre199 = m2[lt] * sizeof(double *);
        /*OUT: {
        Reverse<--, 5761_0; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        _imopVarPre200 = malloc(_imopVarPre199);
        /*OUT: {
        Reverse<--, 5761_0; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5761_0; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        v[k] = (double **) _imopVarPre200;
        /*OUT: {
        Reverse<--, 5761_0; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5761_0; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 5779_0; 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5779_0; 5761_0; 5691_1; 5540_1; 5420_1;>}*/
        for (j = 0; j < m2[lt]; j++) {
            /*OUT: {
            Reverse<--, 5779_0; 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 5779_0; 5761_0; 5691_1; 5540_1; 5420_1;>}*/
            unsigned long int _imopVarPre203;
            /*OUT: {
            Reverse<--, 5779_0; 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 5779_0; 5761_0; 5691_1; 5540_1; 5420_1;>}*/
            void *_imopVarPre204;
            /*OUT: {
            Reverse<--, 5779_0; 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 5779_0; 5761_0; 5691_1; 5540_1; 5420_1;>}*/
            _imopVarPre203 = m1[lt] * sizeof(double);
            /*OUT: {
            Reverse<--, 5779_0; 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 5779_0; 5761_0; 5691_1; 5540_1; 5420_1;>}*/
            _imopVarPre204 = malloc(_imopVarPre203);
            /*OUT: {
            Reverse<--, 5779_0; 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 5779_0; 5761_0; 5691_1; 5540_1; 5420_1;>}*/
            /*OUT: {
            Reverse<--, 5779_0; 5761_0; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 5779_0; 5761_0; 5691_1; 5540_1; 5420_1;>}*/
            v[k][j] = (double *) _imopVarPre204;
        }
    }
    /*OUT: {
    Reverse<--, 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    unsigned long int _imopVarPre207;
    /*OUT: {
    Reverse<--, 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    void *_imopVarPre208;
    /*OUT: {
    Reverse<--, 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre207 = (lt + 1) * sizeof(double ***);
    /*OUT: {
    Reverse<--, 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre208 = malloc(_imopVarPre207);
    /*OUT: {
    Reverse<--, 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    r = (double ****) _imopVarPre208;
    /*OUT: {
    Reverse<--, 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5828_1; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5828_1; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    for (l = lt; l >= 1; l--) {
        /*OUT: {
        Reverse<--, 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        unsigned long int _imopVarPre211;
        /*OUT: {
        Reverse<--, 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        void *_imopVarPre212;
        /*OUT: {
        Reverse<--, 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        _imopVarPre211 = m3[l] * sizeof(double **);
        /*OUT: {
        Reverse<--, 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        _imopVarPre212 = malloc(_imopVarPre211);
        /*OUT: {
        Reverse<--, 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        /*OUT: {
        Reverse<--, 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        r[l] = (double ***) _imopVarPre212;
        /*OUT: {
        Reverse<--, 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        /*OUT: {
        Reverse<--, 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        /*OUT: {
        Reverse<--, 5847_1; 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 5847_1; 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        for (k = 0; k < m3[l]; k++) {
            /*OUT: {
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            unsigned long int _imopVarPre215;
            /*OUT: {
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            void *_imopVarPre216;
            /*OUT: {
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            _imopVarPre215 = m2[l] * sizeof(double *);
            /*OUT: {
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            _imopVarPre216 = malloc(_imopVarPre215);
            /*OUT: {
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            /*OUT: {
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            r[l][k] = (double **) _imopVarPre216;
            /*OUT: {
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            /*OUT: {
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            /*OUT: {
            Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            for (j = 0; j < m2[l]; j++) {
                /*OUT: {
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                unsigned long int _imopVarPre219;
                /*OUT: {
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                void *_imopVarPre220;
                /*OUT: {
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                _imopVarPre219 = m1[l] * sizeof(double);
                /*OUT: {
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                _imopVarPre220 = malloc(_imopVarPre219);
                /*OUT: {
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                /*OUT: {
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5540_1; 5420_1;>
                Reverse<--, 5847_0; 5828_0; 5810_0; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                r[l][k][j] = (double *) _imopVarPre220;
            }
        }
    }
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre222;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre222 = u[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    zero3(_imopVarPre222, n1, n2, n3);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre225;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre226;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre225 = ny[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre226 = nx[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    zran3(v, n1, n2, n3, _imopVarPre226, _imopVarPre225, lt);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre232;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre233;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre234;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double *_imopVarPre235;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double *_imopVarPre236;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre232 = nz[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre233 = ny[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre234 = nx[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre235 = &rnmu;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre236 = &rnm2;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    norm2u3(v, n1, n2, n3, _imopVarPre236, _imopVarPre235, _imopVarPre234, _imopVarPre233, _imopVarPre232);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre240;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre241;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre242;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre240 = nz[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre241 = ny[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre242 = nx[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    printf(" Size: %3dx%3dx%3d (class %1c)\n", _imopVarPre242, _imopVarPre241, _imopVarPre240, Class);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    printf(" Iterations: %3d\n", nit);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre245;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre246;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre245 = r[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre246 = u[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    resid(_imopVarPre246, v, _imopVarPre245, n1, n2, n3, a, lt);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre253;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre254;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre255;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double *_imopVarPre256;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double *_imopVarPre257;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre258;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre253 = nz[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre254 = ny[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre255 = nx[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre256 = &rnmu;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre257 = &rnm2;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre258 = r[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    norm2u3(_imopVarPre258, n1, n2, n3, _imopVarPre257, _imopVarPre256, _imopVarPre255, _imopVarPre254, _imopVarPre253);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    mg3P(u, v, r, a, c, n1, n2, n3, lt);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre261;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre262;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre261 = r[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre262 = u[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    resid(_imopVarPre262, v, _imopVarPre261, n1, n2, n3, a, lt);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int *_imopVarPre266;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int *_imopVarPre267;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int *_imopVarPre268;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre266 = &n3;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre267 = &n2;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre268 = &n1;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    setup(_imopVarPre268, _imopVarPre267, _imopVarPre266, lt);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre270;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre270 = u[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    zero3(_imopVarPre270, n1, n2, n3);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre273;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre274;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre273 = ny[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre274 = nx[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    zran3(v, n1, n2, n3, _imopVarPre274, _imopVarPre273, lt);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    timer_stop(2);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    timer_start(1);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre277;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre278;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre277 = r[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre278 = u[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    resid(_imopVarPre278, v, _imopVarPre277, n1, n2, n3, a, lt);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre285;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre286;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    int _imopVarPre287;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double *_imopVarPre288;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double *_imopVarPre289;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    double ***_imopVarPre290;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre285 = nz[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre286 = ny[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre287 = nx[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre288 = &rnmu;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre289 = &rnm2;
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    _imopVarPre290 = r[lt];
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    norm2u3(_imopVarPre290, n1, n2, n3, _imopVarPre289, _imopVarPre288, _imopVarPre287, _imopVarPre286, _imopVarPre285);
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    /*OUT: {
    Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
    Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    for (it = 1; it <= nit; it++) {
        /*OUT: {
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        mg3P(u, v, r, a, c, n1, n2, n3, lt);
        /*OUT: {
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        double ***_imopVarPre293;
        /*OUT: {
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        double ***_imopVarPre294;
        /*OUT: {
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        _imopVarPre293 = r[lt];
        /*OUT: {
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        _imopVarPre294 = u[lt];
        /*OUT: {
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        resid(_imopVarPre294, v, _imopVarPre293, n1, n2, n3, a, lt);
        /*OUT: {
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6077_0; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    }
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    int _imopVarPre301;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    int _imopVarPre302;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    int _imopVarPre303;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    double *_imopVarPre304;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    double *_imopVarPre305;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    double ***_imopVarPre306;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    _imopVarPre301 = nz[lt];
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    _imopVarPre302 = ny[lt];
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    _imopVarPre303 = nx[lt];
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    _imopVarPre304 = &rnmu;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    _imopVarPre305 = &rnm2;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    _imopVarPre306 = r[lt];
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    norm2u3(_imopVarPre306, n1, n2, n3, _imopVarPre305, _imopVarPre304, _imopVarPre303, _imopVarPre302, _imopVarPre301);
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
#pragma omp parallel
    {
    }
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    timer_stop(1);
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    t = timer_read(1);
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    tinit = timer_read(2);
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    verified = 0;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    verify_value = 0.0;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    printf(" Initialization time: %15.3f seconds\n", tinit);
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    printf(" Benchmark completed\n");
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    if (Class != 'U') {
        /*OUT: {
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        if (Class == 'S') {
            /*OUT: {
            Reverse<--, 6156_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 6156_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            verify_value = 0.530770700573e-04;
        } else {
            /*OUT: {
            Reverse<--, 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            if (Class == 'W') {
                /*OUT: {
                Reverse<--, 6159_0; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                Reverse<--, 6159_0; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
                verify_value = 0.250391406439e-17;
            } else {
                /*OUT: {
                Reverse<--, 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
                Reverse<--, 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                if (Class == 'A') {
                    /*OUT: {
                    Reverse<--, 6162_0; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                    Reverse<--, 6162_0; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
                    verify_value = 0.2433365309e-5;
                } else {
                    /*OUT: {
                    Reverse<--, 6162_1; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
                    Reverse<--, 6162_1; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                    if (Class == 'B') {
                        /*OUT: {
                        Reverse<--, 6165_0; 6162_1; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                        Reverse<--, 6165_0; 6162_1; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
                        verify_value = 0.180056440132e-5;
                    } else {
                        /*OUT: {
                        Reverse<--, 6165_1; 6162_1; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
                        Reverse<--, 6165_1; 6162_1; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
                        if (Class == 'C') {
                            /*OUT: {
                            Reverse<--, 6168_0; 6165_1; 6162_1; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
                            Reverse<--, 6168_0; 6165_1; 6162_1; 6159_1; 6156_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
                            verify_value = 0.570674826298e-06;
                        }
                    }
                }
            }
        }
        /*OUT: {
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        double _imopVarPre309;
        /*OUT: {
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        double _imopVarPre310;
        /*OUT: {
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        _imopVarPre309 = rnm2 - verify_value;
        /*OUT: {
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        _imopVarPre310 = fabs(_imopVarPre309);
        /*OUT: {
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        /*OUT: {
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        if (_imopVarPre310 <= epsilon) {
            /*OUT: {
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
            verified = 1;
            /*OUT: {
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
            printf(" VERIFICATION SUCCESSFUL\n");
            /*OUT: {
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
            /*OUT: {
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
            printf(" L2 Norm is %20.12e\n", rnm2);
            /*OUT: {
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
            /*OUT: {
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
            double _imopVarPre312;
            /*OUT: {
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
            _imopVarPre312 = rnm2 - verify_value;
            /*OUT: {
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
            printf(" Error is   %20.12e\n", _imopVarPre312);
            /*OUT: {
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
            Reverse<--, 6181_0; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        } else {
            /*OUT: {
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            verified = 0;
            /*OUT: {
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            printf(" VERIFICATION FAILED\n");
            /*OUT: {
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            /*OUT: {
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            printf(" L2 Norm is             %20.12e\n", rnm2);
            /*OUT: {
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            /*OUT: {
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
            printf(" The correct L2 Norm is %20.12e\n", verify_value);
            /*OUT: {
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
            Reverse<--, 6181_1; 6155_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        }
    } else {
        /*OUT: {
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        verified = 0;
        /*OUT: {
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        printf(" Problem size unknown\n");
        /*OUT: {
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        /*OUT: {
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        printf(" NO VERIFICATION PERFORMED\n");
        /*OUT: {
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6155_1; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
    }
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    if (t != 0.0) {
        /*OUT: {
        Reverse<--, 6231_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6231_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        int nn = nx[lt] * ny[lt] * nz[lt];
        /*OUT: {
        Reverse<--, 6231_0; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>
        Reverse<--, 6231_0; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>}*/
        mflops = 58. * nit * nn * 1.0e-6 / t;
    } else {
        /*OUT: {
        Reverse<--, 6231_1; 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
        Reverse<--, 6231_1; 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
        mflops = 0.0;
    }
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    int _imopVarPre316;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    int _imopVarPre317;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    int _imopVarPre318;
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    _imopVarPre316 = nz[lt];
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    _imopVarPre317 = ny[lt];
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    _imopVarPre318 = nx[lt];
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
    c_print_results("MG", Class, _imopVarPre318, _imopVarPre317, _imopVarPre316, nit, nthreads, t, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
    /*OUT: {
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5505_1; 5496_1; 5473_1; 5441_1; 5420_0;>
    Reverse<--, 6077_1; 5810_1; 5761_1; 5691_1; 5540_1; 5420_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void setup(int *n1, int *n2 , int *n3 , int lt) {
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 6263_0;>}*/
    for (k = lt - 1; k >= 1; k--) {
        /*OUT: {
        Reverse<--, 6263_0;>}*/
        nx[k] = nx[k + 1] / 2;
        /*OUT: {
        Reverse<--, 6263_0;>}*/
        ny[k] = ny[k + 1] / 2;
        /*OUT: {
        Reverse<--, 6263_0;>}*/
        nz[k] = nz[k + 1] / 2;
    }
    /*OUT: {
    Reverse<--, 6263_1;>}*/
    /*OUT: {
    Reverse<--, 6263_1;>}*/
    /*OUT: {
    Reverse<--, 6278_0; 6263_1;>}*/
    for (k = 1; k <= lt; k++) {
        /*OUT: {
        Reverse<--, 6278_0; 6263_1;>}*/
        m1[k] = nx[k] + 2;
        /*OUT: {
        Reverse<--, 6278_0; 6263_1;>}*/
        m2[k] = nz[k] + 2;
        /*OUT: {
        Reverse<--, 6278_0; 6263_1;>}*/
        m3[k] = ny[k] + 2;
    }
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    is1 = 1;
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    ie1 = nx[lt];
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    *n1 = nx[lt] + 2;
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    is2 = 1;
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    ie2 = ny[lt];
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    *n2 = ny[lt] + 2;
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    is3 = 1;
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    ie3 = nz[lt];
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    *n3 = nz[lt] + 2;
    /*OUT: {
    Reverse<--, 6278_1; 6263_1;>}*/
    if (debug_vec[1] >= 1) {
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        printf(" in setup, \n");
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        printf("  lt  nx  ny  nz  n1  n2  n3 is1 is2 is3 ie1 ie2 ie3\n");
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        int _imopVarPre325;
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        int _imopVarPre326;
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        int _imopVarPre327;
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        int _imopVarPre328;
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        int _imopVarPre329;
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        int _imopVarPre330;
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        _imopVarPre325 = *n3;
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        _imopVarPre326 = *n2;
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        _imopVarPre327 = *n1;
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        _imopVarPre328 = nz[lt];
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        _imopVarPre329 = ny[lt];
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        _imopVarPre330 = nx[lt];
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
        printf("%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d\n", lt, _imopVarPre330, _imopVarPre329, _imopVarPre328, _imopVarPre327, _imopVarPre326, _imopVarPre325, is1, is2, is3, ie1, ie2, ie3);
        /*OUT: {
        Reverse<--, 6317_0; 6278_1; 6263_1;>}*/
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void mg3P(double ****u, double ***v , double ****r , double a[4] , double c[4] , int n1 , int n2 , int n3 , int k) {
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 6365_0;>}*/
    for (k = lt; k >= lb + 1; k--) {
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        j = k - 1;
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        int _imopVarPre339;
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        int _imopVarPre340;
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        int _imopVarPre341;
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        double ***_imopVarPre342;
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        int _imopVarPre343;
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        int _imopVarPre344;
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        int _imopVarPre345;
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        double ***_imopVarPre346;
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        _imopVarPre339 = m3[j];
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        _imopVarPre340 = m2[j];
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        _imopVarPre341 = m1[j];
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        _imopVarPre342 = r[j];
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        _imopVarPre343 = m3[k];
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        _imopVarPre344 = m2[k];
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        _imopVarPre345 = m1[k];
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        _imopVarPre346 = r[k];
        /*OUT: {
        Reverse<--, 6365_0;>}*/
        rprj3(_imopVarPre346, _imopVarPre345, _imopVarPre344, _imopVarPre343, _imopVarPre342, _imopVarPre341, _imopVarPre340, _imopVarPre339, k);
        /*OUT: {
        Reverse<--, 6365_0;>}*/
    }
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    k = lb;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    int _imopVarPre351;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    int _imopVarPre352;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    int _imopVarPre353;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    double ***_imopVarPre354;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    _imopVarPre351 = m3[k];
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    _imopVarPre352 = m2[k];
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    _imopVarPre353 = m1[k];
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    _imopVarPre354 = u[k];
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    zero3(_imopVarPre354, _imopVarPre353, _imopVarPre352, _imopVarPre351);
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    int _imopVarPre360;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    int _imopVarPre361;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    int _imopVarPre362;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    double ***_imopVarPre363;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    double ***_imopVarPre364;
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    _imopVarPre360 = m3[k];
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    _imopVarPre361 = m2[k];
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    _imopVarPre362 = m1[k];
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    _imopVarPre363 = u[k];
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    _imopVarPre364 = r[k];
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    psinv(_imopVarPre364, _imopVarPre363, _imopVarPre362, _imopVarPre361, _imopVarPre360, c, k);
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    /*OUT: {
    Reverse<--, 6365_1;>}*/
    /*OUT: {
    Reverse<--, 6455_0; 6365_1;>}*/
    for (k = lb + 1; k <= lt - 1; k++) {
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        j = k - 1;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre369;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre370;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre371;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        double ***_imopVarPre372;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre369 = m3[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre370 = m2[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre371 = m1[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre372 = u[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        zero3(_imopVarPre372, _imopVarPre371, _imopVarPre370, _imopVarPre369);
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre381;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre382;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre383;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        double ***_imopVarPre384;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre385;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre386;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre387;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        double ***_imopVarPre388;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre381 = m3[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre382 = m2[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre383 = m1[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre384 = u[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre385 = m3[j];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre386 = m2[j];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre387 = m1[j];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre388 = u[j];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        interp(_imopVarPre388, _imopVarPre387, _imopVarPre386, _imopVarPre385, _imopVarPre384, _imopVarPre383, _imopVarPre382, _imopVarPre381, k);
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre395;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre396;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre397;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        double ***_imopVarPre398;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        double ***_imopVarPre399;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        double ***_imopVarPre400;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre395 = m3[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre396 = m2[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre397 = m1[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre398 = r[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre399 = r[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre400 = u[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        resid(_imopVarPre400, _imopVarPre399, _imopVarPre398, _imopVarPre397, _imopVarPre396, _imopVarPre395, a, k);
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre406;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre407;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        int _imopVarPre408;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        double ***_imopVarPre409;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        double ***_imopVarPre410;
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre406 = m3[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre407 = m2[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre408 = m1[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre409 = u[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        _imopVarPre410 = r[k];
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
        psinv(_imopVarPre410, _imopVarPre409, _imopVarPre408, _imopVarPre407, _imopVarPre406, c, k);
        /*OUT: {
        Reverse<--, 6455_0; 6365_1;>}*/
    }
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    j = lt - 1;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    k = lt;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    double ***_imopVarPre416;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    int _imopVarPre417;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    int _imopVarPre418;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    int _imopVarPre419;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    double ***_imopVarPre420;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    _imopVarPre416 = u[lt];
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    _imopVarPre417 = m3[j];
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    _imopVarPre418 = m2[j];
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    _imopVarPre419 = m1[j];
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    _imopVarPre420 = u[j];
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    interp(_imopVarPre420, _imopVarPre419, _imopVarPre418, _imopVarPre417, _imopVarPre416, n1, n2, n3, k);
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    double ***_imopVarPre423;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    double ***_imopVarPre424;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    _imopVarPre423 = r[lt];
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    _imopVarPre424 = u[lt];
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    resid(_imopVarPre424, v, _imopVarPre423, n1, n2, n3, a, k);
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    double ***_imopVarPre427;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    double ***_imopVarPre428;
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    _imopVarPre427 = u[lt];
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    _imopVarPre428 = r[lt];
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
    psinv(_imopVarPre428, _imopVarPre427, n1, n2, n3, c, k);
    /*OUT: {
    Reverse<--, 6455_1; 6365_1;>}*/
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
static void psinv(double ***r, double ***u , int n1 , int n2 , int n3 , double c[4] , int k) {
    /*OUT: {
    Reverse<--,>}*/
    int i3;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    double r1[1037];
    /*OUT: {
    Reverse<--,>}*/
    double r2[1037];
#pragma omp parallel default(shared) private(i1, i2, i3, r1, r2)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<8651,>}*/
        /*OUT: {
        Reverse<8651,>}*/
        /*OUT: {
        Reverse<8651, 6644_1;>}*/
        for (i3 = 1; i3 < n3 - 1; i3++) {
            /*OUT: {
            Reverse<8651,>}*/
            /*OUT: {
            Reverse<8651,>}*/
            /*OUT: {
            Reverse<8651, 6680_1; 6647_1; 6644_0;>}*/
            for (i2 = 1; i2 < n2 - 1; i2++) {
                /*OUT: {
                Reverse<8651, 6644_0;>}*/
                /*OUT: {
                Reverse<8651, 6644_0;>}*/
                /*OUT: {
                Reverse<8651, 6647_0; 6644_0;>}*/
                for (i1 = 0; i1 < n1; i1++) {
                    /*OUT: {
                    Reverse<8651, 6647_0; 6644_0;>}*/
                    r1[i1] = r[i3][i2 - 1][i1] + r[i3][i2 + 1][i1] + r[i3 - 1][i2][i1] + r[i3 + 1][i2][i1];
                    /*OUT: {
                    Reverse<8651, 6647_0; 6644_0;>}*/
                    r2[i1] = r[i3 - 1][i2 - 1][i1] + r[i3 - 1][i2 + 1][i1] + r[i3 + 1][i2 - 1][i1] + r[i3 + 1][i2 + 1][i1];
                }
                /*OUT: {
                Reverse<8651, 6647_1; 6644_0;>}*/
                /*OUT: {
                Reverse<8651, 6647_1; 6644_0;>}*/
                /*OUT: {
                Reverse<8651, 6680_0; 6647_1; 6644_0;>}*/
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    /*OUT: {
                    Reverse<8651, 6680_0; 6647_1; 6644_0;>}*/
                    u[i3][i2][i1] = u[i3][i2][i1] + c[0] * r[i3][i2][i1] + c[1] * (r[i3][i2][i1 - 1] + r[i3][i2][i1 + 1] + r1[i1]) + c[2] * (r2[i1] + r1[i1 - 1] + r1[i1 + 1]);
                }
            }
        }
        /*OUT: {
        Reverse<8651,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<6708,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    comm3(u, n1, n2, n3, k);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (debug_vec[0] >= 1) {
        /*OUT: {
        Reverse<--, 6715_0;>}*/
        rep_nrm(u, n1, n2, n3, "   psinv", k);
        /*OUT: {
        Reverse<--, 6715_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (debug_vec[3] >= k) {
        /*OUT: {
        Reverse<--, 6722_0;>}*/
        showall(u, n1, n2, n3);
        /*OUT: {
        Reverse<--, 6722_0;>}*/
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void resid(double ***u, double ***v , double ***r , int n1 , int n2 , int n3 , double a[4] , int k) {
    /*OUT: {
    Reverse<--,>}*/
    int i3;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    double u1[1037];
    /*OUT: {
    Reverse<--,>}*/
    double u2[1037];
#pragma omp parallel default(shared) private(i1, i2, i3, u1, u2)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<8684,>}*/
        /*OUT: {
        Reverse<8684,>}*/
        /*OUT: {
        Reverse<8684, 6747_1;>}*/
        for (i3 = 1; i3 < n3 - 1; i3++) {
            /*OUT: {
            Reverse<8684,>}*/
            /*OUT: {
            Reverse<8684,>}*/
            /*OUT: {
            Reverse<8684, 6783_1; 6750_1; 6747_0;>}*/
            for (i2 = 1; i2 < n2 - 1; i2++) {
                /*OUT: {
                Reverse<8684, 6747_0;>}*/
                /*OUT: {
                Reverse<8684, 6747_0;>}*/
                /*OUT: {
                Reverse<8684, 6750_0; 6747_0;>}*/
                for (i1 = 0; i1 < n1; i1++) {
                    /*OUT: {
                    Reverse<8684, 6750_0; 6747_0;>}*/
                    u1[i1] = u[i3][i2 - 1][i1] + u[i3][i2 + 1][i1] + u[i3 - 1][i2][i1] + u[i3 + 1][i2][i1];
                    /*OUT: {
                    Reverse<8684, 6750_0; 6747_0;>}*/
                    u2[i1] = u[i3 - 1][i2 - 1][i1] + u[i3 - 1][i2 + 1][i1] + u[i3 + 1][i2 - 1][i1] + u[i3 + 1][i2 + 1][i1];
                }
                /*OUT: {
                Reverse<8684, 6750_1; 6747_0;>}*/
                /*OUT: {
                Reverse<8684, 6750_1; 6747_0;>}*/
                /*OUT: {
                Reverse<8684, 6783_0; 6750_1; 6747_0;>}*/
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    /*OUT: {
                    Reverse<8684, 6783_0; 6750_1; 6747_0;>}*/
                    r[i3][i2][i1] = v[i3][i2][i1] - a[0] * u[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                }
            }
        }
        /*OUT: {
        Reverse<8684,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<6806,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    comm3(r, n1, n2, n3, k);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (debug_vec[0] >= 1) {
        /*OUT: {
        Reverse<--, 6813_0;>}*/
        rep_nrm(r, n1, n2, n3, "   resid", k);
        /*OUT: {
        Reverse<--, 6813_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (debug_vec[2] >= k) {
        /*OUT: {
        Reverse<--, 6820_0;>}*/
        showall(r, n1, n2, n3);
        /*OUT: {
        Reverse<--, 6820_0;>}*/
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void rprj3(double ***r, int m1k , int m2k , int m3k , double ***s , int m1j , int m2j , int m3j , int k) {
    /*OUT: {
    Reverse<--,>}*/
    int j3;
    /*OUT: {
    Reverse<--,>}*/
    int j2;
    /*OUT: {
    Reverse<--,>}*/
    int j1;
    /*OUT: {
    Reverse<--,>}*/
    int i3;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    int d1;
    /*OUT: {
    Reverse<--,>}*/
    int d2;
    /*OUT: {
    Reverse<--,>}*/
    int d3;
    /*OUT: {
    Reverse<--,>}*/
    double x1[1037];
    /*OUT: {
    Reverse<--,>}*/
    double y1[1037];
    /*OUT: {
    Reverse<--,>}*/
    double x2;
    /*OUT: {
    Reverse<--,>}*/
    double y2;
    /*OUT: {
    Reverse<--,>}*/
    if (m1k == 3) {
        /*OUT: {
        Reverse<--, 6848_0;>}*/
        d1 = 2;
    } else {
        /*OUT: {
        Reverse<--, 6848_1;>}*/
        d1 = 1;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (m2k == 3) {
        /*OUT: {
        Reverse<--, 6853_0;>}*/
        d2 = 2;
    } else {
        /*OUT: {
        Reverse<--, 6853_1;>}*/
        d2 = 1;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (m3k == 3) {
        /*OUT: {
        Reverse<--, 6858_0;>}*/
        d3 = 2;
    } else {
        /*OUT: {
        Reverse<--, 6858_1;>}*/
        d3 = 1;
    }
#pragma omp parallel default(shared) private(j1, j2, j3, i1, i2, i3, x1, y1, x2, y2)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<8735,>}*/
        /*OUT: {
        Reverse<8735,>}*/
        /*OUT: {
        Reverse<8735, 6871_1;>}*/
        for (j3 = 1; j3 < m3j - 1; j3++) {
            /*OUT: {
            Reverse<8735,>}*/
            i3 = 2 * j3 - d3;
            /*OUT: {
            Reverse<8735,>}*/
            /*OUT: {
            Reverse<8735,>}*/
            /*OUT: {
            Reverse<8735, 6911_1; 6876_1; 6871_0;>}*/
            for (j2 = 1; j2 < m2j - 1; j2++) {
                /*OUT: {
                Reverse<8735, 6871_0;>}*/
                i2 = 2 * j2 - d2;
                /*OUT: {
                Reverse<8735, 6871_0;>}*/
                /*OUT: {
                Reverse<8735, 6871_0;>}*/
                /*OUT: {
                Reverse<8735, 6876_0; 6871_0;>}*/
                for (j1 = 1; j1 < m1j; j1++) {
                    /*OUT: {
                    Reverse<8735, 6876_0; 6871_0;>}*/
                    i1 = 2 * j1 - d1;
                    /*OUT: {
                    Reverse<8735, 6876_0; 6871_0;>}*/
                    x1[i1] = r[i3 + 1][i2][i1] + r[i3 + 1][i2 + 2][i1] + r[i3][i2 + 1][i1] + r[i3 + 2][i2 + 1][i1];
                    /*OUT: {
                    Reverse<8735, 6876_0; 6871_0;>}*/
                    y1[i1] = r[i3][i2][i1] + r[i3 + 2][i2][i1] + r[i3][i2 + 2][i1] + r[i3 + 2][i2 + 2][i1];
                }
                /*OUT: {
                Reverse<8735, 6876_1; 6871_0;>}*/
                /*OUT: {
                Reverse<8735, 6876_1; 6871_0;>}*/
                /*OUT: {
                Reverse<8735, 6911_0; 6876_1; 6871_0;>}*/
                for (j1 = 1; j1 < m1j - 1; j1++) {
                    /*OUT: {
                    Reverse<8735, 6911_0; 6876_1; 6871_0;>}*/
                    i1 = 2 * j1 - d1;
                    /*OUT: {
                    Reverse<8735, 6911_0; 6876_1; 6871_0;>}*/
                    y2 = r[i3][i2][i1 + 1] + r[i3 + 2][i2][i1 + 1] + r[i3][i2 + 2][i1 + 1] + r[i3 + 2][i2 + 2][i1 + 1];
                    /*OUT: {
                    Reverse<8735, 6911_0; 6876_1; 6871_0;>}*/
                    x2 = r[i3 + 1][i2][i1 + 1] + r[i3 + 1][i2 + 2][i1 + 1] + r[i3][i2 + 1][i1 + 1] + r[i3 + 2][i2 + 1][i1 + 1];
                    /*OUT: {
                    Reverse<8735, 6911_0; 6876_1; 6871_0;>}*/
                    s[j3][j2][j1] = 0.5 * r[i3 + 1][i2 + 1][i1 + 1] + 0.25 * (r[i3 + 1][i2 + 1][i1] + r[i3 + 1][i2 + 1][i1 + 2] + x2) + 0.125 * (x1[i1] + x1[i1 + 2] + y2) + 0.0625 * (y1[i1] + y1[i1 + 2]);
                }
            }
        }
        /*OUT: {
        Reverse<8735,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<6964,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre430;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre430 = k - 1;
    /*OUT: {
    Reverse<--,>}*/
    comm3(s, m1j, m2j, m3j, _imopVarPre430);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (debug_vec[0] >= 1) {
        /*OUT: {
        Reverse<--, 6974_0;>}*/
        int _imopVarPre432;
        /*OUT: {
        Reverse<--, 6974_0;>}*/
        _imopVarPre432 = k - 1;
        /*OUT: {
        Reverse<--, 6974_0;>}*/
        rep_nrm(s, m1j, m2j, m3j, "   rprj3", _imopVarPre432);
        /*OUT: {
        Reverse<--, 6974_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (debug_vec[4] >= k) {
        /*OUT: {
        Reverse<--, 6984_0;>}*/
        showall(s, m1j, m2j, m3j);
        /*OUT: {
        Reverse<--, 6984_0;>}*/
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void interp(double ***z, int mm1 , int mm2 , int mm3 , double ***u , int n1 , int n2 , int n3 , int k) {
    /*OUT: {
    Reverse<--,>}*/
    int i3;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    int d1;
    /*OUT: {
    Reverse<--,>}*/
    int d2;
    /*OUT: {
    Reverse<--,>}*/
    int d3;
    /*OUT: {
    Reverse<--,>}*/
    int t1;
    /*OUT: {
    Reverse<--,>}*/
    int t2;
    /*OUT: {
    Reverse<--,>}*/
    int t3;
    /*OUT: {
    Reverse<--,>}*/
    double z1[1037];
    /*OUT: {
    Reverse<--,>}*/
    double z2[1037];
    /*OUT: {
    Reverse<--,>}*/
    double z3[1037];
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre435;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre436;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre435 = n1 != 3;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre435) {
        /*OUT: {
        Reverse<--, 7015_0;>}*/
        _imopVarPre436 = n2 != 3;
        /*OUT: {
        Reverse<--, 7015_0;>}*/
        if (_imopVarPre436) {
            /*OUT: {
            Reverse<--, 7018_0; 7015_0;>}*/
            _imopVarPre436 = n3 != 3;
        }
        /*OUT: {
        Reverse<--, 7015_0;>}*/
        _imopVarPre435 = _imopVarPre436;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre435) {
#pragma omp parallel default(shared) private(i1, i2, i3, z1, z2, z3)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<8780,>}*/
            /*OUT: {
            Reverse<8780,>}*/
            /*OUT: {
            Reverse<8780, 7030_1;>}*/
            for (i3 = 0; i3 < mm3 - 1; i3++) {
                /*OUT: {
                Reverse<8780,>}*/
                /*OUT: {
                Reverse<8780,>}*/
                /*OUT: {
                Reverse<8780, 7139_1; 7116_1; 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                for (i2 = 0; i2 < mm2 - 1; i2++) {
                    /*OUT: {
                    Reverse<8780, 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7033_0; 7030_0;>}*/
                    for (i1 = 0; i1 < mm1; i1++) {
                        /*OUT: {
                        Reverse<8780, 7033_0; 7030_0;>}*/
                        z1[i1] = z[i3][i2 + 1][i1] + z[i3][i2][i1];
                        /*OUT: {
                        Reverse<8780, 7033_0; 7030_0;>}*/
                        z2[i1] = z[i3 + 1][i2][i1] + z[i3][i2][i1];
                        /*OUT: {
                        Reverse<8780, 7033_0; 7030_0;>}*/
                        z3[i1] = z[i3 + 1][i2 + 1][i1] + z[i3 + 1][i2][i1] + z1[i1];
                    }
                    /*OUT: {
                    Reverse<8780, 7033_1; 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7033_1; 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7064_0; 7033_1; 7030_0;>}*/
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<8780, 7064_0; 7033_1; 7030_0;>}*/
                        u[2 * i3][2 * i2][2 * i1] = u[2 * i3][2 * i2][2 * i1] + z[i3][i2][i1];
                        /*OUT: {
                        Reverse<8780, 7064_0; 7033_1; 7030_0;>}*/
                        u[2 * i3][2 * i2][2 * i1 + 1] = u[2 * i3][2 * i2][2 * i1 + 1] + 0.5 * (z[i3][i2][i1 + 1] + z[i3][i2][i1]);
                    }
                    /*OUT: {
                    Reverse<8780, 7064_1; 7033_1; 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7064_1; 7033_1; 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7093_0; 7064_1; 7033_1; 7030_0;>}*/
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<8780, 7093_0; 7064_1; 7033_1; 7030_0;>}*/
                        u[2 * i3][2 * i2 + 1][2 * i1] = u[2 * i3][2 * i2 + 1][2 * i1] + 0.5 * z1[i1];
                        /*OUT: {
                        Reverse<8780, 7093_0; 7064_1; 7033_1; 7030_0;>}*/
                        u[2 * i3][2 * i2 + 1][2 * i1 + 1] = u[2 * i3][2 * i2 + 1][2 * i1 + 1] + 0.25 * (z1[i1] + z1[i1 + 1]);
                    }
                    /*OUT: {
                    Reverse<8780, 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7116_0; 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<8780, 7116_0; 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                        u[2 * i3 + 1][2 * i2][2 * i1] = u[2 * i3 + 1][2 * i2][2 * i1] + 0.5 * z2[i1];
                        /*OUT: {
                        Reverse<8780, 7116_0; 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                        u[2 * i3 + 1][2 * i2][2 * i1 + 1] = u[2 * i3 + 1][2 * i2][2 * i1 + 1] + 0.25 * (z2[i1] + z2[i1 + 1]);
                    }
                    /*OUT: {
                    Reverse<8780, 7116_1; 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7116_1; 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                    /*OUT: {
                    Reverse<8780, 7139_0; 7116_1; 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<8780, 7139_0; 7116_1; 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                        u[2 * i3 + 1][2 * i2 + 1][2 * i1] = u[2 * i3 + 1][2 * i2 + 1][2 * i1] + 0.25 * z3[i1];
                        /*OUT: {
                        Reverse<8780, 7139_0; 7116_1; 7093_1; 7064_1; 7033_1; 7030_0;>}*/
                        u[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] = u[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] + 0.125 * (z3[i1] + z3[i1 + 1]);
                    }
                }
            }
            /*OUT: {
            Reverse<8780,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<7161,>}*/
#pragma omp barrier
        }
    } else {
        /*OUT: {
        Reverse<--, 7023_1;>}*/
        if (n1 == 3) {
            /*OUT: {
            Reverse<--, 7162_0; 7023_1;>}*/
            d1 = 2;
            /*OUT: {
            Reverse<--, 7162_0; 7023_1;>}*/
            t1 = 1;
        } else {
            /*OUT: {
            Reverse<--, 7162_1; 7023_1;>}*/
            d1 = 1;
            /*OUT: {
            Reverse<--, 7162_1; 7023_1;>}*/
            t1 = 0;
        }
        /*OUT: {
        Reverse<--, 7023_1;>}*/
        if (n2 == 3) {
            /*OUT: {
            Reverse<--, 7171_0; 7023_1;>}*/
            d2 = 2;
            /*OUT: {
            Reverse<--, 7171_0; 7023_1;>}*/
            t2 = 1;
        } else {
            /*OUT: {
            Reverse<--, 7171_1; 7023_1;>}*/
            d2 = 1;
            /*OUT: {
            Reverse<--, 7171_1; 7023_1;>}*/
            t2 = 0;
        }
        /*OUT: {
        Reverse<--, 7023_1;>}*/
        if (n3 == 3) {
            /*OUT: {
            Reverse<--, 7180_0; 7023_1;>}*/
            d3 = 2;
            /*OUT: {
            Reverse<--, 7180_0; 7023_1;>}*/
            t3 = 1;
        } else {
            /*OUT: {
            Reverse<--, 7180_1; 7023_1;>}*/
            d3 = 1;
            /*OUT: {
            Reverse<--, 7180_1; 7023_1;>}*/
            t3 = 0;
        }
#pragma omp parallel default(shared) private(i1, i2, i3)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<8832,>}*/
            /*OUT: {
            Reverse<8832,>}*/
            /*OUT: {
            Reverse<8832, 7230_1; 7195_1;>}*/
            for (i3 = d3; i3 <= mm3 - 1; i3++) {
                /*OUT: {
                Reverse<8832,>}*/
                /*OUT: {
                Reverse<8832,>}*/
                /*OUT: {
                Reverse<8832, 7212_1; 7198_1; 7195_0;>}*/
                for (i2 = d2; i2 <= mm2 - 1; i2++) {
                    /*OUT: {
                    Reverse<8832, 7195_0;>}*/
                    /*OUT: {
                    Reverse<8832, 7195_0;>}*/
                    /*OUT: {
                    Reverse<8832, 7198_0; 7195_0;>}*/
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<8832, 7198_0; 7195_0;>}*/
                        u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + z[i3 - 1][i2 - 1][i1 - 1];
                    }
                    /*OUT: {
                    Reverse<8832, 7198_1; 7195_0;>}*/
                    /*OUT: {
                    Reverse<8832, 7198_1; 7195_0;>}*/
                    /*OUT: {
                    Reverse<8832, 7212_0; 7198_1; 7195_0;>}*/
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<8832, 7212_0; 7198_1; 7195_0;>}*/
                        u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.5 * (z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
                /*OUT: {
                Reverse<8832, 7195_1;>}*/
                /*OUT: {
                Reverse<8832, 7195_1;>}*/
                /*OUT: {
                Reverse<8832, 7251_1; 7233_1; 7230_0; 7195_1;>}*/
                for (i2 = 1; i2 <= mm2 - 1; i2++) {
                    /*OUT: {
                    Reverse<8832, 7230_0; 7195_1;>}*/
                    /*OUT: {
                    Reverse<8832, 7230_0; 7195_1;>}*/
                    /*OUT: {
                    Reverse<8832, 7233_0; 7230_0; 7195_1;>}*/
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<8832, 7233_0; 7230_0; 7195_1;>}*/
                        u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    /*OUT: {
                    Reverse<8832, 7233_1; 7230_0; 7195_1;>}*/
                    /*OUT: {
                    Reverse<8832, 7233_1; 7230_0; 7195_1;>}*/
                    /*OUT: {
                    Reverse<8832, 7251_0; 7233_1; 7230_0; 7195_1;>}*/
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<8832, 7251_0; 7233_1; 7230_0; 7195_1;>}*/
                        u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
            }
            /*OUT: {
            Reverse<8832,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<7274,>}*/
#pragma omp barrier
#pragma omp for nowait
            /*OUT: {
            Reverse<7274,>}*/
            /*OUT: {
            Reverse<7274,>}*/
            /*OUT: {
            Reverse<7274, 7326_1; 7281_1;>}*/
            for (i3 = 1; i3 <= mm3 - 1; i3++) {
                /*OUT: {
                Reverse<7274,>}*/
                /*OUT: {
                Reverse<7274,>}*/
                /*OUT: {
                Reverse<7274, 7302_1; 7284_1; 7281_0;>}*/
                for (i2 = d2; i2 <= mm2 - 1; i2++) {
                    /*OUT: {
                    Reverse<7274, 7281_0;>}*/
                    /*OUT: {
                    Reverse<7274, 7281_0;>}*/
                    /*OUT: {
                    Reverse<7274, 7284_0; 7281_0;>}*/
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<7274, 7284_0; 7281_0;>}*/
                        u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    /*OUT: {
                    Reverse<7274, 7284_1; 7281_0;>}*/
                    /*OUT: {
                    Reverse<7274, 7284_1; 7281_0;>}*/
                    /*OUT: {
                    Reverse<7274, 7302_0; 7284_1; 7281_0;>}*/
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<7274, 7302_0; 7284_1; 7281_0;>}*/
                        u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3][i2 - 1][i1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
                /*OUT: {
                Reverse<7274, 7281_1;>}*/
                /*OUT: {
                Reverse<7274, 7281_1;>}*/
                /*OUT: {
                Reverse<7274, 7353_1; 7329_1; 7326_0; 7281_1;>}*/
                for (i2 = 1; i2 <= mm2 - 1; i2++) {
                    /*OUT: {
                    Reverse<7274, 7326_0; 7281_1;>}*/
                    /*OUT: {
                    Reverse<7274, 7326_0; 7281_1;>}*/
                    /*OUT: {
                    Reverse<7274, 7329_0; 7326_0; 7281_1;>}*/
                    for (i1 = d1; i1 <= mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<7274, 7329_0; 7326_0; 7281_1;>}*/
                        u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.25 * (z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    /*OUT: {
                    Reverse<7274, 7329_1; 7326_0; 7281_1;>}*/
                    /*OUT: {
                    Reverse<7274, 7329_1; 7326_0; 7281_1;>}*/
                    /*OUT: {
                    Reverse<7274, 7353_0; 7329_1; 7326_0; 7281_1;>}*/
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        /*OUT: {
                        Reverse<7274, 7353_0; 7329_1; 7326_0; 7281_1;>}*/
                        u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.125 * (z[i3][i2][i1] + z[i3][i2 - 1][i1] + z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    if (debug_vec[0] >= 1) {
        /*OUT: {
        Reverse<--, 7389_0;>}*/
        int _imopVarPre438;
        /*OUT: {
        Reverse<--, 7389_0;>}*/
        _imopVarPre438 = k - 1;
        /*OUT: {
        Reverse<--, 7389_0;>}*/
        rep_nrm(z, mm1, mm2, mm3, "z: inter", _imopVarPre438);
        /*OUT: {
        Reverse<--, 7389_0;>}*/
        /*OUT: {
        Reverse<--, 7389_0;>}*/
        rep_nrm(u, n1, n2, n3, "u: inter", k);
        /*OUT: {
        Reverse<--, 7389_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (debug_vec[5] >= k) {
        /*OUT: {
        Reverse<--, 7404_0; 7389_1;>
        Reverse<--, 7404_0;>}*/
        showall(z, mm1, mm2, mm3);
        /*OUT: {
        Reverse<--, 7404_0; 7389_1;>
        Reverse<--, 7404_0;>}*/
        /*OUT: {
        Reverse<--, 7404_0; 7389_1;>
        Reverse<--, 7404_0;>}*/
        showall(u, n1, n2, n3);
        /*OUT: {
        Reverse<--, 7404_0; 7389_1;>
        Reverse<--, 7404_0;>}*/
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void norm2u3(double ***r, int n1 , int n2 , int n3 , double *rnm2 , double *rnmu , int nx , int ny , int nz) {
    /*OUT: {
    Reverse<--,>}*/
    double s = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    int i3;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    int n;
    /*OUT: {
    Reverse<--,>}*/
    double aman = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    double tmp = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    n = nx * ny * nz;
#pragma omp parallel default(shared) private(i1, i2, i3, aman)
    {
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
        /*OUT: {
        Reverse<8905,>}*/
        /*OUT: {
        Reverse<8905,>}*/
        /*OUT: {
        Reverse<8905, 7439_1;>}*/
        for (i3 = 1; i3 < n3 - 1; i3++) {
            /*OUT: {
            Reverse<8905,>}*/
            /*OUT: {
            Reverse<8905,>}*/
            /*OUT: {
            Reverse<8905, 7442_1; 7439_0;>}*/
            for (i2 = 1; i2 < n2 - 1; i2++) {
                /*OUT: {
                Reverse<8905, 7439_0;>}*/
                /*OUT: {
                Reverse<8905, 7439_0;>}*/
                /*OUT: {
                Reverse<8905, 7442_0; 7439_0;>}*/
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    /*OUT: {
                    Reverse<8905, 7442_0; 7439_0;>}*/
                    s = s + r[i3][i2][i1] * r[i3][i2][i1];
                    /*OUT: {
                    Reverse<8905, 7442_0; 7439_0;>}*/
                    double _imopVarPre440;
                    /*OUT: {
                    Reverse<8905, 7442_0; 7439_0;>}*/
                    double _imopVarPre441;
                    /*OUT: {
                    Reverse<8905, 7442_0; 7439_0;>}*/
                    _imopVarPre440 = r[i3][i2][i1];
                    /*OUT: {
                    Reverse<8905, 7442_0; 7439_0;>}*/
                    _imopVarPre441 = fabs(_imopVarPre440);
                    /*OUT: {
                    Reverse<8905, 7442_0; 7439_0;>}*/
                    /*OUT: {
                    Reverse<8905, 7442_0; 7439_0;>}*/
                    aman = _imopVarPre441;
                    /*OUT: {
                    Reverse<8905, 7442_0; 7439_0;>}*/
                    if (aman > tmp) {
                        /*OUT: {
                        Reverse<8905, 7467_0; 7442_0; 7439_0;>}*/
                        tmp = aman;
                    }
                }
            }
        }
        /*OUT: {
        Reverse<8905,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<7470,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    *rnmu = tmp;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre443;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre444;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre443 = s / (double) n;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre444 = sqrt(_imopVarPre443);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    *rnm2 = _imopVarPre444;
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
static void rep_nrm(double ***u, int n1 , int n2 , int n3 , char *title , int kk) {
    /*OUT: {
    Reverse<--,>}*/
    double rnm2;
    /*OUT: {
    Reverse<--,>}*/
    double rnmu;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre450;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre451;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre452;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre453;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre454;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre450 = nz[kk];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre451 = ny[kk];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre452 = nx[kk];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre453 = &rnmu;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre454 = &rnm2;
    /*OUT: {
    Reverse<--,>}*/
    norm2u3(u, n1, n2, n3, _imopVarPre454, _imopVarPre453, _imopVarPre452, _imopVarPre451, _imopVarPre450);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
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
static void comm3(double ***u, int n1 , int n2 , int n3 , int kk) {
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
    /*OUT: {
    Reverse<--,>}*/
    int i3;
#pragma omp parallel default(shared) private(i1, i2, i3)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<8935,>}*/
        /*OUT: {
        Reverse<8935,>}*/
        /*OUT: {
        Reverse<8935, 7554_1; 7535_1;>}*/
        for (i3 = 1; i3 < n3 - 1; i3++) {
            /*OUT: {
            Reverse<8935,>}*/
            /*OUT: {
            Reverse<8935,>}*/
            /*OUT: {
            Reverse<8935, 7535_0;>}*/
            for (i2 = 1; i2 < n2 - 1; i2++) {
                /*OUT: {
                Reverse<8935, 7535_0;>}*/
                u[i3][i2][n1 - 1] = u[i3][i2][1];
                /*OUT: {
                Reverse<8935, 7535_0;>}*/
                u[i3][i2][0] = u[i3][i2][n1 - 2];
            }
            /*OUT: {
            Reverse<8935, 7535_1;>}*/
            /*OUT: {
            Reverse<8935, 7535_1;>}*/
            /*OUT: {
            Reverse<8935, 7554_0; 7535_1;>}*/
            for (i1 = 0; i1 < n1; i1++) {
                /*OUT: {
                Reverse<8935, 7554_0; 7535_1;>}*/
                u[i3][n2 - 1][i1] = u[i3][1][i1];
                /*OUT: {
                Reverse<8935, 7554_0; 7535_1;>}*/
                u[i3][0][i1] = u[i3][n2 - 2][i1];
            }
        }
        /*OUT: {
        Reverse<8935,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<7572,>}*/
#pragma omp barrier
#pragma omp for nowait
        /*OUT: {
        Reverse<7572,>}*/
        /*OUT: {
        Reverse<7572,>}*/
        /*OUT: {
        Reverse<7572, 7579_1;>}*/
        for (i2 = 0; i2 < n2; i2++) {
            /*OUT: {
            Reverse<7572,>}*/
            /*OUT: {
            Reverse<7572,>}*/
            /*OUT: {
            Reverse<7572, 7579_0;>}*/
            for (i1 = 0; i1 < n1; i1++) {
                /*OUT: {
                Reverse<7572, 7579_0;>}*/
                u[n3 - 1][i2][i1] = u[1][i2][i1];
                /*OUT: {
                Reverse<7572, 7579_0;>}*/
                u[0][i2][i1] = u[n3 - 2][i2][i1];
            }
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
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void zran3(double ***z, int n1 , int n2 , int n3 , int nx , int ny , int k) {
    /*OUT: {
    Reverse<--,>}*/
    int i0;
    /*OUT: {
    Reverse<--,>}*/
    int m0;
    /*OUT: {
    Reverse<--,>}*/
    int m1;
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
    /*OUT: {
    Reverse<--,>}*/
    int i3;
    /*OUT: {
    Reverse<--,>}*/
    int d1;
    /*OUT: {
    Reverse<--,>}*/
    int e1;
    /*OUT: {
    Reverse<--,>}*/
    int e2;
    /*OUT: {
    Reverse<--,>}*/
    int e3;
    /*OUT: {
    Reverse<--,>}*/
    double xx;
    /*OUT: {
    Reverse<--,>}*/
    double x0;
    /*OUT: {
    Reverse<--,>}*/
    double x1;
    /*OUT: {
    Reverse<--,>}*/
    double a1;
    /*OUT: {
    Reverse<--,>}*/
    double a2;
    /*OUT: {
    Reverse<--,>}*/
    double ai;
    /*OUT: {
    Reverse<--,>}*/
    double ten[10][2];
    /*OUT: {
    Reverse<--,>}*/
    double best;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j1[10][2];
    /*OUT: {
    Reverse<--,>}*/
    int j2[10][2];
    /*OUT: {
    Reverse<--,>}*/
    int j3[10][2];
    /*OUT: {
    Reverse<--,>}*/
    int jg[4][10][2];
    /*OUT: {
    Reverse<--,>}*/
    double rdummy;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre456;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre457;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre456 = pow(5.0, 13);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre457 = power(_imopVarPre456, nx);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    a1 = _imopVarPre457;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre460;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre461;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre462;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre460 = nx * ny;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre461 = pow(5.0, 13);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre462 = power(_imopVarPre461, _imopVarPre460);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    a2 = _imopVarPre462;
    /*OUT: {
    Reverse<--,>}*/
    zero3(z, n1, n2, n3);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    i = is1 - 1 + nx * (is2 - 1 + ny * (is3 - 1));
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre464;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre465;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre464 = pow(5.0, 13);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre465 = power(_imopVarPre464, i);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ai = _imopVarPre465;
    /*OUT: {
    Reverse<--,>}*/
    d1 = ie1 - is1 + 1;
    /*OUT: {
    Reverse<--,>}*/
    e1 = ie1 - is1 + 2;
    /*OUT: {
    Reverse<--,>}*/
    e2 = ie2 - is2 + 2;
    /*OUT: {
    Reverse<--,>}*/
    e3 = ie3 - is3 + 2;
    /*OUT: {
    Reverse<--,>}*/
    x0 = 314159265.e0;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre467;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre468;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre467 = &x0;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre468 = randlc(_imopVarPre467, ai);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    rdummy = _imopVarPre468;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 7716_1; 7711_0;>}*/
    for (i3 = 1; i3 < e3; i3++) {
        /*OUT: {
        Reverse<--, 7711_0;>}*/
        x1 = x0;
        /*OUT: {
        Reverse<--, 7711_0;>}*/
        /*OUT: {
        Reverse<--, 7711_0;>}*/
        /*OUT: {
        Reverse<--, 7716_0; 7711_0;>}*/
        for (i2 = 1; i2 < e2; i2++) {
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            xx = x1;
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            double *_imopVarPre472;
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            double _imopVarPre473;
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            double *_imopVarPre474;
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            _imopVarPre472 = &(z[i3][i2][0]);
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            _imopVarPre473 = pow(5.0, 13);
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            _imopVarPre474 = &xx;
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            vranlc(d1, _imopVarPre474, _imopVarPre473, _imopVarPre472);
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            double *_imopVarPre476;
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            double _imopVarPre477;
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            _imopVarPre476 = &x1;
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            _imopVarPre477 = randlc(_imopVarPre476, a1);
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            /*OUT: {
            Reverse<--, 7716_0; 7711_0;>}*/
            rdummy = _imopVarPre477;
        }
        /*OUT: {
        Reverse<--, 7716_1; 7711_0;>}*/
        double *_imopVarPre479;
        /*OUT: {
        Reverse<--, 7716_1; 7711_0;>}*/
        double _imopVarPre480;
        /*OUT: {
        Reverse<--, 7716_1; 7711_0;>}*/
        _imopVarPre479 = &x0;
        /*OUT: {
        Reverse<--, 7716_1; 7711_0;>}*/
        _imopVarPre480 = randlc(_imopVarPre479, a2);
        /*OUT: {
        Reverse<--, 7716_1; 7711_0;>}*/
        /*OUT: {
        Reverse<--, 7716_1; 7711_0;>}*/
        rdummy = _imopVarPre480;
    }
    /*OUT: {
    Reverse<--, 7711_1;>}*/
    /*OUT: {
    Reverse<--, 7711_1;>}*/
    /*OUT: {
    Reverse<--, 7767_0; 7711_1;>}*/
    for (i = 0; i < 10; i++) {
        /*OUT: {
        Reverse<--, 7767_0; 7711_1;>}*/
        ten[i][1] = 0.0;
        /*OUT: {
        Reverse<--, 7767_0; 7711_1;>}*/
        j1[i][1] = 0;
        /*OUT: {
        Reverse<--, 7767_0; 7711_1;>}*/
        j2[i][1] = 0;
        /*OUT: {
        Reverse<--, 7767_0; 7711_1;>}*/
        j3[i][1] = 0;
        /*OUT: {
        Reverse<--, 7767_0; 7711_1;>}*/
        ten[i][0] = 1.0;
        /*OUT: {
        Reverse<--, 7767_0; 7711_1;>}*/
        j1[i][0] = 0;
        /*OUT: {
        Reverse<--, 7767_0; 7711_1;>}*/
        j2[i][0] = 0;
        /*OUT: {
        Reverse<--, 7767_0; 7711_1;>}*/
        j3[i][0] = 0;
    }
    /*OUT: {
    Reverse<--, 7767_1; 7711_1;>}*/
    /*OUT: {
    Reverse<--, 7767_1; 7711_1;>}*/
    /*OUT: {
    Reverse<--, 7805_1; 7802_0; 7767_1; 7711_1;>}*/
    for (i3 = 1; i3 < n3 - 1; i3++) {
        /*OUT: {
        Reverse<--, 7802_0; 7767_1; 7711_1;>}*/
        /*OUT: {
        Reverse<--, 7802_0; 7767_1; 7711_1;>}*/
        /*OUT: {
        Reverse<--, 7808_1; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
        for (i2 = 1; i2 < n2 - 1; i2++) {
            /*OUT: {
            Reverse<--, 7805_0; 7802_0; 7767_1; 7711_1;>}*/
            /*OUT: {
            Reverse<--, 7805_0; 7802_0; 7767_1; 7711_1;>}*/
            /*OUT: {
            Reverse<--, 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
            for (i1 = 1; i1 < n1 - 1; i1++) {
                /*OUT: {
                Reverse<--, 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                if (z[i3][i2][i1] > ten[0][1]) {
                    /*OUT: {
                    Reverse<--, 7815_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    ten[0][1] = z[i3][i2][i1];
                    /*OUT: {
                    Reverse<--, 7815_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    j1[0][1] = i1;
                    /*OUT: {
                    Reverse<--, 7815_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    j2[0][1] = i2;
                    /*OUT: {
                    Reverse<--, 7815_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    j3[0][1] = i3;
                    /*OUT: {
                    Reverse<--, 7815_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    bubble(ten, j1, j2, j3, 10, 1);
                    /*OUT: {
                    Reverse<--, 7815_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                }
                /*OUT: {
                Reverse<--, 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                if (z[i3][i2][i1] < ten[0][0]) {
                    /*OUT: {
                    Reverse<--, 7845_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    ten[0][0] = z[i3][i2][i1];
                    /*OUT: {
                    Reverse<--, 7845_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    j1[0][0] = i1;
                    /*OUT: {
                    Reverse<--, 7845_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    j2[0][0] = i2;
                    /*OUT: {
                    Reverse<--, 7845_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    j3[0][0] = i3;
                    /*OUT: {
                    Reverse<--, 7845_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                    bubble(ten, j1, j2, j3, 10, 0);
                    /*OUT: {
                    Reverse<--, 7845_0; 7808_0; 7805_0; 7802_0; 7767_1; 7711_1;>}*/
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 7802_1; 7767_1; 7711_1;>}*/
    i1 = 10 - 1;
    /*OUT: {
    Reverse<--, 7802_1; 7767_1; 7711_1;>}*/
    i0 = 10 - 1;
    /*OUT: {
    Reverse<--, 7802_1; 7767_1; 7711_1;>}*/
    /*OUT: {
    Reverse<--, 7802_1; 7767_1; 7711_1;>}*/
    /*OUT: {
    Reverse<--, 7875_0; 7802_1; 7767_1; 7711_1;>}*/
    for (i = 10 - 1; i >= 0; i--) {
        /*OUT: {
        Reverse<--, 7875_0; 7802_1; 7767_1; 7711_1;>}*/
        best = z[j3[i1][1]][j2[i1][1]][j1[i1][1]];
        /*OUT: {
        Reverse<--, 7875_0; 7802_1; 7767_1; 7711_1;>}*/
        if (best == z[j3[i1][1]][j2[i1][1]][j1[i1][1]]) {
            /*OUT: {
            Reverse<--, 7897_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[0][i][1] = 0;
            /*OUT: {
            Reverse<--, 7897_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[1][i][1] = is1 - 1 + j1[i1][1];
            /*OUT: {
            Reverse<--, 7897_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[2][i][1] = is2 - 1 + j2[i1][1];
            /*OUT: {
            Reverse<--, 7897_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[3][i][1] = is3 - 1 + j3[i1][1];
            /*OUT: {
            Reverse<--, 7897_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            i1 = i1 - 1;
        } else {
            /*OUT: {
            Reverse<--, 7897_1; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[0][i][1] = 0;
            /*OUT: {
            Reverse<--, 7897_1; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[1][i][1] = 0;
            /*OUT: {
            Reverse<--, 7897_1; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[2][i][1] = 0;
            /*OUT: {
            Reverse<--, 7897_1; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[3][i][1] = 0;
        }
        /*OUT: {
        Reverse<--, 7875_0; 7802_1; 7767_1; 7711_1;>}*/
        ten[i][1] = best;
        /*OUT: {
        Reverse<--, 7875_0; 7802_1; 7767_1; 7711_1;>}*/
        best = z[j3[i0][0]][j2[i0][0]][j1[i0][0]];
        /*OUT: {
        Reverse<--, 7875_0; 7802_1; 7767_1; 7711_1;>}*/
        if (best == z[j3[i0][0]][j2[i0][0]][j1[i0][0]]) {
            /*OUT: {
            Reverse<--, 7970_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[0][i][0] = 0;
            /*OUT: {
            Reverse<--, 7970_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[1][i][0] = is1 - 1 + j1[i0][0];
            /*OUT: {
            Reverse<--, 7970_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[2][i][0] = is2 - 1 + j2[i0][0];
            /*OUT: {
            Reverse<--, 7970_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[3][i][0] = is3 - 1 + j3[i0][0];
            /*OUT: {
            Reverse<--, 7970_0; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            i0 = i0 - 1;
        } else {
            /*OUT: {
            Reverse<--, 7970_1; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[0][i][0] = 0;
            /*OUT: {
            Reverse<--, 7970_1; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[1][i][0] = 0;
            /*OUT: {
            Reverse<--, 7970_1; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[2][i][0] = 0;
            /*OUT: {
            Reverse<--, 7970_1; 7875_0; 7802_1; 7767_1; 7711_1;>}*/
            jg[3][i][0] = 0;
        }
        /*OUT: {
        Reverse<--, 7875_0; 7802_1; 7767_1; 7711_1;>}*/
        ten[i][0] = best;
    }
    /*OUT: {
    Reverse<--, 7875_1; 7802_1; 7767_1; 7711_1;>}*/
    m1 = i1 + 1;
    /*OUT: {
    Reverse<--, 7875_1; 7802_1; 7767_1; 7711_1;>}*/
    m0 = i0 + 1;
#pragma omp parallel private(i2, i1)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<9012,>}*/
        /*OUT: {
        Reverse<9012,>}*/
        /*OUT: {
        Reverse<9012, 8033_1;>}*/
        for (i3 = 0; i3 < n3; i3++) {
            /*OUT: {
            Reverse<9012,>}*/
            /*OUT: {
            Reverse<9012,>}*/
            /*OUT: {
            Reverse<9012, 8036_1; 8033_0;>}*/
            for (i2 = 0; i2 < n2; i2++) {
                /*OUT: {
                Reverse<9012, 8033_0;>}*/
                /*OUT: {
                Reverse<9012, 8033_0;>}*/
                /*OUT: {
                Reverse<9012, 8036_0; 8033_0;>}*/
                for (i1 = 0; i1 < n1; i1++) {
                    /*OUT: {
                    Reverse<9012, 8036_0; 8033_0;>}*/
                    z[i3][i2][i1] = 0.0;
                }
            }
        }
        /*OUT: {
        Reverse<9012,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<8043,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 7875_1; 7802_1; 7767_1; 7711_1;>}*/
    /*OUT: {
    Reverse<--, 7875_1; 7802_1; 7767_1; 7711_1;>}*/
    /*OUT: {
    Reverse<--, 8045_0; 7875_1; 7802_1; 7767_1; 7711_1;>}*/
    for (i = 10 - 1; i >= m0; i--) {
        /*OUT: {
        Reverse<--, 8045_0; 7875_1; 7802_1; 7767_1; 7711_1;>}*/
        z[j3[i][0]][j2[i][0]][j1[i][0]] = -1.0;
    }
    /*OUT: {
    Reverse<--, 8045_1; 7875_1; 7802_1; 7767_1; 7711_1;>}*/
    /*OUT: {
    Reverse<--, 8045_1; 7875_1; 7802_1; 7767_1; 7711_1;>}*/
    /*OUT: {
    Reverse<--, 8059_0; 8045_1; 7875_1; 7802_1; 7767_1; 7711_1;>}*/
    for (i = 10 - 1; i >= m1; i--) {
        /*OUT: {
        Reverse<--, 8059_0; 8045_1; 7875_1; 7802_1; 7767_1; 7711_1;>}*/
        z[j3[i][1]][j2[i][1]][j1[i][1]] = 1.0;
    }
    /*OUT: {
    Reverse<--, 8059_1; 8045_1; 7875_1; 7802_1; 7767_1; 7711_1;>}*/
    comm3(z, n1, n2, n3, k);
    /*OUT: {
    Reverse<--, 8059_1; 8045_1; 7875_1; 7802_1; 7767_1; 7711_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void showall(double ***z, int n1 , int n2 , int n3) {
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
    /*OUT: {
    Reverse<--,>}*/
    int i3;
    /*OUT: {
    Reverse<--,>}*/
    int m1;
    /*OUT: {
    Reverse<--,>}*/
    int m2;
    /*OUT: {
    Reverse<--,>}*/
    int m3;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre483;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre484;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre483 = (n1 < 18);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre483) {
        /*OUT: {
        Reverse<--, 8092_0;>}*/
        _imopVarPre484 = n1;
    } else {
        /*OUT: {
        Reverse<--, 8092_1;>}*/
        _imopVarPre484 = 18;
    }
    /*OUT: {
    Reverse<--,>}*/
    m1 = _imopVarPre484;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre487;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre488;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre487 = (n2 < 14);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre487) {
        /*OUT: {
        Reverse<--, 8104_0;>}*/
        _imopVarPre488 = n2;
    } else {
        /*OUT: {
        Reverse<--, 8104_1;>}*/
        _imopVarPre488 = 14;
    }
    /*OUT: {
    Reverse<--,>}*/
    m2 = _imopVarPre488;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre491;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre492;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre491 = (n3 < 18);
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre491) {
        /*OUT: {
        Reverse<--, 8116_0;>}*/
        _imopVarPre492 = n3;
    } else {
        /*OUT: {
        Reverse<--, 8116_1;>}*/
        _imopVarPre492 = 18;
    }
    /*OUT: {
    Reverse<--,>}*/
    m3 = _imopVarPre492;
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 8132_1; 8129_0;>}*/
    for (i3 = 0; i3 < m3; i3++) {
        /*OUT: {
        Reverse<--, 8129_0;>}*/
        /*OUT: {
        Reverse<--, 8129_0;>}*/
        /*OUT: {
        Reverse<--, 8135_1; 8132_0; 8129_0;>}*/
        for (i1 = 0; i1 < m1; i1++) {
            /*OUT: {
            Reverse<--, 8132_0; 8129_0;>}*/
            /*OUT: {
            Reverse<--, 8132_0; 8129_0;>}*/
            /*OUT: {
            Reverse<--, 8135_0; 8132_0; 8129_0;>}*/
            for (i2 = 0; i2 < m2; i2++) {
                /*OUT: {
                Reverse<--, 8135_0; 8132_0; 8129_0;>}*/
                double _imopVarPre494;
                /*OUT: {
                Reverse<--, 8135_0; 8132_0; 8129_0;>}*/
                _imopVarPre494 = z[i3][i2][i1];
                /*OUT: {
                Reverse<--, 8135_0; 8132_0; 8129_0;>}*/
                printf("%6.3f", _imopVarPre494);
                /*OUT: {
                Reverse<--, 8135_0; 8132_0; 8129_0;>}*/
            }
            /*OUT: {
            Reverse<--, 8135_1; 8132_0; 8129_0;>}*/
            printf("\n");
            /*OUT: {
            Reverse<--, 8135_1; 8132_0; 8129_0;>}*/
        }
        /*OUT: {
        Reverse<--, 8132_1; 8129_0;>}*/
        printf(" - - - - - - - \n");
        /*OUT: {
        Reverse<--, 8132_1; 8129_0;>}*/
    }
    /*OUT: {
    Reverse<--, 8129_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 8129_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static double power(double ax, int n) {
    /*OUT: {
    Reverse<--,>}*/
    double aj;
    /*OUT: {
    Reverse<--,>}*/
    int nj;
    /*OUT: {
    Reverse<--,>}*/
    double rdummy;
    /*OUT: {
    Reverse<--,>}*/
    double power;
    /*OUT: {
    Reverse<--,>}*/
    power = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    nj = n;
    /*OUT: {
    Reverse<--,>}*/
    aj = ax;
    /*OUT: {
    Reverse<--,>}*/
    while (nj != 0) {
        /*OUT: {
        Reverse<--, 8175_0;>}*/
        if ((nj % 2) == 1) {
            /*OUT: {
            Reverse<--, 8177_0; 8175_0;>}*/
            double *_imopVarPre496;
            /*OUT: {
            Reverse<--, 8177_0; 8175_0;>}*/
            double _imopVarPre497;
            /*OUT: {
            Reverse<--, 8177_0; 8175_0;>}*/
            _imopVarPre496 = &power;
            /*OUT: {
            Reverse<--, 8177_0; 8175_0;>}*/
            _imopVarPre497 = randlc(_imopVarPre496, aj);
            /*OUT: {
            Reverse<--, 8177_0; 8175_0;>}*/
            /*OUT: {
            Reverse<--, 8177_0; 8175_0;>}*/
            rdummy = _imopVarPre497;
        }
        /*OUT: {
        Reverse<--, 8175_0;>}*/
        double *_imopVarPre499;
        /*OUT: {
        Reverse<--, 8175_0;>}*/
        double _imopVarPre500;
        /*OUT: {
        Reverse<--, 8175_0;>}*/
        _imopVarPre499 = &aj;
        /*OUT: {
        Reverse<--, 8175_0;>}*/
        _imopVarPre500 = randlc(_imopVarPre499, aj);
        /*OUT: {
        Reverse<--, 8175_0;>}*/
        /*OUT: {
        Reverse<--, 8175_0;>}*/
        rdummy = _imopVarPre500;
        /*OUT: {
        Reverse<--, 8175_0;>}*/
        nj = nj / 2;
    }
    /*OUT: {
    Reverse<--, 8175_1;>}*/
    return power;
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
static void bubble(double ten[1037][2], int j1[1037][2] , int j2[1037][2] , int j3[1037][2] , int m , int ind) {
    /*OUT: {
    Reverse<--,>}*/
    double temp;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j_temp;
    /*OUT: {
    Reverse<--,>}*/
    if (ind == 1) {
        /*OUT: {
        Reverse<--, 8215_0;>}*/
        /*OUT: {
        Reverse<--, 8215_0;>}*/
        /*OUT: {
        Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
        for (i = 0; i < m - 1; i++) {
            /*OUT: {
            Reverse<--, 8217_0; 8215_0;>}*/
            if (ten[i][ind] > ten[i + 1][ind]) {
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                temp = ten[i + 1][ind];
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                ten[i + 1][ind] = ten[i][ind];
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                ten[i][ind] = temp;
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                j_temp = j1[i + 1][ind];
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                j1[i + 1][ind] = j1[i][ind];
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                j1[i][ind] = j_temp;
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                j_temp = j2[i + 1][ind];
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                j2[i + 1][ind] = j2[i][ind];
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                j2[i][ind] = j_temp;
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                j_temp = j3[i + 1][ind];
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                j3[i + 1][ind] = j3[i][ind];
                /*OUT: {
                Reverse<--, 8223_0; 8217_0; 8215_0;>}*/
                j3[i][ind] = j_temp;
            } else {
                /*OUT: {
                Reverse<--, 8223_1; 8217_0; 8215_0;>}*/
                return;
            }
        }
    } else {
        /*OUT: {
        Reverse<--, 8215_1;>}*/
        /*OUT: {
        Reverse<--, 8215_1;>}*/
        /*OUT: {
        Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
        for (i = 0; i < m - 1; i++) {
            /*OUT: {
            Reverse<--, 8282_0; 8215_1;>}*/
            if (ten[i][ind] < ten[i + 1][ind]) {
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                temp = ten[i + 1][ind];
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                ten[i + 1][ind] = ten[i][ind];
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                ten[i][ind] = temp;
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                j_temp = j1[i + 1][ind];
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                j1[i + 1][ind] = j1[i][ind];
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                j1[i][ind] = j_temp;
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                j_temp = j2[i + 1][ind];
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                j2[i + 1][ind] = j2[i][ind];
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                j2[i][ind] = j_temp;
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                j_temp = j3[i + 1][ind];
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                j3[i + 1][ind] = j3[i][ind];
                /*OUT: {
                Reverse<--, 8288_0; 8282_0; 8215_1;>}*/
                j3[i][ind] = j_temp;
            } else {
                /*OUT: {
                Reverse<--, 8288_1; 8282_0; 8215_1;>}*/
                return;
            }
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
static void zero3(double ***z, int n1 , int n2 , int n3) {
    /*OUT: {
    Reverse<--,>}*/
    int i1;
    /*OUT: {
    Reverse<--,>}*/
    int i2;
    /*OUT: {
    Reverse<--,>}*/
    int i3;
#pragma omp parallel private(i1, i2, i3)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<9122,>}*/
        /*OUT: {
        Reverse<9122,>}*/
        /*OUT: {
        Reverse<9122, 8359_1;>}*/
        for (i3 = 0; i3 < n3; i3++) {
            /*OUT: {
            Reverse<9122,>}*/
            /*OUT: {
            Reverse<9122,>}*/
            /*OUT: {
            Reverse<9122, 8362_1; 8359_0;>}*/
            for (i2 = 0; i2 < n2; i2++) {
                /*OUT: {
                Reverse<9122, 8359_0;>}*/
                /*OUT: {
                Reverse<9122, 8359_0;>}*/
                /*OUT: {
                Reverse<9122, 8362_0; 8359_0;>}*/
                for (i1 = 0; i1 < n1; i1++) {
                    /*OUT: {
                    Reverse<9122, 8362_0; 8359_0;>}*/
                    z[i3][i2][i1] = 0.0;
                }
            }
        }
        /*OUT: {
        Reverse<9122,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<8369,>}*/
#pragma omp barrier
    }
}
