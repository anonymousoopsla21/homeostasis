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
extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
int fflush(FILE *);
int fprintf(FILE *restrict , const char *restrict , ...);
int fscanf(FILE *restrict , const char *restrict , ...);
int printf(const char *restrict , ...);
void exit(int );
void free(void *);
void *malloc(size_t __size);
extern double cos(double );
extern double sin(double );
extern double sqrt(double );
struct options {
    int quiet;
    int help;
} ;
struct excitation {
    double dt;
    double duration;
    double t0;
} ;
struct damping {
    double zeta, consta , constb , freq;
} ;
struct properties {
    double cp;
    double cs;
    double den;
} ;
struct source {
    double dip, strike , rake , fault;
    double xyz[3];
    double epixyz[3];
    int sourcenode;
    int epicenternode;
} ;
struct smallarray_s {
    double first;
    double second;
    double third;
    double pad;
} ;
typedef struct smallarray_s smallarray_t;
struct options options;
FILE *packfile;
int ARCHnodes;
int ARCHpriv;
int ARCHmine;
int ARCHelems;
int ARCHglobalnodes;
int ARCHmesh_dim;
int ARCHglobalelems;
int ARCHcorners;
int ARCHsubdomains;
double ARCHduration;
int ARCHmatrixlen;
int ARCHcholeskylen;
int *ARCHglobalnode;
int *ARCHglobalelem;
double **ARCHcoord;
int **ARCHvertex;
int *ARCHmatrixcol;
int *ARCHmatrixindex;
void arch_init(int argc, char **argv , struct options *op);
void mem_init(void );
void arch_readnodevector(double *v, int n);
void slip(double *u, double *v , double *w);
double distance(double p1[], double p2[]);
void centroid(double x[][3], double xc[]);
double point2fault(double x[]);
void abe_matrix(double vertices[][3], int bv[] , struct properties *prop , double Ce[]);
void element_matrices(double vertices[][3], struct properties *prop , double Ke[][12] , double Me[]);
void vv12x12(double v1[], double v2[] , double u[]);
void mv12x12(double m[][12], double v[]);
void smvp(int nodes, double ( *A )[3][3] , int *Acol , int *Aindex , double ( *v )[3] , double ( *w )[3]);
double phi0(double t);
double phi1(double t);
double phi2(double t);
int *nodekind;
double *nodekindf;
int *source_elms;
double ( *M )[3];
double ( *C )[3];
double ( *M23 )[3];
double ( *C23 )[3];
double ( *V23 )[3];
double ( *vel )[3];
double ( **disp )[3];
double ( *K )[3][3];
smallarray_t **w1;
int **w2;
int my_cpu_id;
int numthreads;
struct source Src;
struct excitation Exc;
struct damping Damp;
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
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
    int ii;
    /*OUT: {
    Reverse<--,>}*/
    int jj;
    /*OUT: {
    Reverse<--,>}*/
    int kk;
    /*OUT: {
    Reverse<--,>}*/
    int iter;
    /*OUT: {
    Reverse<--,>}*/
    int timesteps;
    /*OUT: {
    Reverse<--,>}*/
    int disptplus;
    /*OUT: {
    Reverse<--,>}*/
    int dispt;
    /*OUT: {
    Reverse<--,>}*/
    int disptminus;
    /*OUT: {
    Reverse<--,>}*/
    int verticesonbnd;
    /*OUT: {
    Reverse<--,>}*/
    int cor[4];
    /*OUT: {
    Reverse<--,>}*/
    int bv[4];
    /*OUT: {
    Reverse<--,>}*/
    int Step_stride;
    /*OUT: {
    Reverse<--,>}*/
    int *temp1;
    /*OUT: {
    Reverse<--,>}*/
    int *temp2;
    /*OUT: {
    Reverse<--,>}*/
    double time;
    /*OUT: {
    Reverse<--,>}*/
    double Ke[12][12];
    /*OUT: {
    Reverse<--,>}*/
    double Me[12];
    /*OUT: {
    Reverse<--,>}*/
    double Ce[12];
    /*OUT: {
    Reverse<--,>}*/
    double Mexv[12];
    /*OUT: {
    Reverse<--,>}*/
    double Cexv[12];
    /*OUT: {
    Reverse<--,>}*/
    double v[12];
    /*OUT: {
    Reverse<--,>}*/
    double alpha;
    /*OUT: {
    Reverse<--,>}*/
    double c0[3];
    /*OUT: {
    Reverse<--,>}*/
    double d1;
    /*OUT: {
    Reverse<--,>}*/
    double d2;
    /*OUT: {
    Reverse<--,>}*/
    double *bigdist1;
    /*OUT: {
    Reverse<--,>}*/
    double *bigdist2;
    /*OUT: {
    Reverse<--,>}*/
    double xc[3];
    /*OUT: {
    Reverse<--,>}*/
    double uf[3];
    /*OUT: {
    Reverse<--,>}*/
    double vertices[4][3];
    /*OUT: {
    Reverse<--,>}*/
    struct properties prop;
    /*OUT: {
    Reverse<--,>}*/
    numthreads = 1;
    /*OUT: {
    Reverse<--,>}*/
    struct options *_imopVarPre142;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre142 = &options;
    /*OUT: {
    Reverse<--,>}*/
    arch_init(argc, argv, _imopVarPre142);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    mem_init();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    arch_readnodevector(nodekindf, ARCHnodes);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (!options.quiet) {
        /*OUT: {
        Reverse<--, 196_0;>}*/
        char *_imopVarPre144;
        /*OUT: {
        Reverse<--, 196_0;>}*/
        _imopVarPre144 = argv[0];
        /*OUT: {
        Reverse<--, 196_0;>}*/
        fprintf(__stderrp, "%s: Beginning simulation.\n", _imopVarPre144);
        /*OUT: {
        Reverse<--, 196_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    Exc.dt = 0.0024;
    /*OUT: {
    Reverse<--,>}*/
    Exc.duration = ARCHduration;
    /*OUT: {
    Reverse<--,>}*/
    Exc.t0 = 0.6;
    /*OUT: {
    Reverse<--,>}*/
    timesteps = Exc.duration / Exc.dt + 1;
    /*OUT: {
    Reverse<--,>}*/
    Damp.zeta = 30.0;
    /*OUT: {
    Reverse<--,>}*/
    Damp.consta = 0.00533333;
    /*OUT: {
    Reverse<--,>}*/
    Damp.constb = 0.06666667;
    /*OUT: {
    Reverse<--,>}*/
    Damp.freq = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    Src.strike = 111.0 * 3.141592653589793238 / 180.0;
    /*OUT: {
    Reverse<--,>}*/
    Src.dip = 44.0 * 3.141592653589793238 / 180.0;
    /*OUT: {
    Reverse<--,>}*/
    Src.rake = 70.0 * 3.141592653589793238 / 180.0;
    /*OUT: {
    Reverse<--,>}*/
    Src.fault = 29.640788;
    /*OUT: {
    Reverse<--,>}*/
    Src.xyz[0] = 32.264153;
    /*OUT: {
    Reverse<--,>}*/
    Src.xyz[1] = 23.814432;
    /*OUT: {
    Reverse<--,>}*/
    Src.xyz[2] = -11.25;
    /*OUT: {
    Reverse<--,>}*/
    Src.epixyz[0] = Src.xyz[0];
    /*OUT: {
    Reverse<--,>}*/
    Src.epixyz[1] = Src.xyz[1];
    /*OUT: {
    Reverse<--,>}*/
    Src.epixyz[2] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    Src.sourcenode = -1;
    /*OUT: {
    Reverse<--,>}*/
    Src.epicenternode = -1;
    /*OUT: {
    Reverse<--,>}*/
    uf[0] = uf[1] = uf[2] = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre148;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre149;
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre150;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre148 = &uf[2];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre149 = &uf[1];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre150 = &uf[0];
    /*OUT: {
    Reverse<--,>}*/
    slip(_imopVarPre150, _imopVarPre149, _imopVarPre148);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    uf[0] *= Src.fault;
    /*OUT: {
    Reverse<--,>}*/
    uf[1] *= Src.fault;
    /*OUT: {
    Reverse<--,>}*/
    uf[2] *= Src.fault;
    /*OUT: {
    Reverse<--,>}*/
    prop.cp = 6.0;
    /*OUT: {
    Reverse<--,>}*/
    prop.cs = 3.2;
    /*OUT: {
    Reverse<--,>}*/
    prop.den = 2.0;
    /*OUT: {
    Reverse<--,>}*/
    Step_stride = 30;
    /*OUT: {
    Reverse<--,>}*/
    disptplus = 0;
    /*OUT: {
    Reverse<--,>}*/
    dispt = 1;
    /*OUT: {
    Reverse<--,>}*/
    disptminus = 2;
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "CASE SUMMARY\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "Fault information\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre152;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre152 = Src.strike;
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "  Orientation:  strike: %f\n", _imopVarPre152);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre154;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre154 = Src.dip;
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "                   dip: %f\n", _imopVarPre154);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre156;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre156 = Src.rake;
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "                  rake: %f\n", _imopVarPre156);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre158;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre158 = Src.fault;
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "           dislocation: %f cm\n", _imopVarPre158);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre162;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre163;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre164;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre162 = Src.xyz[2];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre163 = Src.xyz[1];
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre164 = Src.xyz[0];
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "Hypocenter: (%f, %f, %f) Km\n", _imopVarPre164, _imopVarPre163, _imopVarPre162);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "Excitation characteristics\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre166;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre166 = Exc.dt;
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "     Time step: %f sec\n", _imopVarPre166);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre168;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre168 = Exc.duration;
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "      Duration: %f sec\n", _imopVarPre168);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre170;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre170 = Exc.t0;
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "     Rise time: %f sec\n", _imopVarPre170);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fflush(__stderrp);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 403_0;>}*/
    for (i = 0; i < ARCHnodes; i++) {
        /*OUT: {
        Reverse<--, 403_0;>}*/
        nodekind[i] = (int) nodekindf[i];
        /*OUT: {
        Reverse<--, 403_0;>}*/
        if (nodekind[i] == 3) {
            /*OUT: {
            Reverse<--, 410_0; 403_0;>}*/
            nodekind[i] = 1;
        }
    }
    /*OUT: {
    Reverse<--, 403_1;>}*/
    unsigned long int _imopVarPre173;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    void *_imopVarPre174;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    _imopVarPre173 = sizeof(int) * numthreads;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    _imopVarPre174 = malloc(_imopVarPre173);
    /*OUT: {
    Reverse<--, 403_1;>}*/
    /*OUT: {
    Reverse<--, 403_1;>}*/
    temp1 = (int *) _imopVarPre174;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    if (temp1 == (int *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 427_0; 403_1;>}*/
        fprintf(__stderrp, "malloc failed for temp1\n");
        /*OUT: {
        Reverse<--, 427_0; 403_1;>}*/
        /*OUT: {
        Reverse<--, 427_0; 403_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 427_0; 403_1;>}*/
        /*OUT: {
        Reverse<--, 427_0; 403_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 427_0; 403_1;>}*/
    }
    /*OUT: {
    Reverse<--, 403_1;>}*/
    unsigned long int _imopVarPre177;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    void *_imopVarPre178;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    _imopVarPre177 = sizeof(int) * numthreads;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    _imopVarPre178 = malloc(_imopVarPre177);
    /*OUT: {
    Reverse<--, 403_1;>}*/
    /*OUT: {
    Reverse<--, 403_1;>}*/
    temp2 = (int *) _imopVarPre178;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    if (temp2 == (int *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 456_0; 403_1;>}*/
        fprintf(__stderrp, "malloc failed for temp2\n");
        /*OUT: {
        Reverse<--, 456_0; 403_1;>}*/
        /*OUT: {
        Reverse<--, 456_0; 403_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 456_0; 403_1;>}*/
        /*OUT: {
        Reverse<--, 456_0; 403_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 456_0; 403_1;>}*/
    }
    /*OUT: {
    Reverse<--, 403_1;>}*/
    unsigned long int _imopVarPre181;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    void *_imopVarPre182;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    _imopVarPre181 = sizeof(double) * numthreads;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    _imopVarPre182 = malloc(_imopVarPre181);
    /*OUT: {
    Reverse<--, 403_1;>}*/
    /*OUT: {
    Reverse<--, 403_1;>}*/
    bigdist1 = (double *) _imopVarPre182;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    if (bigdist1 == (double *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 485_0; 403_1;>}*/
        fprintf(__stderrp, "malloc failed for bigdist1\n");
        /*OUT: {
        Reverse<--, 485_0; 403_1;>}*/
        /*OUT: {
        Reverse<--, 485_0; 403_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 485_0; 403_1;>}*/
        /*OUT: {
        Reverse<--, 485_0; 403_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 485_0; 403_1;>}*/
    }
    /*OUT: {
    Reverse<--, 403_1;>}*/
    unsigned long int _imopVarPre185;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    void *_imopVarPre186;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    _imopVarPre185 = sizeof(double) * numthreads;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    _imopVarPre186 = malloc(_imopVarPre185);
    /*OUT: {
    Reverse<--, 403_1;>}*/
    /*OUT: {
    Reverse<--, 403_1;>}*/
    bigdist2 = (double *) _imopVarPre186;
    /*OUT: {
    Reverse<--, 403_1;>}*/
    if (bigdist2 == (double *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 514_0; 403_1;>}*/
        fprintf(__stderrp, "malloc failed for bigdist2\n");
        /*OUT: {
        Reverse<--, 514_0; 403_1;>}*/
        /*OUT: {
        Reverse<--, 514_0; 403_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 514_0; 403_1;>}*/
        /*OUT: {
        Reverse<--, 514_0; 403_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 514_0; 403_1;>}*/
    }
#pragma omp parallel private(my_cpu_id, d1, d2, c0)
    {
        /*OUT: {
        Reverse<3848,>}*/
        my_cpu_id = 0;
        /*OUT: {
        Reverse<3848,>}*/
        temp1[my_cpu_id] = -1;
        /*OUT: {
        Reverse<3848,>}*/
        temp2[my_cpu_id] = -1;
        /*OUT: {
        Reverse<3848,>}*/
        bigdist1[my_cpu_id] = 1000000.0;
        /*OUT: {
        Reverse<3848,>}*/
        bigdist2[my_cpu_id] = 1000000.0;
#pragma omp for nowait
        /*OUT: {
        Reverse<3848,>}*/
        /*OUT: {
        Reverse<3848,>}*/
        /*OUT: {
        Reverse<3848,>}*/
        for (i = 0; i < ARCHnodes; i++) {
            /*OUT: {
            Reverse<3848,>}*/
            c0[0] = ARCHcoord[i][0];
            /*OUT: {
            Reverse<3848,>}*/
            c0[1] = ARCHcoord[i][1];
            /*OUT: {
            Reverse<3848,>}*/
            c0[2] = ARCHcoord[i][2];
            /*OUT: {
            Reverse<3848,>}*/
            double *_imopVarPre188;
            /*OUT: {
            Reverse<3848,>}*/
            double _imopVarPre189;
            /*OUT: {
            Reverse<3848,>}*/
            _imopVarPre188 = Src.xyz;
            /*OUT: {
            Reverse<3848,>}*/
            _imopVarPre189 = distance(c0, _imopVarPre188);
            /*OUT: {
            Reverse<3848,>}*/
            /*OUT: {
            Reverse<3848,>}*/
            d1 = _imopVarPre189;
            /*OUT: {
            Reverse<3848,>}*/
            double *_imopVarPre191;
            /*OUT: {
            Reverse<3848,>}*/
            double _imopVarPre192;
            /*OUT: {
            Reverse<3848,>}*/
            _imopVarPre191 = Src.epixyz;
            /*OUT: {
            Reverse<3848,>}*/
            _imopVarPre192 = distance(c0, _imopVarPre191);
            /*OUT: {
            Reverse<3848,>}*/
            /*OUT: {
            Reverse<3848,>}*/
            d2 = _imopVarPre192;
            /*OUT: {
            Reverse<3848,>}*/
            if (d1 < bigdist1[my_cpu_id]) {
                /*OUT: {
                Reverse<3848, 589_0;>}*/
                bigdist1[my_cpu_id] = d1;
                /*OUT: {
                Reverse<3848, 589_0;>}*/
                temp1[my_cpu_id] = i;
            }
            /*OUT: {
            Reverse<3848,>}*/
            if (d2 < bigdist2[my_cpu_id]) {
                /*OUT: {
                Reverse<3848, 597_0;>}*/
                bigdist2[my_cpu_id] = d2;
                /*OUT: {
                Reverse<3848, 597_0;>}*/
                temp2[my_cpu_id] = i;
            }
        }
        /*OUT: {
        Reverse<3848,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<604,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 403_1;>}*/
    d1 = bigdist1[0];
    /*OUT: {
    Reverse<--, 403_1;>}*/
    d2 = bigdist2[0];
    /*OUT: {
    Reverse<--, 403_1;>}*/
    Src.sourcenode = temp1[0];
    /*OUT: {
    Reverse<--, 403_1;>}*/
    Src.epicenternode = temp2[0];
    /*OUT: {
    Reverse<--, 403_1;>}*/
    /*OUT: {
    Reverse<--, 403_1;>}*/
    /*OUT: {
    Reverse<--, 618_0; 403_1;>}*/
    for (i = 0; i < numthreads; i++) {
        /*OUT: {
        Reverse<--, 618_0; 403_1;>}*/
        if (bigdist1[i] < d1) {
            /*OUT: {
            Reverse<--, 621_0; 618_0; 403_1;>}*/
            d1 = bigdist1[i];
            /*OUT: {
            Reverse<--, 621_0; 618_0; 403_1;>}*/
            Src.sourcenode = temp1[i];
        }
        /*OUT: {
        Reverse<--, 618_0; 403_1;>}*/
        if (bigdist2[i] < d2) {
            /*OUT: {
            Reverse<--, 629_0; 618_0; 403_1;>}*/
            d2 = bigdist2[i];
            /*OUT: {
            Reverse<--, 629_0; 618_0; 403_1;>}*/
            Src.epicenternode = temp2[i];
        }
    }
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    free(bigdist1);
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    free(bigdist2);
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    free(temp1);
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    free(temp2);
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    int _imopVarPre194;
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    _imopVarPre194 = Src.sourcenode != 0;
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    if (_imopVarPre194) {
        /*OUT: {
        Reverse<--, 659_0; 618_1; 403_1;>}*/
        _imopVarPre194 = Src.sourcenode <= ARCHmine;
    }
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    if (_imopVarPre194) {
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        double _imopVarPre199;
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        double _imopVarPre200;
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        double _imopVarPre201;
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        int _imopVarPre202;
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        _imopVarPre199 = ARCHcoord[Src.sourcenode][2];
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        _imopVarPre200 = ARCHcoord[Src.sourcenode][1];
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        _imopVarPre201 = ARCHcoord[Src.sourcenode][0];
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        _imopVarPre202 = ARCHglobalnode[Src.sourcenode];
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        fprintf(__stderrp, "The source is node %d at (%f  %f  %f)\n", _imopVarPre202, _imopVarPre201, _imopVarPre200, _imopVarPre199);
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 662_0; 618_1; 403_1;>}*/
    }
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    int _imopVarPre204;
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    _imopVarPre204 = Src.epicenternode != 0;
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    if (_imopVarPre204) {
        /*OUT: {
        Reverse<--, 695_0; 618_1; 403_1;>}*/
        _imopVarPre204 = Src.epicenternode <= ARCHmine;
    }
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    if (_imopVarPre204) {
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        double _imopVarPre209;
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        double _imopVarPre210;
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        double _imopVarPre211;
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        int _imopVarPre212;
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        _imopVarPre209 = ARCHcoord[Src.epicenternode][2];
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        _imopVarPre210 = ARCHcoord[Src.epicenternode][1];
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        _imopVarPre211 = ARCHcoord[Src.epicenternode][0];
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        _imopVarPre212 = ARCHglobalnode[Src.epicenternode];
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        fprintf(__stderrp, "The epicenter is node %d at (%f  %f  %f)\n", _imopVarPre212, _imopVarPre211, _imopVarPre210, _imopVarPre209);
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 698_0; 618_1; 403_1;>}*/
    }
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    if (Src.sourcenode != 0) {
#pragma omp parallel private(cor, j, k, xc, vertices)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<3896,>}*/
            /*OUT: {
            Reverse<3896,>}*/
            /*OUT: {
            Reverse<3896, 766_1; 764_0; 735_1;>
            Reverse<3896, 764_1; 735_1;>}*/
            for (i = 0; i < ARCHelems; i++) {
                /*OUT: {
                Reverse<3896,>}*/
                /*OUT: {
                Reverse<3896,>}*/
                /*OUT: {
                Reverse<3896, 735_0;>}*/
                for (j = 0; j < 4; j++) {
                    /*OUT: {
                    Reverse<3896, 735_0;>}*/
                    cor[j] = ARCHvertex[i][j];
                }
                /*OUT: {
                Reverse<3896, 735_1;>}*/
                int _imopVarPre213;
                /*OUT: {
                Reverse<3896, 735_1;>}*/
                int _imopVarPre214;
                /*OUT: {
                Reverse<3896, 735_1;>}*/
                int _imopVarPre215;
                /*OUT: {
                Reverse<3896, 735_1;>}*/
                _imopVarPre213 = cor[0] == Src.sourcenode;
                /*OUT: {
                Reverse<3896, 735_1;>}*/
                if (!_imopVarPre213) {
                    /*OUT: {
                    Reverse<3896, 748_0; 735_1;>}*/
                    _imopVarPre214 = cor[1] == Src.sourcenode;
                    /*OUT: {
                    Reverse<3896, 748_0; 735_1;>}*/
                    if (!_imopVarPre214) {
                        /*OUT: {
                        Reverse<3896, 752_0; 748_0; 735_1;>}*/
                        _imopVarPre215 = cor[2] == Src.sourcenode;
                        /*OUT: {
                        Reverse<3896, 752_0; 748_0; 735_1;>}*/
                        if (!_imopVarPre215) {
                            /*OUT: {
                            Reverse<3896, 756_0; 752_0; 748_0; 735_1;>}*/
                            _imopVarPre215 = cor[3] == Src.sourcenode;
                        }
                        /*OUT: {
                        Reverse<3896, 752_0; 748_0; 735_1;>}*/
                        _imopVarPre214 = _imopVarPre215;
                    }
                    /*OUT: {
                    Reverse<3896, 748_0; 735_1;>}*/
                    _imopVarPre213 = _imopVarPre214;
                }
                /*OUT: {
                Reverse<3896, 735_1;>}*/
                if (_imopVarPre213) {
                    /*OUT: {
                    Reverse<3896, 764_0; 735_1;>}*/
                    /*OUT: {
                    Reverse<3896, 764_0; 735_1;>}*/
                    /*OUT: {
                    Reverse<3896, 769_1; 766_0; 764_0; 735_1;>}*/
                    for (j = 0; j < 4; j++) {
                        /*OUT: {
                        Reverse<3896, 766_0; 764_0; 735_1;>}*/
                        /*OUT: {
                        Reverse<3896, 766_0; 764_0; 735_1;>}*/
                        /*OUT: {
                        Reverse<3896, 769_0; 766_0; 764_0; 735_1;>}*/
                        for (k = 0; k < 3; k++) {
                            /*OUT: {
                            Reverse<3896, 769_0; 766_0; 764_0; 735_1;>}*/
                            vertices[j][k] = ARCHcoord[cor[j]][k];
                        }
                    }
                    /*OUT: {
                    Reverse<3896, 766_1; 764_0; 735_1;>}*/
                    centroid(vertices, xc);
                    /*OUT: {
                    Reverse<3896, 766_1; 764_0; 735_1;>}*/
                    /*OUT: {
                    Reverse<3896, 766_1; 764_0; 735_1;>}*/
                    source_elms[i] = 2;
                    /*OUT: {
                    Reverse<3896, 766_1; 764_0; 735_1;>}*/
                    double _imopVarPre217;
                    /*OUT: {
                    Reverse<3896, 766_1; 764_0; 735_1;>}*/
                    _imopVarPre217 = point2fault(xc);
                    /*OUT: {
                    Reverse<3896, 766_1; 764_0; 735_1;>}*/
                    /*OUT: {
                    Reverse<3896, 766_1; 764_0; 735_1;>}*/
                    if (_imopVarPre217 >= 0) {
                        /*OUT: {
                        Reverse<3896, 793_0; 766_1; 764_0; 735_1;>}*/
                        source_elms[i] = 3;
                    }
                }
            }
            /*OUT: {
            Reverse<3896,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<797,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 1038_1; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
    Reverse<--, 1038_1; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
    Reverse<--, 1038_1; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
    Reverse<--, 1038_1; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
    Reverse<--, 1038_1; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
    Reverse<--, 1038_1; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
    Reverse<--, 1038_1; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
    Reverse<--, 1038_1; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
    Reverse<--, 1038_1; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
    Reverse<--, 1038_1; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
    Reverse<--, 1038_1; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
    Reverse<--, 1038_1; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
    for (i = 0; i < ARCHelems; i++) {
        /*OUT: {
        Reverse<--, 799_0; 618_1; 403_1;>
        Reverse<--, 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 799_0; 618_1; 403_1;>
        Reverse<--, 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 814_1; 802_0; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 814_1; 802_0; 799_0; 618_1; 403_1;>}*/
        for (j = 0; j < 12; j++) {
            /*OUT: {
            Reverse<--, 802_0; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 802_0; 799_0; 618_1; 403_1;>}*/
            Me[j] = 0.0;
            /*OUT: {
            Reverse<--, 802_0; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 802_0; 799_0; 618_1; 403_1;>}*/
            Ce[j] = 0.0;
            /*OUT: {
            Reverse<--, 802_0; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 802_0; 799_0; 618_1; 403_1;>}*/
            v[j] = 0.0;
            /*OUT: {
            Reverse<--, 802_0; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 802_0; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 802_0; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 802_0; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 814_0; 802_0; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 814_0; 802_0; 799_0; 618_1; 403_1;>}*/
            for (k = 0; k < 12; k++) {
                /*OUT: {
                Reverse<--, 814_0; 802_0; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 814_0; 802_0; 799_0; 618_1; 403_1;>}*/
                Ke[j][k] = 0.0;
            }
        }
        /*OUT: {
        Reverse<--, 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 802_1; 799_0; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 802_1; 799_0; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 821_0; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 821_0; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        for (j = 0; j < 4; j++) {
            /*OUT: {
            Reverse<--, 821_0; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 821_0; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            cor[j] = ARCHvertex[i][j];
        }
        /*OUT: {
        Reverse<--, 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        verticesonbnd = 0;
        /*OUT: {
        Reverse<--, 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 831_0; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 831_0; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        for (j = 0; j < 4; j++) {
            /*OUT: {
            Reverse<--, 831_0; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 831_0; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            if (nodekind[cor[j]] != 1) {
                /*OUT: {
                Reverse<--, 835_0; 831_0; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 835_0; 831_0; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                bv[verticesonbnd++] = j;
            }
        }
        /*OUT: {
        Reverse<--, 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        if (verticesonbnd == 3) {
            /*OUT: {
            Reverse<--, 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 844_1; 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 844_1; 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            for (j = 0; j < 3; j++) {
                /*OUT: {
                Reverse<--, 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                /*OUT: {
                Reverse<--, 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                /*OUT: {
                Reverse<--, 844_0; 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 844_0; 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                for (k = 0; k < 3; k++) {
                    /*OUT: {
                    Reverse<--, 844_0; 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 844_0; 841_0; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    vertices[j][k] = ARCHcoord[cor[bv[j]]][k];
                }
            }
            /*OUT: {
            Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            struct properties *_imopVarPre219;
            /*OUT: {
            Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            _imopVarPre219 = &prop;
            /*OUT: {
            Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            abe_matrix(vertices, bv, _imopVarPre219, Ce);
            /*OUT: {
            Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
        }
        /*OUT: {
        Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 866_1; 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 866_1; 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 866_1; 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 866_1; 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
        for (j = 0; j < 4; j++) {
            /*OUT: {
            Reverse<--, 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 866_0; 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 866_0; 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 866_0; 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 866_0; 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            for (k = 0; k < 3; k++) {
                /*OUT: {
                Reverse<--, 866_0; 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 866_0; 863_0; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 866_0; 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 866_0; 863_0; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                vertices[j][k] = ARCHcoord[cor[j]][k];
            }
        }
        /*OUT: {
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        struct properties *_imopVarPre221;
        /*OUT: {
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        _imopVarPre221 = &prop;
        /*OUT: {
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        element_matrices(vertices, _imopVarPre221, Ke, Me);
        /*OUT: {
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        centroid(vertices, xc);
        /*OUT: {
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        if (xc[2] < -11.5) {
            /*OUT: {
            Reverse<--, 889_0; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 889_0; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 889_0; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 889_0; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            alpha = 2.0 * Damp.zeta / 100.0 * (2.0 * 3.141592653589793238 * Damp.freq);
        } else {
            /*OUT: {
            Reverse<--, 889_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 889_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 889_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 889_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            alpha = 4.0 * 3.141592653589793238 * Damp.consta * 0.95 / (prop.cs + Damp.constb);
        }
        /*OUT: {
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 897_0; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 897_0; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 897_0; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 897_0; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
        for (j = 0; j < 12; j++) {
            /*OUT: {
            Reverse<--, 897_0; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 897_0; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 897_0; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 897_0; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            Ce[j] = Ce[j] + alpha * Me[j];
        }
        /*OUT: {
        Reverse<--, 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        int _imopVarPre222;
        /*OUT: {
        Reverse<--, 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        _imopVarPre222 = source_elms[i] == 2;
        /*OUT: {
        Reverse<--, 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        if (!_imopVarPre222) {
            /*OUT: {
            Reverse<--, 908_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 908_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 908_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 908_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            _imopVarPre222 = source_elms[i] == 3;
        }
        /*OUT: {
        Reverse<--, 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        if (_imopVarPre222) {
            /*OUT: {
            Reverse<--, 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            for (j = 0; j < 4; j++) {
                /*OUT: {
                Reverse<--, 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                if (cor[j] == Src.sourcenode) {
                    /*OUT: {
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    v[3 * j] = uf[0];
                    /*OUT: {
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    v[3 * j + 1] = uf[1];
                    /*OUT: {
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_0; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    v[3 * j + 2] = uf[2];
                } else {
                    /*OUT: {
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    v[3 * j] = 0;
                    /*OUT: {
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    v[3 * j + 1] = 0;
                    /*OUT: {
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 917_1; 914_0; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    v[3 * j + 2] = 0;
                }
            }
            /*OUT: {
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            vv12x12(Me, v, Mexv);
            /*OUT: {
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            vv12x12(Ce, v, Cexv);
            /*OUT: {
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            mv12x12(Ke, v);
            /*OUT: {
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            if (source_elms[i] == 3) {
                /*OUT: {
                Reverse<--, 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                /*OUT: {
                Reverse<--, 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                /*OUT: {
                Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                for (j = 0; j < 12; j++) {
                    /*OUT: {
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                    v[j] = -v[j];
                    /*OUT: {
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                    Mexv[j] = -Mexv[j];
                    /*OUT: {
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 957_0; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                    Cexv[j] = -Cexv[j];
                }
            }
            /*OUT: {
            Reverse<--, 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            for (j = 0; j < 4; j++) {
                /*OUT: {
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                V23[ARCHvertex[i][j]][0] += v[j * 3];
                /*OUT: {
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                V23[ARCHvertex[i][j]][1] += v[j * 3 + 1];
                /*OUT: {
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                V23[ARCHvertex[i][j]][2] += v[j * 3 + 2];
                /*OUT: {
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                M23[ARCHvertex[i][j]][0] += Mexv[j * 3];
                /*OUT: {
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                M23[ARCHvertex[i][j]][1] += Mexv[j * 3 + 1];
                /*OUT: {
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                M23[ARCHvertex[i][j]][2] += Mexv[j * 3 + 2];
                /*OUT: {
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                C23[ARCHvertex[i][j]][0] += Cexv[j * 3];
                /*OUT: {
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                C23[ARCHvertex[i][j]][1] += Cexv[j * 3 + 1];
                /*OUT: {
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 972_0; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 972_0; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                C23[ARCHvertex[i][j]][2] += Cexv[j * 3 + 2];
            }
        }
        /*OUT: {
        Reverse<--, 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 1083_1; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
        Reverse<--, 1083_1; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
        for (j = 0; j < 4; j++) {
            /*OUT: {
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            M[ARCHvertex[i][j]][0] += Me[j * 3];
            /*OUT: {
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            M[ARCHvertex[i][j]][1] += Me[j * 3 + 1];
            /*OUT: {
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            M[ARCHvertex[i][j]][2] += Me[j * 3 + 2];
            /*OUT: {
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            C[ARCHvertex[i][j]][0] += Ce[j * 3];
            /*OUT: {
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            C[ARCHvertex[i][j]][1] += Ce[j * 3 + 1];
            /*OUT: {
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            C[ARCHvertex[i][j]][2] += Ce[j * 3 + 2];
            /*OUT: {
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1126_1; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
            Reverse<--, 1089_1; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
            for (k = 0; k < 4; k++) {
                /*OUT: {
                Reverse<--, 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                Reverse<--, 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                if (ARCHvertex[i][j] <= ARCHvertex[i][k]) {
                    /*OUT: {
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    kk = ARCHmatrixindex[ARCHvertex[i][j]];
                    /*OUT: {
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    while (ARCHmatrixcol[kk] != ARCHvertex[i][k]) {
                        /*OUT: {
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                        kk++;
                        /*OUT: {
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                        if (kk >= ARCHmatrixindex[ARCHvertex[i][k] + 1]) {
                            /*OUT: {
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                            int _imopVarPre225;
                            /*OUT: {
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                            int _imopVarPre226;
                            /*OUT: {
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                            _imopVarPre225 = ARCHvertex[i][k];
                            /*OUT: {
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                            _imopVarPre226 = ARCHvertex[i][j];
                            /*OUT: {
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                            printf("K indexing error!!! %d %d\n", _imopVarPre226, _imopVarPre225);
                            /*OUT: {
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                            /*OUT: {
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                            exit(1);
                            /*OUT: {
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1104_0; 1098_0; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                        }
                    }
                    /*OUT: {
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                    /*OUT: {
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                    /*OUT: {
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                    Reverse<--, 1129_1; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>}*/
                    for (ii = 0; ii < 3; ii++) {
                        /*OUT: {
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                        /*OUT: {
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                        /*OUT: {
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                        Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                        for (jj = 0; jj < 3; jj++) {
                            /*OUT: {
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 957_1; 955_0; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 972_1; 955_1; 914_1; 912_0; 897_1; 863_1; 841_1; 839_0; 831_1; 821_1; 802_1; 799_0; 618_1; 403_1;>
                            Reverse<--, 1129_0; 1126_0; 1098_1; 1089_0; 1083_0; 1038_0; 912_1; 897_1; 863_1; 839_1; 831_1; 821_1; 802_1; 799_0; 728_1; 618_1; 403_1;>}*/
                            K[kk][ii][jj] += Ke[j * 3 + ii][k * 3 + jj];
                        }
                    }
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 799_1; 728_1; 618_1; 403_1;>
    Reverse<--, 799_1; 618_1; 403_1;>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--, 799_1; 728_1; 618_1; 403_1;>
    Reverse<--, 799_1; 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 799_1; 728_1; 618_1; 403_1;>
    Reverse<--, 799_1; 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 799_1; 728_1; 618_1; 403_1;>
    Reverse<--, 799_1; 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
    Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
    for (iter = 1; iter <= timesteps; iter++) {
#pragma omp parallel private(j)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<4052,>}*/
            /*OUT: {
            Reverse<4052,>}*/
            /*OUT: {
            Reverse<4052, 1152_1;>}*/
            for (i = 0; i < ARCHnodes; i++) {
                /*OUT: {
                Reverse<4052,>}*/
                /*OUT: {
                Reverse<4052,>}*/
                /*OUT: {
                Reverse<4052, 1152_0;>}*/
                for (j = 0; j < 3; j++) {
                    /*OUT: {
                    Reverse<4052, 1152_0;>}*/
                    disp[disptplus][i][j] = 0.0;
                }
            }
            /*OUT: {
            Reverse<4052,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<1159,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        double ( *_imopVarPre229 )[3];
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        double ( *_imopVarPre230 )[3];
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        _imopVarPre229 = disp[disptplus];
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        _imopVarPre230 = disp[dispt];
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        smvp(ARCHnodes, K, ARCHmatrixcol, ARCHmatrixindex, _imopVarPre230, _imopVarPre229);
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        time = iter * Exc.dt;
#pragma omp parallel private(j)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<4064,>}*/
            /*OUT: {
            Reverse<4064,>}*/
            /*OUT: {
            Reverse<4064, 1181_1;>}*/
            for (i = 0; i < ARCHnodes; i++) {
                /*OUT: {
                Reverse<4064,>}*/
                /*OUT: {
                Reverse<4064,>}*/
                /*OUT: {
                Reverse<4064, 1181_0;>}*/
                for (j = 0; j < 3; j++) {
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    disp[disptplus][i][j] *= -Exc.dt * Exc.dt;
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    double _imopVarPre240;
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    double _imopVarPre241;
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    double _imopVarPre242;
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    _imopVarPre240 = phi2(time);
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    _imopVarPre241 = phi1(time);
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    _imopVarPre242 = phi0(time);
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    disp[disptplus][i][j] += 2.0 * M[i][j] * disp[dispt][i][j] - (M[i][j] - Exc.dt / 2.0 * C[i][j]) * disp[disptminus][i][j] - Exc.dt * Exc.dt * (M23[i][j] * _imopVarPre240 / 2.0 + C23[i][j] * _imopVarPre241 / 2.0 + V23[i][j] * _imopVarPre242 / 2.0);
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    disp[disptplus][i][j] = disp[disptplus][i][j] / (M[i][j] + Exc.dt / 2.0 * C[i][j]);
                    /*OUT: {
                    Reverse<4064, 1181_0;>}*/
                    vel[i][j] = 0.5 / Exc.dt * (disp[disptplus][i][j] - disp[disptminus][i][j]);
                }
            }
            /*OUT: {
            Reverse<4064,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<1258,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        if (iter % Step_stride == 0) {
            /*OUT: {
            Reverse<--, 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
            Reverse<--, 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
            fprintf(__stderrp, "Time step %d\n", iter);
            /*OUT: {
            Reverse<--, 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
            Reverse<--, 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
            /*OUT: {
            Reverse<--, 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
            Reverse<--, 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
            if (Src.sourcenode <= ARCHmine) {
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
                double _imopVarPre247;
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
                double _imopVarPre248;
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
                double _imopVarPre249;
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
                int _imopVarPre250;
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
                _imopVarPre247 = disp[disptplus][Src.sourcenode][2];
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
                _imopVarPre248 = disp[disptplus][Src.sourcenode][1];
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
                _imopVarPre249 = disp[disptplus][Src.sourcenode][0];
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
                _imopVarPre250 = ARCHglobalnode[Src.sourcenode];
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
                printf("%d: %.2e %.2e %.2e\n", _imopVarPre250, _imopVarPre249, _imopVarPre248, _imopVarPre247);
                /*OUT: {
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
                Reverse<--, 1265_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
            }
            /*OUT: {
            Reverse<--, 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
            Reverse<--, 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
            if (Src.epicenternode <= ARCHmine) {
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
                double _imopVarPre255;
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
                double _imopVarPre256;
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
                double _imopVarPre257;
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
                int _imopVarPre258;
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
                _imopVarPre255 = disp[disptplus][Src.epicenternode][2];
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
                _imopVarPre256 = disp[disptplus][Src.epicenternode][1];
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
                _imopVarPre257 = disp[disptplus][Src.epicenternode][0];
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
                _imopVarPre258 = ARCHglobalnode[Src.epicenternode];
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
                printf("%d: %.2e %.2e %.2e\n", _imopVarPre258, _imopVarPre257, _imopVarPre256, _imopVarPre255);
                /*OUT: {
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 618_1; 403_1;>
                Reverse<--, 1293_0; 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
            }
            /*OUT: {
            Reverse<--, 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
            Reverse<--, 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
            fflush(__stdoutp);
            /*OUT: {
            Reverse<--, 1259_0; 1144_0; 799_1; 728_1; 618_1; 403_1;>
            Reverse<--, 1259_0; 1144_0; 799_1; 618_1; 403_1;>}*/
        }
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        i = disptminus;
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        disptminus = dispt;
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        dispt = disptplus;
        /*OUT: {
        Reverse<--, 1144_0; 799_1; 618_1; 403_1;>
        Reverse<--, 1144_0; 799_1; 728_1; 618_1; 403_1;>}*/
        disptplus = i;
    }
    /*OUT: {
    Reverse<--, 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 1335_0; 1144_1; 799_1; 728_1; 618_1; 403_1;>
    Reverse<--, 1335_0; 1144_1; 799_1; 618_1; 403_1;>}*/
    for (i = 0; i < numthreads; i++) {
        /*OUT: {
        Reverse<--, 1335_0; 1144_1; 799_1; 728_1; 618_1; 403_1;>
        Reverse<--, 1335_0; 1144_1; 799_1; 618_1; 403_1;>}*/
        struct smallarray_s *_imopVarPre260;
        /*OUT: {
        Reverse<--, 1335_0; 1144_1; 799_1; 728_1; 618_1; 403_1;>
        Reverse<--, 1335_0; 1144_1; 799_1; 618_1; 403_1;>}*/
        _imopVarPre260 = w1[i];
        /*OUT: {
        Reverse<--, 1335_0; 1144_1; 799_1; 728_1; 618_1; 403_1;>
        Reverse<--, 1335_0; 1144_1; 799_1; 618_1; 403_1;>}*/
        free(_imopVarPre260);
        /*OUT: {
        Reverse<--, 1335_0; 1144_1; 799_1; 728_1; 618_1; 403_1;>
        Reverse<--, 1335_0; 1144_1; 799_1; 618_1; 403_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    free(w1);
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    fprintf(__stderrp, "%d nodes %d elems %d timesteps\n", ARCHglobalnodes, ARCHglobalelems, timesteps);
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    fprintf(__stderrp, "\n");
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    fflush(__stderrp);
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    if (!options.quiet) {
        /*OUT: {
        Reverse<--, 1366_0; 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>
        Reverse<--, 1366_0; 1335_1; 1144_1; 799_1; 618_1; 403_1;>}*/
        fprintf(__stderrp, "Done. Terminating the simulation.\n");
        /*OUT: {
        Reverse<--, 1366_0; 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>
        Reverse<--, 1366_0; 1335_1; 1144_1; 799_1; 618_1; 403_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1335_1; 1144_1; 799_1; 618_1; 403_1;>
    Reverse<--, 1335_1; 1144_1; 799_1; 728_1; 618_1; 403_1;>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
void shape_ders(double ds[][4]) {
    /*OUT: {
    Reverse<--,>}*/
    ds[0][0] = -1;
    /*OUT: {
    Reverse<--,>}*/
    ds[1][0] = -1;
    /*OUT: {
    Reverse<--,>}*/
    ds[2][0] = -1;
    /*OUT: {
    Reverse<--,>}*/
    ds[0][1] = 1;
    /*OUT: {
    Reverse<--,>}*/
    ds[1][1] = 0;
    /*OUT: {
    Reverse<--,>}*/
    ds[2][1] = 0;
    /*OUT: {
    Reverse<--,>}*/
    ds[0][2] = 0;
    /*OUT: {
    Reverse<--,>}*/
    ds[1][2] = 1;
    /*OUT: {
    Reverse<--,>}*/
    ds[2][2] = 0;
    /*OUT: {
    Reverse<--,>}*/
    ds[0][3] = 0;
    /*OUT: {
    Reverse<--,>}*/
    ds[1][3] = 0;
    /*OUT: {
    Reverse<--,>}*/
    ds[2][3] = 1;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void get_Enu(struct properties *prop, double *E , double *nu) {
    /*OUT: {
    Reverse<--,>}*/
    double ratio;
    /*OUT: {
    Reverse<--,>}*/
    ratio = prop->cp / prop->cs;
    /*OUT: {
    Reverse<--,>}*/
    ratio = ratio * ratio;
    /*OUT: {
    Reverse<--,>}*/
    *nu = 0.5 * (ratio - 2.0) / (ratio - 1.0);
    /*OUT: {
    Reverse<--,>}*/
    *E = 2.0 * prop->den * prop->cs * prop->cs * (1.0 + *nu);
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void inv_J(double a[][3], double *det) {
    /*OUT: {
    Reverse<--,>}*/
    double d1;
    /*OUT: {
    Reverse<--,>}*/
    double c[3][3];
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    c[0][0] = a[1][1] * a[2][2] - a[2][1] * a[1][2];
    /*OUT: {
    Reverse<--,>}*/
    c[0][1] = a[0][2] * a[2][1] - a[0][1] * a[2][2];
    /*OUT: {
    Reverse<--,>}*/
    c[0][2] = a[0][1] * a[1][2] - a[0][2] * a[1][1];
    /*OUT: {
    Reverse<--,>}*/
    c[1][0] = a[1][2] * a[2][0] - a[1][0] * a[2][2];
    /*OUT: {
    Reverse<--,>}*/
    c[1][1] = a[0][0] * a[2][2] - a[0][2] * a[2][0];
    /*OUT: {
    Reverse<--,>}*/
    c[1][2] = a[0][2] * a[1][0] - a[0][0] * a[1][2];
    /*OUT: {
    Reverse<--,>}*/
    c[2][0] = a[1][0] * a[2][1] - a[1][1] * a[2][0];
    /*OUT: {
    Reverse<--,>}*/
    c[2][1] = a[0][1] * a[2][0] - a[0][0] * a[2][1];
    /*OUT: {
    Reverse<--,>}*/
    c[2][2] = a[0][0] * a[1][1] - a[0][1] * a[1][0];
    /*OUT: {
    Reverse<--,>}*/
    *det = a[0][0] * c[0][0] + a[0][1] * c[1][0] + a[0][2] * c[2][0];
    /*OUT: {
    Reverse<--,>}*/
    d1 = 1.0 / *det;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1572_1; 1569_0;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 1569_0;>}*/
        /*OUT: {
        Reverse<--, 1569_0;>}*/
        /*OUT: {
        Reverse<--, 1572_0; 1569_0;>}*/
        for (j = 0; j < 3; j++) {
            /*OUT: {
            Reverse<--, 1572_0; 1569_0;>}*/
            a[i][j] = c[i][j] * d1;
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
void element_matrices(double vertices[][3], struct properties *prop , double Ke[][12] , double Me[]) {
    /*OUT: {
    Reverse<--,>}*/
    double ds[3][4];
    /*OUT: {
    Reverse<--,>}*/
    double sum[3];
    /*OUT: {
    Reverse<--,>}*/
    double jacobian[3][3];
    /*OUT: {
    Reverse<--,>}*/
    double det;
    /*OUT: {
    Reverse<--,>}*/
    double volume;
    /*OUT: {
    Reverse<--,>}*/
    double E;
    /*OUT: {
    Reverse<--,>}*/
    double nu;
    /*OUT: {
    Reverse<--,>}*/
    double c1;
    /*OUT: {
    Reverse<--,>}*/
    double c2;
    /*OUT: {
    Reverse<--,>}*/
    double c3;
    /*OUT: {
    Reverse<--,>}*/
    double tt;
    /*OUT: {
    Reverse<--,>}*/
    double ts;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    int n;
    /*OUT: {
    Reverse<--,>}*/
    int row;
    /*OUT: {
    Reverse<--,>}*/
    int column;
    /*OUT: {
    Reverse<--,>}*/
    shape_ders(ds);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1611_1; 1608_0;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 1608_0;>}*/
        /*OUT: {
        Reverse<--, 1608_0;>}*/
        /*OUT: {
        Reverse<--, 1617_1; 1611_0; 1608_0;>}*/
        for (j = 0; j < 3; j++) {
            /*OUT: {
            Reverse<--, 1611_0; 1608_0;>}*/
            sum[0] = 0.0;
            /*OUT: {
            Reverse<--, 1611_0; 1608_0;>}*/
            /*OUT: {
            Reverse<--, 1611_0; 1608_0;>}*/
            /*OUT: {
            Reverse<--, 1617_0; 1611_0; 1608_0;>}*/
            for (m = 0; m < 4; m++) {
                /*OUT: {
                Reverse<--, 1617_0; 1611_0; 1608_0;>}*/
                sum[0] = sum[0] + ds[i][m] * vertices[m][j];
            }
            /*OUT: {
            Reverse<--, 1617_1; 1611_0; 1608_0;>}*/
            jacobian[j][i] = sum[0];
        }
    }
    /*OUT: {
    Reverse<--, 1608_1;>}*/
    double *_imopVarPre262;
    /*OUT: {
    Reverse<--, 1608_1;>}*/
    _imopVarPre262 = &det;
    /*OUT: {
    Reverse<--, 1608_1;>}*/
    inv_J(jacobian, _imopVarPre262);
    /*OUT: {
    Reverse<--, 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1661_1; 1644_1; 1641_0; 1608_1;>}*/
    for (m = 0; m < 4; m++) {
        /*OUT: {
        Reverse<--, 1641_0; 1608_1;>}*/
        /*OUT: {
        Reverse<--, 1641_0; 1608_1;>}*/
        /*OUT: {
        Reverse<--, 1650_1; 1644_0; 1641_0; 1608_1;>}*/
        for (i = 0; i < 3; i++) {
            /*OUT: {
            Reverse<--, 1644_0; 1641_0; 1608_1;>}*/
            sum[i] = 0.0;
            /*OUT: {
            Reverse<--, 1644_0; 1641_0; 1608_1;>}*/
            /*OUT: {
            Reverse<--, 1644_0; 1641_0; 1608_1;>}*/
            /*OUT: {
            Reverse<--, 1650_0; 1644_0; 1641_0; 1608_1;>}*/
            for (j = 0; j < 3; j++) {
                /*OUT: {
                Reverse<--, 1650_0; 1644_0; 1641_0; 1608_1;>}*/
                sum[i] = sum[i] + jacobian[j][i] * ds[j][m];
            }
        }
        /*OUT: {
        Reverse<--, 1644_1; 1641_0; 1608_1;>}*/
        /*OUT: {
        Reverse<--, 1644_1; 1641_0; 1608_1;>}*/
        /*OUT: {
        Reverse<--, 1661_0; 1644_1; 1641_0; 1608_1;>}*/
        for (i = 0; i < 3; i++) {
            /*OUT: {
            Reverse<--, 1661_0; 1644_1; 1641_0; 1608_1;>}*/
            ds[i][m] = sum[i];
        }
    }
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    volume = det / 6.0;
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    if (volume <= 0) {
        /*OUT: {
        Reverse<--, 1670_0; 1641_1; 1608_1;>}*/
        fprintf(__stderrp, "Warning: Element volume = %f !\n", volume);
        /*OUT: {
        Reverse<--, 1670_0; 1641_1; 1608_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    double *_imopVarPre265;
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    double *_imopVarPre266;
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    _imopVarPre265 = &nu;
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    _imopVarPre266 = &E;
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    get_Enu(prop, _imopVarPre266, _imopVarPre265);
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    c1 = E / (2.0 * (nu + 1.0) * (1.0 - nu * 2.0)) * volume;
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    c2 = E * nu / ((nu + 1.0) * (1.0 - nu * 2.0)) * volume;
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    c3 = E / ((nu + 1.0) * 2.0) * volume;
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    row = -1;
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1641_1; 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1707_1; 1704_0; 1641_1; 1608_1;>}*/
    for (m = 0; m < 4; m++) {
        /*OUT: {
        Reverse<--, 1704_0; 1641_1; 1608_1;>}*/
        /*OUT: {
        Reverse<--, 1704_0; 1641_1; 1608_1;>}*/
        /*OUT: {
        Reverse<--, 1714_1; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
        for (i = 0; i < 3; ++i) {
            /*OUT: {
            Reverse<--, 1707_0; 1704_0; 1641_1; 1608_1;>}*/
            ++row;
            /*OUT: {
            Reverse<--, 1707_0; 1704_0; 1641_1; 1608_1;>}*/
            column = -1;
            /*OUT: {
            Reverse<--, 1707_0; 1704_0; 1641_1; 1608_1;>}*/
            /*OUT: {
            Reverse<--, 1707_0; 1704_0; 1641_1; 1608_1;>}*/
            /*OUT: {
            Reverse<--, 1717_1; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
            for (n = 0; n <= m; n++) {
                /*OUT: {
                Reverse<--, 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                /*OUT: {
                Reverse<--, 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                /*OUT: {
                Reverse<--, 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                for (j = 0; j < 3; j++) {
                    /*OUT: {
                    Reverse<--, 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                    ++column;
                    /*OUT: {
                    Reverse<--, 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                    ts = ds[i][m] * ds[j][n];
                    /*OUT: {
                    Reverse<--, 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                    if (i == j) {
                        /*OUT: {
                        Reverse<--, 1727_0; 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                        ts = ts * c1;
                        /*OUT: {
                        Reverse<--, 1727_0; 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                        tt = (ds[0][m] * ds[0][n] + ds[1][m] * ds[1][n] + ds[2][m] * ds[2][n]) * c3;
                    } else {
                        /*OUT: {
                        Reverse<--, 1727_1; 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                        if (m == n) {
                            /*OUT: {
                            Reverse<--, 1745_0; 1727_1; 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                            ts = ts * c1;
                            /*OUT: {
                            Reverse<--, 1745_0; 1727_1; 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                            tt = 0;
                        } else {
                            /*OUT: {
                            Reverse<--, 1745_1; 1727_1; 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                            ts = ts * c2;
                            /*OUT: {
                            Reverse<--, 1745_1; 1727_1; 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                            tt = ds[j][m] * ds[i][n] * c3;
                        }
                    }
                    /*OUT: {
                    Reverse<--, 1717_0; 1714_0; 1707_0; 1704_0; 1641_1; 1608_1;>}*/
                    Ke[row][column] = Ke[row][column] + ts + tt;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 1704_1; 1641_1; 1608_1;>}*/
    tt = prop->den * volume / 4.0;
    /*OUT: {
    Reverse<--, 1704_1; 1641_1; 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1704_1; 1641_1; 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1767_0; 1704_1; 1641_1; 1608_1;>}*/
    for (i = 0; i < 12; i++) {
        /*OUT: {
        Reverse<--, 1767_0; 1704_1; 1641_1; 1608_1;>}*/
        Me[i] = tt;
    }
    /*OUT: {
    Reverse<--, 1767_1; 1704_1; 1641_1; 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1767_1; 1704_1; 1641_1; 1608_1;>}*/
    /*OUT: {
    Reverse<--, 1776_1; 1773_0; 1767_1; 1704_1; 1641_1; 1608_1;>}*/
    for (i = 0; i < 12; i++) {
        /*OUT: {
        Reverse<--, 1773_0; 1767_1; 1704_1; 1641_1; 1608_1;>}*/
        /*OUT: {
        Reverse<--, 1773_0; 1767_1; 1704_1; 1641_1; 1608_1;>}*/
        /*OUT: {
        Reverse<--, 1776_0; 1773_0; 1767_1; 1704_1; 1641_1; 1608_1;>}*/
        for (j = 0; j <= i; j++) {
            /*OUT: {
            Reverse<--, 1776_0; 1773_0; 1767_1; 1704_1; 1641_1; 1608_1;>}*/
            Ke[j][i] = Ke[i][j];
        }
    }
}
/*OUT: {
Reverse<--,>}*/
double area_triangle(double vertices[][3]) {
    /*OUT: {
    Reverse<--,>}*/
    double a;
    /*OUT: {
    Reverse<--,>}*/
    double b;
    /*OUT: {
    Reverse<--,>}*/
    double c;
    /*OUT: {
    Reverse<--,>}*/
    double x2;
    /*OUT: {
    Reverse<--,>}*/
    double y2;
    /*OUT: {
    Reverse<--,>}*/
    double z2;
    /*OUT: {
    Reverse<--,>}*/
    double p;
    /*OUT: {
    Reverse<--,>}*/
    double area;
    /*OUT: {
    Reverse<--,>}*/
    x2 = (vertices[0][0] - vertices[1][0]) * (vertices[0][0] - vertices[1][0]);
    /*OUT: {
    Reverse<--,>}*/
    y2 = (vertices[0][1] - vertices[1][1]) * (vertices[0][1] - vertices[1][1]);
    /*OUT: {
    Reverse<--,>}*/
    z2 = (vertices[0][2] - vertices[1][2]) * (vertices[0][2] - vertices[1][2]);
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre268;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre269;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre268 = x2 + y2 + z2;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre269 = sqrt(_imopVarPre268);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    a = _imopVarPre269;
    /*OUT: {
    Reverse<--,>}*/
    x2 = (vertices[2][0] - vertices[1][0]) * (vertices[2][0] - vertices[1][0]);
    /*OUT: {
    Reverse<--,>}*/
    y2 = (vertices[2][1] - vertices[1][1]) * (vertices[2][1] - vertices[1][1]);
    /*OUT: {
    Reverse<--,>}*/
    z2 = (vertices[2][2] - vertices[1][2]) * (vertices[2][2] - vertices[1][2]);
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre271;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre272;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre271 = x2 + y2 + z2;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre272 = sqrt(_imopVarPre271);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    b = _imopVarPre272;
    /*OUT: {
    Reverse<--,>}*/
    x2 = (vertices[0][0] - vertices[2][0]) * (vertices[0][0] - vertices[2][0]);
    /*OUT: {
    Reverse<--,>}*/
    y2 = (vertices[0][1] - vertices[2][1]) * (vertices[0][1] - vertices[2][1]);
    /*OUT: {
    Reverse<--,>}*/
    z2 = (vertices[0][2] - vertices[2][2]) * (vertices[0][2] - vertices[2][2]);
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre274;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre275;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre274 = x2 + y2 + z2;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre275 = sqrt(_imopVarPre274);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    c = _imopVarPre275;
    /*OUT: {
    Reverse<--,>}*/
    p = (a + b + c) / 2.0;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre277;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre278;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre277 = p * (p - a) * (p - b) * (p - c);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre278 = sqrt(_imopVarPre277);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    area = _imopVarPre278;
    /*OUT: {
    Reverse<--,>}*/
    return area;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void abe_matrix(double vertices[][3], int bv[] , struct properties *prop , double Ce[]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double area;
    /*OUT: {
    Reverse<--,>}*/
    area = area_triangle(vertices);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1971_0;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 1971_0;>}*/
        j = 3 * bv[i];
        /*OUT: {
        Reverse<--, 1971_0;>}*/
        Ce[j] = Ce[j] + prop->cs * prop->den * area / 3.0;
        /*OUT: {
        Reverse<--, 1971_0;>}*/
        Ce[j + 1] = Ce[j + 1] + prop->cs * prop->den * area / 3.0;
        /*OUT: {
        Reverse<--, 1971_0;>}*/
        Ce[j + 2] = Ce[j + 2] + prop->cp * prop->den * area / 3.0;
    }
}
/*OUT: {
Reverse<--,>}*/
double phi0(double t) {
    /*OUT: {
    Reverse<--,>}*/
    double value;
    /*OUT: {
    Reverse<--,>}*/
    if (t <= Exc.t0) {
        /*OUT: {
        Reverse<--, 1990_0;>}*/
        double _imopVarPre285;
        /*OUT: {
        Reverse<--, 1990_0;>}*/
        double _imopVarPre286;
        /*OUT: {
        Reverse<--, 1990_0;>}*/
        _imopVarPre285 = 2.0 * 3.141592653589793238 * t / Exc.t0;
        /*OUT: {
        Reverse<--, 1990_0;>}*/
        _imopVarPre286 = sin(_imopVarPre285);
        /*OUT: {
        Reverse<--, 1990_0;>}*/
        /*OUT: {
        Reverse<--, 1990_0;>}*/
        value = 0.5 / 3.141592653589793238 * (2.0 * 3.141592653589793238 * t / Exc.t0 - _imopVarPre286);
        /*OUT: {
        Reverse<--, 1990_0;>}*/
        return value;
    } else {
        /*OUT: {
        Reverse<--, 1990_1;>}*/
        return 1.0;
    }
}
/*OUT: {
Reverse<--,>}*/
double phi1(double t) {
    /*OUT: {
    Reverse<--,>}*/
    double value;
    /*OUT: {
    Reverse<--,>}*/
    if (t <= Exc.t0) {
        /*OUT: {
        Reverse<--, 2010_0;>}*/
        double _imopVarPre293;
        /*OUT: {
        Reverse<--, 2010_0;>}*/
        double _imopVarPre294;
        /*OUT: {
        Reverse<--, 2010_0;>}*/
        _imopVarPre293 = 2.0 * 3.141592653589793238 * t / Exc.t0;
        /*OUT: {
        Reverse<--, 2010_0;>}*/
        _imopVarPre294 = cos(_imopVarPre293);
        /*OUT: {
        Reverse<--, 2010_0;>}*/
        /*OUT: {
        Reverse<--, 2010_0;>}*/
        value = (1.0 - _imopVarPre294) / Exc.t0;
        /*OUT: {
        Reverse<--, 2010_0;>}*/
        return value;
    } else {
        /*OUT: {
        Reverse<--, 2010_1;>}*/
        return 0.0;
    }
}
/*OUT: {
Reverse<--,>}*/
double phi2(double t) {
    /*OUT: {
    Reverse<--,>}*/
    double value;
    /*OUT: {
    Reverse<--,>}*/
    if (t <= Exc.t0) {
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        double _imopVarPre297;
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        double _imopVarPre298;
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        _imopVarPre297 = 2.0 * 3.141592653589793238 * t / Exc.t0;
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        _imopVarPre298 = sin(_imopVarPre297);
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        value = 2.0 * 3.141592653589793238 / Exc.t0 / Exc.t0 * _imopVarPre298;
        /*OUT: {
        Reverse<--, 2030_0;>}*/
        return value;
    } else {
        /*OUT: {
        Reverse<--, 2030_1;>}*/
        return 0.0;
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void slip(double *u, double *v , double *w) {
    /*OUT: {
    Reverse<--,>}*/
    *u = *v = *w = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre329;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre330;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre331;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre332;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre333;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre334;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre335;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre336;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre337;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre338;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre329 = Src.rake;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre330 = cos(_imopVarPre329);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre331 = Src.strike;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre332 = sin(_imopVarPre331);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre333 = Src.rake;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre334 = sin(_imopVarPre333);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre335 = Src.strike;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre336 = cos(_imopVarPre335);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre337 = Src.dip;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre338 = cos(_imopVarPre337);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    *u = (_imopVarPre330 * _imopVarPre332 - _imopVarPre334 * _imopVarPre336 * _imopVarPre338);
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre369;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre370;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre371;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre372;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre373;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre374;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre375;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre376;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre377;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre378;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre369 = Src.rake;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre370 = cos(_imopVarPre369);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre371 = Src.strike;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre372 = cos(_imopVarPre371);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre373 = Src.rake;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre374 = sin(_imopVarPre373);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre375 = Src.strike;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre376 = sin(_imopVarPre375);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre377 = Src.dip;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre378 = cos(_imopVarPre377);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    *v = (_imopVarPre370 * _imopVarPre372 + _imopVarPre374 * _imopVarPre376 * _imopVarPre378);
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre383;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre384;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre385;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre386;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre383 = Src.rake;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre384 = sin(_imopVarPre383);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre385 = Src.dip;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre386 = sin(_imopVarPre385);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    *w = _imopVarPre384 * _imopVarPre386;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
double distance(double p1[], double p2[]) {
    /*OUT: {
    Reverse<--,>}*/
    return ((p1[0] - p2[0]) * (p1[0] - p2[0]) + (p1[1] - p2[1]) * (p1[1] - p2[1]) + (p1[2] - p2[2]) * (p1[2] - p2[2]));
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void centroid(double x[][3], double xc[]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2207_0;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 2207_0;>}*/
        xc[i] = (x[0][i] + x[1][i] + x[2][i] + x[3][i]) / 4.0;
    }
}
/*OUT: {
Reverse<--,>}*/
double point2fault(double x[]) {
    /*OUT: {
    Reverse<--,>}*/
    double nx;
    /*OUT: {
    Reverse<--,>}*/
    double ny;
    /*OUT: {
    Reverse<--,>}*/
    double nz;
    /*OUT: {
    Reverse<--,>}*/
    double d0;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre391;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre392;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre393;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre394;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre391 = Src.strike;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre392 = cos(_imopVarPre391);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre393 = Src.dip;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre394 = sin(_imopVarPre393);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    nx = _imopVarPre392 * _imopVarPre394;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre399;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre400;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre401;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre402;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre399 = Src.strike;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre400 = sin(_imopVarPre399);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre401 = Src.dip;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre402 = sin(_imopVarPre401);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ny = -_imopVarPre400 * _imopVarPre402;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre404;
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre405;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre404 = Src.dip;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre405 = cos(_imopVarPre404);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    nz = _imopVarPre405;
    /*OUT: {
    Reverse<--,>}*/
    d0 = -(nx * Src.xyz[0] + ny * Src.xyz[1] + nz * Src.xyz[2]);
    /*OUT: {
    Reverse<--,>}*/
    return (double) nx * x[0] + ny * x[1] + nz * x[2] + d0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void mv12x12(double m[][12], double v[]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double u[12];
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2305_1; 2299_0;>}*/
    for (i = 0; i < 12; i++) {
        /*OUT: {
        Reverse<--, 2299_0;>}*/
        u[i] = 0;
        /*OUT: {
        Reverse<--, 2299_0;>}*/
        /*OUT: {
        Reverse<--, 2299_0;>}*/
        /*OUT: {
        Reverse<--, 2305_0; 2299_0;>}*/
        for (j = 0; j < 12; j++) {
            /*OUT: {
            Reverse<--, 2305_0; 2299_0;>}*/
            u[i] += m[i][j] * v[j];
        }
    }
    /*OUT: {
    Reverse<--, 2299_1;>}*/
    /*OUT: {
    Reverse<--, 2299_1;>}*/
    /*OUT: {
    Reverse<--, 2314_0; 2299_1;>}*/
    for (i = 0; i < 12; i++) {
        /*OUT: {
        Reverse<--, 2314_0; 2299_1;>}*/
        v[i] = u[i];
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void vv12x12(double v1[], double v2[] , double u[]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2325_0;>}*/
    for (i = 0; i < 12; i++) {
        /*OUT: {
        Reverse<--, 2325_0;>}*/
        u[i] = v1[i] * v2[i];
    }
}
void arch_bail() {
    /*OUT: {
    Reverse<--,>}*/
    exit(0);
    /*OUT: {
    Reverse<--,>}*/
}
void arch_info() {
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("You are running an Archimedes finite element simulation.\n\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("The command syntax is:\n\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("quake [-Qh] < packfile\n\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("Command line options:\n\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("    -Q  Quietly suppress all explanation of what this program is doing\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("        unless an error occurs.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("    -h  Print this message and exit.\n");
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void arch_parsecommandline(int argc, char **argv , struct options *op) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    op->quiet = 0;
    /*OUT: {
    Reverse<--,>}*/
    op->help = 0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2395_1; 2391_0; 2387_0;>
    Reverse<--, 2391_1; 2387_0;>}*/
    for (i = 1; i < argc; i++) {
        /*OUT: {
        Reverse<--, 2387_0;>}*/
        if (argv[i][0] == '-') {
            /*OUT: {
            Reverse<--, 2391_0; 2387_0;>}*/
            /*OUT: {
            Reverse<--, 2391_0; 2387_0;>}*/
            /*OUT: {
            Reverse<--, 2395_0; 2391_0; 2387_0;>}*/
            for (j = 1; argv[i][j] != '\0'; j++) {
                /*OUT: {
                Reverse<--, 2395_0; 2391_0; 2387_0;>}*/
                if (argv[i][j] == 'Q') {
                    /*OUT: {
                    Reverse<--, 2399_0; 2395_0; 2391_0; 2387_0;>}*/
                    op->quiet = 1;
                }
                /*OUT: {
                Reverse<--, 2395_0; 2391_0; 2387_0;>}*/
                int _imopVarPre407;
                /*OUT: {
                Reverse<--, 2395_0; 2391_0; 2387_0;>}*/
                _imopVarPre407 = argv[i][j] == 'h';
                /*OUT: {
                Reverse<--, 2395_0; 2391_0; 2387_0;>}*/
                if (!_imopVarPre407) {
                    /*OUT: {
                    Reverse<--, 2407_0; 2395_0; 2391_0; 2387_0;>}*/
                    _imopVarPre407 = argv[i][j] == 'H';
                }
                /*OUT: {
                Reverse<--, 2395_0; 2391_0; 2387_0;>}*/
                if (_imopVarPre407) {
                    /*OUT: {
                    Reverse<--, 2412_0; 2395_0; 2391_0; 2387_0;>}*/
                    op->help = 1;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 2387_1;>}*/
    if (op->help) {
        /*OUT: {
        Reverse<--, 2415_0; 2387_1;>}*/
        arch_info();
        /*OUT: {
        Reverse<--, 2415_0; 2387_1;>}*/
        /*OUT: {
        Reverse<--, 2415_0; 2387_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 2415_0; 2387_1;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void arch_readnodevector(double *v, int n) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int type;
    /*OUT: {
    Reverse<--,>}*/
    int attributes;
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre410;
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre411;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre410 = &attributes;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre411 = &type;
    /*OUT: {
    Reverse<--,>}*/
    fscanf(packfile, "%d %d\n", _imopVarPre411, _imopVarPre410);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (type != 2) {
        /*OUT: {
        Reverse<--, 2442_0;>}*/
        fprintf(__stderrp, "READNODEVECTOR: unexpected data type\n");
        /*OUT: {
        Reverse<--, 2442_0;>}*/
        /*OUT: {
        Reverse<--, 2442_0;>}*/
        arch_bail();
        /*OUT: {
        Reverse<--, 2442_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (attributes != 1) {
        /*OUT: {
        Reverse<--, 2453_0;>
        Reverse<--, 2453_0; 2442_1;>}*/
        fprintf(__stderrp, "READNODEVECTOR: unexpected number of attributes\n");
        /*OUT: {
        Reverse<--, 2453_0;>
        Reverse<--, 2453_0; 2442_1;>}*/
        /*OUT: {
        Reverse<--, 2453_0;>
        Reverse<--, 2453_0; 2442_1;>}*/
        arch_bail();
        /*OUT: {
        Reverse<--, 2453_0;>
        Reverse<--, 2453_0; 2442_1;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2465_0;>}*/
    for (i = 0; i < n; i++) {
        /*OUT: {
        Reverse<--, 2465_0;>}*/
        double *_imopVarPre413;
        /*OUT: {
        Reverse<--, 2465_0;>}*/
        _imopVarPre413 = &v[i];
        /*OUT: {
        Reverse<--, 2465_0;>}*/
        fscanf(packfile, "%lf", _imopVarPre413);
        /*OUT: {
        Reverse<--, 2465_0;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void readpackfile(FILE *packfile, struct options *op) {
    /*OUT: {
    Reverse<--,>}*/
    int oldrow;
    /*OUT: {
    Reverse<--,>}*/
    int newrow;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int temp1;
    /*OUT: {
    Reverse<--,>}*/
    int temp2;
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre427;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre427 = &ARCHglobalnodes;
    /*OUT: {
    Reverse<--,>}*/
    fscanf(packfile, "%d", _imopVarPre427);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre429;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre429 = &ARCHmesh_dim;
    /*OUT: {
    Reverse<--,>}*/
    fscanf(packfile, "%d", _imopVarPre429);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre431;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre431 = &ARCHglobalelems;
    /*OUT: {
    Reverse<--,>}*/
    fscanf(packfile, "%d", _imopVarPre431);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre433;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre433 = &ARCHcorners;
    /*OUT: {
    Reverse<--,>}*/
    fscanf(packfile, "%d", _imopVarPre433);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre435;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre435 = &ARCHsubdomains;
    /*OUT: {
    Reverse<--,>}*/
    fscanf(packfile, "%d", _imopVarPre435);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double *_imopVarPre437;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre437 = &ARCHduration;
    /*OUT: {
    Reverse<--,>}*/
    fscanf(packfile, "%lf", _imopVarPre437);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    if (ARCHsubdomains != 1) {
        /*OUT: {
        Reverse<--, 2532_0;>}*/
        fprintf(__stderrp, "quake: too many subdomains(%d), rerun slice using -s1\n", ARCHsubdomains);
        /*OUT: {
        Reverse<--, 2532_0;>}*/
        /*OUT: {
        Reverse<--, 2532_0;>}*/
        arch_bail();
        /*OUT: {
        Reverse<--, 2532_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    if (!op->quiet) {
        /*OUT: {
        Reverse<--, 2543_0;>}*/
        fprintf(__stderrp, "quake: Reading nodes.\n");
        /*OUT: {
        Reverse<--, 2543_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre441;
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre442;
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre443;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre441 = &ARCHpriv;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre442 = &ARCHmine;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre443 = &ARCHnodes;
    /*OUT: {
    Reverse<--,>}*/
    fscanf(packfile, "%d %d %d", _imopVarPre443, _imopVarPre442, _imopVarPre441);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre446;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre447;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre446 = ARCHnodes * sizeof(int);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre447 = malloc(_imopVarPre446);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ARCHglobalnode = (int *) _imopVarPre447;
    /*OUT: {
    Reverse<--,>}*/
    if (ARCHglobalnode == (int *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 2576_0;>}*/
        fprintf(__stderrp, "malloc failed for ARCHglobalnode\n");
        /*OUT: {
        Reverse<--, 2576_0;>}*/
        /*OUT: {
        Reverse<--, 2576_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 2576_0;>}*/
        /*OUT: {
        Reverse<--, 2576_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 2576_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre450;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre451;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre450 = ARCHnodes * sizeof(double *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre451 = malloc(_imopVarPre450);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ARCHcoord = (double **) _imopVarPre451;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2605_0;>}*/
    for (i = 0; i < ARCHnodes; i++) {
        /*OUT: {
        Reverse<--, 2605_0;>}*/
        unsigned long int _imopVarPre454;
        /*OUT: {
        Reverse<--, 2605_0;>}*/
        void *_imopVarPre455;
        /*OUT: {
        Reverse<--, 2605_0;>}*/
        _imopVarPre454 = 3 * sizeof(double);
        /*OUT: {
        Reverse<--, 2605_0;>}*/
        _imopVarPre455 = malloc(_imopVarPre454);
        /*OUT: {
        Reverse<--, 2605_0;>}*/
        /*OUT: {
        Reverse<--, 2605_0;>}*/
        ARCHcoord[i] = (double *) _imopVarPre455;
    }
    /*OUT: {
    Reverse<--, 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2633_1; 2621_0; 2605_1;>}*/
    for (i = 0; i < ARCHnodes; i++) {
        /*OUT: {
        Reverse<--, 2621_0; 2605_1;>}*/
        int *_imopVarPre457;
        /*OUT: {
        Reverse<--, 2621_0; 2605_1;>}*/
        _imopVarPre457 = &ARCHglobalnode[i];
        /*OUT: {
        Reverse<--, 2621_0; 2605_1;>}*/
        fscanf(packfile, "%d", _imopVarPre457);
        /*OUT: {
        Reverse<--, 2621_0; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2621_0; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2621_0; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2633_0; 2621_0; 2605_1;>}*/
        for (j = 0; j < ARCHmesh_dim; j++) {
            /*OUT: {
            Reverse<--, 2633_0; 2621_0; 2605_1;>}*/
            double *_imopVarPre459;
            /*OUT: {
            Reverse<--, 2633_0; 2621_0; 2605_1;>}*/
            _imopVarPre459 = &ARCHcoord[i][j];
            /*OUT: {
            Reverse<--, 2633_0; 2621_0; 2605_1;>}*/
            fscanf(packfile, "%lf", _imopVarPre459);
            /*OUT: {
            Reverse<--, 2633_0; 2621_0; 2605_1;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    if (!op->quiet) {
        /*OUT: {
        Reverse<--, 2645_0; 2621_1; 2605_1;>}*/
        fprintf(__stderrp, "quake: Reading elements.\n");
        /*OUT: {
        Reverse<--, 2645_0; 2621_1; 2605_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    int *_imopVarPre461;
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    _imopVarPre461 = &ARCHelems;
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    fscanf(packfile, "%d", _imopVarPre461);
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    unsigned long int _imopVarPre464;
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    void *_imopVarPre465;
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    _imopVarPre464 = ARCHelems * sizeof(int);
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    _imopVarPre465 = malloc(_imopVarPre464);
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    ARCHglobalelem = (int *) _imopVarPre465;
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    if (ARCHglobalelem == (int *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 2672_0; 2621_1; 2605_1;>}*/
        fprintf(__stderrp, "malloc failed for ARCHglobalelem\n");
        /*OUT: {
        Reverse<--, 2672_0; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2672_0; 2621_1; 2605_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 2672_0; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2672_0; 2621_1; 2605_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 2672_0; 2621_1; 2605_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    unsigned long int _imopVarPre468;
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    void *_imopVarPre469;
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    _imopVarPre468 = ARCHelems * sizeof(int *);
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    _imopVarPre469 = malloc(_imopVarPre468);
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    ARCHvertex = (int **) _imopVarPre469;
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2701_0; 2621_1; 2605_1;>}*/
    for (i = 0; i < ARCHelems; i++) {
        /*OUT: {
        Reverse<--, 2701_0; 2621_1; 2605_1;>}*/
        unsigned long int _imopVarPre472;
        /*OUT: {
        Reverse<--, 2701_0; 2621_1; 2605_1;>}*/
        void *_imopVarPre473;
        /*OUT: {
        Reverse<--, 2701_0; 2621_1; 2605_1;>}*/
        _imopVarPre472 = 4 * sizeof(int);
        /*OUT: {
        Reverse<--, 2701_0; 2621_1; 2605_1;>}*/
        _imopVarPre473 = malloc(_imopVarPre472);
        /*OUT: {
        Reverse<--, 2701_0; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2701_0; 2621_1; 2605_1;>}*/
        ARCHvertex[i] = (int *) _imopVarPre473;
    }
    /*OUT: {
    Reverse<--, 2701_1; 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2701_1; 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2729_1; 2717_0; 2701_1; 2621_1; 2605_1;>}*/
    for (i = 0; i < ARCHelems; i++) {
        /*OUT: {
        Reverse<--, 2717_0; 2701_1; 2621_1; 2605_1;>}*/
        int *_imopVarPre475;
        /*OUT: {
        Reverse<--, 2717_0; 2701_1; 2621_1; 2605_1;>}*/
        _imopVarPre475 = &ARCHglobalelem[i];
        /*OUT: {
        Reverse<--, 2717_0; 2701_1; 2621_1; 2605_1;>}*/
        fscanf(packfile, "%d", _imopVarPre475);
        /*OUT: {
        Reverse<--, 2717_0; 2701_1; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2717_0; 2701_1; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2717_0; 2701_1; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2729_0; 2717_0; 2701_1; 2621_1; 2605_1;>}*/
        for (j = 0; j < ARCHcorners; j++) {
            /*OUT: {
            Reverse<--, 2729_0; 2717_0; 2701_1; 2621_1; 2605_1;>}*/
            int *_imopVarPre477;
            /*OUT: {
            Reverse<--, 2729_0; 2717_0; 2701_1; 2621_1; 2605_1;>}*/
            _imopVarPre477 = &ARCHvertex[i][j];
            /*OUT: {
            Reverse<--, 2729_0; 2717_0; 2701_1; 2621_1; 2605_1;>}*/
            fscanf(packfile, "%d", _imopVarPre477);
            /*OUT: {
            Reverse<--, 2729_0; 2717_0; 2701_1; 2621_1; 2605_1;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    if (!op->quiet) {
        /*OUT: {
        Reverse<--, 2741_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        fprintf(__stderrp, "quake: Reading sparse matrix structure.\n");
        /*OUT: {
        Reverse<--, 2741_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    int *_imopVarPre480;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    int *_imopVarPre481;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    _imopVarPre480 = &ARCHcholeskylen;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    _imopVarPre481 = &ARCHmatrixlen;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    fscanf(packfile, "%d %d", _imopVarPre481, _imopVarPre480);
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    unsigned long int _imopVarPre484;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    void *_imopVarPre485;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    _imopVarPre484 = (ARCHmatrixlen + 1) * sizeof(int);
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    _imopVarPre485 = malloc(_imopVarPre484);
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    ARCHmatrixcol = (int *) _imopVarPre485;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    if (ARCHmatrixcol == (int *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 2772_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        fprintf(__stderrp, "malloc failed for ARCHmatrixcol\n");
        /*OUT: {
        Reverse<--, 2772_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2772_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 2772_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2772_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 2772_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    unsigned long int _imopVarPre488;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    void *_imopVarPre489;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    _imopVarPre488 = (ARCHnodes + 1) * sizeof(int);
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    _imopVarPre489 = malloc(_imopVarPre488);
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    ARCHmatrixindex = (int *) _imopVarPre489;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    if (ARCHmatrixindex == (int *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 2802_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        fprintf(__stderrp, "malloc failed for ARCHmatrixindex\n");
        /*OUT: {
        Reverse<--, 2802_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2802_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 2802_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2802_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 2802_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    }
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    oldrow = -1;
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    /*OUT: {
    Reverse<--, 2840_1; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    for (i = 0; i < ARCHmatrixlen; i++) {
        /*OUT: {
        Reverse<--, 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        int *_imopVarPre491;
        /*OUT: {
        Reverse<--, 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        _imopVarPre491 = &newrow;
        /*OUT: {
        Reverse<--, 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        fscanf(packfile, "%d", _imopVarPre491);
        /*OUT: {
        Reverse<--, 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        int *_imopVarPre493;
        /*OUT: {
        Reverse<--, 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        _imopVarPre493 = &ARCHmatrixcol[i];
        /*OUT: {
        Reverse<--, 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        fscanf(packfile, "%d", _imopVarPre493);
        /*OUT: {
        Reverse<--, 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        /*OUT: {
        Reverse<--, 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        while (oldrow < newrow) {
            /*OUT: {
            Reverse<--, 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
            if (oldrow + 1 >= ARCHnodes + 1) {
                /*OUT: {
                Reverse<--, 2841_0; 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
                int _imopVarPre496;
                /*OUT: {
                Reverse<--, 2841_0; 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
                int _imopVarPre497;
                /*OUT: {
                Reverse<--, 2841_0; 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
                _imopVarPre496 = ARCHnodes + 1;
                /*OUT: {
                Reverse<--, 2841_0; 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
                _imopVarPre497 = oldrow + 1;
                /*OUT: {
                Reverse<--, 2841_0; 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
                printf("quake: error: (1)idx buffer too small (%d >= %d)\n", _imopVarPre497, _imopVarPre496);
                /*OUT: {
                Reverse<--, 2841_0; 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
                /*OUT: {
                Reverse<--, 2841_0; 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
                arch_bail();
                /*OUT: {
                Reverse<--, 2841_0; 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
            }
            /*OUT: {
            Reverse<--, 2840_0; 2821_0; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
            ARCHmatrixindex[++oldrow] = i;
        }
    }
    /*OUT: {
    Reverse<--, 2821_1; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    while (oldrow < ARCHnodes) {
        /*OUT: {
        Reverse<--, 2861_0; 2821_1; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
        ARCHmatrixindex[++oldrow] = ARCHmatrixlen;
    }
    /*OUT: {
    Reverse<--, 2861_1; 2821_1; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    int *_imopVarPre500;
    /*OUT: {
    Reverse<--, 2861_1; 2821_1; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    int *_imopVarPre501;
    /*OUT: {
    Reverse<--, 2861_1; 2821_1; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    _imopVarPre500 = &temp2;
    /*OUT: {
    Reverse<--, 2861_1; 2821_1; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    _imopVarPre501 = &temp1;
    /*OUT: {
    Reverse<--, 2861_1; 2821_1; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
    fscanf(packfile, "%d %d", _imopVarPre501, _imopVarPre500);
    /*OUT: {
    Reverse<--, 2861_1; 2821_1; 2717_1; 2701_1; 2621_1; 2605_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void arch_init(int argc, char **argv , struct options *op) {
    /*OUT: {
    Reverse<--,>}*/
    arch_parsecommandline(argc, argv, op);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    packfile = __stdinp;
    /*OUT: {
    Reverse<--,>}*/
    readpackfile(packfile, op);
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
void smvp(int nodes, double ( *A )[3][3] , int *Acol , int *Aindex , double ( *v )[3] , double ( *w )[3]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int Anext;
    /*OUT: {
    Reverse<--,>}*/
    int Alast;
    /*OUT: {
    Reverse<--,>}*/
    int col;
    /*OUT: {
    Reverse<--,>}*/
    double sum0;
    /*OUT: {
    Reverse<--,>}*/
    double sum1;
    /*OUT: {
    Reverse<--,>}*/
    double sum2;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 2906_0;>}*/
    for (j = 0; j < numthreads; j++) {
#pragma omp parallel private(i)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<4444,>}*/
            /*OUT: {
            Reverse<4444,>}*/
            /*OUT: {
            Reverse<4444,>}*/
            for (i = 0; i < nodes; i++) {
                /*OUT: {
                Reverse<4444,>}*/
                w2[j][i] = 0;
            }
            /*OUT: {
            Reverse<4444,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<2917,>}*/
#pragma omp barrier
        }
    }
#pragma omp parallel private(my_cpu_id, i, Anext, Alast, col, sum0, sum1, sum2)
    {
        /*OUT: {
        Reverse<4452,>}*/
        my_cpu_id = 0;
#pragma omp for nowait
        /*OUT: {
        Reverse<4452,>}*/
        /*OUT: {
        Reverse<4452,>}*/
        /*OUT: {
        Reverse<4452, 2984_1;>}*/
        for (i = 0; i < nodes; i++) {
            /*OUT: {
            Reverse<4452,>}*/
            Anext = Aindex[i];
            /*OUT: {
            Reverse<4452,>}*/
            Alast = Aindex[i + 1];
            /*OUT: {
            Reverse<4452,>}*/
            sum0 = A[Anext][0][0] * v[i][0] + A[Anext][0][1] * v[i][1] + A[Anext][0][2] * v[i][2];
            /*OUT: {
            Reverse<4452,>}*/
            sum1 = A[Anext][1][0] * v[i][0] + A[Anext][1][1] * v[i][1] + A[Anext][1][2] * v[i][2];
            /*OUT: {
            Reverse<4452,>}*/
            sum2 = A[Anext][2][0] * v[i][0] + A[Anext][2][1] * v[i][1] + A[Anext][2][2] * v[i][2];
            /*OUT: {
            Reverse<4452,>}*/
            Anext++;
            /*OUT: {
            Reverse<4452,>}*/
            while (Anext < Alast) {
                /*OUT: {
                Reverse<4452, 2984_0;>}*/
                col = Acol[Anext];
                /*OUT: {
                Reverse<4452, 2984_0;>}*/
                sum0 += A[Anext][0][0] * v[col][0] + A[Anext][0][1] * v[col][1] + A[Anext][0][2] * v[col][2];
                /*OUT: {
                Reverse<4452, 2984_0;>}*/
                sum1 += A[Anext][1][0] * v[col][0] + A[Anext][1][1] * v[col][1] + A[Anext][1][2] * v[col][2];
                /*OUT: {
                Reverse<4452, 2984_0;>}*/
                sum2 += A[Anext][2][0] * v[col][0] + A[Anext][2][1] * v[col][1] + A[Anext][2][2] * v[col][2];
                /*OUT: {
                Reverse<4452, 2984_0;>}*/
                if (w2[my_cpu_id][col] == 0) {
                    /*OUT: {
                    Reverse<4452, 3041_0; 2984_0;>}*/
                    w2[my_cpu_id][col] = 1;
                    /*OUT: {
                    Reverse<4452, 3041_0; 2984_0;>}*/
                    w1[my_cpu_id][col].first = 0.0;
                    /*OUT: {
                    Reverse<4452, 3041_0; 2984_0;>}*/
                    w1[my_cpu_id][col].second = 0.0;
                    /*OUT: {
                    Reverse<4452, 3041_0; 2984_0;>}*/
                    w1[my_cpu_id][col].third = 0.0;
                }
                /*OUT: {
                Reverse<4452, 2984_0;>}*/
                w1[my_cpu_id][col].first += A[Anext][0][0] * v[i][0] + A[Anext][1][0] * v[i][1] + A[Anext][2][0] * v[i][2];
                /*OUT: {
                Reverse<4452, 2984_0;>}*/
                w1[my_cpu_id][col].second += A[Anext][0][1] * v[i][0] + A[Anext][1][1] * v[i][1] + A[Anext][2][1] * v[i][2];
                /*OUT: {
                Reverse<4452, 2984_0;>}*/
                w1[my_cpu_id][col].third += A[Anext][0][2] * v[i][0] + A[Anext][1][2] * v[i][1] + A[Anext][2][2] * v[i][2];
                /*OUT: {
                Reverse<4452, 2984_0;>}*/
                Anext++;
            }
            /*OUT: {
            Reverse<4452, 2984_1;>}*/
            if (w2[my_cpu_id][i] == 0) {
                /*OUT: {
                Reverse<4452, 3119_0; 2984_1;>}*/
                w2[my_cpu_id][i] = 1;
                /*OUT: {
                Reverse<4452, 3119_0; 2984_1;>}*/
                w1[my_cpu_id][i].first = 0.0;
                /*OUT: {
                Reverse<4452, 3119_0; 2984_1;>}*/
                w1[my_cpu_id][i].second = 0.0;
                /*OUT: {
                Reverse<4452, 3119_0; 2984_1;>}*/
                w1[my_cpu_id][i].third = 0.0;
            }
            /*OUT: {
            Reverse<4452, 2984_1;>}*/
            w1[my_cpu_id][i].first += sum0;
            /*OUT: {
            Reverse<4452, 2984_1;>}*/
            w1[my_cpu_id][i].second += sum1;
            /*OUT: {
            Reverse<4452, 2984_1;>}*/
            w1[my_cpu_id][i].third += sum2;
        }
        /*OUT: {
        Reverse<4452,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<3148,>}*/
#pragma omp barrier
    }
#pragma omp parallel private(j)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<4472,>}*/
        /*OUT: {
        Reverse<4472,>}*/
        /*OUT: {
        Reverse<4472, 3155_1;>}*/
        for (i = 0; i < nodes; i++) {
            /*OUT: {
            Reverse<4472,>}*/
            /*OUT: {
            Reverse<4472,>}*/
            /*OUT: {
            Reverse<4472, 3155_0;>}*/
            for (j = 0; j < numthreads; j++) {
                /*OUT: {
                Reverse<4472, 3155_0;>}*/
                if (w2[j][i]) {
                    /*OUT: {
                    Reverse<4472, 3159_0; 3155_0;>}*/
                    w[i][0] += w1[j][i].first;
                    /*OUT: {
                    Reverse<4472, 3159_0; 3155_0;>}*/
                    w[i][1] += w1[j][i].second;
                    /*OUT: {
                    Reverse<4472, 3159_0; 3155_0;>}*/
                    w[i][2] += w1[j][i].third;
                }
            }
        }
        /*OUT: {
        Reverse<4472,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<3178,>}*/
#pragma omp barrier
    }
}
void mem_init() {
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
    unsigned long int _imopVarPre504;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre505;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre504 = ARCHnodes * sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre505 = malloc(_imopVarPre504);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    nodekindf = (double *) _imopVarPre505;
    /*OUT: {
    Reverse<--,>}*/
    if (nodekindf == (double *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3195_0;>}*/
        fprintf(__stderrp, "malloc failed for nodekindf\n");
        /*OUT: {
        Reverse<--, 3195_0;>}*/
        /*OUT: {
        Reverse<--, 3195_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3195_0;>}*/
        /*OUT: {
        Reverse<--, 3195_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3195_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre508;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre509;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre508 = ARCHnodes * sizeof(int);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre509 = malloc(_imopVarPre508);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    nodekind = (int *) _imopVarPre509;
    /*OUT: {
    Reverse<--,>}*/
    if (nodekind == (int *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3224_0;>}*/
        fprintf(__stderrp, "malloc failed for nodekind\n");
        /*OUT: {
        Reverse<--, 3224_0;>}*/
        /*OUT: {
        Reverse<--, 3224_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3224_0;>}*/
        /*OUT: {
        Reverse<--, 3224_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3224_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre512;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre513;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre512 = ARCHelems * sizeof(int);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre513 = malloc(_imopVarPre512);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    source_elms = (int *) _imopVarPre513;
    /*OUT: {
    Reverse<--,>}*/
    if (source_elms == (int *) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3253_0;>}*/
        fprintf(__stderrp, "malloc failed for source_elms\n");
        /*OUT: {
        Reverse<--, 3253_0;>}*/
        /*OUT: {
        Reverse<--, 3253_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3253_0;>}*/
        /*OUT: {
        Reverse<--, 3253_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3253_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre516;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre517;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre516 = ARCHnodes * sizeof(double [3]);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre517 = malloc(_imopVarPre516);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    vel = (double (*)[3]) _imopVarPre517;
    /*OUT: {
    Reverse<--,>}*/
    if (vel == (double (*)[3]) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3282_0;>}*/
        fprintf(__stderrp, "malloc failed for vel\n");
        /*OUT: {
        Reverse<--, 3282_0;>}*/
        /*OUT: {
        Reverse<--, 3282_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3282_0;>}*/
        /*OUT: {
        Reverse<--, 3282_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3282_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre520;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre521;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre520 = ARCHnodes * sizeof(double [3]);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre521 = malloc(_imopVarPre520);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    M = (double (*)[3]) _imopVarPre521;
    /*OUT: {
    Reverse<--,>}*/
    if (M == (double (*)[3]) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3311_0;>}*/
        fprintf(__stderrp, "malloc failed for M\n");
        /*OUT: {
        Reverse<--, 3311_0;>}*/
        /*OUT: {
        Reverse<--, 3311_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3311_0;>}*/
        /*OUT: {
        Reverse<--, 3311_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3311_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre524;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre525;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre524 = ARCHnodes * sizeof(double [3]);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre525 = malloc(_imopVarPre524);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    C = (double (*)[3]) _imopVarPre525;
    /*OUT: {
    Reverse<--,>}*/
    if (C == (double (*)[3]) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3340_0;>}*/
        fprintf(__stderrp, "malloc failed for C\n");
        /*OUT: {
        Reverse<--, 3340_0;>}*/
        /*OUT: {
        Reverse<--, 3340_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3340_0;>}*/
        /*OUT: {
        Reverse<--, 3340_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3340_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre528;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre529;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre528 = ARCHnodes * sizeof(double [3]);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre529 = malloc(_imopVarPre528);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    M23 = (double (*)[3]) _imopVarPre529;
    /*OUT: {
    Reverse<--,>}*/
    if (M23 == (double (*)[3]) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3369_0;>}*/
        fprintf(__stderrp, "malloc failed for M23\n");
        /*OUT: {
        Reverse<--, 3369_0;>}*/
        /*OUT: {
        Reverse<--, 3369_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3369_0;>}*/
        /*OUT: {
        Reverse<--, 3369_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3369_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre532;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre533;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre532 = ARCHnodes * sizeof(double [3]);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre533 = malloc(_imopVarPre532);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    C23 = (double (*)[3]) _imopVarPre533;
    /*OUT: {
    Reverse<--,>}*/
    if (C23 == (double (*)[3]) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3398_0;>}*/
        fprintf(__stderrp, "malloc failed for C23\n");
        /*OUT: {
        Reverse<--, 3398_0;>}*/
        /*OUT: {
        Reverse<--, 3398_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3398_0;>}*/
        /*OUT: {
        Reverse<--, 3398_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3398_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre536;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre537;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre536 = ARCHnodes * sizeof(double [3]);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre537 = malloc(_imopVarPre536);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    V23 = (double (*)[3]) _imopVarPre537;
    /*OUT: {
    Reverse<--,>}*/
    if (V23 == (double (*)[3]) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3427_0;>}*/
        fprintf(__stderrp, "malloc failed for V23\n");
        /*OUT: {
        Reverse<--, 3427_0;>}*/
        /*OUT: {
        Reverse<--, 3427_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3427_0;>}*/
        /*OUT: {
        Reverse<--, 3427_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3427_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre540;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre541;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre540 = numthreads * sizeof(struct smallarray_s *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre541 = malloc(_imopVarPre540);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    w1 = (smallarray_t **) _imopVarPre541;
    /*OUT: {
    Reverse<--,>}*/
    if (w1 == (smallarray_t **) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3456_0;>}*/
        fprintf(__stderrp, "malloc failed for w1\n");
        /*OUT: {
        Reverse<--, 3456_0;>}*/
        /*OUT: {
        Reverse<--, 3456_0;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3456_0;>}*/
        /*OUT: {
        Reverse<--, 3456_0;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3456_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 3473_0;>}*/
    for (i = 0; i < numthreads; i++) {
        /*OUT: {
        Reverse<--, 3473_0;>}*/
        unsigned long int _imopVarPre544;
        /*OUT: {
        Reverse<--, 3473_0;>}*/
        void *_imopVarPre545;
        /*OUT: {
        Reverse<--, 3473_0;>}*/
        _imopVarPre544 = ARCHnodes * sizeof(smallarray_t);
        /*OUT: {
        Reverse<--, 3473_0;>}*/
        _imopVarPre545 = malloc(_imopVarPre544);
        /*OUT: {
        Reverse<--, 3473_0;>}*/
        /*OUT: {
        Reverse<--, 3473_0;>}*/
        w1[i] = (smallarray_t *) _imopVarPre545;
        /*OUT: {
        Reverse<--, 3473_0;>}*/
        if (w1[i] == (smallarray_t *) ((void *) 0)) {
            /*OUT: {
            Reverse<--, 3490_0; 3473_0;>}*/
            fprintf(__stderrp, "malloc failed for w1[%d]\n", i);
            /*OUT: {
            Reverse<--, 3490_0; 3473_0;>}*/
            /*OUT: {
            Reverse<--, 3490_0; 3473_0;>}*/
            fflush(__stderrp);
            /*OUT: {
            Reverse<--, 3490_0; 3473_0;>}*/
            /*OUT: {
            Reverse<--, 3490_0; 3473_0;>}*/
            exit(0);
            /*OUT: {
            Reverse<--, 3490_0; 3473_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3507_0; 3473_1;>}*/
    for (j = 0; j < numthreads; j++) {
#pragma omp parallel private(i)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<4545,>}*/
            /*OUT: {
            Reverse<4545,>}*/
            /*OUT: {
            Reverse<4545,>}*/
            for (i = 0; i < ARCHnodes; i++) {
                /*OUT: {
                Reverse<4545,>}*/
                w1[j][i].first = 0.0;
                /*OUT: {
                Reverse<4545,>}*/
                w1[j][i].second = 0.0;
                /*OUT: {
                Reverse<4545,>}*/
                w1[j][i].third = 0.0;
            }
            /*OUT: {
            Reverse<4545,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<3526,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<--, 3507_1; 3473_1;>}*/
    unsigned long int _imopVarPre548;
    /*OUT: {
    Reverse<--, 3507_1; 3473_1;>}*/
    void *_imopVarPre549;
    /*OUT: {
    Reverse<--, 3507_1; 3473_1;>}*/
    _imopVarPre548 = numthreads * sizeof(int *);
    /*OUT: {
    Reverse<--, 3507_1; 3473_1;>}*/
    _imopVarPre549 = malloc(_imopVarPre548);
    /*OUT: {
    Reverse<--, 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3507_1; 3473_1;>}*/
    w2 = (int **) _imopVarPre549;
    /*OUT: {
    Reverse<--, 3507_1; 3473_1;>}*/
    if (w2 == (int **) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3540_0; 3507_1; 3473_1;>}*/
        fprintf(__stderrp, "malloc failed for w2\n");
        /*OUT: {
        Reverse<--, 3540_0; 3507_1; 3473_1;>}*/
        /*OUT: {
        Reverse<--, 3540_0; 3507_1; 3473_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3540_0; 3507_1; 3473_1;>}*/
        /*OUT: {
        Reverse<--, 3540_0; 3507_1; 3473_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3540_0; 3507_1; 3473_1;>}*/
    }
    /*OUT: {
    Reverse<--, 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3557_0; 3507_1; 3473_1;>}*/
    for (i = 0; i < numthreads; i++) {
        /*OUT: {
        Reverse<--, 3557_0; 3507_1; 3473_1;>}*/
        unsigned long int _imopVarPre552;
        /*OUT: {
        Reverse<--, 3557_0; 3507_1; 3473_1;>}*/
        void *_imopVarPre553;
        /*OUT: {
        Reverse<--, 3557_0; 3507_1; 3473_1;>}*/
        _imopVarPre552 = ARCHnodes * sizeof(int);
        /*OUT: {
        Reverse<--, 3557_0; 3507_1; 3473_1;>}*/
        _imopVarPre553 = malloc(_imopVarPre552);
        /*OUT: {
        Reverse<--, 3557_0; 3507_1; 3473_1;>}*/
        /*OUT: {
        Reverse<--, 3557_0; 3507_1; 3473_1;>}*/
        w2[i] = (int *) _imopVarPre553;
        /*OUT: {
        Reverse<--, 3557_0; 3507_1; 3473_1;>}*/
        if (w2[i] == (int *) ((void *) 0)) {
            /*OUT: {
            Reverse<--, 3574_0; 3557_0; 3507_1; 3473_1;>}*/
            fprintf(__stderrp, "malloc failed for w2[%d]\n", i);
            /*OUT: {
            Reverse<--, 3574_0; 3557_0; 3507_1; 3473_1;>}*/
            /*OUT: {
            Reverse<--, 3574_0; 3557_0; 3507_1; 3473_1;>}*/
            fflush(__stderrp);
            /*OUT: {
            Reverse<--, 3574_0; 3557_0; 3507_1; 3473_1;>}*/
            /*OUT: {
            Reverse<--, 3574_0; 3557_0; 3507_1; 3473_1;>}*/
            exit(0);
            /*OUT: {
            Reverse<--, 3574_0; 3557_0; 3507_1; 3473_1;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 3557_1; 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3557_1; 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3591_0; 3557_1; 3507_1; 3473_1;>}*/
    for (j = 0; j < numthreads; j++) {
#pragma omp parallel private(i)
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<4569,>}*/
            /*OUT: {
            Reverse<4569,>}*/
            /*OUT: {
            Reverse<4569,>}*/
            for (i = 0; i < ARCHnodes; i++) {
                /*OUT: {
                Reverse<4569,>}*/
                w2[j][i] = 0;
            }
            /*OUT: {
            Reverse<4569,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<3602,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<--, 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    unsigned long int _imopVarPre556;
    /*OUT: {
    Reverse<--, 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    void *_imopVarPre557;
    /*OUT: {
    Reverse<--, 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    _imopVarPre556 = 3 * sizeof(double (*)[3]);
    /*OUT: {
    Reverse<--, 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    _imopVarPre557 = malloc(_imopVarPre556);
    /*OUT: {
    Reverse<--, 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    disp = (double (**)[3]) _imopVarPre557;
    /*OUT: {
    Reverse<--, 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    if (disp == (double (**)[3]) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3616_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        fprintf(__stderrp, "malloc failed for disp\n");
        /*OUT: {
        Reverse<--, 3616_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        /*OUT: {
        Reverse<--, 3616_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3616_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        /*OUT: {
        Reverse<--, 3616_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3616_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    }
    /*OUT: {
    Reverse<--, 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        unsigned long int _imopVarPre560;
        /*OUT: {
        Reverse<--, 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        void *_imopVarPre561;
        /*OUT: {
        Reverse<--, 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        _imopVarPre560 = ARCHnodes * sizeof(double [3]);
        /*OUT: {
        Reverse<--, 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        _imopVarPre561 = malloc(_imopVarPre560);
        /*OUT: {
        Reverse<--, 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        /*OUT: {
        Reverse<--, 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        disp[i] = (double (*)[3]) _imopVarPre561;
        /*OUT: {
        Reverse<--, 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        if (disp[i] == (double (*)[3]) ((void *) 0)) {
            /*OUT: {
            Reverse<--, 3650_0; 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
            fprintf(__stderrp, "malloc failed for disp[%d]\n", i);
            /*OUT: {
            Reverse<--, 3650_0; 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
            /*OUT: {
            Reverse<--, 3650_0; 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
            fflush(__stderrp);
            /*OUT: {
            Reverse<--, 3650_0; 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
            /*OUT: {
            Reverse<--, 3650_0; 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
            exit(0);
            /*OUT: {
            Reverse<--, 3650_0; 3633_0; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        }
    }
    /*OUT: {
    Reverse<--, 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    unsigned long int _imopVarPre564;
    /*OUT: {
    Reverse<--, 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    void *_imopVarPre565;
    /*OUT: {
    Reverse<--, 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    _imopVarPre564 = ARCHmatrixlen * sizeof(double [3][3]);
    /*OUT: {
    Reverse<--, 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    _imopVarPre565 = malloc(_imopVarPre564);
    /*OUT: {
    Reverse<--, 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    K = (double (*)[3][3]) _imopVarPre565;
    /*OUT: {
    Reverse<--, 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    if (K == (double (*)[3][3]) ((void *) 0)) {
        /*OUT: {
        Reverse<--, 3679_0; 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        fprintf(__stderrp, "malloc failed for K\n");
        /*OUT: {
        Reverse<--, 3679_0; 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        /*OUT: {
        Reverse<--, 3679_0; 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        fflush(__stderrp);
        /*OUT: {
        Reverse<--, 3679_0; 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        /*OUT: {
        Reverse<--, 3679_0; 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        exit(0);
        /*OUT: {
        Reverse<--, 3679_0; 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    }
#pragma omp parallel private(j)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<4593,>}*/
        /*OUT: {
        Reverse<4593,>}*/
        /*OUT: {
        Reverse<4593, 3704_1;>}*/
        for (i = 0; i < ARCHnodes; i++) {
            /*OUT: {
            Reverse<4593,>}*/
            nodekind[i] = 0;
            /*OUT: {
            Reverse<4593,>}*/
            /*OUT: {
            Reverse<4593,>}*/
            /*OUT: {
            Reverse<4593, 3704_0;>}*/
            for (j = 0; j < 3; j++) {
                /*OUT: {
                Reverse<4593, 3704_0;>}*/
                M[i][j] = 0.0;
                /*OUT: {
                Reverse<4593, 3704_0;>}*/
                C[i][j] = 0.0;
                /*OUT: {
                Reverse<4593, 3704_0;>}*/
                M23[i][j] = 0.0;
                /*OUT: {
                Reverse<4593, 3704_0;>}*/
                C23[i][j] = 0.0;
                /*OUT: {
                Reverse<4593, 3704_0;>}*/
                V23[i][j] = 0.0;
                /*OUT: {
                Reverse<4593, 3704_0;>}*/
                disp[0][i][j] = 0.0;
                /*OUT: {
                Reverse<4593, 3704_0;>}*/
                disp[1][i][j] = 0.0;
                /*OUT: {
                Reverse<4593, 3704_0;>}*/
                disp[2][i][j] = 0.0;
            }
        }
        /*OUT: {
        Reverse<4593,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<3741,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--, 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    /*OUT: {
    Reverse<--, 3743_0; 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
    for (i = 0; i < ARCHelems; i++) {
        /*OUT: {
        Reverse<--, 3743_0; 3633_1; 3591_1; 3557_1; 3507_1; 3473_1;>}*/
        source_elms[i] = 1;
    }
#pragma omp parallel private(j, k)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<4609,>}*/
        /*OUT: {
        Reverse<4609,>}*/
        /*OUT: {
        Reverse<4609, 3754_1;>}*/
        for (i = 0; i < ARCHmatrixlen; i++) {
            /*OUT: {
            Reverse<4609,>}*/
            /*OUT: {
            Reverse<4609,>}*/
            /*OUT: {
            Reverse<4609, 3757_1; 3754_0;>}*/
            for (j = 0; j < 3; j++) {
                /*OUT: {
                Reverse<4609, 3754_0;>}*/
                /*OUT: {
                Reverse<4609, 3754_0;>}*/
                /*OUT: {
                Reverse<4609, 3757_0; 3754_0;>}*/
                for (k = 0; k < 3; k++) {
                    /*OUT: {
                    Reverse<4609, 3757_0; 3754_0;>}*/
                    K[i][j][k] = 0.0;
                }
            }
        }
        /*OUT: {
        Reverse<4609,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<3764,>}*/
#pragma omp barrier
    }
}
