
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
WRITE_S: [__stdinp]*/
extern FILE *__stdinp;
/*READ_S: []
WRITE_S: [__stdoutp]*/
extern FILE *__stdoutp;
/*READ_S: []
WRITE_S: [__stderrp]*/
extern FILE *__stderrp;
/*READ_S: []
WRITE_S: [fflush]*/
int fflush(FILE *);
/*READ_S: []
WRITE_S: [fprintf]*/
int fprintf(FILE *restrict , const char *restrict , ...);
/*READ_S: []
WRITE_S: [fscanf]*/
int fscanf(FILE *restrict , const char *restrict , ...);
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [exit]*/
void exit(int );
/*READ_S: []
WRITE_S: [free]*/
void free(void *);
/*READ_S: []
WRITE_S: [malloc]*/
void *malloc(size_t __size);
/*READ_S: []
WRITE_S: [cos]*/
extern double cos(double );
/*READ_S: []
WRITE_S: [sin]*/
extern double sin(double );
/*READ_S: []
WRITE_S: [sqrt]*/
extern double sqrt(double );
/*READ_S: []
WRITE_S: []*/
struct options {
    int quiet;
    int help;
} ;
/*READ_S: []
WRITE_S: []*/
struct excitation {
    double dt;
    double duration;
    double t0;
} ;
/*READ_S: []
WRITE_S: []*/
struct damping {
    double zeta, consta , constb , freq;
} ;
/*READ_S: []
WRITE_S: []*/
struct properties {
    double cp;
    double cs;
    double den;
} ;
/*READ_S: []
WRITE_S: []*/
struct source {
    double dip, strike , rake , fault;
    double xyz[3];
    double epixyz[3];
    int sourcenode;
    int epicenternode;
} ;
/*READ_S: []
WRITE_S: []*/
struct smallarray_s {
    double first;
    double second;
    double third;
    double pad;
} ;
/*READ_S: []
WRITE_S: []*/
typedef struct smallarray_s smallarray_t;
/*READ_S: []
WRITE_S: [options]*/
struct options options;
/*READ_S: []
WRITE_S: [packfile]*/
FILE *packfile;
/*READ_S: []
WRITE_S: [ARCHnodes]*/
int ARCHnodes;
/*READ_S: []
WRITE_S: [ARCHpriv]*/
int ARCHpriv;
/*READ_S: []
WRITE_S: [ARCHmine]*/
int ARCHmine;
/*READ_S: []
WRITE_S: [ARCHelems]*/
int ARCHelems;
/*READ_S: []
WRITE_S: [ARCHglobalnodes]*/
int ARCHglobalnodes;
/*READ_S: []
WRITE_S: [ARCHmesh_dim]*/
int ARCHmesh_dim;
/*READ_S: []
WRITE_S: [ARCHglobalelems]*/
int ARCHglobalelems;
/*READ_S: []
WRITE_S: [ARCHcorners]*/
int ARCHcorners;
/*READ_S: []
WRITE_S: [ARCHsubdomains]*/
int ARCHsubdomains;
/*READ_S: []
WRITE_S: [ARCHduration]*/
double ARCHduration;
/*READ_S: []
WRITE_S: [ARCHmatrixlen]*/
int ARCHmatrixlen;
/*READ_S: []
WRITE_S: [ARCHcholeskylen]*/
int ARCHcholeskylen;
/*READ_S: []
WRITE_S: [ARCHglobalnode]*/
int *ARCHglobalnode;
/*READ_S: []
WRITE_S: [ARCHglobalelem]*/
int *ARCHglobalelem;
/*READ_S: []
WRITE_S: [ARCHcoord]*/
double **ARCHcoord;
/*READ_S: []
WRITE_S: [ARCHvertex]*/
int **ARCHvertex;
/*READ_S: []
WRITE_S: [ARCHmatrixcol]*/
int *ARCHmatrixcol;
/*READ_S: []
WRITE_S: [ARCHmatrixindex]*/
int *ARCHmatrixindex;
/*READ_S: []
WRITE_S: [arch_init]*/
void arch_init(int argc, char **argv , struct options *op);
/*READ_S: []
WRITE_S: [mem_init]*/
void mem_init(void );
/*READ_S: []
WRITE_S: [arch_readnodevector]*/
void arch_readnodevector(double *v, int n);
/*READ_S: []
WRITE_S: [slip]*/
void slip(double *u, double *v , double *w);
/*READ_S: []
WRITE_S: [distance]*/
double distance(double p1[], double p2[]);
/*READ_S: []
WRITE_S: [centroid]*/
void centroid(double x[][3], double xc[]);
/*READ_S: []
WRITE_S: [point2fault]*/
double point2fault(double x[]);
/*READ_S: []
WRITE_S: [abe_matrix]*/
void abe_matrix(double vertices[][3], int bv[] , struct properties *prop , double Ce[]);
/*READ_S: []
WRITE_S: [element_matrices]*/
void element_matrices(double vertices[][3], struct properties *prop , double Ke[][12] , double Me[]);
/*READ_S: []
WRITE_S: [vv12x12]*/
void vv12x12(double v1[], double v2[] , double u[]);
/*READ_S: []
WRITE_S: [mv12x12]*/
void mv12x12(double m[][12], double v[]);
/*READ_S: []
WRITE_S: [smvp]*/
void smvp(int nodes, double ( *A )[3][3] , int *Acol , int *Aindex , double ( *v )[3] , double ( *w )[3]);
/*READ_S: []
WRITE_S: [phi0]*/
double phi0(double t);
/*READ_S: []
WRITE_S: [phi1]*/
double phi1(double t);
/*READ_S: []
WRITE_S: [phi2]*/
double phi2(double t);
/*READ_S: []
WRITE_S: [nodekind]*/
int *nodekind;
/*READ_S: []
WRITE_S: [nodekindf]*/
double *nodekindf;
/*READ_S: []
WRITE_S: [source_elms]*/
int *source_elms;
/*READ_S: []
WRITE_S: [M]*/
double ( *M )[3];
/*READ_S: []
WRITE_S: [C]*/
double ( *C )[3];
/*READ_S: []
WRITE_S: [M23]*/
double ( *M23 )[3];
/*READ_S: []
WRITE_S: [C23]*/
double ( *C23 )[3];
/*READ_S: []
WRITE_S: [V23]*/
double ( *V23 )[3];
/*READ_S: []
WRITE_S: [vel]*/
double ( *vel )[3];
/*READ_S: []
WRITE_S: [disp]*/
double ( **disp )[3];
/*READ_S: []
WRITE_S: [K]*/
double ( *K )[3][3];
/*READ_S: []
WRITE_S: [w1]*/
smallarray_t **w1;
/*READ_S: []
WRITE_S: [w2]*/
int **w2;
/*READ_S: []
WRITE_S: [my_cpu_id]*/
int my_cpu_id;
/*READ_S: []
WRITE_S: [numthreads]*/
int numthreads;
/*READ_S: []
WRITE_S: [Src]*/
struct source Src;
/*READ_S: []
WRITE_S: [Exc]*/
struct excitation Exc;
/*READ_S: []
WRITE_S: [Damp]*/
struct damping Damp;
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [_imopVarPre194, heapCell#11, &ARCHpriv, v, sqrt, heapCell#5, temp2, ARCHglobalelems, heapCell#13, _imopVarPre213, &heapCell#3, M23, fflush, &ARCHmine, M, ARCHduration, _imopVarPre407, heapCell#19, malloc, &ARCHglobalnodes, heapCell#22, _imopVarPre222, point2fault, w, &heapCell#1, heapCell#23, slip, temp1, mv12x12, get_Enu, heapCell#3, ARCHcholeskylen, __stdinp, ARCHglobalelem, source_elms, &ARCHmatrixlen, Me.f, bigdist1, time, readpackfile, &options, Aindex, C23, heapCell#21, centroid, K, vertices.f, Src, element_matrices, C, printf, bigdist2, &heapCell#24, &ARCHduration, numthreads, heapCell#4, ARCHglobalnodes, &ARCHelems, heapCell#16, ARCHmesh_dim, free, ARCHcoord, abe_matrix, heapCell#6, arch_info, &heapCell#5, Acol, disptminus, V23, heapCell#15, Damp, exit, packfile, nodekindf, i, ARCHmatrixindex, heapCell#20, ARCHcorners, phi2, jacobian.f, disp, __stderrp, arch_init, &ARCHnodes, fscanf, w2, __stdoutp, heapCell#2, nodekind, ARCHelems, j, heapCell#7, arch_bail, ARCHglobalnode, ARCHvertex, heapCell#17, shape_ders, A, dispt, mem_init, _imopVarPre204, distance, vel, area_triangle, heapCell#9, Ke.f, heapCell#0, w1, free_prop, Exc, &ARCHmesh_dim, Ce.f, i, heapCell#14, ARCHsubdomains, ARCHpriv, v.f, &ARCHglobalelems, &ARCHcorners, phi0, i, cos, heapCell#10, ARCHmine, heapCell#12, disptplus, fprintf, ARCHnodes, &heapCell#7, arch_parsecommandline, heapCell#8, nodes, c0.f, xc.f, sin, heapCell#27, j, nullCell, heapCell#28, phi1, &ARCHcholeskylen, heapCell#25, arch_readnodevector, ARCHmatrixcol, &heapCell#23, ARCHmatrixlen, vv12x12, heapCell#1, inv_J, smvp, options, heapCell#24, &ARCHsubdomains, heapCell#26, heapCell#18]
WRITE_S: [packfile, heapCell#5, nodekindf, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, uf.f, jacobian.f, disp, M23, w2, ARCHduration, M, heapCell#19, heapCell#2, nodekind, ARCHelems, heapCell#7, Cexv.f, heapCell#22, ARCHglobalnode, ARCHvertex, heapCell#17, heapCell#23, heapCell#3, ARCHcholeskylen, ARCHglobalelem, vel, heapCell#9, source_elms, w1, Exc, ARCHsubdomains, C23, ARCHpriv, K, Src, C, ARCHmine, ARCHnodes, heapCell#8, numthreads, heapCell#4, ARCHglobalnodes, heapCell#16, ARCHmesh_dim, heapCell#27, nullCell, heapCell#28, ARCHcoord, heapCell#25, heapCell#6, free_alpha, Mexv.f, ARCHmatrixcol, ARCHmatrixlen, heapCell#1, V23, Damp, options, heapCell#24, heapCell#26, heapCell#18]*/
int main(int argc, char **argv) {
/*READ_S: [_imopVarPre194, heapCell#11, &ARCHpriv, v, sqrt, heapCell#5, temp2, ARCHglobalelems, heapCell#13, _imopVarPre213, &heapCell#3, M23, fflush, &ARCHmine, M, ARCHduration, _imopVarPre407, heapCell#19, malloc, &ARCHglobalnodes, heapCell#22, _imopVarPre222, point2fault, w, &heapCell#1, heapCell#23, slip, temp1, mv12x12, get_Enu, heapCell#3, ARCHcholeskylen, __stdinp, ARCHglobalelem, source_elms, &ARCHmatrixlen, Me.f, bigdist1, time, readpackfile, &options, Aindex, C23, heapCell#21, centroid, K, vertices.f, Src, element_matrices, C, printf, bigdist2, &heapCell#24, &ARCHduration, numthreads, heapCell#4, ARCHglobalnodes, &ARCHelems, heapCell#16, ARCHmesh_dim, free, ARCHcoord, abe_matrix, heapCell#6, arch_info, &heapCell#5, Acol, disptminus, V23, heapCell#15, Damp, exit, packfile, nodekindf, i, ARCHmatrixindex, heapCell#20, ARCHcorners, phi2, jacobian.f, disp, __stderrp, arch_init, &ARCHnodes, fscanf, w2, __stdoutp, heapCell#2, nodekind, ARCHelems, j, heapCell#7, arch_bail, ARCHglobalnode, ARCHvertex, heapCell#17, shape_ders, A, dispt, mem_init, _imopVarPre204, distance, vel, area_triangle, heapCell#9, Ke.f, heapCell#0, w1, free_prop, Exc, &ARCHmesh_dim, Ce.f, i, heapCell#14, ARCHsubdomains, ARCHpriv, v.f, &ARCHglobalelems, &ARCHcorners, phi0, i, cos, heapCell#10, ARCHmine, heapCell#12, disptplus, fprintf, ARCHnodes, &heapCell#7, arch_parsecommandline, heapCell#8, nodes, c0.f, xc.f, sin, heapCell#27, j, nullCell, heapCell#28, phi1, &ARCHcholeskylen, heapCell#25, arch_readnodevector, ARCHmatrixcol, &heapCell#23, ARCHmatrixlen, vv12x12, heapCell#1, inv_J, smvp, options, heapCell#24, &ARCHsubdomains, heapCell#26, heapCell#18]
WRITE_S: [packfile, heapCell#5, nodekindf, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, uf.f, jacobian.f, disp, M23, w2, ARCHduration, M, heapCell#19, heapCell#2, nodekind, ARCHelems, heapCell#7, Cexv.f, heapCell#22, ARCHglobalnode, ARCHvertex, heapCell#17, heapCell#23, heapCell#3, ARCHcholeskylen, ARCHglobalelem, vel, heapCell#9, source_elms, w1, Exc, ARCHsubdomains, C23, ARCHpriv, K, Src, C, ARCHmine, ARCHnodes, heapCell#8, numthreads, heapCell#4, ARCHglobalnodes, heapCell#16, ARCHmesh_dim, heapCell#27, nullCell, heapCell#28, ARCHcoord, heapCell#25, heapCell#6, free_alpha, Mexv.f, ARCHmatrixcol, ARCHmatrixlen, heapCell#1, V23, Damp, options, heapCell#24, heapCell#26, heapCell#18]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    int ii;
    /*READ_S: []
    WRITE_S: []*/
    int jj;
    /*READ_S: []
    WRITE_S: []*/
    int kk;
    /*READ_S: []
    WRITE_S: []*/
    int iter;
    /*READ_S: []
    WRITE_S: []*/
    int timesteps;
    /*READ_S: []
    WRITE_S: []*/
    int disptplus;
    /*READ_S: []
    WRITE_S: []*/
    int dispt;
    /*READ_S: []
    WRITE_S: []*/
    int disptminus;
    /*READ_S: []
    WRITE_S: []*/
    int verticesonbnd;
    /*READ_S: []
    WRITE_S: []*/
    int cor[4];
    /*READ_S: []
    WRITE_S: []*/
    int bv[4];
    /*READ_S: []
    WRITE_S: []*/
    int Step_stride;
    /*READ_S: []
    WRITE_S: []*/
    int *temp1;
    /*READ_S: []
    WRITE_S: []*/
    int *temp2;
    /*READ_S: []
    WRITE_S: []*/
    double time;
    /*READ_S: []
    WRITE_S: []*/
    double Ke[12][12];
    /*READ_S: []
    WRITE_S: []*/
    double Me[12];
    /*READ_S: []
    WRITE_S: []*/
    double Ce[12];
    /*READ_S: []
    WRITE_S: []*/
    double Mexv[12];
    /*READ_S: []
    WRITE_S: []*/
    double Cexv[12];
    /*READ_S: []
    WRITE_S: []*/
    double v[12];
    /*READ_S: []
    WRITE_S: []*/
    double alpha;
    /*READ_S: []
    WRITE_S: []*/
    double c0[3];
    /*READ_S: []
    WRITE_S: []*/
    double d1;
    /*READ_S: []
    WRITE_S: []*/
    double d2;
    /*READ_S: []
    WRITE_S: []*/
    double *bigdist1;
    /*READ_S: []
    WRITE_S: []*/
    double *bigdist2;
    /*READ_S: []
    WRITE_S: []*/
    double xc[3];
    /*READ_S: []
    WRITE_S: []*/
    double uf[3];
    /*READ_S: []
    WRITE_S: []*/
    double vertices[4][3];
    /*READ_S: []
    WRITE_S: []*/
    struct properties prop;
    /*READ_S: []
    WRITE_S: [numthreads]*/
    numthreads = 1;
    /*READ_S: []
    WRITE_S: []*/
    struct options *_imopVarPre142;
    /*READ_S: [&options]
    WRITE_S: []*/
    _imopVarPre142 = &options;
    /*READ_S: [arch_init]
    WRITE_S: []*/
    arch_init(argc, argv, _imopVarPre142);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [mem_init]
    WRITE_S: []*/
    mem_init();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [arch_readnodevector, nodekindf, ARCHnodes]
    WRITE_S: []*/
    arch_readnodevector(nodekindf, ARCHnodes);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [options]
    WRITE_S: []*/
    /*READ_S: [__stderrp, heapCell#0, fprintf, nullCell, options]
    WRITE_S: [nullCell]*/
    if (!options.quiet) {
    /*READ_S: [__stderrp, heapCell#0, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: []
        WRITE_S: []*/
        char *_imopVarPre144;
        /*READ_S: [heapCell#0]
        WRITE_S: []*/
        _imopVarPre144 = argv[0];
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "%s: Beginning simulation.\n", _imopVarPre144);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [Exc]
    WRITE_S: [Exc]*/
    Exc.dt = 0.0024;
    /*READ_S: [ARCHduration, Exc]
    WRITE_S: [Exc]*/
    Exc.duration = ARCHduration;
    /*READ_S: [Exc]
    WRITE_S: [Exc]*/
    Exc.t0 = 0.6;
    /*READ_S: [Exc]
    WRITE_S: []*/
    timesteps = Exc.duration / Exc.dt + 1;
    /*READ_S: [Damp]
    WRITE_S: [Damp]*/
    Damp.zeta = 30.0;
    /*READ_S: [Damp]
    WRITE_S: [Damp]*/
    Damp.consta = 0.00533333;
    /*READ_S: [Damp]
    WRITE_S: [Damp]*/
    Damp.constb = 0.06666667;
    /*READ_S: [Damp]
    WRITE_S: [Damp]*/
    Damp.freq = 0.5;
    /*READ_S: [Src]
    WRITE_S: [Src]*/
    Src.strike = 111.0 * 3.141592653589793238 / 180.0;
    /*READ_S: [Src]
    WRITE_S: [Src]*/
    Src.dip = 44.0 * 3.141592653589793238 / 180.0;
    /*READ_S: [Src]
    WRITE_S: [Src]*/
    Src.rake = 70.0 * 3.141592653589793238 / 180.0;
    /*READ_S: [Src]
    WRITE_S: [Src]*/
    Src.fault = 29.640788;
    /*READ_S: [Src]
    WRITE_S: []*/
    Src.xyz[0] = 32.264153;
    /*READ_S: [Src]
    WRITE_S: []*/
    Src.xyz[1] = 23.814432;
    /*READ_S: [Src]
    WRITE_S: []*/
    Src.xyz[2] = -11.25;
    /*READ_S: [Src]
    WRITE_S: []*/
    Src.epixyz[0] = Src.xyz[0];
    /*READ_S: [Src]
    WRITE_S: []*/
    Src.epixyz[1] = Src.xyz[1];
    /*READ_S: [Src]
    WRITE_S: []*/
    Src.epixyz[2] = 0.0;
    /*READ_S: [Src]
    WRITE_S: [Src]*/
    Src.sourcenode = -1;
    /*READ_S: [Src]
    WRITE_S: [Src]*/
    Src.epicenternode = -1;
    /*READ_S: []
    WRITE_S: []*/
    uf[0] = uf[1] = uf[2] = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre148;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre149;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre150;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre148 = &uf[2];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre149 = &uf[1];
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre150 = &uf[0];
    /*READ_S: [slip]
    WRITE_S: []*/
    slip(_imopVarPre150, _imopVarPre149, _imopVarPre148);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    uf[0] *= Src.fault;
    /*READ_S: [Src]
    WRITE_S: []*/
    uf[1] *= Src.fault;
    /*READ_S: [Src]
    WRITE_S: []*/
    uf[2] *= Src.fault;
    /*READ_S: []
    WRITE_S: []*/
    prop.cp = 6.0;
    /*READ_S: []
    WRITE_S: []*/
    prop.cs = 3.2;
    /*READ_S: []
    WRITE_S: []*/
    prop.den = 2.0;
    /*READ_S: []
    WRITE_S: []*/
    Step_stride = 30;
    /*READ_S: []
    WRITE_S: []*/
    disptplus = 0;
    /*READ_S: []
    WRITE_S: []*/
    dispt = 1;
    /*READ_S: []
    WRITE_S: []*/
    disptminus = 2;
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "CASE SUMMARY\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "Fault information\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre152;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre152 = Src.strike;
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "  Orientation:  strike: %f\n", _imopVarPre152);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre154;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre154 = Src.dip;
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "                   dip: %f\n", _imopVarPre154);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre156;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre156 = Src.rake;
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "                  rake: %f\n", _imopVarPre156);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre158;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre158 = Src.fault;
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "           dislocation: %f cm\n", _imopVarPre158);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre162;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre163;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre164;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre162 = Src.xyz[2];
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre163 = Src.xyz[1];
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre164 = Src.xyz[0];
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "Hypocenter: (%f, %f, %f) Km\n", _imopVarPre164, _imopVarPre163, _imopVarPre162);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "Excitation characteristics\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre166;
    /*READ_S: [Exc]
    WRITE_S: []*/
    _imopVarPre166 = Exc.dt;
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "     Time step: %f sec\n", _imopVarPre166);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre168;
    /*READ_S: [Exc]
    WRITE_S: []*/
    _imopVarPre168 = Exc.duration;
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "      Duration: %f sec\n", _imopVarPre168);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre170;
    /*READ_S: [Exc]
    WRITE_S: []*/
    _imopVarPre170 = Exc.t0;
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "     Rise time: %f sec\n", _imopVarPre170);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stderrp, fflush, nullCell]
    WRITE_S: [nullCell]*/
    fflush(__stderrp);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [nodekindf, ARCHnodes, nullCell, nodekind, heapCell#7, heapCell#8]
    WRITE_S: [nullCell, heapCell#8]*/
    for (i = 0; i < ARCHnodes; i++) {
    /*READ_S: [nodekindf, nullCell, nodekind, heapCell#7, heapCell#8]
    WRITE_S: [nullCell, heapCell#8]*/
        /*READ_S: [nodekindf, nullCell, nodekind, heapCell#7]
        WRITE_S: [nullCell, heapCell#8]*/
        nodekind[i] = (int) nodekindf[i];
        /*READ_S: [nullCell, nodekind, heapCell#8]
        WRITE_S: []*/
        /*READ_S: [nullCell, nodekind, heapCell#8]
        WRITE_S: [nullCell, heapCell#8]*/
        if (nodekind[i] == 3) {
        /*READ_S: [nodekind]
        WRITE_S: [nullCell, heapCell#8]*/
            /*READ_S: [nodekind]
            WRITE_S: [nullCell, heapCell#8]*/
            nodekind[i] = 1;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre173;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre174;
    /*READ_S: [numthreads]
    WRITE_S: []*/
    _imopVarPre173 = sizeof(int) * numthreads;
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre174 = malloc(_imopVarPre173);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    temp1 = (int *) _imopVarPre174;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (temp1 == (int *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for temp1\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre177;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre178;
    /*READ_S: [numthreads]
    WRITE_S: []*/
    _imopVarPre177 = sizeof(int) * numthreads;
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre178 = malloc(_imopVarPre177);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    temp2 = (int *) _imopVarPre178;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (temp2 == (int *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for temp2\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre181;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre182;
    /*READ_S: [numthreads]
    WRITE_S: []*/
    _imopVarPre181 = sizeof(double) * numthreads;
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre182 = malloc(_imopVarPre181);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    bigdist1 = (double *) _imopVarPre182;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (bigdist1 == (double *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for bigdist1\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre185;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre186;
    /*READ_S: [numthreads]
    WRITE_S: []*/
    _imopVarPre185 = sizeof(double) * numthreads;
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre186 = malloc(_imopVarPre185);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    bigdist2 = (double *) _imopVarPre186;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (bigdist2 == (double *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for bigdist2\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [c0.f, temp1, i, temp2, heapCell#27, ARCHcoord, nullCell, heapCell#28, Src, distance, bigdist2, bigdist1, ARCHnodes, heapCell#2, heapCell#24]
    WRITE_S: [heapCell#25, heapCell#27, heapCell#28, heapCell#26]*/
#pragma omp parallel private(my_cpu_id, d1, d2, c0)
    {
    /*READ_S: [c0.f, temp1, i, temp2, heapCell#27, ARCHcoord, nullCell, heapCell#28, Src, distance, bigdist2, bigdist1, ARCHnodes, heapCell#2, heapCell#24]
    WRITE_S: [heapCell#25, heapCell#27, heapCell#28, heapCell#26]*/
        /*READ_S: []
        WRITE_S: []*/
        my_cpu_id = 0;
        /*READ_S: [temp1]
        WRITE_S: [heapCell#25]*/
        temp1[my_cpu_id] = -1;
        /*READ_S: [temp2]
        WRITE_S: [heapCell#26]*/
        temp2[my_cpu_id] = -1;
        /*READ_S: [bigdist1]
        WRITE_S: [heapCell#27]*/
        bigdist1[my_cpu_id] = 1000000.0;
        /*READ_S: [bigdist2]
        WRITE_S: [heapCell#28]*/
        bigdist2[my_cpu_id] = 1000000.0;
        /*READ_S: [c0.f, temp1, i, temp2, heapCell#27, Src, nullCell, ARCHcoord, heapCell#28, distance, bigdist2, bigdist1, ARCHnodes, heapCell#2, heapCell#24]
        WRITE_S: [heapCell#25, heapCell#27, heapCell#28, heapCell#26]*/
        /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [ARCHnodes]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < ARCHnodes; i++) {
        /*READ_S: [c0.f, temp1, temp2, heapCell#27, Src, nullCell, ARCHcoord, heapCell#28, distance, bigdist2, bigdist1, heapCell#2, heapCell#24]
        WRITE_S: [heapCell#25, heapCell#27, heapCell#28, heapCell#26]*/
            /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
            WRITE_S: []*/
            c0[0] = ARCHcoord[i][0];
            /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
            WRITE_S: []*/
            c0[1] = ARCHcoord[i][1];
            /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
            WRITE_S: []*/
            c0[2] = ARCHcoord[i][2];
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre188;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre189;
            /*READ_S: [Src]
            WRITE_S: []*/
            _imopVarPre188 = Src.xyz;
            /*READ_S: [distance]
            WRITE_S: []*/
            _imopVarPre189 = distance(c0, _imopVarPre188);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            d1 = _imopVarPre189;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre191;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre192;
            /*READ_S: [Src]
            WRITE_S: []*/
            _imopVarPre191 = Src.epixyz;
            /*READ_S: [distance]
            WRITE_S: []*/
            _imopVarPre192 = distance(c0, _imopVarPre191);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            d2 = _imopVarPre192;
            /*READ_S: [bigdist1, heapCell#27]
            WRITE_S: []*/
            /*READ_S: [temp1, bigdist1, heapCell#27]
            WRITE_S: [heapCell#25, heapCell#27]*/
            if (d1 < bigdist1[my_cpu_id]) {
            /*READ_S: [temp1, bigdist1]
            WRITE_S: [heapCell#25, heapCell#27]*/
                /*READ_S: [bigdist1]
                WRITE_S: [heapCell#27]*/
                bigdist1[my_cpu_id] = d1;
                /*READ_S: [temp1]
                WRITE_S: [heapCell#25]*/
                temp1[my_cpu_id] = i;
            }
            /*READ_S: [bigdist2, heapCell#28]
            WRITE_S: []*/
            /*READ_S: [bigdist2, temp2, heapCell#28]
            WRITE_S: [heapCell#28, heapCell#26]*/
            if (d2 < bigdist2[my_cpu_id]) {
            /*READ_S: [bigdist2, temp2]
            WRITE_S: [heapCell#28, heapCell#26]*/
                /*READ_S: [bigdist2]
                WRITE_S: [heapCell#28]*/
                bigdist2[my_cpu_id] = d2;
                /*READ_S: [temp2]
                WRITE_S: [heapCell#26]*/
                temp2[my_cpu_id] = i;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
        /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
    }
    /*READ_S: [heapCell#27]
    WRITE_S: []*/
    d1 = bigdist1[0];
    /*READ_S: [heapCell#28]
    WRITE_S: []*/
    d2 = bigdist2[0];
    /*READ_S: [heapCell#25, Src]
    WRITE_S: [Src]*/
    Src.sourcenode = temp1[0];
    /*READ_S: [Src, heapCell#26]
    WRITE_S: [Src]*/
    Src.epicenternode = temp2[0];
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [numthreads]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#25, heapCell#27, Src, heapCell#28, numthreads, heapCell#26]
    WRITE_S: [Src]*/
    for (i = 0; i < numthreads; i++) {
    /*READ_S: [heapCell#25, heapCell#27, Src, heapCell#28, heapCell#26]
    WRITE_S: [Src]*/
        /*READ_S: [heapCell#27]
        WRITE_S: []*/
        /*READ_S: [heapCell#25, heapCell#27, Src]
        WRITE_S: [Src]*/
        if (bigdist1[i] < d1) {
        /*READ_S: [heapCell#25, heapCell#27, Src]
        WRITE_S: [Src]*/
            /*READ_S: [heapCell#27]
            WRITE_S: []*/
            d1 = bigdist1[i];
            /*READ_S: [heapCell#25, Src]
            WRITE_S: [Src]*/
            Src.sourcenode = temp1[i];
        }
        /*READ_S: [heapCell#28]
        WRITE_S: []*/
        /*READ_S: [heapCell#28, Src, heapCell#26]
        WRITE_S: [Src]*/
        if (bigdist2[i] < d2) {
        /*READ_S: [Src, heapCell#28, heapCell#26]
        WRITE_S: [Src]*/
            /*READ_S: [heapCell#28]
            WRITE_S: []*/
            d2 = bigdist2[i];
            /*READ_S: [Src, heapCell#26]
            WRITE_S: [Src]*/
            Src.epicenternode = temp2[i];
        }
    }
    /*READ_S: [free, heapCell#27]
    WRITE_S: [heapCell#27]*/
    free(bigdist1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [free, heapCell#28]
    WRITE_S: [heapCell#28]*/
    free(bigdist2);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#25, free]
    WRITE_S: [heapCell#25]*/
    free(temp1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [free, heapCell#26]
    WRITE_S: [heapCell#26]*/
    free(temp2);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre194;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre194 = Src.sourcenode != 0;
    /*READ_S: [_imopVarPre194]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre194, ARCHmine, Src]
    WRITE_S: []*/
    if (_imopVarPre194) {
    /*READ_S: [ARCHmine, Src]
    WRITE_S: []*/
        /*READ_S: [ARCHmine, Src]
        WRITE_S: []*/
        _imopVarPre194 = Src.sourcenode <= ARCHmine;
    }
    /*READ_S: [_imopVarPre194]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre194, ARCHglobalnode, __stderrp, fflush, fprintf, heapCell#1, nullCell, Src, ARCHcoord, heapCell#2, heapCell#24]
    WRITE_S: [nullCell]*/
    if (_imopVarPre194) {
    /*READ_S: [ARCHglobalnode, __stderrp, fflush, fprintf, heapCell#1, nullCell, Src, ARCHcoord, heapCell#2, heapCell#24]
    WRITE_S: [nullCell]*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre199;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre200;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre201;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre202;
        /*READ_S: [Src, ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
        _imopVarPre199 = ARCHcoord[Src.sourcenode][2];
        /*READ_S: [Src, ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
        _imopVarPre200 = ARCHcoord[Src.sourcenode][1];
        /*READ_S: [Src, ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
        _imopVarPre201 = ARCHcoord[Src.sourcenode][0];
        /*READ_S: [ARCHglobalnode, heapCell#1, Src, nullCell]
        WRITE_S: []*/
        _imopVarPre202 = ARCHglobalnode[Src.sourcenode];
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "The source is node %d at (%f  %f  %f)\n", _imopVarPre202, _imopVarPre201, _imopVarPre200, _imopVarPre199);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre204;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre204 = Src.epicenternode != 0;
    /*READ_S: [_imopVarPre204]
    WRITE_S: []*/
    /*READ_S: [ARCHmine, Src, _imopVarPre204]
    WRITE_S: []*/
    if (_imopVarPre204) {
    /*READ_S: [ARCHmine, Src]
    WRITE_S: []*/
        /*READ_S: [ARCHmine, Src]
        WRITE_S: []*/
        _imopVarPre204 = Src.epicenternode <= ARCHmine;
    }
    /*READ_S: [_imopVarPre204]
    WRITE_S: []*/
    /*READ_S: [ARCHglobalnode, __stderrp, fflush, fprintf, heapCell#1, Src, ARCHcoord, nullCell, heapCell#2, heapCell#24, _imopVarPre204]
    WRITE_S: [nullCell]*/
    if (_imopVarPre204) {
    /*READ_S: [ARCHglobalnode, __stderrp, fflush, fprintf, heapCell#1, Src, ARCHcoord, nullCell, heapCell#2, heapCell#24]
    WRITE_S: [nullCell]*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre209;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre210;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre211;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre212;
        /*READ_S: [Src, ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
        _imopVarPre209 = ARCHcoord[Src.epicenternode][2];
        /*READ_S: [Src, ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
        _imopVarPre210 = ARCHcoord[Src.epicenternode][1];
        /*READ_S: [Src, ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
        _imopVarPre211 = ARCHcoord[Src.epicenternode][0];
        /*READ_S: [ARCHglobalnode, heapCell#1, Src, nullCell]
        WRITE_S: []*/
        _imopVarPre212 = ARCHglobalnode[Src.epicenternode];
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "The epicenter is node %d at (%f  %f  %f)\n", _imopVarPre212, _imopVarPre211, _imopVarPre210, _imopVarPre209);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [Src]
    WRITE_S: []*/
    /*READ_S: [point2fault, ARCHvertex, heapCell#23, xc.f, centroid, vertices.f, i, sin, Src, ARCHcoord, nullCell, cos, _imopVarPre213, source_elms, heapCell#2, heapCell#4, ARCHelems, heapCell#24]
    WRITE_S: [heapCell#9, nullCell]*/
    if (Src.sourcenode != 0) {
    /*READ_S: [point2fault, ARCHvertex, heapCell#23, xc.f, centroid, vertices.f, i, sin, Src, ARCHcoord, nullCell, cos, _imopVarPre213, source_elms, heapCell#2, heapCell#4, ARCHelems, heapCell#24]
    WRITE_S: [heapCell#9, nullCell]*/
        /*READ_S: [point2fault, ARCHvertex, heapCell#23, xc.f, centroid, vertices.f, i, sin, Src, ARCHcoord, nullCell, cos, _imopVarPre213, source_elms, heapCell#2, heapCell#4, ARCHelems, heapCell#24]
        WRITE_S: [heapCell#9, nullCell]*/
#pragma omp parallel private(cor, j, k, xc, vertices)
        {
        /*READ_S: [point2fault, ARCHvertex, heapCell#23, xc.f, centroid, vertices.f, i, sin, Src, ARCHcoord, nullCell, cos, _imopVarPre213, source_elms, heapCell#2, heapCell#4, ARCHelems, heapCell#24]
        WRITE_S: [heapCell#9, nullCell]*/
            /*READ_S: [point2fault, ARCHvertex, heapCell#23, xc.f, centroid, vertices.f, i, sin, Src, ARCHcoord, nullCell, cos, _imopVarPre213, source_elms, heapCell#2, heapCell#4, ARCHelems, heapCell#24]
            WRITE_S: [heapCell#9, nullCell]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [ARCHelems]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < ARCHelems; i++) {
            /*READ_S: [point2fault, ARCHvertex, heapCell#23, xc.f, centroid, vertices.f, sin, Src, ARCHcoord, nullCell, cos, _imopVarPre213, source_elms, heapCell#2, heapCell#4, heapCell#24]
            WRITE_S: [heapCell#9, nullCell]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ARCHvertex, heapCell#23, nullCell, heapCell#4]
                WRITE_S: []*/
                for (j = 0; j < 4; j++) {
                /*READ_S: [ARCHvertex, heapCell#23, nullCell, heapCell#4]
                WRITE_S: []*/
                    /*READ_S: [ARCHvertex, heapCell#23, nullCell, heapCell#4]
                    WRITE_S: []*/
                    cor[j] = ARCHvertex[i][j];
                }
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre213;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre214;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre215;
                /*READ_S: [Src]
                WRITE_S: []*/
                _imopVarPre213 = cor[0] == Src.sourcenode;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [Src]
                WRITE_S: []*/
                if (!_imopVarPre213) {
                /*READ_S: [Src]
                WRITE_S: []*/
                    /*READ_S: [Src]
                    WRITE_S: []*/
                    _imopVarPre214 = cor[1] == Src.sourcenode;
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [Src]
                    WRITE_S: []*/
                    if (!_imopVarPre214) {
                    /*READ_S: [Src]
                    WRITE_S: []*/
                        /*READ_S: [Src]
                        WRITE_S: []*/
                        _imopVarPre215 = cor[2] == Src.sourcenode;
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [Src]
                        WRITE_S: []*/
                        if (!_imopVarPre215) {
                        /*READ_S: [Src]
                        WRITE_S: []*/
                            /*READ_S: [Src]
                            WRITE_S: []*/
                            _imopVarPre215 = cor[3] == Src.sourcenode;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre214 = _imopVarPre215;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre213 = _imopVarPre214;
                }
                /*READ_S: [_imopVarPre213]
                WRITE_S: []*/
                /*READ_S: [point2fault, xc.f, centroid, vertices.f, sin, Src, ARCHcoord, nullCell, cos, _imopVarPre213, source_elms, heapCell#2, heapCell#24]
                WRITE_S: [heapCell#9, nullCell]*/
                if (_imopVarPre213) {
                /*READ_S: [cos, point2fault, source_elms, xc.f, centroid, vertices.f, sin, Src, ARCHcoord, nullCell, heapCell#2, heapCell#24]
                WRITE_S: [heapCell#9, nullCell]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
                    WRITE_S: []*/
                    for (j = 0; j < 4; j++) {
                    /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
                        WRITE_S: []*/
                        for (k = 0; k < 3; k++) {
                        /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
                        WRITE_S: []*/
                            /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
                            WRITE_S: []*/
                            vertices[j][k] = ARCHcoord[cor[j]][k];
                        }
                    }
                    /*READ_S: [centroid]
                    WRITE_S: []*/
                    centroid(vertices, xc);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [source_elms]
                    WRITE_S: [heapCell#9, nullCell]*/
                    source_elms[i] = 2;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre217;
                    /*READ_S: [point2fault]
                    WRITE_S: []*/
                    _imopVarPre217 = point2fault(xc);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [source_elms]
                    WRITE_S: [heapCell#9, nullCell]*/
                    if (_imopVarPre217 >= 0) {
                    /*READ_S: [source_elms]
                    WRITE_S: [heapCell#9, nullCell]*/
                        /*READ_S: [source_elms]
                        WRITE_S: [heapCell#9, nullCell]*/
                        source_elms[i] = 3;
                    }
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHelems]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, heapCell#11, sqrt, heapCell#5, ARCHmatrixindex, heapCell#13, jacobian.f, __stderrp, M23, M, heapCell#2, nodekind, ARCHelems, _imopVarPre222, ARCHvertex, heapCell#23, mv12x12, shape_ders, get_Enu, area_triangle, heapCell#9, Ke.f, source_elms, Me.f, free_prop, Ce.f, heapCell#14, C23, K, heapCell#21, centroid, vertices.f, v.f, Src, element_matrices, C, printf, heapCell#12, fprintf, heapCell#4, heapCell#8, nullCell, ARCHcoord, abe_matrix, heapCell#6, ARCHmatrixcol, vv12x12, inv_J, Damp, V23, heapCell#15, heapCell#24]
    WRITE_S: [jacobian.f, Mexv.f, free_alpha, nullCell, Cexv.f]*/
    for (i = 0; i < ARCHelems; i++) {
    /*READ_S: [exit, heapCell#11, sqrt, heapCell#5, ARCHmatrixindex, heapCell#13, jacobian.f, __stderrp, M23, M, heapCell#2, nodekind, _imopVarPre222, ARCHvertex, heapCell#23, mv12x12, shape_ders, get_Enu, area_triangle, heapCell#9, Ke.f, source_elms, Me.f, free_prop, Ce.f, heapCell#14, C23, K, heapCell#21, centroid, vertices.f, v.f, Src, element_matrices, C, printf, heapCell#12, fprintf, heapCell#4, heapCell#8, nullCell, ARCHcoord, abe_matrix, heapCell#6, ARCHmatrixcol, vv12x12, inv_J, Damp, V23, heapCell#15, heapCell#24]
    WRITE_S: [jacobian.f, Mexv.f, free_alpha, nullCell, Cexv.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < 12; j++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            Me[j] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            Ce[j] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            v[j] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (k = 0; k < 12; k++) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                Ke[j][k] = 0.0;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ARCHvertex, heapCell#23, nullCell, heapCell#4]
        WRITE_S: []*/
        for (j = 0; j < 4; j++) {
        /*READ_S: [ARCHvertex, heapCell#23, nullCell, heapCell#4]
        WRITE_S: []*/
            /*READ_S: [ARCHvertex, heapCell#23, nullCell, heapCell#4]
            WRITE_S: []*/
            cor[j] = ARCHvertex[i][j];
        }
        /*READ_S: []
        WRITE_S: []*/
        verticesonbnd = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, nodekind, heapCell#8]
        WRITE_S: []*/
        for (j = 0; j < 4; j++) {
        /*READ_S: [nullCell, nodekind, heapCell#8]
        WRITE_S: []*/
            /*READ_S: [nullCell, nodekind, heapCell#8]
            WRITE_S: []*/
            /*READ_S: [nullCell, nodekind, heapCell#8]
            WRITE_S: []*/
            if (nodekind[cor[j]] != 1) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                bv[verticesonbnd++] = j;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [abe_matrix, area_triangle, sqrt, ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
        if (verticesonbnd == 3) {
        /*READ_S: [abe_matrix, area_triangle, sqrt, ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
            WRITE_S: []*/
            for (j = 0; j < 3; j++) {
            /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
                WRITE_S: []*/
                for (k = 0; k < 3; k++) {
                /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
                WRITE_S: []*/
                    /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
                    WRITE_S: []*/
                    vertices[j][k] = ARCHcoord[cor[bv[j]]][k];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            struct properties *_imopVarPre219;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre219 = &prop;
            /*READ_S: [abe_matrix]
            WRITE_S: []*/
            abe_matrix(vertices, bv, _imopVarPre219, Ce);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
        for (j = 0; j < 4; j++) {
        /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
            WRITE_S: []*/
            for (k = 0; k < 3; k++) {
            /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
            WRITE_S: []*/
                /*READ_S: [ARCHcoord, nullCell, heapCell#2, heapCell#24]
                WRITE_S: []*/
                vertices[j][k] = ARCHcoord[cor[j]][k];
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        struct properties *_imopVarPre221;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre221 = &prop;
        /*READ_S: [element_matrices]
        WRITE_S: []*/
        element_matrices(vertices, _imopVarPre221, Ke, Me);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [centroid]
        WRITE_S: []*/
        centroid(vertices, xc);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [free_prop, Damp]
        WRITE_S: [free_alpha]*/
        if (xc[2] < -11.5) {
        /*READ_S: [Damp]
        WRITE_S: []*/
            /*READ_S: [Damp]
            WRITE_S: []*/
            alpha = 2.0 * Damp.zeta / 100.0 * (2.0 * 3.141592653589793238 * Damp.freq);
        } else {
        /*READ_S: [free_prop, Damp]
        WRITE_S: [free_alpha]*/
            /*READ_S: [free_prop, Damp]
            WRITE_S: [free_alpha]*/
            alpha = 4.0 * 3.141592653589793238 * Damp.consta * 0.95 / (prop.cs + Damp.constb);
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < 12; j++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            Ce[j] = Ce[j] + alpha * Me[j];
        }
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre222;
        /*READ_S: [heapCell#9, source_elms, nullCell]
        WRITE_S: []*/
        _imopVarPre222 = source_elms[i] == 2;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [heapCell#9, source_elms, nullCell]
        WRITE_S: []*/
        if (!_imopVarPre222) {
        /*READ_S: [heapCell#9, source_elms, nullCell]
        WRITE_S: []*/
            /*READ_S: [heapCell#9, source_elms, nullCell]
            WRITE_S: []*/
            _imopVarPre222 = source_elms[i] == 3;
        }
        /*READ_S: [_imopVarPre222]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre222, ARCHvertex, C23, heapCell#23, mv12x12, v.f, nullCell, Src, heapCell#13, M23, heapCell#9, Ke.f, source_elms, vv12x12, Me.f, V23, heapCell#15, heapCell#4, Ce.f, heapCell#14]
        WRITE_S: [Mexv.f, nullCell, Cexv.f]*/
        if (_imopVarPre222) {
        /*READ_S: [ARCHvertex, C23, heapCell#23, mv12x12, v.f, nullCell, Src, heapCell#13, M23, heapCell#9, Ke.f, source_elms, vv12x12, Me.f, V23, heapCell#15, heapCell#4, Ce.f, heapCell#14]
        WRITE_S: [Mexv.f, nullCell, Cexv.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [Src]
            WRITE_S: []*/
            for (j = 0; j < 4; j++) {
            /*READ_S: [Src]
            WRITE_S: []*/
                /*READ_S: [Src]
                WRITE_S: []*/
                /*READ_S: [Src]
                WRITE_S: []*/
                if (cor[j] == Src.sourcenode) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    v[3 * j] = uf[0];
                    /*READ_S: []
                    WRITE_S: []*/
                    v[3 * j + 1] = uf[1];
                    /*READ_S: []
                    WRITE_S: []*/
                    v[3 * j + 2] = uf[2];
                } else {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    v[3 * j] = 0;
                    /*READ_S: []
                    WRITE_S: []*/
                    v[3 * j + 1] = 0;
                    /*READ_S: []
                    WRITE_S: []*/
                    v[3 * j + 2] = 0;
                }
            }
            /*READ_S: [vv12x12]
            WRITE_S: []*/
            vv12x12(Me, v, Mexv);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [vv12x12]
            WRITE_S: []*/
            vv12x12(Ce, v, Cexv);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [mv12x12]
            WRITE_S: []*/
            mv12x12(Ke, v);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#9, source_elms, nullCell]
            WRITE_S: []*/
            /*READ_S: [heapCell#9, source_elms, nullCell]
            WRITE_S: []*/
            if (source_elms[i] == 3) {
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
                for (j = 0; j < 12; j++) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    v[j] = -v[j];
                    /*READ_S: []
                    WRITE_S: []*/
                    Mexv[j] = -Mexv[j];
                    /*READ_S: []
                    WRITE_S: []*/
                    Cexv[j] = -Cexv[j];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ARCHvertex, C23, M23, heapCell#23, V23, heapCell#15, nullCell, heapCell#4, heapCell#13, heapCell#14]
            WRITE_S: [nullCell]*/
            for (j = 0; j < 4; j++) {
            /*READ_S: [ARCHvertex, C23, M23, heapCell#23, V23, heapCell#15, nullCell, heapCell#4, heapCell#13, heapCell#14]
            WRITE_S: [nullCell]*/
                /*READ_S: [ARCHvertex, heapCell#23, V23, heapCell#15, nullCell, heapCell#4]
                WRITE_S: [nullCell]*/
                V23[ARCHvertex[i][j]][0] += v[j * 3];
                /*READ_S: [ARCHvertex, heapCell#23, V23, heapCell#15, nullCell, heapCell#4]
                WRITE_S: [nullCell]*/
                V23[ARCHvertex[i][j]][1] += v[j * 3 + 1];
                /*READ_S: [ARCHvertex, heapCell#23, V23, heapCell#15, nullCell, heapCell#4]
                WRITE_S: [nullCell]*/
                V23[ARCHvertex[i][j]][2] += v[j * 3 + 2];
                /*READ_S: [ARCHvertex, M23, heapCell#23, nullCell, heapCell#4, heapCell#13]
                WRITE_S: [nullCell]*/
                M23[ARCHvertex[i][j]][0] += Mexv[j * 3];
                /*READ_S: [ARCHvertex, M23, heapCell#23, nullCell, heapCell#4, heapCell#13]
                WRITE_S: [nullCell]*/
                M23[ARCHvertex[i][j]][1] += Mexv[j * 3 + 1];
                /*READ_S: [ARCHvertex, M23, heapCell#23, nullCell, heapCell#4, heapCell#13]
                WRITE_S: [nullCell]*/
                M23[ARCHvertex[i][j]][2] += Mexv[j * 3 + 2];
                /*READ_S: [ARCHvertex, C23, heapCell#23, nullCell, heapCell#4, heapCell#14]
                WRITE_S: [nullCell]*/
                C23[ARCHvertex[i][j]][0] += Cexv[j * 3];
                /*READ_S: [ARCHvertex, C23, heapCell#23, nullCell, heapCell#4, heapCell#14]
                WRITE_S: [nullCell]*/
                C23[ARCHvertex[i][j]][1] += Cexv[j * 3 + 1];
                /*READ_S: [ARCHvertex, C23, heapCell#23, nullCell, heapCell#4, heapCell#14]
                WRITE_S: [nullCell]*/
                C23[ARCHvertex[i][j]][2] += Cexv[j * 3 + 2];
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit, ARCHvertex, heapCell#11, heapCell#5, heapCell#23, K, heapCell#21, nullCell, ARCHmatrixindex, C, printf, heapCell#6, heapCell#12, ARCHmatrixcol, M, heapCell#4]
        WRITE_S: [nullCell]*/
        for (j = 0; j < 4; j++) {
        /*READ_S: [exit, ARCHvertex, heapCell#11, heapCell#5, heapCell#23, K, heapCell#21, nullCell, ARCHmatrixindex, C, printf, heapCell#6, heapCell#12, ARCHmatrixcol, M, heapCell#4]
        WRITE_S: [nullCell]*/
            /*READ_S: [ARCHvertex, heapCell#11, heapCell#23, M, nullCell, heapCell#4]
            WRITE_S: [nullCell]*/
            M[ARCHvertex[i][j]][0] += Me[j * 3];
            /*READ_S: [ARCHvertex, heapCell#11, heapCell#23, M, nullCell, heapCell#4]
            WRITE_S: [nullCell]*/
            M[ARCHvertex[i][j]][1] += Me[j * 3 + 1];
            /*READ_S: [ARCHvertex, heapCell#11, heapCell#23, M, nullCell, heapCell#4]
            WRITE_S: [nullCell]*/
            M[ARCHvertex[i][j]][2] += Me[j * 3 + 2];
            /*READ_S: [ARCHvertex, heapCell#12, heapCell#23, nullCell, heapCell#4, C]
            WRITE_S: [nullCell]*/
            C[ARCHvertex[i][j]][0] += Ce[j * 3];
            /*READ_S: [ARCHvertex, heapCell#12, heapCell#23, nullCell, heapCell#4, C]
            WRITE_S: [nullCell]*/
            C[ARCHvertex[i][j]][1] += Ce[j * 3 + 1];
            /*READ_S: [ARCHvertex, heapCell#12, heapCell#23, nullCell, heapCell#4, C]
            WRITE_S: [nullCell]*/
            C[ARCHvertex[i][j]][2] += Ce[j * 3 + 2];
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [exit, ARCHvertex, printf, heapCell#6, ARCHmatrixcol, heapCell#5, heapCell#23, K, heapCell#21, nullCell, ARCHmatrixindex, heapCell#4]
            WRITE_S: [nullCell]*/
            for (k = 0; k < 4; k++) {
            /*READ_S: [exit, ARCHvertex, printf, heapCell#6, ARCHmatrixcol, heapCell#5, K, heapCell#21, heapCell#23, nullCell, ARCHmatrixindex, heapCell#4]
            WRITE_S: [nullCell]*/
                /*READ_S: [ARCHvertex, heapCell#23, nullCell, heapCell#4]
                WRITE_S: []*/
                /*READ_S: [exit, ARCHvertex, printf, heapCell#6, ARCHmatrixcol, heapCell#5, K, heapCell#21, heapCell#23, nullCell, ARCHmatrixindex, heapCell#4]
                WRITE_S: [nullCell]*/
                if (ARCHvertex[i][j] <= ARCHvertex[i][k]) {
                /*READ_S: [exit, ARCHvertex, printf, heapCell#6, ARCHmatrixcol, heapCell#5, K, heapCell#21, heapCell#23, nullCell, ARCHmatrixindex, heapCell#4]
                WRITE_S: [nullCell]*/
                    /*READ_S: [ARCHvertex, heapCell#6, heapCell#23, nullCell, ARCHmatrixindex, heapCell#4]
                    WRITE_S: []*/
                    kk = ARCHmatrixindex[ARCHvertex[i][j]];
                    /*READ_S: [ARCHvertex, ARCHmatrixcol, heapCell#5, heapCell#23, nullCell, heapCell#4]
                    WRITE_S: []*/
                    /*READ_S: [exit, ARCHvertex, printf, heapCell#6, ARCHmatrixcol, heapCell#5, heapCell#23, nullCell, ARCHmatrixindex, heapCell#4]
                    WRITE_S: []*/
                    while (ARCHmatrixcol[kk] != ARCHvertex[i][k]) {
                    /*READ_S: [exit, ARCHvertex, printf, heapCell#6, heapCell#23, nullCell, ARCHmatrixindex, heapCell#4]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        kk++;
                        /*READ_S: [ARCHvertex, heapCell#6, heapCell#23, nullCell, ARCHmatrixindex, heapCell#4]
                        WRITE_S: []*/
                        /*READ_S: [exit, ARCHvertex, printf, heapCell#6, heapCell#23, nullCell, ARCHmatrixindex, heapCell#4]
                        WRITE_S: []*/
                        if (kk >= ARCHmatrixindex[ARCHvertex[i][k] + 1]) {
                        /*READ_S: [exit, ARCHvertex, printf, heapCell#23, nullCell, heapCell#4]
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            int _imopVarPre225;
                            /*READ_S: []
                            WRITE_S: []*/
                            int _imopVarPre226;
                            /*READ_S: [ARCHvertex, heapCell#23, nullCell, heapCell#4]
                            WRITE_S: []*/
                            _imopVarPre225 = ARCHvertex[i][k];
                            /*READ_S: [ARCHvertex, heapCell#23, nullCell, heapCell#4]
                            WRITE_S: []*/
                            _imopVarPre226 = ARCHvertex[i][j];
                            /*READ_S: [printf]
                            WRITE_S: []*/
                            printf("K indexing error!!! %d %d\n", _imopVarPre226, _imopVarPre225);
                            /*READ_S: []
                            WRITE_S: []*/
                            /*READ_S: [exit]
                            WRITE_S: []*/
                            exit(1);
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
                    /*READ_S: [K, heapCell#21, nullCell]
                    WRITE_S: [nullCell]*/
                    for (ii = 0; ii < 3; ii++) {
                    /*READ_S: [K, heapCell#21, nullCell]
                    WRITE_S: [nullCell]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [K, heapCell#21, nullCell]
                        WRITE_S: [nullCell]*/
                        for (jj = 0; jj < 3; jj++) {
                        /*READ_S: [K, heapCell#21, nullCell]
                        WRITE_S: [nullCell]*/
                            /*READ_S: [K, heapCell#21, nullCell]
                            WRITE_S: [nullCell]*/
                            K[kk][ii][jj] += Ke[j * 3 + ii][k * 3 + jj];
                        }
                    }
                }
            }
        }
    }
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#11, v, heapCell#5, i, ARCHmatrixindex, heapCell#20, phi2, heapCell#13, disp, __stderrp, M23, fflush, w2, M, __stdoutp, heapCell#19, j, ARCHglobalnode, heapCell#22, w, heapCell#17, A, dispt, vel, w1, time, Exc, i, heapCell#14, Aindex, C23, heapCell#21, K, Src, phi0, C, cos, printf, heapCell#10, ARCHmine, heapCell#12, disptplus, fprintf, ARCHnodes, numthreads, nodes, heapCell#16, sin, nullCell, phi1, heapCell#6, Acol, ARCHmatrixcol, heapCell#1, disptminus, V23, heapCell#15, smvp, heapCell#18]
    WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
    for (iter = 1; iter <= timesteps; iter++) {
    /*READ_S: [heapCell#11, v, heapCell#5, i, ARCHmatrixindex, heapCell#20, phi2, heapCell#13, disp, __stderrp, M23, fflush, w2, M, __stdoutp, heapCell#19, j, ARCHglobalnode, heapCell#22, w, heapCell#17, A, dispt, vel, w1, time, Exc, i, heapCell#14, Aindex, C23, heapCell#21, K, Src, phi0, C, cos, printf, heapCell#10, ARCHmine, heapCell#12, disptplus, fprintf, ARCHnodes, numthreads, nodes, heapCell#16, sin, nullCell, phi1, heapCell#6, Acol, ARCHmatrixcol, heapCell#1, disptminus, V23, heapCell#15, smvp, heapCell#18]
    WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
        /*READ_S: [disp, disptplus, ARCHnodes, i, heapCell#19, nullCell, heapCell#20]
        WRITE_S: [nullCell]*/
#pragma omp parallel private(j)
        {
        /*READ_S: [disp, disptplus, ARCHnodes, i, heapCell#19, nullCell, heapCell#20]
        WRITE_S: [nullCell]*/
            /*READ_S: [disp, disptplus, ARCHnodes, i, heapCell#19, nullCell, heapCell#20]
            WRITE_S: [nullCell]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [ARCHnodes]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < ARCHnodes; i++) {
            /*READ_S: [disp, disptplus, heapCell#19, nullCell, heapCell#20]
            WRITE_S: [nullCell]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [disp, disptplus, heapCell#19, nullCell, heapCell#20]
                WRITE_S: [nullCell]*/
                for (j = 0; j < 3; j++) {
                /*READ_S: [disp, disptplus, heapCell#19, nullCell, heapCell#20]
                WRITE_S: [nullCell]*/
                    /*READ_S: [disp, disptplus, heapCell#19, nullCell, heapCell#20]
                    WRITE_S: [nullCell]*/
                    disp[disptplus][i][j] = 0.0;
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
        /*READ_S: []
        WRITE_S: []*/
        double ( *_imopVarPre229 )[3];
        /*READ_S: []
        WRITE_S: []*/
        double ( *_imopVarPre230 )[3];
        /*READ_S: [disp, heapCell#19, nullCell]
        WRITE_S: []*/
        _imopVarPre229 = disp[disptplus];
        /*READ_S: [disp, heapCell#19, nullCell]
        WRITE_S: []*/
        _imopVarPre230 = disp[dispt];
        /*READ_S: [ARCHmatrixcol, K, ARCHnodes, smvp, ARCHmatrixindex]
        WRITE_S: []*/
        smvp(ARCHnodes, K, ARCHmatrixcol, ARCHmatrixindex, _imopVarPre230, _imopVarPre229);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [Exc]
        WRITE_S: []*/
        time = iter * Exc.dt;
        /*READ_S: [heapCell#11, C23, i, heapCell#20, phi2, phi0, C, heapCell#13, cos, disp, heapCell#10, heapCell#12, M23, disptplus, ARCHnodes, M, heapCell#19, sin, nullCell, phi1, dispt, vel, disptminus, time, V23, heapCell#15, Exc, heapCell#14]
        WRITE_S: [nullCell]*/
#pragma omp parallel private(j)
        {
        /*READ_S: [heapCell#11, C23, i, heapCell#20, phi2, phi0, C, heapCell#13, cos, disp, heapCell#10, heapCell#12, M23, disptplus, ARCHnodes, M, heapCell#19, sin, nullCell, phi1, dispt, vel, disptminus, time, V23, heapCell#15, Exc, heapCell#14]
        WRITE_S: [nullCell]*/
            /*READ_S: [heapCell#11, C23, i, heapCell#20, phi2, phi0, C, heapCell#13, cos, disp, heapCell#10, heapCell#12, M23, disptplus, ARCHnodes, M, heapCell#19, sin, nullCell, phi1, dispt, vel, disptminus, time, V23, heapCell#15, Exc, heapCell#14]
            WRITE_S: [nullCell]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [ARCHnodes]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < ARCHnodes; i++) {
            /*READ_S: [heapCell#11, C23, heapCell#20, phi2, phi0, C, heapCell#13, cos, disp, heapCell#10, heapCell#12, M23, disptplus, M, heapCell#19, sin, nullCell, phi1, dispt, vel, disptminus, time, V23, heapCell#15, Exc, heapCell#14]
            WRITE_S: [nullCell]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#11, C23, heapCell#20, phi2, phi0, C, heapCell#13, cos, disp, heapCell#10, heapCell#12, M23, disptplus, M, heapCell#19, sin, nullCell, phi1, dispt, vel, disptminus, time, V23, heapCell#15, Exc, heapCell#14]
                WRITE_S: [nullCell]*/
                for (j = 0; j < 3; j++) {
                /*READ_S: [heapCell#11, C23, heapCell#20, phi2, phi0, C, heapCell#13, cos, disp, heapCell#10, heapCell#12, M23, disptplus, M, heapCell#19, sin, nullCell, phi1, dispt, vel, disptminus, time, V23, heapCell#15, Exc, heapCell#14]
                WRITE_S: [nullCell]*/
                    /*READ_S: [disp, disptplus, heapCell#19, nullCell, heapCell#20, Exc]
                    WRITE_S: [nullCell]*/
                    disp[disptplus][i][j] *= -Exc.dt * Exc.dt;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre240;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre241;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre242;
                    /*READ_S: [time, phi2]
                    WRITE_S: []*/
                    _imopVarPre240 = phi2(time);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [time, phi1]
                    WRITE_S: []*/
                    _imopVarPre241 = phi1(time);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [time, phi0]
                    WRITE_S: []*/
                    _imopVarPre242 = phi0(time);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [heapCell#11, C23, nullCell, heapCell#20, dispt, C, heapCell#13, disp, heapCell#12, M23, disptplus, disptminus, M, heapCell#19, V23, heapCell#15, Exc, heapCell#14]
                    WRITE_S: [nullCell]*/
                    disp[disptplus][i][j] += 2.0 * M[i][j] * disp[dispt][i][j] - (M[i][j] - Exc.dt / 2.0 * C[i][j]) * disp[disptminus][i][j] - Exc.dt * Exc.dt * (M23[i][j] * _imopVarPre240 / 2.0 + C23[i][j] * _imopVarPre241 / 2.0 + V23[i][j] * _imopVarPre242 / 2.0);
                    /*READ_S: [disp, heapCell#11, heapCell#12, disptplus, M, heapCell#19, nullCell, heapCell#20, Exc, C]
                    WRITE_S: [nullCell]*/
                    disp[disptplus][i][j] = disp[disptplus][i][j] / (M[i][j] + Exc.dt / 2.0 * C[i][j]);
                    /*READ_S: [disp, heapCell#10, vel, disptplus, disptminus, heapCell#19, nullCell, heapCell#20, Exc]
                    WRITE_S: [nullCell]*/
                    vel[i][j] = 0.5 / Exc.dt * (disp[disptplus][i][j] - disp[disptminus][i][j]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ARCHglobalnode, Src, nullCell, heapCell#20, disp, printf, __stderrp, ARCHmine, fflush, heapCell#1, fprintf, __stdoutp, heapCell#19]
        WRITE_S: [nullCell]*/
        if (iter % Step_stride == 0) {
        /*READ_S: [ARCHglobalnode, Src, nullCell, heapCell#20, disp, printf, __stderrp, ARCHmine, fflush, heapCell#1, fprintf, __stdoutp, heapCell#19]
        WRITE_S: [nullCell]*/
            /*READ_S: [__stderrp, fprintf, nullCell]
            WRITE_S: [nullCell]*/
            fprintf(__stderrp, "Time step %d\n", iter);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ARCHmine, Src]
            WRITE_S: []*/
            /*READ_S: [ARCHglobalnode, disp, printf, ARCHmine, heapCell#1, heapCell#19, Src, nullCell, heapCell#20]
            WRITE_S: []*/
            if (Src.sourcenode <= ARCHmine) {
            /*READ_S: [ARCHglobalnode, disp, printf, heapCell#1, heapCell#19, Src, nullCell, heapCell#20]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre247;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre248;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre249;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre250;
                /*READ_S: [disp, heapCell#19, Src, nullCell, heapCell#20]
                WRITE_S: []*/
                _imopVarPre247 = disp[disptplus][Src.sourcenode][2];
                /*READ_S: [disp, heapCell#19, Src, nullCell, heapCell#20]
                WRITE_S: []*/
                _imopVarPre248 = disp[disptplus][Src.sourcenode][1];
                /*READ_S: [disp, heapCell#19, Src, nullCell, heapCell#20]
                WRITE_S: []*/
                _imopVarPre249 = disp[disptplus][Src.sourcenode][0];
                /*READ_S: [ARCHglobalnode, heapCell#1, Src, nullCell]
                WRITE_S: []*/
                _imopVarPre250 = ARCHglobalnode[Src.sourcenode];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("%d: %.2e %.2e %.2e\n", _imopVarPre250, _imopVarPre249, _imopVarPre248, _imopVarPre247);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: [ARCHmine, Src]
            WRITE_S: []*/
            /*READ_S: [ARCHglobalnode, disp, printf, ARCHmine, heapCell#1, heapCell#19, Src, nullCell, heapCell#20]
            WRITE_S: []*/
            if (Src.epicenternode <= ARCHmine) {
            /*READ_S: [ARCHglobalnode, disp, printf, heapCell#1, heapCell#19, Src, nullCell, heapCell#20]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre255;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre256;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre257;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre258;
                /*READ_S: [disp, heapCell#19, Src, nullCell, heapCell#20]
                WRITE_S: []*/
                _imopVarPre255 = disp[disptplus][Src.epicenternode][2];
                /*READ_S: [disp, heapCell#19, Src, nullCell, heapCell#20]
                WRITE_S: []*/
                _imopVarPre256 = disp[disptplus][Src.epicenternode][1];
                /*READ_S: [disp, heapCell#19, Src, nullCell, heapCell#20]
                WRITE_S: []*/
                _imopVarPre257 = disp[disptplus][Src.epicenternode][0];
                /*READ_S: [ARCHglobalnode, heapCell#1, Src, nullCell]
                WRITE_S: []*/
                _imopVarPre258 = ARCHglobalnode[Src.epicenternode];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("%d: %.2e %.2e %.2e\n", _imopVarPre258, _imopVarPre257, _imopVarPre256, _imopVarPre255);
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: [fflush, __stdoutp, nullCell]
            WRITE_S: [nullCell]*/
            fflush(__stdoutp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        i = disptminus;
        /*READ_S: []
        WRITE_S: []*/
        disptminus = dispt;
        /*READ_S: []
        WRITE_S: []*/
        dispt = disptplus;
        /*READ_S: []
        WRITE_S: []*/
        disptplus = i;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [numthreads]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#22, heapCell#16, w1, free, nullCell, numthreads]
    WRITE_S: [heapCell#22, nullCell]*/
    for (i = 0; i < numthreads; i++) {
    /*READ_S: [heapCell#22, heapCell#16, w1, free, nullCell]
    WRITE_S: [heapCell#22, nullCell]*/
        /*READ_S: []
        WRITE_S: []*/
        struct smallarray_s *_imopVarPre260;
        /*READ_S: [heapCell#16, w1, nullCell]
        WRITE_S: []*/
        _imopVarPre260 = w1[i];
        /*READ_S: [heapCell#22, free, nullCell]
        WRITE_S: [heapCell#22, nullCell]*/
        free(_imopVarPre260);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [heapCell#22, heapCell#16, w1, free, nullCell]
    WRITE_S: [heapCell#22, heapCell#16, nullCell]*/
    free(w1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, ARCHglobalelems, nullCell, ARCHglobalnodes]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "%d nodes %d elems %d timesteps\n", ARCHglobalnodes, ARCHglobalelems, timesteps);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    fprintf(__stderrp, "\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stderrp, fflush, nullCell]
    WRITE_S: [nullCell]*/
    fflush(__stderrp);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [options]
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell, options]
    WRITE_S: [nullCell]*/
    if (!options.quiet) {
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "Done. Terminating the simulation.\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
void shape_ders(double ds[][4]) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ds[0][0] = -1;
    /*READ_S: []
    WRITE_S: []*/
    ds[1][0] = -1;
    /*READ_S: []
    WRITE_S: []*/
    ds[2][0] = -1;
    /*READ_S: []
    WRITE_S: []*/
    ds[0][1] = 1;
    /*READ_S: []
    WRITE_S: []*/
    ds[1][1] = 0;
    /*READ_S: []
    WRITE_S: []*/
    ds[2][1] = 0;
    /*READ_S: []
    WRITE_S: []*/
    ds[0][2] = 0;
    /*READ_S: []
    WRITE_S: []*/
    ds[1][2] = 1;
    /*READ_S: []
    WRITE_S: []*/
    ds[2][2] = 0;
    /*READ_S: []
    WRITE_S: []*/
    ds[0][3] = 0;
    /*READ_S: []
    WRITE_S: []*/
    ds[1][3] = 0;
    /*READ_S: []
    WRITE_S: []*/
    ds[2][3] = 1;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
void get_Enu(struct properties *prop, double *E , double *nu) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double ratio;
    /*READ_S: []
    WRITE_S: []*/
    ratio = prop->cp / prop->cs;
    /*READ_S: []
    WRITE_S: []*/
    ratio = ratio * ratio;
    /*READ_S: []
    WRITE_S: []*/
    *nu = 0.5 * (ratio - 2.0) / (ratio - 1.0);
    /*READ_S: []
    WRITE_S: []*/
    *E = 2.0 * prop->den * prop->cs * prop->cs * (1.0 + *nu);
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [jacobian.f]
WRITE_S: [jacobian.f]*/
void inv_J(double a[][3], double *det) {
/*READ_S: [jacobian.f]
WRITE_S: [jacobian.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double d1;
    /*READ_S: []
    WRITE_S: []*/
    double c[3][3];
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    c[0][0] = a[1][1] * a[2][2] - a[2][1] * a[1][2];
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    c[0][1] = a[0][2] * a[2][1] - a[0][1] * a[2][2];
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    c[0][2] = a[0][1] * a[1][2] - a[0][2] * a[1][1];
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    c[1][0] = a[1][2] * a[2][0] - a[1][0] * a[2][2];
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    c[1][1] = a[0][0] * a[2][2] - a[0][2] * a[2][0];
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    c[1][2] = a[0][2] * a[1][0] - a[0][0] * a[1][2];
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    c[2][0] = a[1][0] * a[2][1] - a[1][1] * a[2][0];
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    c[2][1] = a[0][1] * a[2][0] - a[0][0] * a[2][1];
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    c[2][2] = a[0][0] * a[1][1] - a[0][1] * a[1][0];
    /*READ_S: [jacobian.f]
    WRITE_S: []*/
    *det = a[0][0] * c[0][0] + a[0][1] * c[1][0] + a[0][2] * c[2][0];
    /*READ_S: []
    WRITE_S: []*/
    d1 = 1.0 / *det;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [jacobian.f]
    WRITE_S: [jacobian.f]*/
    for (i = 0; i < 3; i++) {
    /*READ_S: [jacobian.f]
    WRITE_S: [jacobian.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [jacobian.f]
        WRITE_S: [jacobian.f]*/
        for (j = 0; j < 3; j++) {
        /*READ_S: [jacobian.f]
        WRITE_S: [jacobian.f]*/
            /*READ_S: [jacobian.f]
            WRITE_S: [jacobian.f]*/
            a[i][j] = c[i][j] * d1;
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
/*READ_S: [jacobian.f, __stderrp, fprintf, shape_ders, inv_J, nullCell, get_Enu]
WRITE_S: [jacobian.f, nullCell]*/
void element_matrices(double vertices[][3], struct properties *prop , double Ke[][12] , double Me[]) {
/*READ_S: [jacobian.f, __stderrp, fprintf, shape_ders, inv_J, nullCell, get_Enu]
WRITE_S: [jacobian.f, nullCell]*/
    /*READ_S: []
    WRITE_S: []*/
    double ds[3][4];
    /*READ_S: []
    WRITE_S: []*/
    double sum[3];
    /*READ_S: []
    WRITE_S: []*/
    double jacobian[3][3];
    /*READ_S: []
    WRITE_S: []*/
    double det;
    /*READ_S: []
    WRITE_S: []*/
    double volume;
    /*READ_S: []
    WRITE_S: []*/
    double E;
    /*READ_S: []
    WRITE_S: []*/
    double nu;
    /*READ_S: []
    WRITE_S: []*/
    double c1;
    /*READ_S: []
    WRITE_S: []*/
    double c2;
    /*READ_S: []
    WRITE_S: []*/
    double c3;
    /*READ_S: []
    WRITE_S: []*/
    double tt;
    /*READ_S: []
    WRITE_S: []*/
    double ts;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int n;
    /*READ_S: []
    WRITE_S: []*/
    int row;
    /*READ_S: []
    WRITE_S: []*/
    int column;
    /*READ_S: [shape_ders]
    WRITE_S: []*/
    shape_ders(ds);
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
    for (i = 0; i < 3; i++) {
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
        for (j = 0; j < 3; j++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            sum[0] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (m = 0; m < 4; m++) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                sum[0] = sum[0] + ds[i][m] * vertices[m][j];
            }
            /*READ_S: []
            WRITE_S: []*/
            jacobian[j][i] = sum[0];
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre262;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre262 = &det;
    /*READ_S: [inv_J]
    WRITE_S: []*/
    inv_J(jacobian, _imopVarPre262);
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
    for (m = 0; m < 4; m++) {
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
        for (i = 0; i < 3; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            sum[i] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j < 3; j++) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                sum[i] = sum[i] + jacobian[j][i] * ds[j][m];
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
        for (i = 0; i < 3; i++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            ds[i][m] = sum[i];
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    volume = det / 6.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (volume <= 0) {
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "Warning: Element volume = %f !\n", volume);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre265;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre266;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre265 = &nu;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre266 = &E;
    /*READ_S: [get_Enu]
    WRITE_S: []*/
    get_Enu(prop, _imopVarPre266, _imopVarPre265);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    c1 = E / (2.0 * (nu + 1.0) * (1.0 - nu * 2.0)) * volume;
    /*READ_S: []
    WRITE_S: []*/
    c2 = E * nu / ((nu + 1.0) * (1.0 - nu * 2.0)) * volume;
    /*READ_S: []
    WRITE_S: []*/
    c3 = E / ((nu + 1.0) * 2.0) * volume;
    /*READ_S: []
    WRITE_S: []*/
    row = -1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (m = 0; m < 4; m++) {
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
        for (i = 0; i < 3; ++i) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            ++row;
            /*READ_S: []
            WRITE_S: []*/
            column = -1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (n = 0; n <= m; n++) {
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
                for (j = 0; j < 3; j++) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    ++column;
                    /*READ_S: []
                    WRITE_S: []*/
                    ts = ds[i][m] * ds[j][n];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    if (i == j) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        ts = ts * c1;
                        /*READ_S: []
                        WRITE_S: []*/
                        tt = (ds[0][m] * ds[0][n] + ds[1][m] * ds[1][n] + ds[2][m] * ds[2][n]) * c3;
                    } else {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        if (m == n) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            ts = ts * c1;
                            /*READ_S: []
                            WRITE_S: []*/
                            tt = 0;
                        } else {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            ts = ts * c2;
                            /*READ_S: []
                            WRITE_S: []*/
                            tt = ds[j][m] * ds[i][n] * c3;
                        }
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    Ke[row][column] = Ke[row][column] + ts + tt;
                }
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    tt = prop->den * volume / 4.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < 12; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        Me[i] = tt;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < 12; i++) {
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
        for (j = 0; j <= i; j++) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            Ke[j][i] = Ke[i][j];
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [sqrt]
WRITE_S: []*/
double area_triangle(double vertices[][3]) {
/*READ_S: [sqrt]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double a;
    /*READ_S: []
    WRITE_S: []*/
    double b;
    /*READ_S: []
    WRITE_S: []*/
    double c;
    /*READ_S: []
    WRITE_S: []*/
    double x2;
    /*READ_S: []
    WRITE_S: []*/
    double y2;
    /*READ_S: []
    WRITE_S: []*/
    double z2;
    /*READ_S: []
    WRITE_S: []*/
    double p;
    /*READ_S: []
    WRITE_S: []*/
    double area;
    /*READ_S: []
    WRITE_S: []*/
    x2 = (vertices[0][0] - vertices[1][0]) * (vertices[0][0] - vertices[1][0]);
    /*READ_S: []
    WRITE_S: []*/
    y2 = (vertices[0][1] - vertices[1][1]) * (vertices[0][1] - vertices[1][1]);
    /*READ_S: []
    WRITE_S: []*/
    z2 = (vertices[0][2] - vertices[1][2]) * (vertices[0][2] - vertices[1][2]);
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre268;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre269;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre268 = x2 + y2 + z2;
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre269 = sqrt(_imopVarPre268);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    a = _imopVarPre269;
    /*READ_S: []
    WRITE_S: []*/
    x2 = (vertices[2][0] - vertices[1][0]) * (vertices[2][0] - vertices[1][0]);
    /*READ_S: []
    WRITE_S: []*/
    y2 = (vertices[2][1] - vertices[1][1]) * (vertices[2][1] - vertices[1][1]);
    /*READ_S: []
    WRITE_S: []*/
    z2 = (vertices[2][2] - vertices[1][2]) * (vertices[2][2] - vertices[1][2]);
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre271;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre272;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre271 = x2 + y2 + z2;
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre272 = sqrt(_imopVarPre271);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    b = _imopVarPre272;
    /*READ_S: []
    WRITE_S: []*/
    x2 = (vertices[0][0] - vertices[2][0]) * (vertices[0][0] - vertices[2][0]);
    /*READ_S: []
    WRITE_S: []*/
    y2 = (vertices[0][1] - vertices[2][1]) * (vertices[0][1] - vertices[2][1]);
    /*READ_S: []
    WRITE_S: []*/
    z2 = (vertices[0][2] - vertices[2][2]) * (vertices[0][2] - vertices[2][2]);
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre274;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre275;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre274 = x2 + y2 + z2;
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre275 = sqrt(_imopVarPre274);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    c = _imopVarPre275;
    /*READ_S: []
    WRITE_S: []*/
    p = (a + b + c) / 2.0;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre277;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre278;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre277 = p * (p - a) * (p - b) * (p - c);
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre278 = sqrt(_imopVarPre277);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    area = _imopVarPre278;
    /*READ_S: []
    WRITE_S: []*/
    return area;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [area_triangle, sqrt]
WRITE_S: []*/
void abe_matrix(double vertices[][3], int bv[] , struct properties *prop , double Ce[]) {
/*READ_S: [area_triangle, sqrt]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    double area;
    /*READ_S: [area_triangle]
    WRITE_S: []*/
    area = area_triangle(vertices);
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
    for (i = 0; i < 3; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        j = 3 * bv[i];
        /*READ_S: []
        WRITE_S: []*/
        Ce[j] = Ce[j] + prop->cs * prop->den * area / 3.0;
        /*READ_S: []
        WRITE_S: []*/
        Ce[j + 1] = Ce[j + 1] + prop->cs * prop->den * area / 3.0;
        /*READ_S: []
        WRITE_S: []*/
        Ce[j + 2] = Ce[j + 2] + prop->cp * prop->den * area / 3.0;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [sin, Exc]
WRITE_S: []*/
double phi0(double t) {
/*READ_S: [sin, Exc]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double value;
    /*READ_S: [Exc]
    WRITE_S: []*/
    /*READ_S: [sin, Exc]
    WRITE_S: []*/
    if (t <= Exc.t0) {
    /*READ_S: [sin, Exc]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre285;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre286;
        /*READ_S: [Exc]
        WRITE_S: []*/
        _imopVarPre285 = 2.0 * 3.141592653589793238 * t / Exc.t0;
        /*READ_S: [sin]
        WRITE_S: []*/
        _imopVarPre286 = sin(_imopVarPre285);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [Exc]
        WRITE_S: []*/
        value = 0.5 / 3.141592653589793238 * (2.0 * 3.141592653589793238 * t / Exc.t0 - _imopVarPre286);
        /*READ_S: []
        WRITE_S: []*/
        return value;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        return 1.0;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [cos, Exc]
WRITE_S: []*/
double phi1(double t) {
/*READ_S: [cos, Exc]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double value;
    /*READ_S: [Exc]
    WRITE_S: []*/
    /*READ_S: [cos, Exc]
    WRITE_S: []*/
    if (t <= Exc.t0) {
    /*READ_S: [cos, Exc]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre293;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre294;
        /*READ_S: [Exc]
        WRITE_S: []*/
        _imopVarPre293 = 2.0 * 3.141592653589793238 * t / Exc.t0;
        /*READ_S: [cos]
        WRITE_S: []*/
        _imopVarPre294 = cos(_imopVarPre293);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [Exc]
        WRITE_S: []*/
        value = (1.0 - _imopVarPre294) / Exc.t0;
        /*READ_S: []
        WRITE_S: []*/
        return value;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        return 0.0;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [sin, Exc]
WRITE_S: []*/
double phi2(double t) {
/*READ_S: [sin, Exc]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double value;
    /*READ_S: [Exc]
    WRITE_S: []*/
    /*READ_S: [sin, Exc]
    WRITE_S: []*/
    if (t <= Exc.t0) {
    /*READ_S: [sin, Exc]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre297;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre298;
        /*READ_S: [Exc]
        WRITE_S: []*/
        _imopVarPre297 = 2.0 * 3.141592653589793238 * t / Exc.t0;
        /*READ_S: [sin]
        WRITE_S: []*/
        _imopVarPre298 = sin(_imopVarPre297);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [Exc]
        WRITE_S: []*/
        value = 2.0 * 3.141592653589793238 / Exc.t0 / Exc.t0 * _imopVarPre298;
        /*READ_S: []
        WRITE_S: []*/
        return value;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        return 0.0;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [cos, sin, Src]
WRITE_S: [uf.f]*/
void slip(double *u, double *v , double *w) {
/*READ_S: [cos, sin, Src]
WRITE_S: [uf.f]*/
    /*READ_S: []
    WRITE_S: [uf.f]*/
    *u = *v = *w = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre329;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre330;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre331;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre332;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre333;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre334;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre335;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre336;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre337;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre338;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre329 = Src.rake;
    /*READ_S: [cos]
    WRITE_S: []*/
    _imopVarPre330 = cos(_imopVarPre329);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre331 = Src.strike;
    /*READ_S: [sin]
    WRITE_S: []*/
    _imopVarPre332 = sin(_imopVarPre331);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre333 = Src.rake;
    /*READ_S: [sin]
    WRITE_S: []*/
    _imopVarPre334 = sin(_imopVarPre333);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre335 = Src.strike;
    /*READ_S: [cos]
    WRITE_S: []*/
    _imopVarPre336 = cos(_imopVarPre335);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre337 = Src.dip;
    /*READ_S: [cos]
    WRITE_S: []*/
    _imopVarPre338 = cos(_imopVarPre337);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [uf.f]*/
    *u = (_imopVarPre330 * _imopVarPre332 - _imopVarPre334 * _imopVarPre336 * _imopVarPre338);
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre369;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre370;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre371;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre372;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre373;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre374;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre375;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre376;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre377;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre378;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre369 = Src.rake;
    /*READ_S: [cos]
    WRITE_S: []*/
    _imopVarPre370 = cos(_imopVarPre369);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre371 = Src.strike;
    /*READ_S: [cos]
    WRITE_S: []*/
    _imopVarPre372 = cos(_imopVarPre371);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre373 = Src.rake;
    /*READ_S: [sin]
    WRITE_S: []*/
    _imopVarPre374 = sin(_imopVarPre373);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre375 = Src.strike;
    /*READ_S: [sin]
    WRITE_S: []*/
    _imopVarPre376 = sin(_imopVarPre375);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre377 = Src.dip;
    /*READ_S: [cos]
    WRITE_S: []*/
    _imopVarPre378 = cos(_imopVarPre377);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [uf.f]*/
    *v = (_imopVarPre370 * _imopVarPre372 + _imopVarPre374 * _imopVarPre376 * _imopVarPre378);
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre383;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre384;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre385;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre386;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre383 = Src.rake;
    /*READ_S: [sin]
    WRITE_S: []*/
    _imopVarPre384 = sin(_imopVarPre383);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre385 = Src.dip;
    /*READ_S: [sin]
    WRITE_S: []*/
    _imopVarPre386 = sin(_imopVarPre385);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [uf.f]*/
    *w = _imopVarPre384 * _imopVarPre386;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [c0.f, nullCell]
WRITE_S: []*/
double distance(double p1[], double p2[]) {
/*READ_S: [c0.f, nullCell]
WRITE_S: []*/
    /*READ_S: [c0.f, nullCell]
    WRITE_S: []*/
    return ((p1[0] - p2[0]) * (p1[0] - p2[0]) + (p1[1] - p2[1]) * (p1[1] - p2[1]) + (p1[2] - p2[2]) * (p1[2] - p2[2]));
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [vertices.f]
WRITE_S: []*/
void centroid(double x[][3], double xc[]) {
/*READ_S: [vertices.f]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [vertices.f]
    WRITE_S: []*/
    for (i = 0; i < 3; i++) {
    /*READ_S: [vertices.f]
    WRITE_S: []*/
        /*READ_S: [vertices.f]
        WRITE_S: []*/
        xc[i] = (x[0][i] + x[1][i] + x[2][i] + x[3][i]) / 4.0;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [cos, xc.f, sin, Src]
WRITE_S: []*/
double point2fault(double x[]) {
/*READ_S: [cos, xc.f, sin, Src]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double nx;
    /*READ_S: []
    WRITE_S: []*/
    double ny;
    /*READ_S: []
    WRITE_S: []*/
    double nz;
    /*READ_S: []
    WRITE_S: []*/
    double d0;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre391;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre392;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre393;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre394;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre391 = Src.strike;
    /*READ_S: [cos]
    WRITE_S: []*/
    _imopVarPre392 = cos(_imopVarPre391);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre393 = Src.dip;
    /*READ_S: [sin]
    WRITE_S: []*/
    _imopVarPre394 = sin(_imopVarPre393);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    nx = _imopVarPre392 * _imopVarPre394;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre399;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre400;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre401;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre402;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre399 = Src.strike;
    /*READ_S: [sin]
    WRITE_S: []*/
    _imopVarPre400 = sin(_imopVarPre399);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre401 = Src.dip;
    /*READ_S: [sin]
    WRITE_S: []*/
    _imopVarPre402 = sin(_imopVarPre401);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    ny = -_imopVarPre400 * _imopVarPre402;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre404;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre405;
    /*READ_S: [Src]
    WRITE_S: []*/
    _imopVarPre404 = Src.dip;
    /*READ_S: [cos]
    WRITE_S: []*/
    _imopVarPre405 = cos(_imopVarPre404);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    nz = _imopVarPre405;
    /*READ_S: [Src]
    WRITE_S: []*/
    d0 = -(nx * Src.xyz[0] + ny * Src.xyz[1] + nz * Src.xyz[2]);
    /*READ_S: [xc.f]
    WRITE_S: []*/
    return (double) nx * x[0] + ny * x[1] + nz * x[2] + d0;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [Ke.f]
WRITE_S: []*/
void mv12x12(double m[][12], double v[]) {
/*READ_S: [Ke.f]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    double u[12];
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Ke.f]
    WRITE_S: []*/
    for (i = 0; i < 12; i++) {
    /*READ_S: [Ke.f]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        u[i] = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [Ke.f]
        WRITE_S: []*/
        for (j = 0; j < 12; j++) {
        /*READ_S: [Ke.f]
        WRITE_S: []*/
            /*READ_S: [Ke.f]
            WRITE_S: []*/
            u[i] += m[i][j] * v[j];
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
    for (i = 0; i < 12; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        v[i] = u[i];
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [Me.f, v.f, Ce.f]
WRITE_S: [Mexv.f, Cexv.f]*/
void vv12x12(double v1[], double v2[] , double u[]) {
/*READ_S: [Me.f, v.f, Ce.f]
WRITE_S: [Mexv.f, Cexv.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [Me.f, v.f, Ce.f]
    WRITE_S: [Mexv.f, Cexv.f]*/
    for (i = 0; i < 12; i++) {
    /*READ_S: [Me.f, v.f, Ce.f]
    WRITE_S: [Mexv.f, Cexv.f]*/
        /*READ_S: [Me.f, v.f, Ce.f]
        WRITE_S: [Mexv.f, Cexv.f]*/
        u[i] = v1[i] * v2[i];
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [exit]
WRITE_S: []*/
void arch_bail(void ) {
/*READ_S: [exit]
WRITE_S: []*/
    /*READ_S: [exit]
    WRITE_S: []*/
    exit(0);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [printf]
WRITE_S: []*/
void arch_info(void ) {
/*READ_S: [printf]
WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("You are running an Archimedes finite element simulation.\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("The command syntax is:\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("quake [-Qh] < packfile\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("Command line options:\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("    -Q  Quietly suppress all explanation of what this program is doing\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("        unless an error occurs.\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("    -h  Print this message and exit.\n");
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [exit, printf, arch_info, heapCell#0, _imopVarPre407, options]
WRITE_S: [options]*/
void arch_parsecommandline(int argc, char **argv , struct options *op) {
/*READ_S: [exit, printf, arch_info, heapCell#0, _imopVarPre407, options]
WRITE_S: [options]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: [options]
    WRITE_S: [options]*/
    op->quiet = 0;
    /*READ_S: [options]
    WRITE_S: [options]*/
    op->help = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#0, _imopVarPre407, options]
    WRITE_S: [options]*/
    for (i = 1; i < argc; i++) {
    /*READ_S: [heapCell#0, _imopVarPre407, options]
    WRITE_S: [options]*/
        /*READ_S: [heapCell#0]
        WRITE_S: []*/
        /*READ_S: [heapCell#0, _imopVarPre407, options]
        WRITE_S: [options]*/
        if (argv[i][0] == '-') {
        /*READ_S: [heapCell#0, _imopVarPre407, options]
        WRITE_S: [options]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#0]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#0, _imopVarPre407, options]
            WRITE_S: [options]*/
            for (j = 1; argv[i][j] != '\0'; j++) {
            /*READ_S: [heapCell#0, _imopVarPre407, options]
            WRITE_S: [options]*/
                /*READ_S: [heapCell#0]
                WRITE_S: []*/
                /*READ_S: [heapCell#0, options]
                WRITE_S: [options]*/
                if (argv[i][j] == 'Q') {
                /*READ_S: [options]
                WRITE_S: [options]*/
                    /*READ_S: [options]
                    WRITE_S: [options]*/
                    op->quiet = 1;
                }
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre407;
                /*READ_S: [heapCell#0]
                WRITE_S: []*/
                _imopVarPre407 = argv[i][j] == 'h';
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [heapCell#0]
                WRITE_S: []*/
                if (!_imopVarPre407) {
                /*READ_S: [heapCell#0]
                WRITE_S: []*/
                    /*READ_S: [heapCell#0]
                    WRITE_S: []*/
                    _imopVarPre407 = argv[i][j] == 'H';
                }
                /*READ_S: [_imopVarPre407]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre407, options]
                WRITE_S: [options]*/
                if (_imopVarPre407) {
                /*READ_S: [options]
                WRITE_S: [options]*/
                    /*READ_S: [options]
                    WRITE_S: [options]*/
                    op->help = 1;
                }
            }
        }
    }
    /*READ_S: [options]
    WRITE_S: []*/
    /*READ_S: [exit, printf, arch_info, options]
    WRITE_S: []*/
    if (op->help) {
    /*READ_S: [exit, printf, arch_info]
    WRITE_S: []*/
        /*READ_S: [arch_info]
        WRITE_S: []*/
        arch_info();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [packfile, exit, __stderrp, fscanf, fprintf, nullCell, &heapCell#7, heapCell#7, arch_bail]
WRITE_S: [nullCell, heapCell#7]*/
void arch_readnodevector(double *v, int n) {
/*READ_S: [packfile, exit, __stderrp, fscanf, fprintf, nullCell, &heapCell#7, heapCell#7, arch_bail]
WRITE_S: [nullCell, heapCell#7]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int type;
    /*READ_S: []
    WRITE_S: []*/
    int attributes;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre410;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre411;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre410 = &attributes;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre411 = &type;
    /*READ_S: [packfile, fscanf, nullCell]
    WRITE_S: [nullCell]*/
    fscanf(packfile, "%d %d\n", _imopVarPre411, _imopVarPre410);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fprintf, nullCell, arch_bail]
    WRITE_S: [nullCell]*/
    if (type != 2) {
    /*READ_S: [exit, __stderrp, fprintf, nullCell, arch_bail]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "READNODEVECTOR: unexpected data type\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [arch_bail]
        WRITE_S: []*/
        arch_bail();
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fprintf, nullCell, arch_bail]
    WRITE_S: [nullCell]*/
    if (attributes != 1) {
    /*READ_S: [exit, __stderrp, fprintf, nullCell, arch_bail]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "READNODEVECTOR: unexpected number of attributes\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [arch_bail]
        WRITE_S: []*/
        arch_bail();
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [packfile, fscanf, nullCell, &heapCell#7, heapCell#7]
    WRITE_S: [nullCell, heapCell#7]*/
    for (i = 0; i < n; i++) {
    /*READ_S: [packfile, fscanf, nullCell, &heapCell#7, heapCell#7]
    WRITE_S: [nullCell, heapCell#7]*/
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre413;
        /*READ_S: [&heapCell#7]
        WRITE_S: []*/
        _imopVarPre413 = &v[i];
        /*READ_S: [packfile, fscanf, nullCell, heapCell#7]
        WRITE_S: [nullCell, heapCell#7]*/
        fscanf(packfile, "%lf", _imopVarPre413);
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [exit, &ARCHpriv, heapCell#5, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, &heapCell#3, __stderrp, &ARCHmine, fflush, &ARCHnodes, fscanf, ARCHduration, heapCell#2, malloc, &ARCHglobalnodes, ARCHelems, arch_bail, ARCHglobalnode, ARCHvertex, &heapCell#1, heapCell#23, heapCell#3, ARCHcholeskylen, ARCHglobalelem, &ARCHmatrixlen, &ARCHmesh_dim, ARCHsubdomains, ARCHpriv, &ARCHglobalelems, &ARCHcorners, printf, ARCHmine, fprintf, ARCHnodes, &heapCell#24, &ARCHduration, heapCell#4, ARCHglobalnodes, &ARCHelems, ARCHmesh_dim, nullCell, ARCHcoord, &ARCHcholeskylen, &heapCell#5, ARCHmatrixcol, &heapCell#23, ARCHmatrixlen, heapCell#1, options, &ARCHsubdomains, heapCell#24]
WRITE_S: [ARCHpriv, heapCell#5, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, ARCHmine, ARCHnodes, ARCHduration, heapCell#2, ARCHelems, heapCell#4, ARCHglobalnodes, ARCHglobalnode, ARCHvertex, ARCHmesh_dim, heapCell#23, nullCell, ARCHcoord, heapCell#3, ARCHcholeskylen, heapCell#6, ARCHglobalelem, ARCHmatrixcol, ARCHmatrixlen, heapCell#1, heapCell#24, ARCHsubdomains]*/
void readpackfile(FILE *packfile, struct options *op) {
/*READ_S: [exit, &ARCHpriv, heapCell#5, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, &heapCell#3, __stderrp, &ARCHmine, fflush, &ARCHnodes, fscanf, ARCHduration, heapCell#2, malloc, &ARCHglobalnodes, ARCHelems, arch_bail, ARCHglobalnode, ARCHvertex, &heapCell#1, heapCell#23, heapCell#3, ARCHcholeskylen, ARCHglobalelem, &ARCHmatrixlen, &ARCHmesh_dim, ARCHsubdomains, ARCHpriv, &ARCHglobalelems, &ARCHcorners, printf, ARCHmine, fprintf, ARCHnodes, &heapCell#24, &ARCHduration, heapCell#4, ARCHglobalnodes, &ARCHelems, ARCHmesh_dim, nullCell, ARCHcoord, &ARCHcholeskylen, &heapCell#5, ARCHmatrixcol, &heapCell#23, ARCHmatrixlen, heapCell#1, options, &ARCHsubdomains, heapCell#24]
WRITE_S: [ARCHpriv, heapCell#5, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, ARCHmine, ARCHnodes, ARCHduration, heapCell#2, ARCHelems, heapCell#4, ARCHglobalnodes, ARCHglobalnode, ARCHvertex, ARCHmesh_dim, heapCell#23, nullCell, ARCHcoord, heapCell#3, ARCHcholeskylen, heapCell#6, ARCHglobalelem, ARCHmatrixcol, ARCHmatrixlen, heapCell#1, heapCell#24, ARCHsubdomains]*/
    /*READ_S: []
    WRITE_S: []*/
    int oldrow;
    /*READ_S: []
    WRITE_S: []*/
    int newrow;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int temp1;
    /*READ_S: []
    WRITE_S: []*/
    int temp2;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre427;
    /*READ_S: [&ARCHglobalnodes]
    WRITE_S: []*/
    _imopVarPre427 = &ARCHglobalnodes;
    /*READ_S: [fscanf, nullCell, ARCHglobalnodes]
    WRITE_S: [nullCell, ARCHglobalnodes]*/
    fscanf(packfile, "%d", _imopVarPre427);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre429;
    /*READ_S: [&ARCHmesh_dim]
    WRITE_S: []*/
    _imopVarPre429 = &ARCHmesh_dim;
    /*READ_S: [ARCHmesh_dim, fscanf, nullCell]
    WRITE_S: [ARCHmesh_dim, nullCell]*/
    fscanf(packfile, "%d", _imopVarPre429);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre431;
    /*READ_S: [&ARCHglobalelems]
    WRITE_S: []*/
    _imopVarPre431 = &ARCHglobalelems;
    /*READ_S: [fscanf, nullCell, ARCHglobalelems]
    WRITE_S: [nullCell, ARCHglobalelems]*/
    fscanf(packfile, "%d", _imopVarPre431);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre433;
    /*READ_S: [&ARCHcorners]
    WRITE_S: []*/
    _imopVarPre433 = &ARCHcorners;
    /*READ_S: [fscanf, nullCell, ARCHcorners]
    WRITE_S: [nullCell, ARCHcorners]*/
    fscanf(packfile, "%d", _imopVarPre433);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre435;
    /*READ_S: [&ARCHsubdomains]
    WRITE_S: []*/
    _imopVarPre435 = &ARCHsubdomains;
    /*READ_S: [fscanf, nullCell, ARCHsubdomains]
    WRITE_S: [nullCell, ARCHsubdomains]*/
    fscanf(packfile, "%d", _imopVarPre435);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre437;
    /*READ_S: [&ARCHduration]
    WRITE_S: []*/
    _imopVarPre437 = &ARCHduration;
    /*READ_S: [fscanf, ARCHduration, nullCell]
    WRITE_S: [ARCHduration, nullCell]*/
    fscanf(packfile, "%lf", _imopVarPre437);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHsubdomains]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fprintf, nullCell, arch_bail, ARCHsubdomains]
    WRITE_S: [nullCell]*/
    if (ARCHsubdomains != 1) {
    /*READ_S: [exit, __stderrp, fprintf, nullCell, arch_bail, ARCHsubdomains]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell, ARCHsubdomains]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "quake: too many subdomains(%d), rerun slice using -s1\n", ARCHsubdomains);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [arch_bail]
        WRITE_S: []*/
        arch_bail();
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [options]
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell, options]
    WRITE_S: [nullCell]*/
    if (!op->quiet) {
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "quake: Reading nodes.\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre441;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre442;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre443;
    /*READ_S: [&ARCHpriv]
    WRITE_S: []*/
    _imopVarPre441 = &ARCHpriv;
    /*READ_S: [&ARCHmine]
    WRITE_S: []*/
    _imopVarPre442 = &ARCHmine;
    /*READ_S: [&ARCHnodes]
    WRITE_S: []*/
    _imopVarPre443 = &ARCHnodes;
    /*READ_S: [ARCHpriv, ARCHmine, fscanf, ARCHnodes, nullCell]
    WRITE_S: [ARCHpriv, ARCHmine, ARCHnodes, nullCell]*/
    fscanf(packfile, "%d %d %d", _imopVarPre443, _imopVarPre442, _imopVarPre441);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre446;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre447;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre446 = ARCHnodes * sizeof(int);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre447 = malloc(_imopVarPre446);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [ARCHglobalnode]*/
    ARCHglobalnode = (int *) _imopVarPre447;
    /*READ_S: [ARCHglobalnode]
    WRITE_S: []*/
    /*READ_S: [exit, ARCHglobalnode, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (ARCHglobalnode == (int *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for ARCHglobalnode\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre450;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre451;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre450 = ARCHnodes * sizeof(double *);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre451 = malloc(_imopVarPre450);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [ARCHcoord]*/
    ARCHcoord = (double **) _imopVarPre451;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHnodes, ARCHcoord, malloc]
    WRITE_S: [heapCell#2]*/
    for (i = 0; i < ARCHnodes; i++) {
    /*READ_S: [ARCHcoord, malloc]
    WRITE_S: [heapCell#2]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre454;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre455;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre454 = 3 * sizeof(double);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre455 = malloc(_imopVarPre454);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ARCHcoord]
        WRITE_S: [heapCell#2]*/
        ARCHcoord[i] = (double *) _imopVarPre455;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHglobalnode, &heapCell#1, ARCHmesh_dim, fscanf, heapCell#1, ARCHnodes, nullCell, ARCHcoord, heapCell#2, &heapCell#24, heapCell#24]
    WRITE_S: [heapCell#1, nullCell, heapCell#24]*/
    for (i = 0; i < ARCHnodes; i++) {
    /*READ_S: [ARCHglobalnode, &heapCell#1, ARCHmesh_dim, fscanf, heapCell#1, nullCell, ARCHcoord, heapCell#2, &heapCell#24, heapCell#24]
    WRITE_S: [heapCell#1, nullCell, heapCell#24]*/
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre457;
        /*READ_S: [ARCHglobalnode, &heapCell#1]
        WRITE_S: []*/
        _imopVarPre457 = &ARCHglobalnode[i];
        /*READ_S: [fscanf, heapCell#1, nullCell]
        WRITE_S: [heapCell#1, nullCell]*/
        fscanf(packfile, "%d", _imopVarPre457);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ARCHmesh_dim]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ARCHmesh_dim, fscanf, nullCell, ARCHcoord, heapCell#2, &heapCell#24, heapCell#24]
        WRITE_S: [nullCell, heapCell#24]*/
        for (j = 0; j < ARCHmesh_dim; j++) {
        /*READ_S: [fscanf, nullCell, ARCHcoord, heapCell#2, &heapCell#24, heapCell#24]
        WRITE_S: [nullCell, heapCell#24]*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre459;
            /*READ_S: [ARCHcoord, heapCell#2, &heapCell#24]
            WRITE_S: []*/
            _imopVarPre459 = &ARCHcoord[i][j];
            /*READ_S: [fscanf, nullCell, heapCell#24]
            WRITE_S: [nullCell, heapCell#24]*/
            fscanf(packfile, "%lf", _imopVarPre459);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: [options]
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell, options]
    WRITE_S: [nullCell]*/
    if (!op->quiet) {
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "quake: Reading elements.\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre461;
    /*READ_S: [&ARCHelems]
    WRITE_S: []*/
    _imopVarPre461 = &ARCHelems;
    /*READ_S: [fscanf, nullCell, ARCHelems]
    WRITE_S: [nullCell, ARCHelems]*/
    fscanf(packfile, "%d", _imopVarPre461);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre464;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre465;
    /*READ_S: [ARCHelems]
    WRITE_S: []*/
    _imopVarPre464 = ARCHelems * sizeof(int);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre465 = malloc(_imopVarPre464);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [ARCHglobalelem]*/
    ARCHglobalelem = (int *) _imopVarPre465;
    /*READ_S: [ARCHglobalelem]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, ARCHglobalelem, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (ARCHglobalelem == (int *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for ARCHglobalelem\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre468;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre469;
    /*READ_S: [ARCHelems]
    WRITE_S: []*/
    _imopVarPre468 = ARCHelems * sizeof(int *);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre469 = malloc(_imopVarPre468);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [ARCHvertex]*/
    ARCHvertex = (int **) _imopVarPre469;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHelems]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHvertex, malloc, ARCHelems]
    WRITE_S: [heapCell#4]*/
    for (i = 0; i < ARCHelems; i++) {
    /*READ_S: [ARCHvertex, malloc]
    WRITE_S: [heapCell#4]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre472;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre473;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre472 = 4 * sizeof(int);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre473 = malloc(_imopVarPre472);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ARCHvertex]
        WRITE_S: [heapCell#4]*/
        ARCHvertex[i] = (int *) _imopVarPre473;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHelems]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [&heapCell#3, ARCHvertex, ARCHglobalelem, &heapCell#23, heapCell#23, fscanf, nullCell, ARCHcorners, heapCell#4, ARCHelems, heapCell#3]
    WRITE_S: [heapCell#23, nullCell, heapCell#3]*/
    for (i = 0; i < ARCHelems; i++) {
    /*READ_S: [&heapCell#3, ARCHvertex, ARCHglobalelem, &heapCell#23, heapCell#23, fscanf, nullCell, ARCHcorners, heapCell#4, heapCell#3]
    WRITE_S: [heapCell#23, nullCell, heapCell#3]*/
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre475;
        /*READ_S: [&heapCell#3, ARCHglobalelem]
        WRITE_S: []*/
        _imopVarPre475 = &ARCHglobalelem[i];
        /*READ_S: [fscanf, nullCell, heapCell#3]
        WRITE_S: [nullCell, heapCell#3]*/
        fscanf(packfile, "%d", _imopVarPre475);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ARCHcorners]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ARCHvertex, &heapCell#23, heapCell#23, fscanf, nullCell, ARCHcorners, heapCell#4]
        WRITE_S: [heapCell#23, nullCell]*/
        for (j = 0; j < ARCHcorners; j++) {
        /*READ_S: [ARCHvertex, &heapCell#23, heapCell#23, fscanf, nullCell, heapCell#4]
        WRITE_S: [heapCell#23, nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            int *_imopVarPre477;
            /*READ_S: [ARCHvertex, &heapCell#23, heapCell#4]
            WRITE_S: []*/
            _imopVarPre477 = &ARCHvertex[i][j];
            /*READ_S: [heapCell#23, fscanf, nullCell]
            WRITE_S: [heapCell#23, nullCell]*/
            fscanf(packfile, "%d", _imopVarPre477);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: [options]
    WRITE_S: []*/
    /*READ_S: [__stderrp, fprintf, nullCell, options]
    WRITE_S: [nullCell]*/
    if (!op->quiet) {
    /*READ_S: [__stderrp, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "quake: Reading sparse matrix structure.\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre480;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre481;
    /*READ_S: [&ARCHcholeskylen]
    WRITE_S: []*/
    _imopVarPre480 = &ARCHcholeskylen;
    /*READ_S: [&ARCHmatrixlen]
    WRITE_S: []*/
    _imopVarPre481 = &ARCHmatrixlen;
    /*READ_S: [ARCHmatrixlen, fscanf, nullCell, ARCHcholeskylen]
    WRITE_S: [ARCHmatrixlen, nullCell, ARCHcholeskylen]*/
    fscanf(packfile, "%d %d", _imopVarPre481, _imopVarPre480);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre484;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre485;
    /*READ_S: [ARCHmatrixlen]
    WRITE_S: []*/
    _imopVarPre484 = (ARCHmatrixlen + 1) * sizeof(int);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre485 = malloc(_imopVarPre484);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [ARCHmatrixcol]*/
    ARCHmatrixcol = (int *) _imopVarPre485;
    /*READ_S: [ARCHmatrixcol]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, ARCHmatrixcol, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (ARCHmatrixcol == (int *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for ARCHmatrixcol\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre488;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre489;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre488 = (ARCHnodes + 1) * sizeof(int);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre489 = malloc(_imopVarPre488);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [ARCHmatrixindex]*/
    ARCHmatrixindex = (int *) _imopVarPre489;
    /*READ_S: [ARCHmatrixindex]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, fprintf, ARCHmatrixindex, nullCell]
    WRITE_S: [nullCell]*/
    if (ARCHmatrixindex == (int *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for ARCHmatrixindex\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    oldrow = -1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHmatrixlen]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, printf, &heapCell#5, ARCHmatrixcol, heapCell#5, ARCHmatrixlen, fscanf, ARCHnodes, ARCHmatrixindex, nullCell, arch_bail]
    WRITE_S: [heapCell#6, heapCell#5, nullCell]*/
    for (i = 0; i < ARCHmatrixlen; i++) {
    /*READ_S: [exit, printf, &heapCell#5, ARCHmatrixcol, heapCell#5, fscanf, ARCHnodes, ARCHmatrixindex, nullCell, arch_bail]
    WRITE_S: [heapCell#6, heapCell#5, nullCell]*/
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre491;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre491 = &newrow;
        /*READ_S: [fscanf, nullCell]
        WRITE_S: [nullCell]*/
        fscanf(packfile, "%d", _imopVarPre491);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre493;
        /*READ_S: [&heapCell#5, ARCHmatrixcol]
        WRITE_S: []*/
        _imopVarPre493 = &ARCHmatrixcol[i];
        /*READ_S: [heapCell#5, fscanf, nullCell]
        WRITE_S: [heapCell#5, nullCell]*/
        fscanf(packfile, "%d", _imopVarPre493);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit, printf, ARCHnodes, ARCHmatrixindex, arch_bail]
        WRITE_S: [heapCell#6, nullCell]*/
        while (oldrow < newrow) {
        /*READ_S: [exit, printf, ARCHnodes, ARCHmatrixindex, arch_bail]
        WRITE_S: [heapCell#6, nullCell]*/
            /*READ_S: [ARCHnodes]
            WRITE_S: []*/
            /*READ_S: [exit, printf, ARCHnodes, arch_bail]
            WRITE_S: []*/
            if (oldrow + 1 >= ARCHnodes + 1) {
            /*READ_S: [exit, printf, ARCHnodes, arch_bail]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre496;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre497;
                /*READ_S: [ARCHnodes]
                WRITE_S: []*/
                _imopVarPre496 = ARCHnodes + 1;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre497 = oldrow + 1;
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("quake: error: (1)idx buffer too small (%d >= %d)\n", _imopVarPre497, _imopVarPre496);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [arch_bail]
                WRITE_S: []*/
                arch_bail();
                /*READ_S: []
                WRITE_S: []*/
            }
            /*READ_S: [ARCHmatrixindex]
            WRITE_S: [heapCell#6, nullCell]*/
            ARCHmatrixindex[++oldrow] = i;
        }
    }
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    /*READ_S: [ARCHmatrixlen, ARCHnodes, ARCHmatrixindex]
    WRITE_S: [heapCell#6, nullCell]*/
    while (oldrow < ARCHnodes) {
    /*READ_S: [ARCHmatrixlen, ARCHmatrixindex]
    WRITE_S: [heapCell#6, nullCell]*/
        /*READ_S: [ARCHmatrixlen, ARCHmatrixindex]
        WRITE_S: [heapCell#6, nullCell]*/
        ARCHmatrixindex[++oldrow] = ARCHmatrixlen;
    }
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre500;
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre501;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre500 = &temp2;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre501 = &temp1;
    /*READ_S: [fscanf, nullCell]
    WRITE_S: [nullCell]*/
    fscanf(packfile, "%d %d", _imopVarPre501, _imopVarPre500);
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [exit, packfile, &ARCHpriv, heapCell#5, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, &heapCell#3, __stderrp, fflush, &ARCHmine, &ARCHnodes, fscanf, _imopVarPre407, ARCHduration, heapCell#2, malloc, &ARCHglobalnodes, ARCHelems, arch_bail, ARCHglobalnode, ARCHvertex, &heapCell#1, heapCell#23, heapCell#3, ARCHcholeskylen, __stdinp, ARCHglobalelem, heapCell#0, &ARCHmatrixlen, &ARCHmesh_dim, readpackfile, ARCHsubdomains, ARCHpriv, &ARCHglobalelems, &ARCHcorners, printf, ARCHmine, fprintf, ARCHnodes, &heapCell#24, &ARCHduration, arch_parsecommandline, heapCell#4, ARCHglobalnodes, &ARCHelems, ARCHmesh_dim, nullCell, ARCHcoord, &ARCHcholeskylen, arch_info, &heapCell#5, ARCHmatrixcol, &heapCell#23, ARCHmatrixlen, heapCell#1, options, &ARCHsubdomains, heapCell#24]
WRITE_S: [packfile, ARCHpriv, heapCell#5, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, ARCHmine, ARCHnodes, ARCHduration, heapCell#2, ARCHelems, heapCell#4, ARCHglobalnodes, ARCHglobalnode, ARCHvertex, ARCHmesh_dim, heapCell#23, nullCell, ARCHcoord, heapCell#3, ARCHcholeskylen, ARCHglobalelem, heapCell#6, ARCHmatrixcol, ARCHmatrixlen, heapCell#1, options, heapCell#24, ARCHsubdomains]*/
void arch_init(int argc, char **argv , struct options *op) {
/*READ_S: [exit, packfile, &ARCHpriv, heapCell#5, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, &heapCell#3, __stderrp, fflush, &ARCHmine, &ARCHnodes, fscanf, _imopVarPre407, ARCHduration, heapCell#2, malloc, &ARCHglobalnodes, ARCHelems, arch_bail, ARCHglobalnode, ARCHvertex, &heapCell#1, heapCell#23, heapCell#3, ARCHcholeskylen, __stdinp, ARCHglobalelem, heapCell#0, &ARCHmatrixlen, &ARCHmesh_dim, readpackfile, ARCHsubdomains, ARCHpriv, &ARCHglobalelems, &ARCHcorners, printf, ARCHmine, fprintf, ARCHnodes, &heapCell#24, &ARCHduration, arch_parsecommandline, heapCell#4, ARCHglobalnodes, &ARCHelems, ARCHmesh_dim, nullCell, ARCHcoord, &ARCHcholeskylen, arch_info, &heapCell#5, ARCHmatrixcol, &heapCell#23, ARCHmatrixlen, heapCell#1, options, &ARCHsubdomains, heapCell#24]
WRITE_S: [packfile, ARCHpriv, heapCell#5, ARCHmatrixindex, ARCHglobalelems, ARCHcorners, ARCHmine, ARCHnodes, ARCHduration, heapCell#2, ARCHelems, heapCell#4, ARCHglobalnodes, ARCHglobalnode, ARCHvertex, ARCHmesh_dim, heapCell#23, nullCell, ARCHcoord, heapCell#3, ARCHcholeskylen, ARCHglobalelem, heapCell#6, ARCHmatrixcol, ARCHmatrixlen, heapCell#1, options, heapCell#24, ARCHsubdomains]*/
    /*READ_S: [arch_parsecommandline]
    WRITE_S: []*/
    arch_parsecommandline(argc, argv, op);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [__stdinp]
    WRITE_S: [packfile]*/
    packfile = __stdinp;
    /*READ_S: [packfile, readpackfile]
    WRITE_S: []*/
    readpackfile(packfile, op);
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
/*READ_S: [heapCell#22, w, heapCell#16, heapCell#17, v, heapCell#5, heapCell#21, nullCell, heapCell#20, A, heapCell#6, Acol, w1, w2, numthreads, j, nodes, heapCell#18, Aindex, i]
WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
void smvp(int nodes, double ( *A )[3][3] , int *Acol , int *Aindex , double ( *v )[3] , double ( *w )[3]) {
/*READ_S: [heapCell#22, w, heapCell#16, heapCell#17, v, heapCell#5, heapCell#21, nullCell, heapCell#20, A, heapCell#6, Acol, w1, w2, numthreads, j, nodes, heapCell#18, Aindex, i]
WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int Anext;
    /*READ_S: []
    WRITE_S: []*/
    int Alast;
    /*READ_S: []
    WRITE_S: []*/
    int col;
    /*READ_S: []
    WRITE_S: []*/
    double sum0;
    /*READ_S: []
    WRITE_S: []*/
    double sum1;
    /*READ_S: []
    WRITE_S: []*/
    double sum2;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [numthreads]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#17, w2, nullCell, numthreads, j, nodes, i]
    WRITE_S: [nullCell, heapCell#18]*/
    for (j = 0; j < numthreads; j++) {
    /*READ_S: [heapCell#17, w2, nullCell, j, nodes, i]
    WRITE_S: [nullCell, heapCell#18]*/
        /*READ_S: [heapCell#17, w2, nullCell, j, nodes, i]
        WRITE_S: [nullCell, heapCell#18]*/
#pragma omp parallel private(i)
        {
        /*READ_S: [heapCell#17, w2, nullCell, j, nodes, i]
        WRITE_S: [nullCell, heapCell#18]*/
            /*READ_S: [heapCell#17, w2, nullCell, j, nodes, i]
            WRITE_S: [nullCell, heapCell#18]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [nodes]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < nodes; i++) {
            /*READ_S: [heapCell#17, w2, nullCell, j]
            WRITE_S: [nullCell, heapCell#18]*/
                /*READ_S: [heapCell#17, w2, nullCell, j]
                WRITE_S: [nullCell, heapCell#18]*/
                w2[j][i] = 0;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
    }
    /*READ_S: [heapCell#22, heapCell#16, v, heapCell#17, heapCell#5, heapCell#21, nullCell, heapCell#20, A, heapCell#6, Acol, w1, w2, nodes, i, heapCell#18, Aindex]
    WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
#pragma omp parallel private(my_cpu_id, i, Anext, Alast, col, sum0, sum1, sum2)
    {
    /*READ_S: [heapCell#22, heapCell#16, v, heapCell#17, heapCell#5, heapCell#21, nullCell, heapCell#20, A, heapCell#6, Acol, w1, w2, nodes, i, heapCell#18, Aindex]
    WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
        /*READ_S: []
        WRITE_S: []*/
        my_cpu_id = 0;
        /*READ_S: [heapCell#22, heapCell#16, v, heapCell#17, heapCell#5, heapCell#21, nullCell, heapCell#20, A, heapCell#6, Acol, w1, w2, nodes, Aindex, i, heapCell#18]
        WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
        /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [nodes]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < nodes; i++) {
        /*READ_S: [heapCell#22, heapCell#16, v, heapCell#17, heapCell#5, heapCell#21, nullCell, heapCell#20, A, heapCell#6, Acol, w1, w2, Aindex, heapCell#18]
        WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
            /*READ_S: [heapCell#6, nullCell, Aindex]
            WRITE_S: []*/
            Anext = Aindex[i];
            /*READ_S: [heapCell#6, nullCell, Aindex]
            WRITE_S: []*/
            Alast = Aindex[i + 1];
            /*READ_S: [v, heapCell#21, nullCell, heapCell#20, A]
            WRITE_S: []*/
            sum0 = A[Anext][0][0] * v[i][0] + A[Anext][0][1] * v[i][1] + A[Anext][0][2] * v[i][2];
            /*READ_S: [v, heapCell#21, nullCell, heapCell#20, A]
            WRITE_S: []*/
            sum1 = A[Anext][1][0] * v[i][0] + A[Anext][1][1] * v[i][1] + A[Anext][1][2] * v[i][2];
            /*READ_S: [v, heapCell#21, nullCell, heapCell#20, A]
            WRITE_S: []*/
            sum2 = A[Anext][2][0] * v[i][0] + A[Anext][2][1] * v[i][1] + A[Anext][2][2] * v[i][2];
            /*READ_S: []
            WRITE_S: []*/
            Anext++;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#22, heapCell#16, v, heapCell#17, heapCell#5, heapCell#21, nullCell, heapCell#20, A, Acol, w1, w2, heapCell#18]
            WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
            while (Anext < Alast) {
            /*READ_S: [heapCell#22, heapCell#16, v, heapCell#17, heapCell#5, heapCell#21, nullCell, heapCell#20, A, Acol, w1, w2, heapCell#18]
            WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
                /*READ_S: [Acol, heapCell#5, nullCell]
                WRITE_S: []*/
                col = Acol[Anext];
                /*READ_S: [v, heapCell#21, nullCell, heapCell#20, A]
                WRITE_S: []*/
                sum0 += A[Anext][0][0] * v[col][0] + A[Anext][0][1] * v[col][1] + A[Anext][0][2] * v[col][2];
                /*READ_S: [v, heapCell#21, nullCell, heapCell#20, A]
                WRITE_S: []*/
                sum1 += A[Anext][1][0] * v[col][0] + A[Anext][1][1] * v[col][1] + A[Anext][1][2] * v[col][2];
                /*READ_S: [v, heapCell#21, nullCell, heapCell#20, A]
                WRITE_S: []*/
                sum2 += A[Anext][2][0] * v[col][0] + A[Anext][2][1] * v[col][1] + A[Anext][2][2] * v[col][2];
                /*READ_S: [heapCell#17, w2, nullCell, heapCell#18]
                WRITE_S: []*/
                /*READ_S: [heapCell#22, heapCell#17, heapCell#16, w1, w2, nullCell, heapCell#18]
                WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
                if (w2[my_cpu_id][col] == 0) {
                /*READ_S: [heapCell#22, heapCell#17, heapCell#16, w1, w2, nullCell]
                WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
                    /*READ_S: [heapCell#17, w2, nullCell]
                    WRITE_S: [nullCell, heapCell#18]*/
                    w2[my_cpu_id][col] = 1;
                    /*READ_S: [heapCell#22, heapCell#16, w1, nullCell]
                    WRITE_S: [heapCell#22, nullCell]*/
                    w1[my_cpu_id][col].first = 0.0;
                    /*READ_S: [heapCell#22, heapCell#16, w1, nullCell]
                    WRITE_S: [heapCell#22, nullCell]*/
                    w1[my_cpu_id][col].second = 0.0;
                    /*READ_S: [heapCell#22, heapCell#16, w1, nullCell]
                    WRITE_S: [heapCell#22, nullCell]*/
                    w1[my_cpu_id][col].third = 0.0;
                }
                /*READ_S: [heapCell#22, heapCell#16, v, w1, heapCell#21, nullCell, heapCell#20, A]
                WRITE_S: [heapCell#22, nullCell]*/
                w1[my_cpu_id][col].first += A[Anext][0][0] * v[i][0] + A[Anext][1][0] * v[i][1] + A[Anext][2][0] * v[i][2];
                /*READ_S: [heapCell#22, heapCell#16, v, w1, heapCell#21, nullCell, heapCell#20, A]
                WRITE_S: [heapCell#22, nullCell]*/
                w1[my_cpu_id][col].second += A[Anext][0][1] * v[i][0] + A[Anext][1][1] * v[i][1] + A[Anext][2][1] * v[i][2];
                /*READ_S: [heapCell#22, heapCell#16, v, w1, heapCell#21, nullCell, heapCell#20, A]
                WRITE_S: [heapCell#22, nullCell]*/
                w1[my_cpu_id][col].third += A[Anext][0][2] * v[i][0] + A[Anext][1][2] * v[i][1] + A[Anext][2][2] * v[i][2];
                /*READ_S: []
                WRITE_S: []*/
                Anext++;
            }
            /*READ_S: [heapCell#17, w2, nullCell, heapCell#18]
            WRITE_S: []*/
            /*READ_S: [heapCell#22, heapCell#17, heapCell#16, w1, w2, nullCell, heapCell#18]
            WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
            if (w2[my_cpu_id][i] == 0) {
            /*READ_S: [heapCell#22, heapCell#17, heapCell#16, w1, w2, nullCell]
            WRITE_S: [heapCell#22, nullCell, heapCell#18]*/
                /*READ_S: [heapCell#17, w2, nullCell]
                WRITE_S: [nullCell, heapCell#18]*/
                w2[my_cpu_id][i] = 1;
                /*READ_S: [heapCell#22, heapCell#16, w1, nullCell]
                WRITE_S: [heapCell#22, nullCell]*/
                w1[my_cpu_id][i].first = 0.0;
                /*READ_S: [heapCell#22, heapCell#16, w1, nullCell]
                WRITE_S: [heapCell#22, nullCell]*/
                w1[my_cpu_id][i].second = 0.0;
                /*READ_S: [heapCell#22, heapCell#16, w1, nullCell]
                WRITE_S: [heapCell#22, nullCell]*/
                w1[my_cpu_id][i].third = 0.0;
            }
            /*READ_S: [heapCell#22, heapCell#16, w1, nullCell]
            WRITE_S: [heapCell#22, nullCell]*/
            w1[my_cpu_id][i].first += sum0;
            /*READ_S: [heapCell#22, heapCell#16, w1, nullCell]
            WRITE_S: [heapCell#22, nullCell]*/
            w1[my_cpu_id][i].second += sum1;
            /*READ_S: [heapCell#22, heapCell#16, w1, nullCell]
            WRITE_S: [heapCell#22, nullCell]*/
            w1[my_cpu_id][i].third += sum2;
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
        /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
    }
    /*READ_S: [heapCell#22, w, heapCell#16, heapCell#17, w1, w2, nullCell, heapCell#20, numthreads, nodes, heapCell#18, i]
    WRITE_S: [nullCell]*/
#pragma omp parallel private(j)
    {
    /*READ_S: [heapCell#22, w, heapCell#16, heapCell#17, w1, w2, nullCell, heapCell#20, numthreads, nodes, heapCell#18, i]
    WRITE_S: [nullCell]*/
        /*READ_S: [heapCell#22, w, heapCell#16, heapCell#17, w1, w2, nullCell, heapCell#20, numthreads, nodes, i, heapCell#18]
        WRITE_S: [nullCell]*/
        /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [nodes]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < nodes; i++) {
        /*READ_S: [heapCell#22, w, heapCell#16, heapCell#17, w1, w2, nullCell, heapCell#20, numthreads, heapCell#18]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [numthreads]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [heapCell#22, w, heapCell#16, heapCell#17, w1, w2, nullCell, heapCell#20, numthreads, heapCell#18]
            WRITE_S: [nullCell]*/
            for (j = 0; j < numthreads; j++) {
            /*READ_S: [heapCell#22, w, heapCell#16, heapCell#17, w1, w2, nullCell, heapCell#20, heapCell#18]
            WRITE_S: [nullCell]*/
                /*READ_S: [heapCell#17, w2, nullCell, heapCell#18]
                WRITE_S: []*/
                /*READ_S: [heapCell#22, w, heapCell#16, heapCell#17, w1, w2, nullCell, heapCell#20, heapCell#18]
                WRITE_S: [nullCell]*/
                if (w2[j][i]) {
                /*READ_S: [heapCell#22, w, heapCell#16, w1, nullCell, heapCell#20]
                WRITE_S: [nullCell]*/
                    /*READ_S: [heapCell#22, w, heapCell#16, w1, nullCell, heapCell#20]
                    WRITE_S: [nullCell]*/
                    w[i][0] += w1[j][i].first;
                    /*READ_S: [heapCell#22, w, heapCell#16, w1, nullCell, heapCell#20]
                    WRITE_S: [nullCell]*/
                    w[i][1] += w1[j][i].second;
                    /*READ_S: [heapCell#22, w, heapCell#16, w1, nullCell, heapCell#20]
                    WRITE_S: [nullCell]*/
                    w[i][2] += w1[j][i].third;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
        /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [exit, heapCell#11, C23, K, heapCell#21, nodekindf, heapCell#20, C, heapCell#13, i, disp, __stderrp, heapCell#12, M23, fflush, fprintf, ARCHnodes, w2, M, heapCell#19, malloc, nodekind, numthreads, ARCHelems, heapCell#22, heapCell#16, heapCell#17, j, nullCell, vel, source_elms, w1, ARCHmatrixlen, V23, heapCell#15, heapCell#14]
WRITE_S: [heapCell#22, C23, heapCell#16, heapCell#17, K, nodekindf, nullCell, C, disp, vel, M23, heapCell#9, source_elms, w1, w2, M, heapCell#19, V23, nodekind, heapCell#8, heapCell#18]*/
void mem_init(void ) {
/*READ_S: [exit, heapCell#11, C23, K, heapCell#21, nodekindf, heapCell#20, C, heapCell#13, i, disp, __stderrp, heapCell#12, M23, fflush, fprintf, ARCHnodes, w2, M, heapCell#19, malloc, nodekind, numthreads, ARCHelems, heapCell#22, heapCell#16, heapCell#17, j, nullCell, vel, source_elms, w1, ARCHmatrixlen, V23, heapCell#15, heapCell#14]
WRITE_S: [heapCell#22, C23, heapCell#16, heapCell#17, K, nodekindf, nullCell, C, disp, vel, M23, heapCell#9, source_elms, w1, w2, M, heapCell#19, V23, nodekind, heapCell#8, heapCell#18]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre504;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre505;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre504 = ARCHnodes * sizeof(double);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre505 = malloc(_imopVarPre504);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [nodekindf]*/
    nodekindf = (double *) _imopVarPre505;
    /*READ_S: [nodekindf]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, nodekindf, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (nodekindf == (double *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for nodekindf\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre508;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre509;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre508 = ARCHnodes * sizeof(int);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre509 = malloc(_imopVarPre508);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [nodekind]*/
    nodekind = (int *) _imopVarPre509;
    /*READ_S: [nodekind]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell, nodekind]
    WRITE_S: [nullCell]*/
    if (nodekind == (int *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for nodekind\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre512;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre513;
    /*READ_S: [ARCHelems]
    WRITE_S: []*/
    _imopVarPre512 = ARCHelems * sizeof(int);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre513 = malloc(_imopVarPre512);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [source_elms]*/
    source_elms = (int *) _imopVarPre513;
    /*READ_S: [source_elms]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, source_elms, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (source_elms == (int *) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for source_elms\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre516;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre517;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre516 = ARCHnodes * sizeof(double [3]);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre517 = malloc(_imopVarPre516);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [vel]*/
    vel = (double (*)[3]) _imopVarPre517;
    /*READ_S: [vel]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, vel, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (vel == (double (*)[3]) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for vel\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre520;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre521;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre520 = ARCHnodes * sizeof(double [3]);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre521 = malloc(_imopVarPre520);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [M]*/
    M = (double (*)[3]) _imopVarPre521;
    /*READ_S: [M]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, fprintf, M, nullCell]
    WRITE_S: [nullCell]*/
    if (M == (double (*)[3]) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for M\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre524;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre525;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre524 = ARCHnodes * sizeof(double [3]);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre525 = malloc(_imopVarPre524);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [C]*/
    C = (double (*)[3]) _imopVarPre525;
    /*READ_S: [C]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell, C]
    WRITE_S: [nullCell]*/
    if (C == (double (*)[3]) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for C\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre528;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre529;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre528 = ARCHnodes * sizeof(double [3]);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre529 = malloc(_imopVarPre528);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [M23]*/
    M23 = (double (*)[3]) _imopVarPre529;
    /*READ_S: [M23]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, M23, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (M23 == (double (*)[3]) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for M23\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre532;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre533;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre532 = ARCHnodes * sizeof(double [3]);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre533 = malloc(_imopVarPre532);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [C23]*/
    C23 = (double (*)[3]) _imopVarPre533;
    /*READ_S: [C23]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, C23, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (C23 == (double (*)[3]) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for C23\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre536;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre537;
    /*READ_S: [ARCHnodes]
    WRITE_S: []*/
    _imopVarPre536 = ARCHnodes * sizeof(double [3]);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre537 = malloc(_imopVarPre536);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [V23]*/
    V23 = (double (*)[3]) _imopVarPre537;
    /*READ_S: [V23]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, fprintf, V23, nullCell]
    WRITE_S: [nullCell]*/
    if (V23 == (double (*)[3]) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for V23\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre540;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre541;
    /*READ_S: [numthreads]
    WRITE_S: []*/
    _imopVarPre540 = numthreads * sizeof(struct smallarray_s *);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre541 = malloc(_imopVarPre540);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [w1]*/
    w1 = (smallarray_t **) _imopVarPre541;
    /*READ_S: [w1]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, w1, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (w1 == (smallarray_t **) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for w1\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [numthreads]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, heapCell#16, fflush, w1, fprintf, ARCHnodes, nullCell, malloc, numthreads]
    WRITE_S: [heapCell#16, nullCell]*/
    for (i = 0; i < numthreads; i++) {
    /*READ_S: [exit, __stderrp, heapCell#16, fflush, w1, fprintf, ARCHnodes, nullCell, malloc]
    WRITE_S: [heapCell#16, nullCell]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre544;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre545;
        /*READ_S: [ARCHnodes]
        WRITE_S: []*/
        _imopVarPre544 = ARCHnodes * sizeof(smallarray_t);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre545 = malloc(_imopVarPre544);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [w1]
        WRITE_S: [heapCell#16]*/
        w1[i] = (smallarray_t *) _imopVarPre545;
        /*READ_S: [heapCell#16, w1]
        WRITE_S: []*/
        /*READ_S: [exit, __stderrp, heapCell#16, fflush, w1, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        if (w1[i] == (smallarray_t *) ((void *) 0)) {
        /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
        WRITE_S: [nullCell]*/
            /*READ_S: [__stderrp, fprintf, nullCell]
            WRITE_S: [nullCell]*/
            fprintf(__stderrp, "malloc failed for w1[%d]\n", i);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [__stderrp, fflush, nullCell]
            WRITE_S: [nullCell]*/
            fflush(__stderrp);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [exit]
            WRITE_S: []*/
            exit(0);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [numthreads]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#22, heapCell#16, w1, ARCHnodes, j, numthreads, i]
    WRITE_S: [heapCell#22]*/
    for (j = 0; j < numthreads; j++) {
    /*READ_S: [heapCell#22, heapCell#16, w1, ARCHnodes, j, i]
    WRITE_S: [heapCell#22]*/
        /*READ_S: [heapCell#22, heapCell#16, w1, ARCHnodes, j, i]
        WRITE_S: [heapCell#22]*/
#pragma omp parallel private(i)
        {
        /*READ_S: [heapCell#22, heapCell#16, w1, ARCHnodes, j, i]
        WRITE_S: [heapCell#22]*/
            /*READ_S: [heapCell#22, heapCell#16, w1, ARCHnodes, j, i]
            WRITE_S: [heapCell#22]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [ARCHnodes]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < ARCHnodes; i++) {
            /*READ_S: [heapCell#22, heapCell#16, w1, j]
            WRITE_S: [heapCell#22]*/
                /*READ_S: [heapCell#22, heapCell#16, w1, j]
                WRITE_S: [heapCell#22]*/
                w1[j][i].first = 0.0;
                /*READ_S: [heapCell#22, heapCell#16, w1, j]
                WRITE_S: [heapCell#22]*/
                w1[j][i].second = 0.0;
                /*READ_S: [heapCell#22, heapCell#16, w1, j]
                WRITE_S: [heapCell#22]*/
                w1[j][i].third = 0.0;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre548;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre549;
    /*READ_S: [numthreads]
    WRITE_S: []*/
    _imopVarPre548 = numthreads * sizeof(int *);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre549 = malloc(_imopVarPre548);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [w2]*/
    w2 = (int **) _imopVarPre549;
    /*READ_S: [w2]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, w2, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (w2 == (int **) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for w2\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [numthreads]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, heapCell#17, fflush, ARCHnodes, fprintf, w2, nullCell, malloc, numthreads]
    WRITE_S: [heapCell#17, nullCell]*/
    for (i = 0; i < numthreads; i++) {
    /*READ_S: [exit, __stderrp, heapCell#17, fflush, ARCHnodes, fprintf, w2, nullCell, malloc]
    WRITE_S: [heapCell#17, nullCell]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre552;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre553;
        /*READ_S: [ARCHnodes]
        WRITE_S: []*/
        _imopVarPre552 = ARCHnodes * sizeof(int);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre553 = malloc(_imopVarPre552);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [w2]
        WRITE_S: [heapCell#17]*/
        w2[i] = (int *) _imopVarPre553;
        /*READ_S: [heapCell#17, w2]
        WRITE_S: []*/
        /*READ_S: [exit, __stderrp, heapCell#17, fflush, fprintf, w2, nullCell]
        WRITE_S: [nullCell]*/
        if (w2[i] == (int *) ((void *) 0)) {
        /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
        WRITE_S: [nullCell]*/
            /*READ_S: [__stderrp, fprintf, nullCell]
            WRITE_S: [nullCell]*/
            fprintf(__stderrp, "malloc failed for w2[%d]\n", i);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [__stderrp, fflush, nullCell]
            WRITE_S: [nullCell]*/
            fflush(__stderrp);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [exit]
            WRITE_S: []*/
            exit(0);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [numthreads]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [heapCell#17, w2, ARCHnodes, j, numthreads, i]
    WRITE_S: [heapCell#18]*/
    for (j = 0; j < numthreads; j++) {
    /*READ_S: [heapCell#17, w2, ARCHnodes, j, i]
    WRITE_S: [heapCell#18]*/
        /*READ_S: [heapCell#17, w2, ARCHnodes, j, i]
        WRITE_S: [heapCell#18]*/
#pragma omp parallel private(i)
        {
        /*READ_S: [heapCell#17, w2, ARCHnodes, j, i]
        WRITE_S: [heapCell#18]*/
            /*READ_S: [heapCell#17, w2, ARCHnodes, j, i]
            WRITE_S: [heapCell#18]*/
            /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [ARCHnodes]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i < ARCHnodes; i++) {
            /*READ_S: [heapCell#17, w2, j]
            WRITE_S: [heapCell#18]*/
                /*READ_S: [heapCell#17, w2, j]
                WRITE_S: [heapCell#18]*/
                w2[j][i] = 0;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
            /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre556;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre557;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre556 = 3 * sizeof(double (*)[3]);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre557 = malloc(_imopVarPre556);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [disp]*/
    disp = (double (**)[3]) _imopVarPre557;
    /*READ_S: [disp]
    WRITE_S: []*/
    /*READ_S: [exit, disp, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (disp == (double (**)[3]) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for disp\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exit, disp, __stderrp, fflush, ARCHnodes, fprintf, heapCell#19, nullCell, malloc]
    WRITE_S: [heapCell#19, nullCell]*/
    for (i = 0; i < 3; i++) {
    /*READ_S: [exit, disp, __stderrp, fflush, ARCHnodes, fprintf, heapCell#19, nullCell, malloc]
    WRITE_S: [heapCell#19, nullCell]*/
        /*READ_S: []
        WRITE_S: []*/
        unsigned long int _imopVarPre560;
        /*READ_S: []
        WRITE_S: []*/
        void *_imopVarPre561;
        /*READ_S: [ARCHnodes]
        WRITE_S: []*/
        _imopVarPre560 = ARCHnodes * sizeof(double [3]);
        /*READ_S: [malloc]
        WRITE_S: []*/
        _imopVarPre561 = malloc(_imopVarPre560);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [disp]
        WRITE_S: [heapCell#19]*/
        disp[i] = (double (*)[3]) _imopVarPre561;
        /*READ_S: [disp, heapCell#19]
        WRITE_S: []*/
        /*READ_S: [exit, disp, __stderrp, fflush, fprintf, heapCell#19, nullCell]
        WRITE_S: [nullCell]*/
        if (disp[i] == (double (*)[3]) ((void *) 0)) {
        /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
        WRITE_S: [nullCell]*/
            /*READ_S: [__stderrp, fprintf, nullCell]
            WRITE_S: [nullCell]*/
            fprintf(__stderrp, "malloc failed for disp[%d]\n", i);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [__stderrp, fflush, nullCell]
            WRITE_S: [nullCell]*/
            fflush(__stderrp);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [exit]
            WRITE_S: []*/
            exit(0);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre564;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre565;
    /*READ_S: [ARCHmatrixlen]
    WRITE_S: []*/
    _imopVarPre564 = ARCHmatrixlen * sizeof(double [3][3]);
    /*READ_S: [malloc]
    WRITE_S: []*/
    _imopVarPre565 = malloc(_imopVarPre564);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [K]*/
    K = (double (*)[3][3]) _imopVarPre565;
    /*READ_S: [K]
    WRITE_S: []*/
    /*READ_S: [exit, __stderrp, fflush, K, fprintf, nullCell]
    WRITE_S: [nullCell]*/
    if (K == (double (*)[3][3]) ((void *) 0)) {
    /*READ_S: [exit, __stderrp, fflush, fprintf, nullCell]
    WRITE_S: [nullCell]*/
        /*READ_S: [__stderrp, fprintf, nullCell]
        WRITE_S: [nullCell]*/
        fprintf(__stderrp, "malloc failed for K\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [__stderrp, fflush, nullCell]
        WRITE_S: [nullCell]*/
        fflush(__stderrp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(0);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [C23, heapCell#11, heapCell#20, heapCell#13, C, i, disp, M23, heapCell#12, ARCHnodes, M, heapCell#19, V23, heapCell#15, nodekind, heapCell#14]
    WRITE_S: [heapCell#8]*/
#pragma omp parallel private(j)
    {
    /*READ_S: [C23, heapCell#11, heapCell#20, heapCell#13, C, i, disp, M23, heapCell#12, ARCHnodes, M, heapCell#19, V23, heapCell#15, nodekind, heapCell#14]
    WRITE_S: [heapCell#8]*/
        /*READ_S: [C23, heapCell#11, heapCell#20, i, heapCell#13, C, disp, M23, heapCell#12, ARCHnodes, M, heapCell#19, V23, heapCell#15, nodekind, heapCell#14]
        WRITE_S: [heapCell#8]*/
        /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [ARCHnodes]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < ARCHnodes; i++) {
        /*READ_S: [C23, heapCell#11, heapCell#20, heapCell#13, C, disp, M23, heapCell#12, M, heapCell#19, V23, heapCell#15, nodekind, heapCell#14]
        WRITE_S: [heapCell#8]*/
            /*READ_S: [nodekind]
            WRITE_S: [heapCell#8]*/
            nodekind[i] = 0;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [C23, heapCell#11, heapCell#20, heapCell#13, C, disp, M23, heapCell#12, M, heapCell#19, V23, heapCell#15, heapCell#14]
            WRITE_S: []*/
            for (j = 0; j < 3; j++) {
            /*READ_S: [C23, heapCell#11, heapCell#20, heapCell#13, C, disp, M23, heapCell#12, M, heapCell#19, V23, heapCell#15, heapCell#14]
            WRITE_S: []*/
                /*READ_S: [heapCell#11, M]
                WRITE_S: []*/
                M[i][j] = 0.0;
                /*READ_S: [heapCell#12, C]
                WRITE_S: []*/
                C[i][j] = 0.0;
                /*READ_S: [M23, heapCell#13]
                WRITE_S: []*/
                M23[i][j] = 0.0;
                /*READ_S: [C23, heapCell#14]
                WRITE_S: []*/
                C23[i][j] = 0.0;
                /*READ_S: [V23, heapCell#15]
                WRITE_S: []*/
                V23[i][j] = 0.0;
                /*READ_S: [disp, heapCell#19, heapCell#20]
                WRITE_S: []*/
                disp[0][i][j] = 0.0;
                /*READ_S: [disp, heapCell#19, heapCell#20]
                WRITE_S: []*/
                disp[1][i][j] = 0.0;
                /*READ_S: [disp, heapCell#19, heapCell#20]
                WRITE_S: []*/
                disp[2][i][j] = 0.0;
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
        /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ARCHelems]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [source_elms, ARCHelems]
    WRITE_S: [heapCell#9]*/
    for (i = 0; i < ARCHelems; i++) {
    /*READ_S: [source_elms]
    WRITE_S: [heapCell#9]*/
        /*READ_S: [source_elms]
        WRITE_S: [heapCell#9]*/
        source_elms[i] = 1;
    }
    /*READ_S: [K, heapCell#21, ARCHmatrixlen, i]
    WRITE_S: []*/
#pragma omp parallel private(j, k)
    {
    /*READ_S: [K, heapCell#21, ARCHmatrixlen, i]
    WRITE_S: []*/
        /*READ_S: [K, heapCell#21, ARCHmatrixlen, i]
        WRITE_S: []*/
        /*A nowait clause was added to this construct to make its barrier explicit.*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [ARCHmatrixlen]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < ARCHmatrixlen; i++) {
        /*READ_S: [K, heapCell#21]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [K, heapCell#21]
            WRITE_S: []*/
            for (j = 0; j < 3; j++) {
            /*READ_S: [K, heapCell#21]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [K, heapCell#21]
                WRITE_S: []*/
                for (k = 0; k < 3; k++) {
                /*READ_S: [K, heapCell#21]
                WRITE_S: []*/
                    /*READ_S: [K, heapCell#21]
                    WRITE_S: []*/
                    K[i][j][k] = 0.0;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
        /*This explicit barrier was added as a replacement for some implicit barrier.*/
#pragma omp barrier
    }
}
