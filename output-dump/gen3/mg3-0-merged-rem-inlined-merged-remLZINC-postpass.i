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
static void showall(double ***z, int n1 , int n2 , int n3);
static double power(double a, int n);
static void bubble(double ten[1037][2], int j1[1037][2] , int j2[1037][2] , int j3[1037][2] , int m , int ind);
static void zero3(double ***z, int n1 , int n2 , int n3);
int main(int argc, char *argv[]) {
    int k;
    int it;
    double t;
    double tinit;
    double mflops;
    int nthreads = 1;
    double ****u;
    double ***v;
    double ****r;
    double a[4];
    double c[4];
    double rnm2;
    double rnmu;
    double epsilon = 1.0e-8;
    int n1;
    int n2;
    int n3;
    int nit;
    double verify_value;
    boolean verified;
    int i;
    int j;
    int l;
    FILE *fp;
    timer_clear(1);
    timer_clear(2);
    timer_start(2);
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - MG Benchmark\n\n");
    fp = fopen("mg.input", "r");
    if (fp != ((void *) 0)) {
        printf(" Reading from input file mg.input\n");
        int *_imopVarPre141;
        _imopVarPre141 = &lt;
        fscanf(fp, "%d", _imopVarPre141);
        int _imopVarPre143;
        _imopVarPre143 = fgetc(fp);
        while (_imopVarPre143 != '\n') {
            ;
            _imopVarPre143 = fgetc(fp);
        }
        int *_imopVarPre147;
        int *_imopVarPre148;
        int *_imopVarPre149;
        _imopVarPre147 = &nz[lt];
        _imopVarPre148 = &ny[lt];
        _imopVarPre149 = &nx[lt];
        fscanf(fp, "%d%d%d", _imopVarPre149, _imopVarPre148, _imopVarPre147);
        int _imopVarPre151;
        _imopVarPre151 = fgetc(fp);
        while (_imopVarPre151 != '\n') {
            ;
            _imopVarPre151 = fgetc(fp);
        }
        int *_imopVarPre153;
        _imopVarPre153 = &nit;
        fscanf(fp, "%d", _imopVarPre153);
        int _imopVarPre155;
        _imopVarPre155 = fgetc(fp);
        while (_imopVarPre155 != '\n') {
            ;
            _imopVarPre155 = fgetc(fp);
        }
        for (i = 0; i <= 7; i++) {
            int *_imopVarPre157;
            _imopVarPre157 = &debug_vec[i];
            fscanf(fp, "%d", _imopVarPre157);
        }
        fclose(fp);
    } else {
        printf(" No input file. Using compiled defaults\n");
        lt = 5;
        nit = 4;
        nx[lt] = 32;
        ny[lt] = 32;
        nz[lt] = 32;
        for (i = 0; i <= 7; i++) {
            debug_vec[i] = 0;
        }
    }
    int _imopVarPre158;
    _imopVarPre158 = (nx[lt] != ny[lt]);
    if (!_imopVarPre158) {
        _imopVarPre158 = (nx[lt] != nz[lt]);
    }
    if (_imopVarPre158) {
        Class = 'U';
    } else {
        int _imopVarPre160;
        _imopVarPre160 = nx[lt] == 32;
        if (_imopVarPre160) {
            _imopVarPre160 = nit == 4;
        }
        if (_imopVarPre160) {
            Class = 'S';
        } else {
            int _imopVarPre162;
            _imopVarPre162 = nx[lt] == 64;
            if (_imopVarPre162) {
                _imopVarPre162 = nit == 40;
            }
            if (_imopVarPre162) {
                Class = 'W';
            } else {
                int _imopVarPre164;
                _imopVarPre164 = nx[lt] == 256;
                if (_imopVarPre164) {
                    _imopVarPre164 = nit == 20;
                }
                if (_imopVarPre164) {
                    Class = 'B';
                } else {
                    int _imopVarPre166;
                    _imopVarPre166 = nx[lt] == 512;
                    if (_imopVarPre166) {
                        _imopVarPre166 = nit == 20;
                    }
                    if (_imopVarPre166) {
                        Class = 'C';
                    } else {
                        int _imopVarPre168;
                        _imopVarPre168 = nx[lt] == 256;
                        if (_imopVarPre168) {
                            _imopVarPre168 = nit == 4;
                        }
                        if (_imopVarPre168) {
                            Class = 'A';
                        } else {
                            Class = 'U';
                        }
                    }
                }
            }
        }
    }
    a[0] = -8.0 / 3.0;
    a[1] = 0.0;
    a[2] = 1.0 / 6.0;
    a[3] = 1.0 / 12.0;
    int _imopVarPre169;
    int _imopVarPre170;
    _imopVarPre169 = Class == 'A';
    if (!_imopVarPre169) {
        _imopVarPre170 = Class == 'S';
        if (!_imopVarPre170) {
            _imopVarPre170 = Class == 'W';
        }
        _imopVarPre169 = _imopVarPre170;
    }
    if (_imopVarPre169) {
        c[0] = -3.0 / 8.0;
        c[1] = 1.0 / 32.0;
        c[2] = -1.0 / 64.0;
        c[3] = 0.0;
    } else {
        c[0] = -3.0 / 17.0;
        c[1] = 1.0 / 33.0;
        c[2] = -1.0 / 61.0;
        c[3] = 0.0;
    }
    lb = 1;
    int *_imopVarPre174;
    int *_imopVarPre175;
    int *_imopVarPre176;
    _imopVarPre174 = &n3;
    _imopVarPre175 = &n2;
    _imopVarPre176 = &n1;
    setup(_imopVarPre176, _imopVarPre175, _imopVarPre174, lt);
    unsigned long int _imopVarPre179;
    void *_imopVarPre180;
    _imopVarPre179 = (lt + 1) * sizeof(double ***);
    _imopVarPre180 = malloc(_imopVarPre179);
    u = (double ****) _imopVarPre180;
    for (l = lt; l >= 1; l--) {
        unsigned long int _imopVarPre183;
        void *_imopVarPre184;
        _imopVarPre183 = m3[l] * sizeof(double **);
        _imopVarPre184 = malloc(_imopVarPre183);
        u[l] = (double ***) _imopVarPre184;
        for (k = 0; k < m3[l]; k++) {
            unsigned long int _imopVarPre187;
            void *_imopVarPre188;
            _imopVarPre187 = m2[l] * sizeof(double *);
            _imopVarPre188 = malloc(_imopVarPre187);
            u[l][k] = (double **) _imopVarPre188;
            for (j = 0; j < m2[l]; j++) {
                unsigned long int _imopVarPre191;
                void *_imopVarPre192;
                _imopVarPre191 = m1[l] * sizeof(double);
                _imopVarPre192 = malloc(_imopVarPre191);
                u[l][k][j] = (double *) _imopVarPre192;
            }
        }
    }
    unsigned long int _imopVarPre195;
    void *_imopVarPre196;
    _imopVarPre195 = m3[lt] * sizeof(double **);
    _imopVarPre196 = malloc(_imopVarPre195);
    v = (double ***) _imopVarPre196;
    for (k = 0; k < m3[lt]; k++) {
        unsigned long int _imopVarPre199;
        void *_imopVarPre200;
        _imopVarPre199 = m2[lt] * sizeof(double *);
        _imopVarPre200 = malloc(_imopVarPre199);
        v[k] = (double **) _imopVarPre200;
        for (j = 0; j < m2[lt]; j++) {
            unsigned long int _imopVarPre203;
            void *_imopVarPre204;
            _imopVarPre203 = m1[lt] * sizeof(double);
            _imopVarPre204 = malloc(_imopVarPre203);
            v[k][j] = (double *) _imopVarPre204;
        }
    }
    unsigned long int _imopVarPre207;
    void *_imopVarPre208;
    _imopVarPre207 = (lt + 1) * sizeof(double ***);
    _imopVarPre208 = malloc(_imopVarPre207);
    r = (double ****) _imopVarPre208;
    for (l = lt; l >= 1; l--) {
        unsigned long int _imopVarPre211;
        void *_imopVarPre212;
        _imopVarPre211 = m3[l] * sizeof(double **);
        _imopVarPre212 = malloc(_imopVarPre211);
        r[l] = (double ***) _imopVarPre212;
        for (k = 0; k < m3[l]; k++) {
            unsigned long int _imopVarPre215;
            void *_imopVarPre216;
            _imopVarPre215 = m2[l] * sizeof(double *);
            _imopVarPre216 = malloc(_imopVarPre215);
            r[l][k] = (double **) _imopVarPre216;
            for (j = 0; j < m2[l]; j++) {
                unsigned long int _imopVarPre219;
                void *_imopVarPre220;
                _imopVarPre219 = m1[l] * sizeof(double);
                _imopVarPre220 = malloc(_imopVarPre219);
                r[l][k][j] = (double *) _imopVarPre220;
            }
        }
    }
    double ***_imopVarPre222;
    _imopVarPre222 = u[lt];
#pragma omp parallel
    {
        zero3(_imopVarPre222, n1, n2, n3);
    }
    int _imopVarPre225;
    int _imopVarPre226;
    _imopVarPre225 = ny[lt];
    _imopVarPre226 = nx[lt];
    double ***z_imopVar143;
    int nx_imopVar144;
    int ny_imopVar145;
    int k_imopVar146;
    z_imopVar143 = v;
    nx_imopVar144 = _imopVarPre226;
    ny_imopVar145 = _imopVarPre225;
    k_imopVar146 = lt;
    int i0_imopVar147;
    int m0_imopVar148;
    int m1_imopVar149;
    int i1_imopVar150;
    int i2_imopVar151;
    int i3_imopVar152;
    int d1_imopVar153;
    int e1_imopVar154;
    int e2_imopVar155;
    int e3_imopVar156;
    double xx_imopVar157;
    double x0_imopVar158;
    double x1_imopVar159;
    double a1_imopVar160;
    double a2_imopVar161;
    double ai_imopVar162;
    double ten_imopVar163[10][2];
    double best_imopVar164;
    int i_imopVar165;
    int j1_imopVar166[10][2];
    int j2_imopVar167[10][2];
    int j3_imopVar168[10][2];
    int jg_imopVar169[4][10][2];
    double rdummy_imopVar170;
    double _imopVarPre456_imopVar171;
    double _imopVarPre457_imopVar172;
    _imopVarPre456_imopVar171 = pow(5.0, 13);
    _imopVarPre457_imopVar172 = power(_imopVarPre456_imopVar171, nx_imopVar144);
    a1_imopVar160 = _imopVarPre457_imopVar172;
    int _imopVarPre460_imopVar173;
    double _imopVarPre461_imopVar174;
    double _imopVarPre462_imopVar175;
    _imopVarPre460_imopVar173 = nx_imopVar144 * ny_imopVar145;
    _imopVarPre461_imopVar174 = pow(5.0, 13);
    _imopVarPre462_imopVar175 = power(_imopVarPre461_imopVar174, _imopVarPre460_imopVar173);
    a2_imopVar161 = _imopVarPre462_imopVar175;
#pragma omp parallel
    {
        zero3(z_imopVar143, n1, n2, n3);
    }
    i_imopVar165 = is1 - 1 + nx_imopVar144 * (is2 - 1 + ny_imopVar145 * (is3 - 1));
    double _imopVarPre464_imopVar176;
    double _imopVarPre465_imopVar177;
    _imopVarPre464_imopVar176 = pow(5.0, 13);
    _imopVarPre465_imopVar177 = power(_imopVarPre464_imopVar176, i_imopVar165);
    ai_imopVar162 = _imopVarPre465_imopVar177;
    d1_imopVar153 = ie1 - is1 + 1;
    e1_imopVar154 = ie1 - is1 + 2;
    e2_imopVar155 = ie2 - is2 + 2;
    e3_imopVar156 = ie3 - is3 + 2;
    x0_imopVar158 = 314159265.e0;
    double *_imopVarPre467_imopVar178;
    double _imopVarPre468_imopVar179;
    _imopVarPre467_imopVar178 = &x0_imopVar158;
    _imopVarPre468_imopVar179 = randlc(_imopVarPre467_imopVar178, ai_imopVar162);
    rdummy_imopVar170 = _imopVarPre468_imopVar179;
    for (i3_imopVar152 = 1; i3_imopVar152 < e3_imopVar156; i3_imopVar152++) {
        x1_imopVar159 = x0_imopVar158;
        for (i2_imopVar151 = 1; i2_imopVar151 < e2_imopVar155; i2_imopVar151++) {
            xx_imopVar157 = x1_imopVar159;
            double *_imopVarPre472;
            double _imopVarPre473;
            double *_imopVarPre474;
            _imopVarPre472 = &(z_imopVar143[i3_imopVar152][i2_imopVar151][0]);
            _imopVarPre473 = pow(5.0, 13);
            _imopVarPre474 = &xx_imopVar157;
            vranlc(d1_imopVar153, _imopVarPre474, _imopVarPre473, _imopVarPre472);
            double *_imopVarPre476;
            double _imopVarPre477;
            _imopVarPre476 = &x1_imopVar159;
            _imopVarPre477 = randlc(_imopVarPre476, a1_imopVar160);
            rdummy_imopVar170 = _imopVarPre477;
        }
        double *_imopVarPre479;
        double _imopVarPre480;
        _imopVarPre479 = &x0_imopVar158;
        _imopVarPre480 = randlc(_imopVarPre479, a2_imopVar161);
        rdummy_imopVar170 = _imopVarPre480;
    }
    for (i_imopVar165 = 0; i_imopVar165 < 10; i_imopVar165++) {
        ten_imopVar163[i_imopVar165][1] = 0.0;
        j1_imopVar166[i_imopVar165][1] = 0;
        j2_imopVar167[i_imopVar165][1] = 0;
        j3_imopVar168[i_imopVar165][1] = 0;
        ten_imopVar163[i_imopVar165][0] = 1.0;
        j1_imopVar166[i_imopVar165][0] = 0;
        j2_imopVar167[i_imopVar165][0] = 0;
        j3_imopVar168[i_imopVar165][0] = 0;
    }
    for (i3_imopVar152 = 1; i3_imopVar152 < n3 - 1; i3_imopVar152++) {
        for (i2_imopVar151 = 1; i2_imopVar151 < n2 - 1; i2_imopVar151++) {
            for (i1_imopVar150 = 1; i1_imopVar150 < n1 - 1; i1_imopVar150++) {
                if (z_imopVar143[i3_imopVar152][i2_imopVar151][i1_imopVar150] > ten_imopVar163[0][1]) {
                    ten_imopVar163[0][1] = z_imopVar143[i3_imopVar152][i2_imopVar151][i1_imopVar150];
                    j1_imopVar166[0][1] = i1_imopVar150;
                    j2_imopVar167[0][1] = i2_imopVar151;
                    j3_imopVar168[0][1] = i3_imopVar152;
                    bubble(ten_imopVar163, j1_imopVar166, j2_imopVar167, j3_imopVar168, 10, 1);
                }
                if (z_imopVar143[i3_imopVar152][i2_imopVar151][i1_imopVar150] < ten_imopVar163[0][0]) {
                    ten_imopVar163[0][0] = z_imopVar143[i3_imopVar152][i2_imopVar151][i1_imopVar150];
                    j1_imopVar166[0][0] = i1_imopVar150;
                    j2_imopVar167[0][0] = i2_imopVar151;
                    j3_imopVar168[0][0] = i3_imopVar152;
                    bubble(ten_imopVar163, j1_imopVar166, j2_imopVar167, j3_imopVar168, 10, 0);
                }
            }
        }
    }
    i1_imopVar150 = 10 - 1;
    i0_imopVar147 = 10 - 1;
    for (i_imopVar165 = 10 - 1; i_imopVar165 >= 0; i_imopVar165--) {
        best_imopVar164 = z_imopVar143[j3_imopVar168[i1_imopVar150][1]][j2_imopVar167[i1_imopVar150][1]][j1_imopVar166[i1_imopVar150][1]];
        if (best_imopVar164 == z_imopVar143[j3_imopVar168[i1_imopVar150][1]][j2_imopVar167[i1_imopVar150][1]][j1_imopVar166[i1_imopVar150][1]]) {
            jg_imopVar169[0][i_imopVar165][1] = 0;
            jg_imopVar169[1][i_imopVar165][1] = is1 - 1 + j1_imopVar166[i1_imopVar150][1];
            jg_imopVar169[2][i_imopVar165][1] = is2 - 1 + j2_imopVar167[i1_imopVar150][1];
            jg_imopVar169[3][i_imopVar165][1] = is3 - 1 + j3_imopVar168[i1_imopVar150][1];
            i1_imopVar150 = i1_imopVar150 - 1;
        } else {
            jg_imopVar169[0][i_imopVar165][1] = 0;
            jg_imopVar169[1][i_imopVar165][1] = 0;
            jg_imopVar169[2][i_imopVar165][1] = 0;
            jg_imopVar169[3][i_imopVar165][1] = 0;
        }
        ten_imopVar163[i_imopVar165][1] = best_imopVar164;
        best_imopVar164 = z_imopVar143[j3_imopVar168[i0_imopVar147][0]][j2_imopVar167[i0_imopVar147][0]][j1_imopVar166[i0_imopVar147][0]];
        if (best_imopVar164 == z_imopVar143[j3_imopVar168[i0_imopVar147][0]][j2_imopVar167[i0_imopVar147][0]][j1_imopVar166[i0_imopVar147][0]]) {
            jg_imopVar169[0][i_imopVar165][0] = 0;
            jg_imopVar169[1][i_imopVar165][0] = is1 - 1 + j1_imopVar166[i0_imopVar147][0];
            jg_imopVar169[2][i_imopVar165][0] = is2 - 1 + j2_imopVar167[i0_imopVar147][0];
            jg_imopVar169[3][i_imopVar165][0] = is3 - 1 + j3_imopVar168[i0_imopVar147][0];
            i0_imopVar147 = i0_imopVar147 - 1;
        } else {
            jg_imopVar169[0][i_imopVar165][0] = 0;
            jg_imopVar169[1][i_imopVar165][0] = 0;
            jg_imopVar169[2][i_imopVar165][0] = 0;
            jg_imopVar169[3][i_imopVar165][0] = 0;
        }
        ten_imopVar163[i_imopVar165][0] = best_imopVar164;
    }
    m1_imopVar149 = i1_imopVar150 + 1;
    m0_imopVar148 = i0_imopVar147 + 1;
#pragma omp parallel private(i2_imopVar151, i1_imopVar150)
    {
#pragma omp for nowait
        for (i3_imopVar152 = 0; i3_imopVar152 < n3; i3_imopVar152++) {
            for (i2_imopVar151 = 0; i2_imopVar151 < n2; i2_imopVar151++) {
                for (i1_imopVar150 = 0; i1_imopVar150 < n1; i1_imopVar150++) {
                    z_imopVar143[i3_imopVar152][i2_imopVar151][i1_imopVar150] = 0.0;
                }
            }
        }
    }
    for (i_imopVar165 = 10 - 1; i_imopVar165 >= m0_imopVar148; i_imopVar165--) {
        z_imopVar143[j3_imopVar168[i_imopVar165][0]][j2_imopVar167[i_imopVar165][0]][j1_imopVar166[i_imopVar165][0]] = -1.0;
    }
    for (i_imopVar165 = 10 - 1; i_imopVar165 >= m1_imopVar149; i_imopVar165--) {
        z_imopVar143[j3_imopVar168[i_imopVar165][1]][j2_imopVar167[i_imopVar165][1]][j1_imopVar166[i_imopVar165][1]] = 1.0;
    }
#pragma omp parallel
    {
        double ***u;
        int kk;
        u = z_imopVar143;
        kk = k_imopVar146;
        int i1_imopVar135;
        int i2_imopVar136;
        int i3_imopVar137;
#pragma omp for nowait
        for (i3_imopVar137 = 1; i3_imopVar137 < n3 - 1; i3_imopVar137++) {
            for (i2_imopVar136 = 1; i2_imopVar136 < n2 - 1; i2_imopVar136++) {
                u[i3_imopVar137][i2_imopVar136][n1 - 1] = u[i3_imopVar137][i2_imopVar136][1];
                u[i3_imopVar137][i2_imopVar136][0] = u[i3_imopVar137][i2_imopVar136][n1 - 2];
            }
            for (i1_imopVar135 = 0; i1_imopVar135 < n1; i1_imopVar135++) {
                u[i3_imopVar137][n2 - 1][i1_imopVar135] = u[i3_imopVar137][1][i1_imopVar135];
                u[i3_imopVar137][0][i1_imopVar135] = u[i3_imopVar137][n2 - 2][i1_imopVar135];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i2_imopVar136 = 0; i2_imopVar136 < n2; i2_imopVar136++) {
            for (i1_imopVar135 = 0; i1_imopVar135 < n1; i1_imopVar135++) {
                u[n3 - 1][i2_imopVar136][i1_imopVar135] = u[1][i2_imopVar136][i1_imopVar135];
                u[0][i2_imopVar136][i1_imopVar135] = u[n3 - 2][i2_imopVar136][i1_imopVar135];
            }
        }
    }
    int _imopVarPre232;
    int _imopVarPre233;
    int _imopVarPre234;
    double *_imopVarPre235;
    double *_imopVarPre236;
    _imopVarPre232 = nz[lt];
    _imopVarPre233 = ny[lt];
    _imopVarPre234 = nx[lt];
    _imopVarPre235 = &rnmu;
    _imopVarPre236 = &rnm2;
    double ***r_imopVar201;
    double *rnm2_imopVar202;
    double *rnmu_imopVar203;
    int nx_imopVar204;
    int ny_imopVar205;
    int nz_imopVar206;
    r_imopVar201 = v;
    rnm2_imopVar202 = _imopVarPre236;
    rnmu_imopVar203 = _imopVarPre235;
    nx_imopVar204 = _imopVarPre234;
    ny_imopVar205 = _imopVarPre233;
    nz_imopVar206 = _imopVarPre232;
    double s_imopVar207 = 0.0;
    double tmp_imopVar208 = 0.0;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        int n;
        double aman = 0.0;
#pragma omp master
        {
            n = nx_imopVar204 * ny_imopVar205 * nz_imopVar206;
        }
        double _imopVarPre443;
        double _imopVarPre444;
#pragma omp for reduction(+:s_imopVar207) reduction(max:tmp_imopVar208) nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    s_imopVar207 = s_imopVar207 + r_imopVar201[i3][i2][i1] * r_imopVar201[i3][i2][i1];
                    double _imopVarPre440;
                    double _imopVarPre441;
                    _imopVarPre440 = r_imopVar201[i3][i2][i1];
                    _imopVarPre441 = fabs(_imopVarPre440);
                    aman = _imopVarPre441;
                    if (aman > tmp_imopVar208) {
                        tmp_imopVar208 = aman;
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
        {
            *rnmu_imopVar203 = tmp_imopVar208;
            _imopVarPre443 = s_imopVar207 / (double) n;
            _imopVarPre444 = sqrt(_imopVarPre443);
            *rnm2_imopVar202 = _imopVarPre444;
        }
    }
    int _imopVarPre240;
    int _imopVarPre241;
    int _imopVarPre242;
    _imopVarPre240 = nz[lt];
    _imopVarPre241 = ny[lt];
    _imopVarPre242 = nx[lt];
    printf(" Size: %3dx%3dx%3d (class %1c)\n", _imopVarPre242, _imopVarPre241, _imopVarPre240, Class);
    printf(" Iterations: %3d\n", nit);
    double ***_imopVarPre245;
    double ***_imopVarPre246;
    _imopVarPre245 = r[lt];
    _imopVarPre246 = u[lt];
    double ***u_imopVar220;
    double ***r_imopVar221;
    int k_imopVar222;
    u_imopVar220 = _imopVarPre246;
    r_imopVar221 = _imopVarPre245;
    k_imopVar222 = lt;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        double u1[1037];
        double u2[1037];
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    u1[i1] = u_imopVar220[i3][i2 - 1][i1] + u_imopVar220[i3][i2 + 1][i1] + u_imopVar220[i3 - 1][i2][i1] + u_imopVar220[i3 + 1][i2][i1];
                    u2[i1] = u_imopVar220[i3 - 1][i2 - 1][i1] + u_imopVar220[i3 - 1][i2 + 1][i1] + u_imopVar220[i3 + 1][i2 - 1][i1] + u_imopVar220[i3 + 1][i2 + 1][i1];
                }
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    r_imopVar221[i3][i2][i1] = v[i3][i2][i1] - a[0] * u_imopVar220[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                }
            }
        }
    }
#pragma omp parallel
    {
        double ***u_imopVar90;
        int kk;
        u_imopVar90 = r_imopVar221;
        kk = k_imopVar222;
        int i1;
        int i2;
        int i3;
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                u_imopVar90[i3][i2][n1 - 1] = u_imopVar90[i3][i2][1];
                u_imopVar90[i3][i2][0] = u_imopVar90[i3][i2][n1 - 2];
            }
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar90[i3][n2 - 1][i1] = u_imopVar90[i3][1][i1];
                u_imopVar90[i3][0][i1] = u_imopVar90[i3][n2 - 2][i1];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i2 = 0; i2 < n2; i2++) {
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar90[n3 - 1][i2][i1] = u_imopVar90[1][i2][i1];
                u_imopVar90[0][i2][i1] = u_imopVar90[n3 - 2][i2][i1];
            }
        }
    }
    if (debug_vec[0] >= 1) {
        double ***u_imopVar88;
        char *title;
        int kk;
        u_imopVar88 = r_imopVar221;
        title = "   resid";
        kk = k_imopVar222;
        double rnm2;
        double rnmu;
        int _imopVarPre450;
        int _imopVarPre451;
        int _imopVarPre452;
        double *_imopVarPre453;
        double *_imopVarPre454;
        _imopVarPre450 = nz[kk];
        _imopVarPre451 = ny[kk];
        _imopVarPre452 = nx[kk];
        _imopVarPre453 = &rnmu;
        _imopVarPre454 = &rnm2;
        double ***r_imopVar89;
        double *rnm2_imopVar75;
        double *rnmu_imopVar76;
        int nx_imopVar77;
        int ny_imopVar78;
        int nz_imopVar79;
        r_imopVar89 = u_imopVar88;
        rnm2_imopVar75 = _imopVarPre454;
        rnmu_imopVar76 = _imopVarPre453;
        nx_imopVar77 = _imopVarPre452;
        ny_imopVar78 = _imopVarPre451;
        nz_imopVar79 = _imopVarPre450;
        double s = 0.0;
        double tmp = 0.0;
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            int n;
            double aman = 0.0;
#pragma omp master
            {
                n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
            }
            double _imopVarPre443;
            double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    for (i1 = 1; i1 < n1 - 1; i1++) {
                        s = s + r_imopVar89[i3][i2][i1] * r_imopVar89[i3][i2][i1];
                        double _imopVarPre440;
                        double _imopVarPre441;
                        _imopVarPre440 = r_imopVar89[i3][i2][i1];
                        _imopVarPre441 = fabs(_imopVarPre440);
                        aman = _imopVarPre441;
                        if (aman > tmp) {
                            tmp = aman;
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                *rnmu_imopVar76 = tmp;
                _imopVarPre443 = s / (double) n;
                _imopVarPre444 = sqrt(_imopVarPre443);
                *rnm2_imopVar75 = _imopVarPre444;
            }
        }
        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
    }
    if (debug_vec[2] >= k_imopVar222) {
        showall(r_imopVar221, n1, n2, n3);
    }
    int _imopVarPre253;
    int _imopVarPre254;
    int _imopVarPre255;
    double *_imopVarPre256;
    double *_imopVarPre257;
    double ***_imopVarPre258;
    _imopVarPre253 = nz[lt];
    _imopVarPre254 = ny[lt];
    _imopVarPre255 = nx[lt];
    _imopVarPre256 = &rnmu;
    _imopVarPre257 = &rnm2;
    _imopVarPre258 = r[lt];
    double ***r_imopVar189;
    double *rnm2_imopVar190;
    double *rnmu_imopVar191;
    int nx_imopVar192;
    int ny_imopVar193;
    int nz_imopVar194;
    r_imopVar189 = _imopVarPre258;
    rnm2_imopVar190 = _imopVarPre257;
    rnmu_imopVar191 = _imopVarPre256;
    nx_imopVar192 = _imopVarPre255;
    ny_imopVar193 = _imopVarPre254;
    nz_imopVar194 = _imopVarPre253;
    double s_imopVar195 = 0.0;
    double tmp_imopVar196 = 0.0;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        int n;
        double aman = 0.0;
#pragma omp master
        {
            n = nx_imopVar192 * ny_imopVar193 * nz_imopVar194;
        }
        double _imopVarPre443;
        double _imopVarPre444;
#pragma omp for reduction(+:s_imopVar195) reduction(max:tmp_imopVar196) nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    s_imopVar195 = s_imopVar195 + r_imopVar189[i3][i2][i1] * r_imopVar189[i3][i2][i1];
                    double _imopVarPre440;
                    double _imopVarPre441;
                    _imopVarPre440 = r_imopVar189[i3][i2][i1];
                    _imopVarPre441 = fabs(_imopVarPre440);
                    aman = _imopVarPre441;
                    if (aman > tmp_imopVar196) {
                        tmp_imopVar196 = aman;
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
        {
            *rnmu_imopVar191 = tmp_imopVar196;
            _imopVarPre443 = s_imopVar195 / (double) n;
            _imopVarPre444 = sqrt(_imopVarPre443);
            *rnm2_imopVar190 = _imopVarPre444;
        }
    }
    int k_imopVar197;
    k_imopVar197 = lt;
    int _imopVarPre351;
    int _imopVarPre352;
    int _imopVarPre353;
    double ***_imopVarPre354;
    int _imopVarPre360;
    int _imopVarPre361;
    int _imopVarPre362;
    double ***_imopVarPre363;
    double ***_imopVarPre364;
    int j_imopVar198;
    for (k_imopVar197 = lt; k_imopVar197 >= lb + 1; k_imopVar197--) {
        int m1j;
        int m2j;
        int m3j;
        int d2;
        int d3;
        int _imopVarPre430;
        int d1;
        double ***r_imopVar124;
        double ***s;
#pragma omp parallel default(shared)
        {
#pragma omp master
            {
                j_imopVar198 = k_imopVar197 - 1;
            }
            int _imopVarPre339;
            int _imopVarPre340;
            int _imopVarPre341;
            double ***_imopVarPre342;
            int _imopVarPre343;
            int _imopVarPre344;
            int _imopVarPre345;
            double ***_imopVarPre346;
#pragma omp master
            {
                _imopVarPre339 = m3[j_imopVar198];
                _imopVarPre340 = m2[j_imopVar198];
                _imopVarPre341 = m1[j_imopVar198];
                _imopVarPre342 = r[j_imopVar198];
                _imopVarPre343 = m3[k_imopVar197];
                _imopVarPre344 = m2[k_imopVar197];
                _imopVarPre345 = m1[k_imopVar197];
                _imopVarPre346 = r[k_imopVar197];
            }
            int m1k;
            int m2k;
            int m3k;
#pragma omp master
            {
                r_imopVar124 = _imopVarPre346;
                m1k = _imopVarPre345;
                m2k = _imopVarPre344;
                m3k = _imopVarPre343;
                s = _imopVarPre342;
                m1j = _imopVarPre341;
                m2j = _imopVarPre340;
                m3j = _imopVarPre339;
            }
            int j3;
            int j2;
            int j1;
            int i3;
            int i2;
            int i1;
            double x1[1037];
            double y1[1037];
            double x2;
            double y2;
#pragma omp master
            {
                if (m1k == 3) {
                    d1 = 2;
                } else {
                    d1 = 1;
                }
                if (m2k == 3) {
                    d2 = 2;
                } else {
                    d2 = 1;
                }
                if (m3k == 3) {
                    d3 = 2;
                } else {
                    d3 = 1;
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (j3 = 1; j3 < m3j - 1; j3++) {
                i3 = 2 * j3 - d3;
                for (j2 = 1; j2 < m2j - 1; j2++) {
                    i2 = 2 * j2 - d2;
                    for (j1 = 1; j1 < m1j; j1++) {
                        i1 = 2 * j1 - d1;
                        x1[i1] = r_imopVar124[i3 + 1][i2][i1] + r_imopVar124[i3 + 1][i2 + 2][i1] + r_imopVar124[i3][i2 + 1][i1] + r_imopVar124[i3 + 2][i2 + 1][i1];
                        y1[i1] = r_imopVar124[i3][i2][i1] + r_imopVar124[i3 + 2][i2][i1] + r_imopVar124[i3][i2 + 2][i1] + r_imopVar124[i3 + 2][i2 + 2][i1];
                    }
                    for (j1 = 1; j1 < m1j - 1; j1++) {
                        i1 = 2 * j1 - d1;
                        y2 = r_imopVar124[i3][i2][i1 + 1] + r_imopVar124[i3 + 2][i2][i1 + 1] + r_imopVar124[i3][i2 + 2][i1 + 1] + r_imopVar124[i3 + 2][i2 + 2][i1 + 1];
                        x2 = r_imopVar124[i3 + 1][i2][i1 + 1] + r_imopVar124[i3 + 1][i2 + 2][i1 + 1] + r_imopVar124[i3][i2 + 1][i1 + 1] + r_imopVar124[i3 + 2][i2 + 1][i1 + 1];
                        s[j3][j2][j1] = 0.5 * r_imopVar124[i3 + 1][i2 + 1][i1 + 1] + 0.25 * (r_imopVar124[i3 + 1][i2 + 1][i1] + r_imopVar124[i3 + 1][i2 + 1][i1 + 2] + x2) + 0.125 * (x1[i1] + x1[i1 + 2] + y2) + 0.0625 * (y1[i1] + y1[i1 + 2]);
                    }
                }
            }
#pragma omp master
            {
                _imopVarPre430 = k_imopVar197 - 1;
            }
        }
#pragma omp parallel
        {
            double ***u;
            int n1;
            int n2;
            int n3;
            int kk;
            u = s;
            n1 = m1j;
            n2 = m2j;
            n3 = m3j;
            kk = _imopVarPre430;
            int i1;
            int i2;
            int i3;
#pragma omp for nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    u[i3][i2][n1 - 1] = u[i3][i2][1];
                    u[i3][i2][0] = u[i3][i2][n1 - 2];
                }
                for (i1 = 0; i1 < n1; i1++) {
                    u[i3][n2 - 1][i1] = u[i3][1][i1];
                    u[i3][0][i1] = u[i3][n2 - 2][i1];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i2 = 0; i2 < n2; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    u[n3 - 1][i2][i1] = u[1][i2][i1];
                    u[0][i2][i1] = u[n3 - 2][i2][i1];
                }
            }
        }
        if (debug_vec[0] >= 1) {
            double ***r_imopVar86;
            double s_imopVar87 = 0.0;
            double tmp = 0.0;
            int n1;
            int n2;
            int n3;
#pragma omp parallel default(shared)
            {
                int _imopVarPre432;
#pragma omp master
                {
                    _imopVarPre432 = k_imopVar197 - 1;
                }
                double ***u;
                char *title;
                int kk;
#pragma omp master
                {
                    u = s;
                    n1 = m1j;
                    n2 = m2j;
                    n3 = m3j;
                    title = "   rprj3";
                    kk = _imopVarPre432;
                }
                double rnm2;
                double rnmu;
                int _imopVarPre450;
                int _imopVarPre451;
                int _imopVarPre452;
                double *_imopVarPre453;
                double *_imopVarPre454;
#pragma omp master
                {
                    _imopVarPre450 = nz[kk];
                    _imopVarPre451 = ny[kk];
                    _imopVarPre452 = nx[kk];
                    _imopVarPre453 = &rnmu;
                    _imopVarPre454 = &rnm2;
                }
                double *rnm2_imopVar75;
                double *rnmu_imopVar76;
                int nx_imopVar77;
                int ny_imopVar78;
                int nz_imopVar79;
#pragma omp master
                {
                    r_imopVar86 = u;
                    rnm2_imopVar75 = _imopVarPre454;
                    rnmu_imopVar76 = _imopVarPre453;
                    nx_imopVar77 = _imopVarPre452;
                    ny_imopVar78 = _imopVarPre451;
                    nz_imopVar79 = _imopVarPre450;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                int i3;
                int i2;
                int i1;
                int n;
                double aman = 0.0;
#pragma omp master
                {
                    n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                }
                double _imopVarPre443;
                double _imopVarPre444;
#pragma omp for reduction(+:s_imopVar87) reduction(max:tmp) nowait
                for (i3 = 1; i3 < n3 - 1; i3++) {
                    for (i2 = 1; i2 < n2 - 1; i2++) {
                        for (i1 = 1; i1 < n1 - 1; i1++) {
                            s_imopVar87 = s_imopVar87 + r_imopVar86[i3][i2][i1] * r_imopVar86[i3][i2][i1];
                            double _imopVarPre440;
                            double _imopVarPre441;
                            _imopVarPre440 = r_imopVar86[i3][i2][i1];
                            _imopVarPre441 = fabs(_imopVarPre440);
                            aman = _imopVarPre441;
                            if (aman > tmp) {
                                tmp = aman;
                            }
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    *rnmu_imopVar76 = tmp;
                    _imopVarPre443 = s_imopVar87 / (double) n;
                    _imopVarPre444 = sqrt(_imopVarPre443);
                    *rnm2_imopVar75 = _imopVarPre444;
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                }
            }
        }
        if (debug_vec[4] >= k_imopVar197) {
            showall(s, m1j, m2j, m3j);
        }
    }
#pragma omp parallel
    {
#pragma omp master
        {
            k_imopVar197 = lb;
            _imopVarPre351 = m3[k_imopVar197];
            _imopVarPre352 = m2[k_imopVar197];
            _imopVarPre353 = m1[k_imopVar197];
            _imopVarPre354 = u[k_imopVar197];
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        zero3(_imopVarPre354, _imopVarPre353, _imopVarPre352, _imopVarPre351);
#pragma omp master
        {
            _imopVarPre360 = m3[k_imopVar197];
            _imopVarPre361 = m2[k_imopVar197];
            _imopVarPre362 = m1[k_imopVar197];
            _imopVarPre363 = u[k_imopVar197];
            _imopVarPre364 = r[k_imopVar197];
        }
    }
    double ***r_imopVar81;
    double ***u_imopVar82;
    int n1_imopVar83;
    int n2_imopVar84;
    int n3_imopVar85;
    r_imopVar81 = _imopVarPre364;
    u_imopVar82 = _imopVarPre363;
    n1_imopVar83 = _imopVarPre362;
    n2_imopVar84 = _imopVarPre361;
    n3_imopVar85 = _imopVarPre360;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        double r1[1037];
        double r2[1037];
#pragma omp for nowait
        for (i3 = 1; i3 < n3_imopVar85 - 1; i3++) {
            for (i2 = 1; i2 < n2_imopVar84 - 1; i2++) {
                for (i1 = 0; i1 < n1_imopVar83; i1++) {
                    r1[i1] = r_imopVar81[i3][i2 - 1][i1] + r_imopVar81[i3][i2 + 1][i1] + r_imopVar81[i3 - 1][i2][i1] + r_imopVar81[i3 + 1][i2][i1];
                    r2[i1] = r_imopVar81[i3 - 1][i2 - 1][i1] + r_imopVar81[i3 - 1][i2 + 1][i1] + r_imopVar81[i3 + 1][i2 - 1][i1] + r_imopVar81[i3 + 1][i2 + 1][i1];
                }
                for (i1 = 1; i1 < n1_imopVar83 - 1; i1++) {
                    u_imopVar82[i3][i2][i1] = u_imopVar82[i3][i2][i1] + c[0] * r_imopVar81[i3][i2][i1] + c[1] * (r_imopVar81[i3][i2][i1 - 1] + r_imopVar81[i3][i2][i1 + 1] + r1[i1]) + c[2] * (r2[i1] + r1[i1 - 1] + r1[i1 + 1]);
                }
            }
        }
    }
#pragma omp parallel
    {
        int kk;
        kk = k_imopVar197;
        int i1;
        int i2;
        int i3;
#pragma omp for nowait
        for (i3 = 1; i3 < n3_imopVar85 - 1; i3++) {
            for (i2 = 1; i2 < n2_imopVar84 - 1; i2++) {
                u_imopVar82[i3][i2][n1_imopVar83 - 1] = u_imopVar82[i3][i2][1];
                u_imopVar82[i3][i2][0] = u_imopVar82[i3][i2][n1_imopVar83 - 2];
            }
            for (i1 = 0; i1 < n1_imopVar83; i1++) {
                u_imopVar82[i3][n2_imopVar84 - 1][i1] = u_imopVar82[i3][1][i1];
                u_imopVar82[i3][0][i1] = u_imopVar82[i3][n2_imopVar84 - 2][i1];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i2 = 0; i2 < n2_imopVar84; i2++) {
            for (i1 = 0; i1 < n1_imopVar83; i1++) {
                u_imopVar82[n3_imopVar85 - 1][i2][i1] = u_imopVar82[1][i2][i1];
                u_imopVar82[0][i2][i1] = u_imopVar82[n3_imopVar85 - 2][i2][i1];
            }
        }
    }
    if (debug_vec[0] >= 1) {
        char *title;
        int kk;
        title = "   psinv";
        kk = k_imopVar197;
        double rnm2;
        double rnmu;
        int _imopVarPre450;
        int _imopVarPre451;
        int _imopVarPre452;
        double *_imopVarPre453;
        double *_imopVarPre454;
        _imopVarPre450 = nz[kk];
        _imopVarPre451 = ny[kk];
        _imopVarPre452 = nx[kk];
        _imopVarPre453 = &rnmu;
        _imopVarPre454 = &rnm2;
        double ***r_imopVar80;
        double *rnm2_imopVar75;
        double *rnmu_imopVar76;
        int nx_imopVar77;
        int ny_imopVar78;
        int nz_imopVar79;
        r_imopVar80 = u_imopVar82;
        rnm2_imopVar75 = _imopVarPre454;
        rnmu_imopVar76 = _imopVarPre453;
        nx_imopVar77 = _imopVarPre452;
        ny_imopVar78 = _imopVarPre451;
        nz_imopVar79 = _imopVarPre450;
        double s = 0.0;
        double tmp = 0.0;
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            int n;
            double aman = 0.0;
#pragma omp master
            {
                n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
            }
            double _imopVarPre443;
            double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
            for (i3 = 1; i3 < n3_imopVar85 - 1; i3++) {
                for (i2 = 1; i2 < n2_imopVar84 - 1; i2++) {
                    for (i1 = 1; i1 < n1_imopVar83 - 1; i1++) {
                        s = s + r_imopVar80[i3][i2][i1] * r_imopVar80[i3][i2][i1];
                        double _imopVarPre440;
                        double _imopVarPre441;
                        _imopVarPre440 = r_imopVar80[i3][i2][i1];
                        _imopVarPre441 = fabs(_imopVarPre440);
                        aman = _imopVarPre441;
                        if (aman > tmp) {
                            tmp = aman;
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                *rnmu_imopVar76 = tmp;
                _imopVarPre443 = s / (double) n;
                _imopVarPre444 = sqrt(_imopVarPre443);
                *rnm2_imopVar75 = _imopVarPre444;
            }
        }
        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
    }
    if (debug_vec[3] >= k_imopVar197) {
        showall(u_imopVar82, n1_imopVar83, n2_imopVar84, n3_imopVar85);
    }
    for (k_imopVar197 = lb + 1; k_imopVar197 <= lt - 1; k_imopVar197++) {
        int n2_imopVar131;
        int n3_imopVar132;
        int t2;
        int t3;
        double ***u_imopVar97;
        double ***v_imopVar98;
        double ***r_imopVar99;
        int n1_imopVar100;
        int n2_imopVar101;
        int n3_imopVar102;
        int _imopVarPre435;
        int d1;
        int d2;
        int _imopVarPre369;
        int _imopVarPre370;
        int _imopVarPre371;
        double ***_imopVarPre372;
        double ***z;
        int mm1;
        int mm2;
        int mm3;
        double ***u_imopVar120;
        int n1_imopVar121;
        int n2_imopVar122;
        int n3_imopVar123;
        int d3;
        int t1;
        double ***r_imopVar128;
        double ***u_imopVar129;
        int n1_imopVar130;
#pragma omp parallel
        {
            int _imopVarPre387;
            double ***_imopVarPre388;
            int _imopVarPre381;
            int _imopVarPre382;
            int _imopVarPre383;
            double ***_imopVarPre384;
            int _imopVarPre385;
            int _imopVarPre386;
#pragma omp master
            {
                j_imopVar198 = k_imopVar197 - 1;
                _imopVarPre369 = m3[k_imopVar197];
                _imopVarPre370 = m2[k_imopVar197];
                _imopVarPre371 = m1[k_imopVar197];
                _imopVarPre372 = u[k_imopVar197];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            zero3(_imopVarPre372, _imopVarPre371, _imopVarPre370, _imopVarPre369);
#pragma omp master
            {
                _imopVarPre381 = m3[k_imopVar197];
                _imopVarPre382 = m2[k_imopVar197];
                _imopVarPre383 = m1[k_imopVar197];
                _imopVarPre384 = u[k_imopVar197];
                _imopVarPre385 = m3[j_imopVar198];
                _imopVarPre386 = m2[j_imopVar198];
                _imopVarPre387 = m1[j_imopVar198];
                _imopVarPre388 = u[j_imopVar198];
                z = _imopVarPre388;
                mm1 = _imopVarPre387;
                mm2 = _imopVarPre386;
                mm3 = _imopVarPre385;
                u_imopVar120 = _imopVarPre384;
                n1_imopVar121 = _imopVarPre383;
                n2_imopVar122 = _imopVarPre382;
                n3_imopVar123 = _imopVarPre381;
            }
        }
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            double z1[1037];
            double z2[1037];
            double z3[1037];
            int _imopVarPre436;
#pragma omp master
            {
                _imopVarPre435 = n1_imopVar121 != 3;
                if (_imopVarPre435) {
                    _imopVarPre436 = n2_imopVar122 != 3;
                    if (_imopVarPre436) {
                        _imopVarPre436 = n3_imopVar123 != 3;
                    }
                    _imopVarPre435 = _imopVarPre436;
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            if (_imopVarPre435) {
#pragma omp for nowait
                for (i3 = 0; i3 < mm3 - 1; i3++) {
                    for (i2 = 0; i2 < mm2 - 1; i2++) {
                        for (i1 = 0; i1 < mm1; i1++) {
                            z1[i1] = z[i3][i2 + 1][i1] + z[i3][i2][i1];
                            z2[i1] = z[i3 + 1][i2][i1] + z[i3][i2][i1];
                            z3[i1] = z[i3 + 1][i2 + 1][i1] + z[i3 + 1][i2][i1] + z1[i1];
                        }
                        for (i1 = 0; i1 < mm1 - 1; i1++) {
                            u_imopVar120[2 * i3][2 * i2][2 * i1] = u_imopVar120[2 * i3][2 * i2][2 * i1] + z[i3][i2][i1];
                            u_imopVar120[2 * i3][2 * i2][2 * i1 + 1] = u_imopVar120[2 * i3][2 * i2][2 * i1 + 1] + 0.5 * (z[i3][i2][i1 + 1] + z[i3][i2][i1]);
                        }
                        for (i1 = 0; i1 < mm1 - 1; i1++) {
                            u_imopVar120[2 * i3][2 * i2 + 1][2 * i1] = u_imopVar120[2 * i3][2 * i2 + 1][2 * i1] + 0.5 * z1[i1];
                            u_imopVar120[2 * i3][2 * i2 + 1][2 * i1 + 1] = u_imopVar120[2 * i3][2 * i2 + 1][2 * i1 + 1] + 0.25 * (z1[i1] + z1[i1 + 1]);
                        }
                        for (i1 = 0; i1 < mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 + 1][2 * i2][2 * i1] = u_imopVar120[2 * i3 + 1][2 * i2][2 * i1] + 0.5 * z2[i1];
                            u_imopVar120[2 * i3 + 1][2 * i2][2 * i1 + 1] = u_imopVar120[2 * i3 + 1][2 * i2][2 * i1 + 1] + 0.25 * (z2[i1] + z2[i1 + 1]);
                        }
                        for (i1 = 0; i1 < mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 + 1][2 * i2 + 1][2 * i1] = u_imopVar120[2 * i3 + 1][2 * i2 + 1][2 * i1] + 0.25 * z3[i1];
                            u_imopVar120[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] = u_imopVar120[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] + 0.125 * (z3[i1] + z3[i1 + 1]);
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            } else {
#pragma omp master
                {
                    if (n1_imopVar121 == 3) {
                        d1 = 2;
                        t1 = 1;
                    } else {
                        d1 = 1;
                        t1 = 0;
                    }
                    if (n2_imopVar122 == 3) {
                        d2 = 2;
                        t2 = 1;
                    } else {
                        d2 = 1;
                        t2 = 0;
                    }
                    if (n3_imopVar123 == 3) {
                        d3 = 2;
                        t3 = 1;
                    } else {
                        d3 = 1;
                        t3 = 0;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (i3 = d3; i3 <= mm3 - 1; i3++) {
                    for (i2 = d2; i2 <= mm2 - 1; i2++) {
                        for (i1 = d1; i1 <= mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u_imopVar120[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + z[i3 - 1][i2 - 1][i1 - 1];
                        }
                        for (i1 = 1; i1 <= mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u_imopVar120[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.5 * (z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                    }
                    for (i2 = 1; i2 <= mm2 - 1; i2++) {
                        for (i1 = d1; i1 <= mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u_imopVar120[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                        for (i1 = 1; i1 <= mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u_imopVar120[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (i3 = 1; i3 <= mm3 - 1; i3++) {
                    for (i2 = d2; i2 <= mm2 - 1; i2++) {
                        for (i1 = d1; i1 <= mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u_imopVar120[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                        for (i1 = 1; i1 <= mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u_imopVar120[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3][i2 - 1][i1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                    }
                    for (i2 = 1; i2 <= mm2 - 1; i2++) {
                        for (i1 = d1; i1 <= mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u_imopVar120[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.25 * (z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                        for (i1 = 1; i1 <= mm1 - 1; i1++) {
                            u_imopVar120[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u_imopVar120[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.125 * (z[i3][i2][i1] + z[i3][i2 - 1][i1] + z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                    }
                }
            }
        }
        if (debug_vec[0] >= 1) {
            double tmp = 0.0;
            double ***r_imopVar112;
            double s_imopVar118 = 0.0;
            double tmp_imopVar119 = 0.0;
            int n1_imopVar94;
            int n2_imopVar95;
            int n3_imopVar96;
            double ***r;
            double s = 0.0;
#pragma omp parallel default(shared)
            {
                int _imopVarPre438;
#pragma omp master
                {
                    _imopVarPre438 = k_imopVar197 - 1;
                }
                double ***u_imopVar93;
                char *title;
                int kk;
#pragma omp master
                {
                    u_imopVar93 = z;
                    n1_imopVar94 = mm1;
                    n2_imopVar95 = mm2;
                    n3_imopVar96 = mm3;
                    title = "z: inter";
                    kk = _imopVarPre438;
                }
                double rnm2;
                double rnmu;
                int _imopVarPre450;
                int _imopVarPre451;
                int _imopVarPre452;
                double *_imopVarPre453;
                double *_imopVarPre454;
#pragma omp master
                {
                    _imopVarPre450 = nz[kk];
                    _imopVarPre451 = ny[kk];
                    _imopVarPre452 = nx[kk];
                    _imopVarPre453 = &rnmu;
                    _imopVarPre454 = &rnm2;
                }
                double *rnm2_imopVar75;
                double *rnmu_imopVar76;
                int nx_imopVar77;
                int ny_imopVar78;
                int nz_imopVar79;
#pragma omp master
                {
                    r = u_imopVar93;
                    rnm2_imopVar75 = _imopVarPre454;
                    rnmu_imopVar76 = _imopVarPre453;
                    nx_imopVar77 = _imopVarPre452;
                    ny_imopVar78 = _imopVarPre451;
                    nz_imopVar79 = _imopVarPre450;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                char *title_imopVar103;
                int kk_imopVar104;
                double rnm2_imopVar105;
                double rnmu_imopVar106;
                int _imopVarPre450_imopVar107;
                int _imopVarPre451_imopVar108;
                int _imopVarPre452_imopVar109;
                double *_imopVarPre453_imopVar110;
                double *_imopVarPre454_imopVar111;
                double *rnm2_imopVar75_imopVar113;
                double *rnmu_imopVar76_imopVar114;
                int nx_imopVar77_imopVar115;
                int ny_imopVar78_imopVar116;
                int nz_imopVar79_imopVar117;
                int i3;
                int i2;
                int i1;
                int n;
                double aman = 0.0;
#pragma omp master
                {
                    n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                }
                double _imopVarPre443;
                double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                for (i3 = 1; i3 < n3_imopVar96 - 1; i3++) {
                    for (i2 = 1; i2 < n2_imopVar95 - 1; i2++) {
                        for (i1 = 1; i1 < n1_imopVar94 - 1; i1++) {
                            s = s + r[i3][i2][i1] * r[i3][i2][i1];
                            double _imopVarPre440;
                            double _imopVarPre441;
                            _imopVarPre440 = r[i3][i2][i1];
                            _imopVarPre441 = fabs(_imopVarPre440);
                            aman = _imopVarPre441;
                            if (aman > tmp) {
                                tmp = aman;
                            }
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    *rnmu_imopVar76 = tmp;
                    _imopVarPre443 = s / (double) n;
                    _imopVarPre444 = sqrt(_imopVarPre443);
                    *rnm2_imopVar75 = _imopVarPre444;
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                    title_imopVar103 = "u: inter";
                    kk_imopVar104 = k_imopVar197;
                    _imopVarPre450_imopVar107 = nz[kk_imopVar104];
                    _imopVarPre451_imopVar108 = ny[kk_imopVar104];
                    _imopVarPre452_imopVar109 = nx[kk_imopVar104];
                    _imopVarPre453_imopVar110 = &rnmu_imopVar106;
                    _imopVarPre454_imopVar111 = &rnm2_imopVar105;
                    r_imopVar112 = u_imopVar120;
                    rnm2_imopVar75_imopVar113 = _imopVarPre454_imopVar111;
                    rnmu_imopVar76_imopVar114 = _imopVarPre453_imopVar110;
                    nx_imopVar77_imopVar115 = _imopVarPre452_imopVar109;
                    ny_imopVar78_imopVar116 = _imopVarPre451_imopVar108;
                    nz_imopVar79_imopVar117 = _imopVarPre450_imopVar107;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                {
                    int i3;
                    int i2;
                    int i1;
                    int n;
                    double aman = 0.0;
#pragma omp master
                    {
                        n = nx_imopVar77_imopVar115 * ny_imopVar78_imopVar116 * nz_imopVar79_imopVar117;
                    }
                    double _imopVarPre443;
                    double _imopVarPre444;
#pragma omp for reduction(+:s_imopVar118) reduction(max:tmp_imopVar119) nowait
                    for (i3 = 1; i3 < n3_imopVar123 - 1; i3++) {
                        for (i2 = 1; i2 < n2_imopVar122 - 1; i2++) {
                            for (i1 = 1; i1 < n1_imopVar121 - 1; i1++) {
                                s_imopVar118 = s_imopVar118 + r_imopVar112[i3][i2][i1] * r_imopVar112[i3][i2][i1];
                                double _imopVarPre440;
                                double _imopVarPre441;
                                _imopVarPre440 = r_imopVar112[i3][i2][i1];
                                _imopVarPre441 = fabs(_imopVarPre440);
                                aman = _imopVarPre441;
                                if (aman > tmp_imopVar119) {
                                    tmp_imopVar119 = aman;
                                }
                            }
                        }
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                    {
                        *rnmu_imopVar76_imopVar114 = tmp_imopVar119;
                        _imopVarPre443 = s_imopVar118 / (double) n;
                        _imopVarPre444 = sqrt(_imopVarPre443);
                        *rnm2_imopVar75_imopVar113 = _imopVarPre444;
                    }
                }
#pragma omp master
                {
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk_imopVar104, title_imopVar103, rnm2_imopVar105, rnmu_imopVar106);
                }
            }
        }
#pragma omp parallel default(shared)
        {
#pragma omp master
            {
                if (debug_vec[5] >= k_imopVar197) {
                    showall(z, mm1, mm2, mm3);
                    showall(u_imopVar120, n1_imopVar121, n2_imopVar122, n3_imopVar123);
                }
            }
            int _imopVarPre395;
            int _imopVarPre396;
            int _imopVarPre397;
            double ***_imopVarPre398;
            double ***_imopVarPre399;
            double ***_imopVarPre400;
#pragma omp master
            {
                _imopVarPre395 = m3[k_imopVar197];
                _imopVarPre396 = m2[k_imopVar197];
                _imopVarPre397 = m1[k_imopVar197];
                _imopVarPre398 = r[k_imopVar197];
                _imopVarPre399 = r[k_imopVar197];
                _imopVarPre400 = u[k_imopVar197];
                u_imopVar97 = _imopVarPre400;
                v_imopVar98 = _imopVarPre399;
                r_imopVar99 = _imopVarPre398;
                n1_imopVar100 = _imopVarPre397;
                n2_imopVar101 = _imopVarPre396;
                n3_imopVar102 = _imopVarPre395;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            int i3;
            int i2;
            int i1;
            double u1[1037];
            double u2[1037];
#pragma omp for nowait
            for (i3 = 1; i3 < n3_imopVar102 - 1; i3++) {
                for (i2 = 1; i2 < n2_imopVar101 - 1; i2++) {
                    for (i1 = 0; i1 < n1_imopVar100; i1++) {
                        u1[i1] = u_imopVar97[i3][i2 - 1][i1] + u_imopVar97[i3][i2 + 1][i1] + u_imopVar97[i3 - 1][i2][i1] + u_imopVar97[i3 + 1][i2][i1];
                        u2[i1] = u_imopVar97[i3 - 1][i2 - 1][i1] + u_imopVar97[i3 - 1][i2 + 1][i1] + u_imopVar97[i3 + 1][i2 - 1][i1] + u_imopVar97[i3 + 1][i2 + 1][i1];
                    }
                    for (i1 = 1; i1 < n1_imopVar100 - 1; i1++) {
                        r_imopVar99[i3][i2][i1] = v_imopVar98[i3][i2][i1] - a[0] * u_imopVar97[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                    }
                }
            }
        }
#pragma omp parallel
        {
            double ***u_imopVar90;
            int kk;
            u_imopVar90 = r_imopVar99;
            kk = k_imopVar197;
            int i1;
            int i2;
            int i3;
#pragma omp for nowait
            for (i3 = 1; i3 < n3_imopVar102 - 1; i3++) {
                for (i2 = 1; i2 < n2_imopVar101 - 1; i2++) {
                    u_imopVar90[i3][i2][n1_imopVar100 - 1] = u_imopVar90[i3][i2][1];
                    u_imopVar90[i3][i2][0] = u_imopVar90[i3][i2][n1_imopVar100 - 2];
                }
                for (i1 = 0; i1 < n1_imopVar100; i1++) {
                    u_imopVar90[i3][n2_imopVar101 - 1][i1] = u_imopVar90[i3][1][i1];
                    u_imopVar90[i3][0][i1] = u_imopVar90[i3][n2_imopVar101 - 2][i1];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i2 = 0; i2 < n2_imopVar101; i2++) {
                for (i1 = 0; i1 < n1_imopVar100; i1++) {
                    u_imopVar90[n3_imopVar102 - 1][i2][i1] = u_imopVar90[1][i2][i1];
                    u_imopVar90[0][i2][i1] = u_imopVar90[n3_imopVar102 - 2][i2][i1];
                }
            }
        }
        if (debug_vec[0] >= 1) {
            double s = 0.0;
            double tmp = 0.0;
            double ***r_imopVar89;
#pragma omp parallel default(shared)
            {
                double ***u_imopVar88;
                char *title;
                int kk;
#pragma omp master
                {
                    u_imopVar88 = r_imopVar99;
                    title = "   resid";
                    kk = k_imopVar197;
                }
                double rnm2;
                double rnmu;
                int _imopVarPre450;
                int _imopVarPre451;
                int _imopVarPre452;
                double *_imopVarPre453;
                double *_imopVarPre454;
#pragma omp master
                {
                    _imopVarPre450 = nz[kk];
                    _imopVarPre451 = ny[kk];
                    _imopVarPre452 = nx[kk];
                    _imopVarPre453 = &rnmu;
                    _imopVarPre454 = &rnm2;
                }
                double *rnm2_imopVar75;
                double *rnmu_imopVar76;
                int nx_imopVar77;
                int ny_imopVar78;
                int nz_imopVar79;
#pragma omp master
                {
                    r_imopVar89 = u_imopVar88;
                    rnm2_imopVar75 = _imopVarPre454;
                    rnmu_imopVar76 = _imopVarPre453;
                    nx_imopVar77 = _imopVarPre452;
                    ny_imopVar78 = _imopVarPre451;
                    nz_imopVar79 = _imopVarPre450;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                int i3;
                int i2;
                int i1;
                int n;
                double aman = 0.0;
#pragma omp master
                {
                    n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                }
                double _imopVarPre443;
                double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                for (i3 = 1; i3 < n3_imopVar102 - 1; i3++) {
                    for (i2 = 1; i2 < n2_imopVar101 - 1; i2++) {
                        for (i1 = 1; i1 < n1_imopVar100 - 1; i1++) {
                            s = s + r_imopVar89[i3][i2][i1] * r_imopVar89[i3][i2][i1];
                            double _imopVarPre440;
                            double _imopVarPre441;
                            _imopVarPre440 = r_imopVar89[i3][i2][i1];
                            _imopVarPre441 = fabs(_imopVarPre440);
                            aman = _imopVarPre441;
                            if (aman > tmp) {
                                tmp = aman;
                            }
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    *rnmu_imopVar76 = tmp;
                    _imopVarPre443 = s / (double) n;
                    _imopVarPre444 = sqrt(_imopVarPre443);
                    *rnm2_imopVar75 = _imopVarPre444;
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                }
            }
        }
#pragma omp parallel default(shared)
        {
#pragma omp master
            {
                if (debug_vec[2] >= k_imopVar197) {
                    showall(r_imopVar99, n1_imopVar100, n2_imopVar101, n3_imopVar102);
                }
            }
            int _imopVarPre406;
            int _imopVarPre407;
            int _imopVarPre408;
            double ***_imopVarPre409;
            double ***_imopVarPre410;
#pragma omp master
            {
                _imopVarPre406 = m3[k_imopVar197];
                _imopVarPre407 = m2[k_imopVar197];
                _imopVarPre408 = m1[k_imopVar197];
                _imopVarPre409 = u[k_imopVar197];
                _imopVarPre410 = r[k_imopVar197];
                r_imopVar128 = _imopVarPre410;
                u_imopVar129 = _imopVarPre409;
                n1_imopVar130 = _imopVarPre408;
                n2_imopVar131 = _imopVarPre407;
                n3_imopVar132 = _imopVarPre406;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            int i3;
            int i2;
            int i1;
            double r1[1037];
            double r2[1037];
#pragma omp for nowait
            for (i3 = 1; i3 < n3_imopVar132 - 1; i3++) {
                for (i2 = 1; i2 < n2_imopVar131 - 1; i2++) {
                    for (i1 = 0; i1 < n1_imopVar130; i1++) {
                        r1[i1] = r_imopVar128[i3][i2 - 1][i1] + r_imopVar128[i3][i2 + 1][i1] + r_imopVar128[i3 - 1][i2][i1] + r_imopVar128[i3 + 1][i2][i1];
                        r2[i1] = r_imopVar128[i3 - 1][i2 - 1][i1] + r_imopVar128[i3 - 1][i2 + 1][i1] + r_imopVar128[i3 + 1][i2 - 1][i1] + r_imopVar128[i3 + 1][i2 + 1][i1];
                    }
                    for (i1 = 1; i1 < n1_imopVar130 - 1; i1++) {
                        u_imopVar129[i3][i2][i1] = u_imopVar129[i3][i2][i1] + c[0] * r_imopVar128[i3][i2][i1] + c[1] * (r_imopVar128[i3][i2][i1 - 1] + r_imopVar128[i3][i2][i1 + 1] + r1[i1]) + c[2] * (r2[i1] + r1[i1 - 1] + r1[i1 + 1]);
                    }
                }
            }
        }
#pragma omp parallel
        {
            int kk;
            kk = k_imopVar197;
            int i1;
            int i2;
            int i3;
#pragma omp for nowait
            for (i3 = 1; i3 < n3_imopVar132 - 1; i3++) {
                for (i2 = 1; i2 < n2_imopVar131 - 1; i2++) {
                    u_imopVar129[i3][i2][n1_imopVar130 - 1] = u_imopVar129[i3][i2][1];
                    u_imopVar129[i3][i2][0] = u_imopVar129[i3][i2][n1_imopVar130 - 2];
                }
                for (i1 = 0; i1 < n1_imopVar130; i1++) {
                    u_imopVar129[i3][n2_imopVar131 - 1][i1] = u_imopVar129[i3][1][i1];
                    u_imopVar129[i3][0][i1] = u_imopVar129[i3][n2_imopVar131 - 2][i1];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i2 = 0; i2 < n2_imopVar131; i2++) {
                for (i1 = 0; i1 < n1_imopVar130; i1++) {
                    u_imopVar129[n3_imopVar132 - 1][i2][i1] = u_imopVar129[1][i2][i1];
                    u_imopVar129[0][i2][i1] = u_imopVar129[n3_imopVar132 - 2][i2][i1];
                }
            }
        }
        if (debug_vec[0] >= 1) {
            double ***r_imopVar80;
            double s = 0.0;
            double tmp = 0.0;
#pragma omp parallel default(shared)
            {
                char *title;
                int kk;
#pragma omp master
                {
                    title = "   psinv";
                    kk = k_imopVar197;
                }
                double rnm2;
                double rnmu;
                int _imopVarPre450;
                int _imopVarPre451;
                int _imopVarPre452;
                double *_imopVarPre453;
                double *_imopVarPre454;
#pragma omp master
                {
                    _imopVarPre450 = nz[kk];
                    _imopVarPre451 = ny[kk];
                    _imopVarPre452 = nx[kk];
                    _imopVarPre453 = &rnmu;
                    _imopVarPre454 = &rnm2;
                }
                double *rnm2_imopVar75;
                double *rnmu_imopVar76;
                int nx_imopVar77;
                int ny_imopVar78;
                int nz_imopVar79;
#pragma omp master
                {
                    r_imopVar80 = u_imopVar129;
                    rnm2_imopVar75 = _imopVarPre454;
                    rnmu_imopVar76 = _imopVarPre453;
                    nx_imopVar77 = _imopVarPre452;
                    ny_imopVar78 = _imopVarPre451;
                    nz_imopVar79 = _imopVarPre450;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                int i3;
                int i2;
                int i1;
                int n;
                double aman = 0.0;
#pragma omp master
                {
                    n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                }
                double _imopVarPre443;
                double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                for (i3 = 1; i3 < n3_imopVar132 - 1; i3++) {
                    for (i2 = 1; i2 < n2_imopVar131 - 1; i2++) {
                        for (i1 = 1; i1 < n1_imopVar130 - 1; i1++) {
                            s = s + r_imopVar80[i3][i2][i1] * r_imopVar80[i3][i2][i1];
                            double _imopVarPre440;
                            double _imopVarPre441;
                            _imopVarPre440 = r_imopVar80[i3][i2][i1];
                            _imopVarPre441 = fabs(_imopVarPre440);
                            aman = _imopVarPre441;
                            if (aman > tmp) {
                                tmp = aman;
                            }
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    *rnmu_imopVar76 = tmp;
                    _imopVarPre443 = s / (double) n;
                    _imopVarPre444 = sqrt(_imopVarPre443);
                    *rnm2_imopVar75 = _imopVarPre444;
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                }
            }
        }
        if (debug_vec[3] >= k_imopVar197) {
            showall(u_imopVar129, n1_imopVar130, n2_imopVar131, n3_imopVar132);
        }
    }
    j_imopVar198 = lt - 1;
    k_imopVar197 = lt;
    double ***_imopVarPre416;
    int _imopVarPre417;
    int _imopVarPre418;
    int _imopVarPre419;
    double ***_imopVarPre420;
    _imopVarPre416 = u[lt];
    _imopVarPre417 = m3[j_imopVar198];
    _imopVarPre418 = m2[j_imopVar198];
    _imopVarPre419 = m1[j_imopVar198];
    _imopVarPre420 = u[j_imopVar198];
    double ***z_imopVar199;
    int mm1;
    int mm2;
    int mm3;
    double ***u_imopVar125;
    z_imopVar199 = _imopVarPre420;
    mm1 = _imopVarPre419;
    mm2 = _imopVarPre418;
    mm3 = _imopVarPre417;
    u_imopVar125 = _imopVarPre416;
    int d3;
    int t1;
    int t2;
    int t3;
    int _imopVarPre435;
    int d1_imopVar200;
    int d2;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        double z1[1037];
        double z2[1037];
        double z3[1037];
        int _imopVarPre436;
#pragma omp master
        {
            _imopVarPre435 = n1 != 3;
            if (_imopVarPre435) {
                _imopVarPre436 = n2 != 3;
                if (_imopVarPre436) {
                    _imopVarPre436 = n3 != 3;
                }
                _imopVarPre435 = _imopVarPre436;
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        if (_imopVarPre435) {
#pragma omp for nowait
            for (i3 = 0; i3 < mm3 - 1; i3++) {
                for (i2 = 0; i2 < mm2 - 1; i2++) {
                    for (i1 = 0; i1 < mm1; i1++) {
                        z1[i1] = z_imopVar199[i3][i2 + 1][i1] + z_imopVar199[i3][i2][i1];
                        z2[i1] = z_imopVar199[i3 + 1][i2][i1] + z_imopVar199[i3][i2][i1];
                        z3[i1] = z_imopVar199[i3 + 1][i2 + 1][i1] + z_imopVar199[i3 + 1][i2][i1] + z1[i1];
                    }
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        u_imopVar125[2 * i3][2 * i2][2 * i1] = u_imopVar125[2 * i3][2 * i2][2 * i1] + z_imopVar199[i3][i2][i1];
                        u_imopVar125[2 * i3][2 * i2][2 * i1 + 1] = u_imopVar125[2 * i3][2 * i2][2 * i1 + 1] + 0.5 * (z_imopVar199[i3][i2][i1 + 1] + z_imopVar199[i3][i2][i1]);
                    }
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        u_imopVar125[2 * i3][2 * i2 + 1][2 * i1] = u_imopVar125[2 * i3][2 * i2 + 1][2 * i1] + 0.5 * z1[i1];
                        u_imopVar125[2 * i3][2 * i2 + 1][2 * i1 + 1] = u_imopVar125[2 * i3][2 * i2 + 1][2 * i1 + 1] + 0.25 * (z1[i1] + z1[i1 + 1]);
                    }
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 + 1][2 * i2][2 * i1] = u_imopVar125[2 * i3 + 1][2 * i2][2 * i1] + 0.5 * z2[i1];
                        u_imopVar125[2 * i3 + 1][2 * i2][2 * i1 + 1] = u_imopVar125[2 * i3 + 1][2 * i2][2 * i1 + 1] + 0.25 * (z2[i1] + z2[i1 + 1]);
                    }
                    for (i1 = 0; i1 < mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 + 1][2 * i2 + 1][2 * i1] = u_imopVar125[2 * i3 + 1][2 * i2 + 1][2 * i1] + 0.25 * z3[i1];
                        u_imopVar125[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] = u_imopVar125[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] + 0.125 * (z3[i1] + z3[i1 + 1]);
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
        } else {
#pragma omp master
            {
                if (n1 == 3) {
                    d1_imopVar200 = 2;
                    t1 = 1;
                } else {
                    d1_imopVar200 = 1;
                    t1 = 0;
                }
                if (n2 == 3) {
                    d2 = 2;
                    t2 = 1;
                } else {
                    d2 = 1;
                    t2 = 0;
                }
                if (n3 == 3) {
                    d3 = 2;
                    t3 = 1;
                } else {
                    d3 = 1;
                    t3 = 0;
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i3 = d3; i3 <= mm3 - 1; i3++) {
                for (i2 = d2; i2 <= mm2 - 1; i2++) {
                    for (i1 = d1_imopVar200; i1 <= mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1_imopVar200 - 1] = u_imopVar125[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1_imopVar200 - 1] + z_imopVar199[i3 - 1][i2 - 1][i1 - 1];
                    }
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u_imopVar125[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.5 * (z_imopVar199[i3 - 1][i2 - 1][i1] + z_imopVar199[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
                for (i2 = 1; i2 <= mm2 - 1; i2++) {
                    for (i1 = d1_imopVar200; i1 <= mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1_imopVar200 - 1] = u_imopVar125[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1_imopVar200 - 1] + 0.5 * (z_imopVar199[i3 - 1][i2][i1 - 1] + z_imopVar199[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u_imopVar125[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.25 * (z_imopVar199[i3 - 1][i2][i1] + z_imopVar199[i3 - 1][i2 - 1][i1] + z_imopVar199[i3 - 1][i2][i1 - 1] + z_imopVar199[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i3 = 1; i3 <= mm3 - 1; i3++) {
                for (i2 = d2; i2 <= mm2 - 1; i2++) {
                    for (i1 = d1_imopVar200; i1 <= mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1_imopVar200 - 1] = u_imopVar125[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1_imopVar200 - 1] + 0.5 * (z_imopVar199[i3][i2 - 1][i1 - 1] + z_imopVar199[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u_imopVar125[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.25 * (z_imopVar199[i3][i2 - 1][i1] + z_imopVar199[i3][i2 - 1][i1 - 1] + z_imopVar199[i3 - 1][i2 - 1][i1] + z_imopVar199[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
                for (i2 = 1; i2 <= mm2 - 1; i2++) {
                    for (i1 = d1_imopVar200; i1 <= mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1_imopVar200 - 1] = u_imopVar125[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1_imopVar200 - 1] + 0.25 * (z_imopVar199[i3][i2][i1 - 1] + z_imopVar199[i3][i2 - 1][i1 - 1] + z_imopVar199[i3 - 1][i2][i1 - 1] + z_imopVar199[i3 - 1][i2 - 1][i1 - 1]);
                    }
                    for (i1 = 1; i1 <= mm1 - 1; i1++) {
                        u_imopVar125[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u_imopVar125[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.125 * (z_imopVar199[i3][i2][i1] + z_imopVar199[i3][i2 - 1][i1] + z_imopVar199[i3][i2][i1 - 1] + z_imopVar199[i3][i2 - 1][i1 - 1] + z_imopVar199[i3 - 1][i2][i1] + z_imopVar199[i3 - 1][i2 - 1][i1] + z_imopVar199[i3 - 1][i2][i1 - 1] + z_imopVar199[i3 - 1][i2 - 1][i1 - 1]);
                    }
                }
            }
        }
    }
    if (debug_vec[0] >= 1) {
        int _imopVarPre438;
        _imopVarPre438 = k_imopVar197 - 1;
        double ***u_imopVar93;
        int n1_imopVar94;
        int n2_imopVar95;
        int n3_imopVar96;
        char *title;
        int kk;
        u_imopVar93 = z_imopVar199;
        n1_imopVar94 = mm1;
        n2_imopVar95 = mm2;
        n3_imopVar96 = mm3;
        title = "z: inter";
        kk = _imopVarPre438;
        double rnm2;
        double rnmu;
        int _imopVarPre450;
        int _imopVarPre451;
        int _imopVarPre452;
        double *_imopVarPre453;
        double *_imopVarPre454;
        _imopVarPre450 = nz[kk];
        _imopVarPre451 = ny[kk];
        _imopVarPre452 = nx[kk];
        _imopVarPre453 = &rnmu;
        _imopVarPre454 = &rnm2;
        double ***r;
        double *rnm2_imopVar75;
        double *rnmu_imopVar76;
        int nx_imopVar77;
        int ny_imopVar78;
        int nz_imopVar79;
        r = u_imopVar93;
        rnm2_imopVar75 = _imopVarPre454;
        rnmu_imopVar76 = _imopVarPre453;
        nx_imopVar77 = _imopVarPre452;
        ny_imopVar78 = _imopVarPre451;
        nz_imopVar79 = _imopVarPre450;
        double s = 0.0;
        double tmp = 0.0;
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            int n;
            double aman = 0.0;
#pragma omp master
            {
                n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
            }
            double _imopVarPre443;
            double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
            for (i3 = 1; i3 < n3_imopVar96 - 1; i3++) {
                for (i2 = 1; i2 < n2_imopVar95 - 1; i2++) {
                    for (i1 = 1; i1 < n1_imopVar94 - 1; i1++) {
                        s = s + r[i3][i2][i1] * r[i3][i2][i1];
                        double _imopVarPre440;
                        double _imopVarPre441;
                        _imopVarPre440 = r[i3][i2][i1];
                        _imopVarPre441 = fabs(_imopVarPre440);
                        aman = _imopVarPre441;
                        if (aman > tmp) {
                            tmp = aman;
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                *rnmu_imopVar76 = tmp;
                _imopVarPre443 = s / (double) n;
                _imopVarPre444 = sqrt(_imopVarPre443);
                *rnm2_imopVar75 = _imopVarPre444;
            }
        }
        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
        char *title_imopVar103;
        int kk_imopVar104;
        title_imopVar103 = "u: inter";
        kk_imopVar104 = k_imopVar197;
        double rnm2_imopVar105;
        double rnmu_imopVar106;
        int _imopVarPre450_imopVar107;
        int _imopVarPre451_imopVar108;
        int _imopVarPre452_imopVar109;
        double *_imopVarPre453_imopVar110;
        double *_imopVarPre454_imopVar111;
        _imopVarPre450_imopVar107 = nz[kk_imopVar104];
        _imopVarPre451_imopVar108 = ny[kk_imopVar104];
        _imopVarPre452_imopVar109 = nx[kk_imopVar104];
        _imopVarPre453_imopVar110 = &rnmu_imopVar106;
        _imopVarPre454_imopVar111 = &rnm2_imopVar105;
        double ***r_imopVar112;
        double *rnm2_imopVar75_imopVar113;
        double *rnmu_imopVar76_imopVar114;
        int nx_imopVar77_imopVar115;
        int ny_imopVar78_imopVar116;
        int nz_imopVar79_imopVar117;
        r_imopVar112 = u_imopVar125;
        rnm2_imopVar75_imopVar113 = _imopVarPre454_imopVar111;
        rnmu_imopVar76_imopVar114 = _imopVarPre453_imopVar110;
        nx_imopVar77_imopVar115 = _imopVarPre452_imopVar109;
        ny_imopVar78_imopVar116 = _imopVarPre451_imopVar108;
        nz_imopVar79_imopVar117 = _imopVarPre450_imopVar107;
        double s_imopVar118 = 0.0;
        double tmp_imopVar119 = 0.0;
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            int n;
            double aman = 0.0;
#pragma omp master
            {
                n = nx_imopVar77_imopVar115 * ny_imopVar78_imopVar116 * nz_imopVar79_imopVar117;
            }
            double _imopVarPre443;
            double _imopVarPre444;
#pragma omp for reduction(+:s_imopVar118) reduction(max:tmp_imopVar119) nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    for (i1 = 1; i1 < n1 - 1; i1++) {
                        s_imopVar118 = s_imopVar118 + r_imopVar112[i3][i2][i1] * r_imopVar112[i3][i2][i1];
                        double _imopVarPre440;
                        double _imopVarPre441;
                        _imopVarPre440 = r_imopVar112[i3][i2][i1];
                        _imopVarPre441 = fabs(_imopVarPre440);
                        aman = _imopVarPre441;
                        if (aman > tmp_imopVar119) {
                            tmp_imopVar119 = aman;
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                *rnmu_imopVar76_imopVar114 = tmp_imopVar119;
                _imopVarPre443 = s_imopVar118 / (double) n;
                _imopVarPre444 = sqrt(_imopVarPre443);
                *rnm2_imopVar75_imopVar113 = _imopVarPre444;
            }
        }
        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk_imopVar104, title_imopVar103, rnm2_imopVar105, rnmu_imopVar106);
    }
    if (debug_vec[5] >= k_imopVar197) {
        showall(z_imopVar199, mm1, mm2, mm3);
        showall(u_imopVar125, n1, n2, n3);
    }
    double ***_imopVarPre423;
    double ***_imopVarPre424;
    _imopVarPre423 = r[lt];
    _imopVarPre424 = u[lt];
    double ***u_imopVar91;
    double ***r_imopVar92;
    u_imopVar91 = _imopVarPre424;
    r_imopVar92 = _imopVarPre423;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        double u1[1037];
        double u2[1037];
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    u1[i1] = u_imopVar91[i3][i2 - 1][i1] + u_imopVar91[i3][i2 + 1][i1] + u_imopVar91[i3 - 1][i2][i1] + u_imopVar91[i3 + 1][i2][i1];
                    u2[i1] = u_imopVar91[i3 - 1][i2 - 1][i1] + u_imopVar91[i3 - 1][i2 + 1][i1] + u_imopVar91[i3 + 1][i2 - 1][i1] + u_imopVar91[i3 + 1][i2 + 1][i1];
                }
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    r_imopVar92[i3][i2][i1] = v[i3][i2][i1] - a[0] * u_imopVar91[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                }
            }
        }
    }
#pragma omp parallel
    {
        double ***u_imopVar90;
        int kk;
        u_imopVar90 = r_imopVar92;
        kk = k_imopVar197;
        int i1;
        int i2;
        int i3;
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                u_imopVar90[i3][i2][n1 - 1] = u_imopVar90[i3][i2][1];
                u_imopVar90[i3][i2][0] = u_imopVar90[i3][i2][n1 - 2];
            }
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar90[i3][n2 - 1][i1] = u_imopVar90[i3][1][i1];
                u_imopVar90[i3][0][i1] = u_imopVar90[i3][n2 - 2][i1];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i2 = 0; i2 < n2; i2++) {
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar90[n3 - 1][i2][i1] = u_imopVar90[1][i2][i1];
                u_imopVar90[0][i2][i1] = u_imopVar90[n3 - 2][i2][i1];
            }
        }
    }
    if (debug_vec[0] >= 1) {
        double ***u_imopVar88;
        char *title;
        int kk;
        u_imopVar88 = r_imopVar92;
        title = "   resid";
        kk = k_imopVar197;
        double rnm2;
        double rnmu;
        int _imopVarPre450;
        int _imopVarPre451;
        int _imopVarPre452;
        double *_imopVarPre453;
        double *_imopVarPre454;
        _imopVarPre450 = nz[kk];
        _imopVarPre451 = ny[kk];
        _imopVarPre452 = nx[kk];
        _imopVarPre453 = &rnmu;
        _imopVarPre454 = &rnm2;
        double ***r_imopVar89;
        double *rnm2_imopVar75;
        double *rnmu_imopVar76;
        int nx_imopVar77;
        int ny_imopVar78;
        int nz_imopVar79;
        r_imopVar89 = u_imopVar88;
        rnm2_imopVar75 = _imopVarPre454;
        rnmu_imopVar76 = _imopVarPre453;
        nx_imopVar77 = _imopVarPre452;
        ny_imopVar78 = _imopVarPre451;
        nz_imopVar79 = _imopVarPre450;
        double s = 0.0;
        double tmp = 0.0;
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            int n;
            double aman = 0.0;
#pragma omp master
            {
                n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
            }
            double _imopVarPre443;
            double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    for (i1 = 1; i1 < n1 - 1; i1++) {
                        s = s + r_imopVar89[i3][i2][i1] * r_imopVar89[i3][i2][i1];
                        double _imopVarPre440;
                        double _imopVarPre441;
                        _imopVarPre440 = r_imopVar89[i3][i2][i1];
                        _imopVarPre441 = fabs(_imopVarPre440);
                        aman = _imopVarPre441;
                        if (aman > tmp) {
                            tmp = aman;
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                *rnmu_imopVar76 = tmp;
                _imopVarPre443 = s / (double) n;
                _imopVarPre444 = sqrt(_imopVarPre443);
                *rnm2_imopVar75 = _imopVarPre444;
            }
        }
        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
    }
    if (debug_vec[2] >= k_imopVar197) {
        showall(r_imopVar92, n1, n2, n3);
    }
    double ***_imopVarPre427;
    double ***_imopVarPre428;
    _imopVarPre427 = u[lt];
    _imopVarPre428 = r[lt];
    double ***r_imopVar126;
    double ***u_imopVar127;
    r_imopVar126 = _imopVarPre428;
    u_imopVar127 = _imopVarPre427;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        double r1[1037];
        double r2[1037];
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    r1[i1] = r_imopVar126[i3][i2 - 1][i1] + r_imopVar126[i3][i2 + 1][i1] + r_imopVar126[i3 - 1][i2][i1] + r_imopVar126[i3 + 1][i2][i1];
                    r2[i1] = r_imopVar126[i3 - 1][i2 - 1][i1] + r_imopVar126[i3 - 1][i2 + 1][i1] + r_imopVar126[i3 + 1][i2 - 1][i1] + r_imopVar126[i3 + 1][i2 + 1][i1];
                }
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    u_imopVar127[i3][i2][i1] = u_imopVar127[i3][i2][i1] + c[0] * r_imopVar126[i3][i2][i1] + c[1] * (r_imopVar126[i3][i2][i1 - 1] + r_imopVar126[i3][i2][i1 + 1] + r1[i1]) + c[2] * (r2[i1] + r1[i1 - 1] + r1[i1 + 1]);
                }
            }
        }
    }
#pragma omp parallel
    {
        int kk;
        kk = k_imopVar197;
        int i1;
        int i2;
        int i3;
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                u_imopVar127[i3][i2][n1 - 1] = u_imopVar127[i3][i2][1];
                u_imopVar127[i3][i2][0] = u_imopVar127[i3][i2][n1 - 2];
            }
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar127[i3][n2 - 1][i1] = u_imopVar127[i3][1][i1];
                u_imopVar127[i3][0][i1] = u_imopVar127[i3][n2 - 2][i1];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i2 = 0; i2 < n2; i2++) {
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar127[n3 - 1][i2][i1] = u_imopVar127[1][i2][i1];
                u_imopVar127[0][i2][i1] = u_imopVar127[n3 - 2][i2][i1];
            }
        }
    }
    if (debug_vec[0] >= 1) {
        char *title;
        int kk;
        title = "   psinv";
        kk = k_imopVar197;
        double rnm2;
        double rnmu;
        int _imopVarPre450;
        int _imopVarPre451;
        int _imopVarPre452;
        double *_imopVarPre453;
        double *_imopVarPre454;
        _imopVarPre450 = nz[kk];
        _imopVarPre451 = ny[kk];
        _imopVarPre452 = nx[kk];
        _imopVarPre453 = &rnmu;
        _imopVarPre454 = &rnm2;
        double ***r_imopVar80;
        double *rnm2_imopVar75;
        double *rnmu_imopVar76;
        int nx_imopVar77;
        int ny_imopVar78;
        int nz_imopVar79;
        r_imopVar80 = u_imopVar127;
        rnm2_imopVar75 = _imopVarPre454;
        rnmu_imopVar76 = _imopVarPre453;
        nx_imopVar77 = _imopVarPre452;
        ny_imopVar78 = _imopVarPre451;
        nz_imopVar79 = _imopVarPre450;
        double s = 0.0;
        double tmp = 0.0;
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            int n;
            double aman = 0.0;
#pragma omp master
            {
                n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
            }
            double _imopVarPre443;
            double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    for (i1 = 1; i1 < n1 - 1; i1++) {
                        s = s + r_imopVar80[i3][i2][i1] * r_imopVar80[i3][i2][i1];
                        double _imopVarPre440;
                        double _imopVarPre441;
                        _imopVarPre440 = r_imopVar80[i3][i2][i1];
                        _imopVarPre441 = fabs(_imopVarPre440);
                        aman = _imopVarPre441;
                        if (aman > tmp) {
                            tmp = aman;
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                *rnmu_imopVar76 = tmp;
                _imopVarPre443 = s / (double) n;
                _imopVarPre444 = sqrt(_imopVarPre443);
                *rnm2_imopVar75 = _imopVarPre444;
            }
        }
        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
    }
    if (debug_vec[3] >= k_imopVar197) {
        showall(u_imopVar127, n1, n2, n3);
    }
    double ***_imopVarPre261;
    double ***_imopVarPre262;
    _imopVarPre261 = r[lt];
    _imopVarPre262 = u[lt];
    double ***u_imopVar186;
    double ***r_imopVar187;
    int k_imopVar188;
    u_imopVar186 = _imopVarPre262;
    r_imopVar187 = _imopVarPre261;
    k_imopVar188 = lt;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        double u1[1037];
        double u2[1037];
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    u1[i1] = u_imopVar186[i3][i2 - 1][i1] + u_imopVar186[i3][i2 + 1][i1] + u_imopVar186[i3 - 1][i2][i1] + u_imopVar186[i3 + 1][i2][i1];
                    u2[i1] = u_imopVar186[i3 - 1][i2 - 1][i1] + u_imopVar186[i3 - 1][i2 + 1][i1] + u_imopVar186[i3 + 1][i2 - 1][i1] + u_imopVar186[i3 + 1][i2 + 1][i1];
                }
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    r_imopVar187[i3][i2][i1] = v[i3][i2][i1] - a[0] * u_imopVar186[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                }
            }
        }
    }
#pragma omp parallel
    {
        double ***u_imopVar90;
        int kk;
        u_imopVar90 = r_imopVar187;
        kk = k_imopVar188;
        int i1;
        int i2;
        int i3;
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                u_imopVar90[i3][i2][n1 - 1] = u_imopVar90[i3][i2][1];
                u_imopVar90[i3][i2][0] = u_imopVar90[i3][i2][n1 - 2];
            }
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar90[i3][n2 - 1][i1] = u_imopVar90[i3][1][i1];
                u_imopVar90[i3][0][i1] = u_imopVar90[i3][n2 - 2][i1];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i2 = 0; i2 < n2; i2++) {
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar90[n3 - 1][i2][i1] = u_imopVar90[1][i2][i1];
                u_imopVar90[0][i2][i1] = u_imopVar90[n3 - 2][i2][i1];
            }
        }
    }
    if (debug_vec[0] >= 1) {
        double ***u_imopVar88;
        char *title;
        int kk;
        u_imopVar88 = r_imopVar187;
        title = "   resid";
        kk = k_imopVar188;
        double rnm2;
        double rnmu;
        int _imopVarPre450;
        int _imopVarPre451;
        int _imopVarPre452;
        double *_imopVarPre453;
        double *_imopVarPre454;
        _imopVarPre450 = nz[kk];
        _imopVarPre451 = ny[kk];
        _imopVarPre452 = nx[kk];
        _imopVarPre453 = &rnmu;
        _imopVarPre454 = &rnm2;
        double ***r_imopVar89;
        double *rnm2_imopVar75;
        double *rnmu_imopVar76;
        int nx_imopVar77;
        int ny_imopVar78;
        int nz_imopVar79;
        r_imopVar89 = u_imopVar88;
        rnm2_imopVar75 = _imopVarPre454;
        rnmu_imopVar76 = _imopVarPre453;
        nx_imopVar77 = _imopVarPre452;
        ny_imopVar78 = _imopVarPre451;
        nz_imopVar79 = _imopVarPre450;
        double s = 0.0;
        double tmp = 0.0;
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            int n;
            double aman = 0.0;
#pragma omp master
            {
                n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
            }
            double _imopVarPre443;
            double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    for (i1 = 1; i1 < n1 - 1; i1++) {
                        s = s + r_imopVar89[i3][i2][i1] * r_imopVar89[i3][i2][i1];
                        double _imopVarPre440;
                        double _imopVarPre441;
                        _imopVarPre440 = r_imopVar89[i3][i2][i1];
                        _imopVarPre441 = fabs(_imopVarPre440);
                        aman = _imopVarPre441;
                        if (aman > tmp) {
                            tmp = aman;
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                *rnmu_imopVar76 = tmp;
                _imopVarPre443 = s / (double) n;
                _imopVarPre444 = sqrt(_imopVarPre443);
                *rnm2_imopVar75 = _imopVarPre444;
            }
        }
        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
    }
    if (debug_vec[2] >= k_imopVar188) {
        showall(r_imopVar187, n1, n2, n3);
    }
    int *_imopVarPre266;
    int *_imopVarPre267;
    int *_imopVarPre268;
    _imopVarPre266 = &n3;
    _imopVarPre267 = &n2;
    _imopVarPre268 = &n1;
    setup(_imopVarPre268, _imopVarPre267, _imopVarPre266, lt);
    double ***_imopVarPre270;
    _imopVarPre270 = u[lt];
#pragma omp parallel
    {
        zero3(_imopVarPre270, n1, n2, n3);
    }
    int _imopVarPre273;
    int _imopVarPre274;
    _imopVarPre273 = ny[lt];
    _imopVarPre274 = nx[lt];
    double ***z;
    int nx_imopVar138;
    int ny_imopVar139;
    int k_imopVar140;
    z = v;
    nx_imopVar138 = _imopVarPre274;
    ny_imopVar139 = _imopVarPre273;
    k_imopVar140 = lt;
    int i0;
    int m0;
    int m1_imopVar141;
    int i1;
    int i2;
    int i3;
    int d1;
    int e1;
    int e2;
    int e3;
    double xx;
    double x0;
    double x1;
    double a1;
    double a2;
    double ai;
    double ten[10][2];
    double best;
    int i_imopVar142;
    int j1[10][2];
    int j2[10][2];
    int j3[10][2];
    int jg[4][10][2];
    double rdummy;
    double _imopVarPre456;
    double _imopVarPre457;
    _imopVarPre456 = pow(5.0, 13);
    _imopVarPre457 = power(_imopVarPre456, nx_imopVar138);
    a1 = _imopVarPre457;
    int _imopVarPre460;
    double _imopVarPre461;
    double _imopVarPre462;
    _imopVarPre460 = nx_imopVar138 * ny_imopVar139;
    _imopVarPre461 = pow(5.0, 13);
    _imopVarPre462 = power(_imopVarPre461, _imopVarPre460);
    a2 = _imopVarPre462;
#pragma omp parallel
    {
        zero3(z, n1, n2, n3);
    }
    i_imopVar142 = is1 - 1 + nx_imopVar138 * (is2 - 1 + ny_imopVar139 * (is3 - 1));
    double _imopVarPre464;
    double _imopVarPre465;
    _imopVarPre464 = pow(5.0, 13);
    _imopVarPre465 = power(_imopVarPre464, i_imopVar142);
    ai = _imopVarPre465;
    d1 = ie1 - is1 + 1;
    e1 = ie1 - is1 + 2;
    e2 = ie2 - is2 + 2;
    e3 = ie3 - is3 + 2;
    x0 = 314159265.e0;
    double *_imopVarPre467;
    double _imopVarPre468;
    _imopVarPre467 = &x0;
    _imopVarPre468 = randlc(_imopVarPre467, ai);
    rdummy = _imopVarPre468;
    for (i3 = 1; i3 < e3; i3++) {
        x1 = x0;
        for (i2 = 1; i2 < e2; i2++) {
            xx = x1;
            double *_imopVarPre472;
            double _imopVarPre473;
            double *_imopVarPre474;
            _imopVarPre472 = &(z[i3][i2][0]);
            _imopVarPre473 = pow(5.0, 13);
            _imopVarPre474 = &xx;
            vranlc(d1, _imopVarPre474, _imopVarPre473, _imopVarPre472);
            double *_imopVarPre476;
            double _imopVarPre477;
            _imopVarPre476 = &x1;
            _imopVarPre477 = randlc(_imopVarPre476, a1);
            rdummy = _imopVarPre477;
        }
        double *_imopVarPre479;
        double _imopVarPre480;
        _imopVarPre479 = &x0;
        _imopVarPre480 = randlc(_imopVarPre479, a2);
        rdummy = _imopVarPre480;
    }
    for (i_imopVar142 = 0; i_imopVar142 < 10; i_imopVar142++) {
        ten[i_imopVar142][1] = 0.0;
        j1[i_imopVar142][1] = 0;
        j2[i_imopVar142][1] = 0;
        j3[i_imopVar142][1] = 0;
        ten[i_imopVar142][0] = 1.0;
        j1[i_imopVar142][0] = 0;
        j2[i_imopVar142][0] = 0;
        j3[i_imopVar142][0] = 0;
    }
    for (i3 = 1; i3 < n3 - 1; i3++) {
        for (i2 = 1; i2 < n2 - 1; i2++) {
            for (i1 = 1; i1 < n1 - 1; i1++) {
                if (z[i3][i2][i1] > ten[0][1]) {
                    ten[0][1] = z[i3][i2][i1];
                    j1[0][1] = i1;
                    j2[0][1] = i2;
                    j3[0][1] = i3;
                    bubble(ten, j1, j2, j3, 10, 1);
                }
                if (z[i3][i2][i1] < ten[0][0]) {
                    ten[0][0] = z[i3][i2][i1];
                    j1[0][0] = i1;
                    j2[0][0] = i2;
                    j3[0][0] = i3;
                    bubble(ten, j1, j2, j3, 10, 0);
                }
            }
        }
    }
    i1 = 10 - 1;
    i0 = 10 - 1;
    for (i_imopVar142 = 10 - 1; i_imopVar142 >= 0; i_imopVar142--) {
        best = z[j3[i1][1]][j2[i1][1]][j1[i1][1]];
        if (best == z[j3[i1][1]][j2[i1][1]][j1[i1][1]]) {
            jg[0][i_imopVar142][1] = 0;
            jg[1][i_imopVar142][1] = is1 - 1 + j1[i1][1];
            jg[2][i_imopVar142][1] = is2 - 1 + j2[i1][1];
            jg[3][i_imopVar142][1] = is3 - 1 + j3[i1][1];
            i1 = i1 - 1;
        } else {
            jg[0][i_imopVar142][1] = 0;
            jg[1][i_imopVar142][1] = 0;
            jg[2][i_imopVar142][1] = 0;
            jg[3][i_imopVar142][1] = 0;
        }
        ten[i_imopVar142][1] = best;
        best = z[j3[i0][0]][j2[i0][0]][j1[i0][0]];
        if (best == z[j3[i0][0]][j2[i0][0]][j1[i0][0]]) {
            jg[0][i_imopVar142][0] = 0;
            jg[1][i_imopVar142][0] = is1 - 1 + j1[i0][0];
            jg[2][i_imopVar142][0] = is2 - 1 + j2[i0][0];
            jg[3][i_imopVar142][0] = is3 - 1 + j3[i0][0];
            i0 = i0 - 1;
        } else {
            jg[0][i_imopVar142][0] = 0;
            jg[1][i_imopVar142][0] = 0;
            jg[2][i_imopVar142][0] = 0;
            jg[3][i_imopVar142][0] = 0;
        }
        ten[i_imopVar142][0] = best;
    }
    m1_imopVar141 = i1 + 1;
    m0 = i0 + 1;
#pragma omp parallel private(i2, i1)
    {
#pragma omp for nowait
        for (i3 = 0; i3 < n3; i3++) {
            for (i2 = 0; i2 < n2; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    z[i3][i2][i1] = 0.0;
                }
            }
        }
    }
    for (i_imopVar142 = 10 - 1; i_imopVar142 >= m0; i_imopVar142--) {
        z[j3[i_imopVar142][0]][j2[i_imopVar142][0]][j1[i_imopVar142][0]] = -1.0;
    }
    for (i_imopVar142 = 10 - 1; i_imopVar142 >= m1_imopVar141; i_imopVar142--) {
        z[j3[i_imopVar142][1]][j2[i_imopVar142][1]][j1[i_imopVar142][1]] = 1.0;
    }
#pragma omp parallel
    {
        double ***u;
        int kk;
        u = z;
        kk = k_imopVar140;
        int i1_imopVar135;
        int i2_imopVar136;
        int i3_imopVar137;
#pragma omp for nowait
        for (i3_imopVar137 = 1; i3_imopVar137 < n3 - 1; i3_imopVar137++) {
            for (i2_imopVar136 = 1; i2_imopVar136 < n2 - 1; i2_imopVar136++) {
                u[i3_imopVar137][i2_imopVar136][n1 - 1] = u[i3_imopVar137][i2_imopVar136][1];
                u[i3_imopVar137][i2_imopVar136][0] = u[i3_imopVar137][i2_imopVar136][n1 - 2];
            }
            for (i1_imopVar135 = 0; i1_imopVar135 < n1; i1_imopVar135++) {
                u[i3_imopVar137][n2 - 1][i1_imopVar135] = u[i3_imopVar137][1][i1_imopVar135];
                u[i3_imopVar137][0][i1_imopVar135] = u[i3_imopVar137][n2 - 2][i1_imopVar135];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i2_imopVar136 = 0; i2_imopVar136 < n2; i2_imopVar136++) {
            for (i1_imopVar135 = 0; i1_imopVar135 < n1; i1_imopVar135++) {
                u[n3 - 1][i2_imopVar136][i1_imopVar135] = u[1][i2_imopVar136][i1_imopVar135];
                u[0][i2_imopVar136][i1_imopVar135] = u[n3 - 2][i2_imopVar136][i1_imopVar135];
            }
        }
    }
    timer_stop(2);
    timer_start(1);
    double ***_imopVarPre277;
    double ***_imopVarPre278;
    _imopVarPre277 = r[lt];
    _imopVarPre278 = u[lt];
    double ***u_imopVar217;
    double ***r_imopVar218;
    int k_imopVar219;
    u_imopVar217 = _imopVarPre278;
    r_imopVar218 = _imopVarPre277;
    k_imopVar219 = lt;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        double u1[1037];
        double u2[1037];
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    u1[i1] = u_imopVar217[i3][i2 - 1][i1] + u_imopVar217[i3][i2 + 1][i1] + u_imopVar217[i3 - 1][i2][i1] + u_imopVar217[i3 + 1][i2][i1];
                    u2[i1] = u_imopVar217[i3 - 1][i2 - 1][i1] + u_imopVar217[i3 - 1][i2 + 1][i1] + u_imopVar217[i3 + 1][i2 - 1][i1] + u_imopVar217[i3 + 1][i2 + 1][i1];
                }
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    r_imopVar218[i3][i2][i1] = v[i3][i2][i1] - a[0] * u_imopVar217[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                }
            }
        }
    }
#pragma omp parallel
    {
        double ***u_imopVar90;
        int kk;
        u_imopVar90 = r_imopVar218;
        kk = k_imopVar219;
        int i1;
        int i2;
        int i3;
#pragma omp for nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                u_imopVar90[i3][i2][n1 - 1] = u_imopVar90[i3][i2][1];
                u_imopVar90[i3][i2][0] = u_imopVar90[i3][i2][n1 - 2];
            }
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar90[i3][n2 - 1][i1] = u_imopVar90[i3][1][i1];
                u_imopVar90[i3][0][i1] = u_imopVar90[i3][n2 - 2][i1];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
        for (i2 = 0; i2 < n2; i2++) {
            for (i1 = 0; i1 < n1; i1++) {
                u_imopVar90[n3 - 1][i2][i1] = u_imopVar90[1][i2][i1];
                u_imopVar90[0][i2][i1] = u_imopVar90[n3 - 2][i2][i1];
            }
        }
    }
    if (debug_vec[0] >= 1) {
        double ***u_imopVar88;
        char *title;
        int kk;
        u_imopVar88 = r_imopVar218;
        title = "   resid";
        kk = k_imopVar219;
        double rnm2;
        double rnmu;
        int _imopVarPre450;
        int _imopVarPre451;
        int _imopVarPre452;
        double *_imopVarPre453;
        double *_imopVarPre454;
        _imopVarPre450 = nz[kk];
        _imopVarPre451 = ny[kk];
        _imopVarPre452 = nx[kk];
        _imopVarPre453 = &rnmu;
        _imopVarPre454 = &rnm2;
        double ***r_imopVar89;
        double *rnm2_imopVar75;
        double *rnmu_imopVar76;
        int nx_imopVar77;
        int ny_imopVar78;
        int nz_imopVar79;
        r_imopVar89 = u_imopVar88;
        rnm2_imopVar75 = _imopVarPre454;
        rnmu_imopVar76 = _imopVarPre453;
        nx_imopVar77 = _imopVarPre452;
        ny_imopVar78 = _imopVarPre451;
        nz_imopVar79 = _imopVarPre450;
        double s = 0.0;
        double tmp = 0.0;
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            int n;
            double aman = 0.0;
#pragma omp master
            {
                n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
            }
            double _imopVarPre443;
            double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    for (i1 = 1; i1 < n1 - 1; i1++) {
                        s = s + r_imopVar89[i3][i2][i1] * r_imopVar89[i3][i2][i1];
                        double _imopVarPre440;
                        double _imopVarPre441;
                        _imopVarPre440 = r_imopVar89[i3][i2][i1];
                        _imopVarPre441 = fabs(_imopVarPre440);
                        aman = _imopVarPre441;
                        if (aman > tmp) {
                            tmp = aman;
                        }
                    }
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                *rnmu_imopVar76 = tmp;
                _imopVarPre443 = s / (double) n;
                _imopVarPre444 = sqrt(_imopVarPre443);
                *rnm2_imopVar75 = _imopVarPre444;
            }
        }
        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
    }
    if (debug_vec[2] >= k_imopVar219) {
        showall(r_imopVar218, n1, n2, n3);
    }
    int _imopVarPre285;
    int _imopVarPre286;
    int _imopVarPre287;
    double *_imopVarPre288;
    double *_imopVarPre289;
    double ***_imopVarPre290;
    _imopVarPre285 = nz[lt];
    _imopVarPre286 = ny[lt];
    _imopVarPre287 = nx[lt];
    _imopVarPre288 = &rnmu;
    _imopVarPre289 = &rnm2;
    _imopVarPre290 = r[lt];
    double ***r_imopVar209;
    double *rnm2_imopVar210;
    double *rnmu_imopVar211;
    int nx_imopVar212;
    int ny_imopVar213;
    int nz_imopVar214;
    r_imopVar209 = _imopVarPre290;
    rnm2_imopVar210 = _imopVarPre289;
    rnmu_imopVar211 = _imopVarPre288;
    nx_imopVar212 = _imopVarPre287;
    ny_imopVar213 = _imopVarPre286;
    nz_imopVar214 = _imopVarPre285;
    double s_imopVar215 = 0.0;
    double tmp_imopVar216 = 0.0;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        int n;
        double aman = 0.0;
#pragma omp master
        {
            n = nx_imopVar212 * ny_imopVar213 * nz_imopVar214;
        }
        double _imopVarPre443;
        double _imopVarPre444;
#pragma omp for reduction(+:s_imopVar215) reduction(max:tmp_imopVar216) nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    s_imopVar215 = s_imopVar215 + r_imopVar209[i3][i2][i1] * r_imopVar209[i3][i2][i1];
                    double _imopVarPre440;
                    double _imopVarPre441;
                    _imopVarPre440 = r_imopVar209[i3][i2][i1];
                    _imopVarPre441 = fabs(_imopVarPre440);
                    aman = _imopVarPre441;
                    if (aman > tmp_imopVar216) {
                        tmp_imopVar216 = aman;
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
        {
            *rnmu_imopVar211 = tmp_imopVar216;
            _imopVarPre443 = s_imopVar215 / (double) n;
            _imopVarPre444 = sqrt(_imopVarPre443);
            *rnm2_imopVar210 = _imopVarPre444;
        }
    }
    for (it = 1; it <= nit; it++) {
        double ***u_imopVar223;
        double ***r_imopVar224;
        int k_imopVar225;
        double ***r_imopVar126;
        double ***u_imopVar127;
        double ***u_imopVar91;
        double ***r_imopVar92;
        double ***u_imopVar125;
        double ***r_imopVar81;
        double ***u_imopVar82;
        int n1_imopVar83;
        int n2_imopVar84;
        int n3_imopVar85;
        int k_imopVar133;
        k_imopVar133 = lt;
        int _imopVarPre351;
        int _imopVarPre352;
        int _imopVarPre353;
        double ***_imopVarPre354;
        int _imopVarPre360;
        int _imopVarPre361;
        int _imopVarPre362;
        double ***_imopVarPre363;
        double ***_imopVarPre364;
        int j_imopVar134;
        for (k_imopVar133 = lt; k_imopVar133 >= lb + 1; k_imopVar133--) {
            double ***s;
            int m1j;
            int m2j;
            int m3j;
            int d2;
            int d3;
            int _imopVarPre430;
            int d1;
            double ***r_imopVar124;
#pragma omp parallel default(shared)
            {
#pragma omp master
                {
                    j_imopVar134 = k_imopVar133 - 1;
                }
                int _imopVarPre339;
                int _imopVarPre340;
                int _imopVarPre341;
                double ***_imopVarPre342;
                int _imopVarPre343;
                int _imopVarPre344;
                int _imopVarPre345;
                double ***_imopVarPre346;
#pragma omp master
                {
                    _imopVarPre339 = m3[j_imopVar134];
                    _imopVarPre340 = m2[j_imopVar134];
                    _imopVarPre341 = m1[j_imopVar134];
                    _imopVarPre342 = r[j_imopVar134];
                    _imopVarPre343 = m3[k_imopVar133];
                    _imopVarPre344 = m2[k_imopVar133];
                    _imopVarPre345 = m1[k_imopVar133];
                    _imopVarPre346 = r[k_imopVar133];
                }
                int m1k;
                int m2k;
                int m3k;
#pragma omp master
                {
                    r_imopVar124 = _imopVarPre346;
                    m1k = _imopVarPre345;
                    m2k = _imopVarPre344;
                    m3k = _imopVarPre343;
                    s = _imopVarPre342;
                    m1j = _imopVarPre341;
                    m2j = _imopVarPre340;
                    m3j = _imopVarPre339;
                }
                int j3;
                int j2;
                int j1;
                int i3;
                int i2;
                int i1;
                double x1[1037];
                double y1[1037];
                double x2;
                double y2;
#pragma omp master
                {
                    if (m1k == 3) {
                        d1 = 2;
                    } else {
                        d1 = 1;
                    }
                    if (m2k == 3) {
                        d2 = 2;
                    } else {
                        d2 = 1;
                    }
                    if (m3k == 3) {
                        d3 = 2;
                    } else {
                        d3 = 1;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (j3 = 1; j3 < m3j - 1; j3++) {
                    i3 = 2 * j3 - d3;
                    for (j2 = 1; j2 < m2j - 1; j2++) {
                        i2 = 2 * j2 - d2;
                        for (j1 = 1; j1 < m1j; j1++) {
                            i1 = 2 * j1 - d1;
                            x1[i1] = r_imopVar124[i3 + 1][i2][i1] + r_imopVar124[i3 + 1][i2 + 2][i1] + r_imopVar124[i3][i2 + 1][i1] + r_imopVar124[i3 + 2][i2 + 1][i1];
                            y1[i1] = r_imopVar124[i3][i2][i1] + r_imopVar124[i3 + 2][i2][i1] + r_imopVar124[i3][i2 + 2][i1] + r_imopVar124[i3 + 2][i2 + 2][i1];
                        }
                        for (j1 = 1; j1 < m1j - 1; j1++) {
                            i1 = 2 * j1 - d1;
                            y2 = r_imopVar124[i3][i2][i1 + 1] + r_imopVar124[i3 + 2][i2][i1 + 1] + r_imopVar124[i3][i2 + 2][i1 + 1] + r_imopVar124[i3 + 2][i2 + 2][i1 + 1];
                            x2 = r_imopVar124[i3 + 1][i2][i1 + 1] + r_imopVar124[i3 + 1][i2 + 2][i1 + 1] + r_imopVar124[i3][i2 + 1][i1 + 1] + r_imopVar124[i3 + 2][i2 + 1][i1 + 1];
                            s[j3][j2][j1] = 0.5 * r_imopVar124[i3 + 1][i2 + 1][i1 + 1] + 0.25 * (r_imopVar124[i3 + 1][i2 + 1][i1] + r_imopVar124[i3 + 1][i2 + 1][i1 + 2] + x2) + 0.125 * (x1[i1] + x1[i1 + 2] + y2) + 0.0625 * (y1[i1] + y1[i1 + 2]);
                        }
                    }
                }
#pragma omp master
                {
                    _imopVarPre430 = k_imopVar133 - 1;
                }
            }
#pragma omp parallel
            {
                double ***u;
                int n1;
                int n2;
                int n3;
                int kk;
                u = s;
                n1 = m1j;
                n2 = m2j;
                n3 = m3j;
                kk = _imopVarPre430;
                int i1;
                int i2;
                int i3;
#pragma omp for nowait
                for (i3 = 1; i3 < n3 - 1; i3++) {
                    for (i2 = 1; i2 < n2 - 1; i2++) {
                        u[i3][i2][n1 - 1] = u[i3][i2][1];
                        u[i3][i2][0] = u[i3][i2][n1 - 2];
                    }
                    for (i1 = 0; i1 < n1; i1++) {
                        u[i3][n2 - 1][i1] = u[i3][1][i1];
                        u[i3][0][i1] = u[i3][n2 - 2][i1];
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (i2 = 0; i2 < n2; i2++) {
                    for (i1 = 0; i1 < n1; i1++) {
                        u[n3 - 1][i2][i1] = u[1][i2][i1];
                        u[0][i2][i1] = u[n3 - 2][i2][i1];
                    }
                }
            }
            if (debug_vec[0] >= 1) {
                double tmp = 0.0;
                int n1;
                int n2;
                int n3;
                double ***r_imopVar86;
                double s_imopVar87 = 0.0;
#pragma omp parallel default(shared)
                {
                    int _imopVarPre432;
#pragma omp master
                    {
                        _imopVarPre432 = k_imopVar133 - 1;
                    }
                    double ***u;
                    char *title;
                    int kk;
#pragma omp master
                    {
                        u = s;
                        n1 = m1j;
                        n2 = m2j;
                        n3 = m3j;
                        title = "   rprj3";
                        kk = _imopVarPre432;
                    }
                    double rnm2;
                    double rnmu;
                    int _imopVarPre450;
                    int _imopVarPre451;
                    int _imopVarPre452;
                    double *_imopVarPre453;
                    double *_imopVarPre454;
#pragma omp master
                    {
                        _imopVarPre450 = nz[kk];
                        _imopVarPre451 = ny[kk];
                        _imopVarPre452 = nx[kk];
                        _imopVarPre453 = &rnmu;
                        _imopVarPre454 = &rnm2;
                    }
                    double *rnm2_imopVar75;
                    double *rnmu_imopVar76;
                    int nx_imopVar77;
                    int ny_imopVar78;
                    int nz_imopVar79;
#pragma omp master
                    {
                        r_imopVar86 = u;
                        rnm2_imopVar75 = _imopVarPre454;
                        rnmu_imopVar76 = _imopVarPre453;
                        nx_imopVar77 = _imopVarPre452;
                        ny_imopVar78 = _imopVarPre451;
                        nz_imopVar79 = _imopVarPre450;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                    int i3;
                    int i2;
                    int i1;
                    int n;
                    double aman = 0.0;
#pragma omp master
                    {
                        n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                    }
                    double _imopVarPre443;
                    double _imopVarPre444;
#pragma omp for reduction(+:s_imopVar87) reduction(max:tmp) nowait
                    for (i3 = 1; i3 < n3 - 1; i3++) {
                        for (i2 = 1; i2 < n2 - 1; i2++) {
                            for (i1 = 1; i1 < n1 - 1; i1++) {
                                s_imopVar87 = s_imopVar87 + r_imopVar86[i3][i2][i1] * r_imopVar86[i3][i2][i1];
                                double _imopVarPre440;
                                double _imopVarPre441;
                                _imopVarPre440 = r_imopVar86[i3][i2][i1];
                                _imopVarPre441 = fabs(_imopVarPre440);
                                aman = _imopVarPre441;
                                if (aman > tmp) {
                                    tmp = aman;
                                }
                            }
                        }
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                    {
                        *rnmu_imopVar76 = tmp;
                        _imopVarPre443 = s_imopVar87 / (double) n;
                        _imopVarPre444 = sqrt(_imopVarPre443);
                        *rnm2_imopVar75 = _imopVarPre444;
                        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                    }
                }
            }
            if (debug_vec[4] >= k_imopVar133) {
                showall(s, m1j, m2j, m3j);
            }
        }
#pragma omp parallel
        {
#pragma omp master
            {
                k_imopVar133 = lb;
                _imopVarPre351 = m3[k_imopVar133];
                _imopVarPre352 = m2[k_imopVar133];
                _imopVarPre353 = m1[k_imopVar133];
                _imopVarPre354 = u[k_imopVar133];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            zero3(_imopVarPre354, _imopVarPre353, _imopVarPre352, _imopVarPre351);
#pragma omp master
            {
                _imopVarPre360 = m3[k_imopVar133];
                _imopVarPre361 = m2[k_imopVar133];
                _imopVarPre362 = m1[k_imopVar133];
                _imopVarPre363 = u[k_imopVar133];
                _imopVarPre364 = r[k_imopVar133];
                r_imopVar81 = _imopVarPre364;
                u_imopVar82 = _imopVarPre363;
                n1_imopVar83 = _imopVarPre362;
                n2_imopVar84 = _imopVarPre361;
                n3_imopVar85 = _imopVarPre360;
            }
        }
#pragma omp parallel default(shared)
        {
            int i3;
            int i2;
            int i1;
            double r1[1037];
            double r2[1037];
#pragma omp for nowait
            for (i3 = 1; i3 < n3_imopVar85 - 1; i3++) {
                for (i2 = 1; i2 < n2_imopVar84 - 1; i2++) {
                    for (i1 = 0; i1 < n1_imopVar83; i1++) {
                        r1[i1] = r_imopVar81[i3][i2 - 1][i1] + r_imopVar81[i3][i2 + 1][i1] + r_imopVar81[i3 - 1][i2][i1] + r_imopVar81[i3 + 1][i2][i1];
                        r2[i1] = r_imopVar81[i3 - 1][i2 - 1][i1] + r_imopVar81[i3 - 1][i2 + 1][i1] + r_imopVar81[i3 + 1][i2 - 1][i1] + r_imopVar81[i3 + 1][i2 + 1][i1];
                    }
                    for (i1 = 1; i1 < n1_imopVar83 - 1; i1++) {
                        u_imopVar82[i3][i2][i1] = u_imopVar82[i3][i2][i1] + c[0] * r_imopVar81[i3][i2][i1] + c[1] * (r_imopVar81[i3][i2][i1 - 1] + r_imopVar81[i3][i2][i1 + 1] + r1[i1]) + c[2] * (r2[i1] + r1[i1 - 1] + r1[i1 + 1]);
                    }
                }
            }
        }
#pragma omp parallel
        {
            int kk;
            kk = k_imopVar133;
            int i1;
            int i2;
            int i3;
#pragma omp for nowait
            for (i3 = 1; i3 < n3_imopVar85 - 1; i3++) {
                for (i2 = 1; i2 < n2_imopVar84 - 1; i2++) {
                    u_imopVar82[i3][i2][n1_imopVar83 - 1] = u_imopVar82[i3][i2][1];
                    u_imopVar82[i3][i2][0] = u_imopVar82[i3][i2][n1_imopVar83 - 2];
                }
                for (i1 = 0; i1 < n1_imopVar83; i1++) {
                    u_imopVar82[i3][n2_imopVar84 - 1][i1] = u_imopVar82[i3][1][i1];
                    u_imopVar82[i3][0][i1] = u_imopVar82[i3][n2_imopVar84 - 2][i1];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i2 = 0; i2 < n2_imopVar84; i2++) {
                for (i1 = 0; i1 < n1_imopVar83; i1++) {
                    u_imopVar82[n3_imopVar85 - 1][i2][i1] = u_imopVar82[1][i2][i1];
                    u_imopVar82[0][i2][i1] = u_imopVar82[n3_imopVar85 - 2][i2][i1];
                }
            }
        }
        if (debug_vec[0] >= 1) {
            double ***r_imopVar80;
            double s = 0.0;
            double tmp = 0.0;
#pragma omp parallel default(shared)
            {
                char *title;
                int kk;
#pragma omp master
                {
                    title = "   psinv";
                    kk = k_imopVar133;
                }
                double rnm2;
                double rnmu;
                int _imopVarPre450;
                int _imopVarPre451;
                int _imopVarPre452;
                double *_imopVarPre453;
                double *_imopVarPre454;
#pragma omp master
                {
                    _imopVarPre450 = nz[kk];
                    _imopVarPre451 = ny[kk];
                    _imopVarPre452 = nx[kk];
                    _imopVarPre453 = &rnmu;
                    _imopVarPre454 = &rnm2;
                }
                double *rnm2_imopVar75;
                double *rnmu_imopVar76;
                int nx_imopVar77;
                int ny_imopVar78;
                int nz_imopVar79;
#pragma omp master
                {
                    r_imopVar80 = u_imopVar82;
                    rnm2_imopVar75 = _imopVarPre454;
                    rnmu_imopVar76 = _imopVarPre453;
                    nx_imopVar77 = _imopVarPre452;
                    ny_imopVar78 = _imopVarPre451;
                    nz_imopVar79 = _imopVarPre450;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                int i3;
                int i2;
                int i1;
                int n;
                double aman = 0.0;
#pragma omp master
                {
                    n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                }
                double _imopVarPre443;
                double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                for (i3 = 1; i3 < n3_imopVar85 - 1; i3++) {
                    for (i2 = 1; i2 < n2_imopVar84 - 1; i2++) {
                        for (i1 = 1; i1 < n1_imopVar83 - 1; i1++) {
                            s = s + r_imopVar80[i3][i2][i1] * r_imopVar80[i3][i2][i1];
                            double _imopVarPre440;
                            double _imopVarPre441;
                            _imopVarPre440 = r_imopVar80[i3][i2][i1];
                            _imopVarPre441 = fabs(_imopVarPre440);
                            aman = _imopVarPre441;
                            if (aman > tmp) {
                                tmp = aman;
                            }
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    *rnmu_imopVar76 = tmp;
                    _imopVarPre443 = s / (double) n;
                    _imopVarPre444 = sqrt(_imopVarPre443);
                    *rnm2_imopVar75 = _imopVarPre444;
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                }
            }
        }
        if (debug_vec[3] >= k_imopVar133) {
            showall(u_imopVar82, n1_imopVar83, n2_imopVar84, n3_imopVar85);
        }
        for (k_imopVar133 = lb + 1; k_imopVar133 <= lt - 1; k_imopVar133++) {
            int n3_imopVar102;
            int _imopVarPre435;
            int d1;
            int d2;
            int _imopVarPre369;
            int _imopVarPre370;
            int _imopVarPre371;
            double ***_imopVarPre372;
            double ***z;
            int mm1;
            int mm2;
            int mm3;
            double ***u_imopVar120;
            int n1_imopVar121;
            int n2_imopVar122;
            int n3_imopVar123;
            int d3;
            int t1;
            double ***r_imopVar128;
            double ***u_imopVar129;
            int n1_imopVar130;
            int n2_imopVar131;
            int n3_imopVar132;
            int t2;
            int t3;
            double ***u_imopVar97;
            double ***v_imopVar98;
            double ***r_imopVar99;
            int n1_imopVar100;
            int n2_imopVar101;
#pragma omp parallel
            {
                int _imopVarPre387;
                double ***_imopVarPre388;
                int _imopVarPre381;
                int _imopVarPre382;
                int _imopVarPre383;
                double ***_imopVarPre384;
                int _imopVarPre385;
                int _imopVarPre386;
#pragma omp master
                {
                    j_imopVar134 = k_imopVar133 - 1;
                    _imopVarPre369 = m3[k_imopVar133];
                    _imopVarPre370 = m2[k_imopVar133];
                    _imopVarPre371 = m1[k_imopVar133];
                    _imopVarPre372 = u[k_imopVar133];
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                zero3(_imopVarPre372, _imopVarPre371, _imopVarPre370, _imopVarPre369);
#pragma omp master
                {
                    _imopVarPre381 = m3[k_imopVar133];
                    _imopVarPre382 = m2[k_imopVar133];
                    _imopVarPre383 = m1[k_imopVar133];
                    _imopVarPre384 = u[k_imopVar133];
                    _imopVarPre385 = m3[j_imopVar134];
                    _imopVarPre386 = m2[j_imopVar134];
                    _imopVarPre387 = m1[j_imopVar134];
                    _imopVarPre388 = u[j_imopVar134];
                    z = _imopVarPre388;
                    mm1 = _imopVarPre387;
                    mm2 = _imopVarPre386;
                    mm3 = _imopVarPre385;
                    u_imopVar120 = _imopVarPre384;
                    n1_imopVar121 = _imopVarPre383;
                    n2_imopVar122 = _imopVarPre382;
                    n3_imopVar123 = _imopVarPre381;
                }
            }
#pragma omp parallel default(shared)
            {
                int i3;
                int i2;
                int i1;
                double z1[1037];
                double z2[1037];
                double z3[1037];
                int _imopVarPre436;
#pragma omp master
                {
                    _imopVarPre435 = n1_imopVar121 != 3;
                    if (_imopVarPre435) {
                        _imopVarPre436 = n2_imopVar122 != 3;
                        if (_imopVarPre436) {
                            _imopVarPre436 = n3_imopVar123 != 3;
                        }
                        _imopVarPre435 = _imopVarPre436;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                if (_imopVarPre435) {
#pragma omp for nowait
                    for (i3 = 0; i3 < mm3 - 1; i3++) {
                        for (i2 = 0; i2 < mm2 - 1; i2++) {
                            for (i1 = 0; i1 < mm1; i1++) {
                                z1[i1] = z[i3][i2 + 1][i1] + z[i3][i2][i1];
                                z2[i1] = z[i3 + 1][i2][i1] + z[i3][i2][i1];
                                z3[i1] = z[i3 + 1][i2 + 1][i1] + z[i3 + 1][i2][i1] + z1[i1];
                            }
                            for (i1 = 0; i1 < mm1 - 1; i1++) {
                                u_imopVar120[2 * i3][2 * i2][2 * i1] = u_imopVar120[2 * i3][2 * i2][2 * i1] + z[i3][i2][i1];
                                u_imopVar120[2 * i3][2 * i2][2 * i1 + 1] = u_imopVar120[2 * i3][2 * i2][2 * i1 + 1] + 0.5 * (z[i3][i2][i1 + 1] + z[i3][i2][i1]);
                            }
                            for (i1 = 0; i1 < mm1 - 1; i1++) {
                                u_imopVar120[2 * i3][2 * i2 + 1][2 * i1] = u_imopVar120[2 * i3][2 * i2 + 1][2 * i1] + 0.5 * z1[i1];
                                u_imopVar120[2 * i3][2 * i2 + 1][2 * i1 + 1] = u_imopVar120[2 * i3][2 * i2 + 1][2 * i1 + 1] + 0.25 * (z1[i1] + z1[i1 + 1]);
                            }
                            for (i1 = 0; i1 < mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 + 1][2 * i2][2 * i1] = u_imopVar120[2 * i3 + 1][2 * i2][2 * i1] + 0.5 * z2[i1];
                                u_imopVar120[2 * i3 + 1][2 * i2][2 * i1 + 1] = u_imopVar120[2 * i3 + 1][2 * i2][2 * i1 + 1] + 0.25 * (z2[i1] + z2[i1 + 1]);
                            }
                            for (i1 = 0; i1 < mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 + 1][2 * i2 + 1][2 * i1] = u_imopVar120[2 * i3 + 1][2 * i2 + 1][2 * i1] + 0.25 * z3[i1];
                                u_imopVar120[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] = u_imopVar120[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] + 0.125 * (z3[i1] + z3[i1 + 1]);
                            }
                        }
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                } else {
#pragma omp master
                    {
                        if (n1_imopVar121 == 3) {
                            d1 = 2;
                            t1 = 1;
                        } else {
                            d1 = 1;
                            t1 = 0;
                        }
                        if (n2_imopVar122 == 3) {
                            d2 = 2;
                            t2 = 1;
                        } else {
                            d2 = 1;
                            t2 = 0;
                        }
                        if (n3_imopVar123 == 3) {
                            d3 = 2;
                            t3 = 1;
                        } else {
                            d3 = 1;
                            t3 = 0;
                        }
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                    for (i3 = d3; i3 <= mm3 - 1; i3++) {
                        for (i2 = d2; i2 <= mm2 - 1; i2++) {
                            for (i1 = d1; i1 <= mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u_imopVar120[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + z[i3 - 1][i2 - 1][i1 - 1];
                            }
                            for (i1 = 1; i1 <= mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u_imopVar120[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.5 * (z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                            }
                        }
                        for (i2 = 1; i2 <= mm2 - 1; i2++) {
                            for (i1 = d1; i1 <= mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u_imopVar120[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                            }
                            for (i1 = 1; i1 <= mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u_imopVar120[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                            }
                        }
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                    for (i3 = 1; i3 <= mm3 - 1; i3++) {
                        for (i2 = d2; i2 <= mm2 - 1; i2++) {
                            for (i1 = d1; i1 <= mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u_imopVar120[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                            }
                            for (i1 = 1; i1 <= mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u_imopVar120[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3][i2 - 1][i1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                            }
                        }
                        for (i2 = 1; i2 <= mm2 - 1; i2++) {
                            for (i1 = d1; i1 <= mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u_imopVar120[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.25 * (z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                            }
                            for (i1 = 1; i1 <= mm1 - 1; i1++) {
                                u_imopVar120[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u_imopVar120[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.125 * (z[i3][i2][i1] + z[i3][i2 - 1][i1] + z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                            }
                        }
                    }
                }
            }
            if (debug_vec[0] >= 1) {
                double tmp = 0.0;
                double ***r_imopVar112;
                double s_imopVar118 = 0.0;
                double tmp_imopVar119 = 0.0;
                int n1_imopVar94;
                int n2_imopVar95;
                int n3_imopVar96;
                double ***r;
                double s = 0.0;
#pragma omp parallel default(shared)
                {
                    int _imopVarPre438;
#pragma omp master
                    {
                        _imopVarPre438 = k_imopVar133 - 1;
                    }
                    double ***u_imopVar93;
                    char *title;
                    int kk;
#pragma omp master
                    {
                        u_imopVar93 = z;
                        n1_imopVar94 = mm1;
                        n2_imopVar95 = mm2;
                        n3_imopVar96 = mm3;
                        title = "z: inter";
                        kk = _imopVarPre438;
                    }
                    double rnm2;
                    double rnmu;
                    int _imopVarPre450;
                    int _imopVarPre451;
                    int _imopVarPre452;
                    double *_imopVarPre453;
                    double *_imopVarPre454;
#pragma omp master
                    {
                        _imopVarPre450 = nz[kk];
                        _imopVarPre451 = ny[kk];
                        _imopVarPre452 = nx[kk];
                        _imopVarPre453 = &rnmu;
                        _imopVarPre454 = &rnm2;
                    }
                    double *rnm2_imopVar75;
                    double *rnmu_imopVar76;
                    int nx_imopVar77;
                    int ny_imopVar78;
                    int nz_imopVar79;
#pragma omp master
                    {
                        r = u_imopVar93;
                        rnm2_imopVar75 = _imopVarPre454;
                        rnmu_imopVar76 = _imopVarPre453;
                        nx_imopVar77 = _imopVarPre452;
                        ny_imopVar78 = _imopVarPre451;
                        nz_imopVar79 = _imopVarPre450;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                    char *title_imopVar103;
                    int kk_imopVar104;
                    double rnm2_imopVar105;
                    double rnmu_imopVar106;
                    int _imopVarPre450_imopVar107;
                    int _imopVarPre451_imopVar108;
                    int _imopVarPre452_imopVar109;
                    double *_imopVarPre453_imopVar110;
                    double *_imopVarPre454_imopVar111;
                    double *rnm2_imopVar75_imopVar113;
                    double *rnmu_imopVar76_imopVar114;
                    int nx_imopVar77_imopVar115;
                    int ny_imopVar78_imopVar116;
                    int nz_imopVar79_imopVar117;
                    int i3;
                    int i2;
                    int i1;
                    int n;
                    double aman = 0.0;
#pragma omp master
                    {
                        n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                    }
                    double _imopVarPre443;
                    double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                    for (i3 = 1; i3 < n3_imopVar96 - 1; i3++) {
                        for (i2 = 1; i2 < n2_imopVar95 - 1; i2++) {
                            for (i1 = 1; i1 < n1_imopVar94 - 1; i1++) {
                                s = s + r[i3][i2][i1] * r[i3][i2][i1];
                                double _imopVarPre440;
                                double _imopVarPre441;
                                _imopVarPre440 = r[i3][i2][i1];
                                _imopVarPre441 = fabs(_imopVarPre440);
                                aman = _imopVarPre441;
                                if (aman > tmp) {
                                    tmp = aman;
                                }
                            }
                        }
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                    {
                        *rnmu_imopVar76 = tmp;
                        _imopVarPre443 = s / (double) n;
                        _imopVarPre444 = sqrt(_imopVarPre443);
                        *rnm2_imopVar75 = _imopVarPre444;
                        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                        title_imopVar103 = "u: inter";
                        kk_imopVar104 = k_imopVar133;
                        _imopVarPre450_imopVar107 = nz[kk_imopVar104];
                        _imopVarPre451_imopVar108 = ny[kk_imopVar104];
                        _imopVarPre452_imopVar109 = nx[kk_imopVar104];
                        _imopVarPre453_imopVar110 = &rnmu_imopVar106;
                        _imopVarPre454_imopVar111 = &rnm2_imopVar105;
                        r_imopVar112 = u_imopVar120;
                        rnm2_imopVar75_imopVar113 = _imopVarPre454_imopVar111;
                        rnmu_imopVar76_imopVar114 = _imopVarPre453_imopVar110;
                        nx_imopVar77_imopVar115 = _imopVarPre452_imopVar109;
                        ny_imopVar78_imopVar116 = _imopVarPre451_imopVar108;
                        nz_imopVar79_imopVar117 = _imopVarPre450_imopVar107;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                    {
                        int i3;
                        int i2;
                        int i1;
                        int n;
                        double aman = 0.0;
#pragma omp master
                        {
                            n = nx_imopVar77_imopVar115 * ny_imopVar78_imopVar116 * nz_imopVar79_imopVar117;
                        }
                        double _imopVarPre443;
                        double _imopVarPre444;
#pragma omp for reduction(+:s_imopVar118) reduction(max:tmp_imopVar119) nowait
                        for (i3 = 1; i3 < n3_imopVar123 - 1; i3++) {
                            for (i2 = 1; i2 < n2_imopVar122 - 1; i2++) {
                                for (i1 = 1; i1 < n1_imopVar121 - 1; i1++) {
                                    s_imopVar118 = s_imopVar118 + r_imopVar112[i3][i2][i1] * r_imopVar112[i3][i2][i1];
                                    double _imopVarPre440;
                                    double _imopVarPre441;
                                    _imopVarPre440 = r_imopVar112[i3][i2][i1];
                                    _imopVarPre441 = fabs(_imopVarPre440);
                                    aman = _imopVarPre441;
                                    if (aman > tmp_imopVar119) {
                                        tmp_imopVar119 = aman;
                                    }
                                }
                            }
                        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                        {
                            *rnmu_imopVar76_imopVar114 = tmp_imopVar119;
                            _imopVarPre443 = s_imopVar118 / (double) n;
                            _imopVarPre444 = sqrt(_imopVarPre443);
                            *rnm2_imopVar75_imopVar113 = _imopVarPre444;
                        }
                    }
#pragma omp master
                    {
                        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk_imopVar104, title_imopVar103, rnm2_imopVar105, rnmu_imopVar106);
                    }
                }
            }
#pragma omp parallel default(shared)
            {
#pragma omp master
                {
                    if (debug_vec[5] >= k_imopVar133) {
                        showall(z, mm1, mm2, mm3);
                        showall(u_imopVar120, n1_imopVar121, n2_imopVar122, n3_imopVar123);
                    }
                }
                int _imopVarPre395;
                int _imopVarPre396;
                int _imopVarPre397;
                double ***_imopVarPre398;
                double ***_imopVarPre399;
                double ***_imopVarPre400;
#pragma omp master
                {
                    _imopVarPre395 = m3[k_imopVar133];
                    _imopVarPre396 = m2[k_imopVar133];
                    _imopVarPre397 = m1[k_imopVar133];
                    _imopVarPre398 = r[k_imopVar133];
                    _imopVarPre399 = r[k_imopVar133];
                    _imopVarPre400 = u[k_imopVar133];
                    u_imopVar97 = _imopVarPre400;
                    v_imopVar98 = _imopVarPre399;
                    r_imopVar99 = _imopVarPre398;
                    n1_imopVar100 = _imopVarPre397;
                    n2_imopVar101 = _imopVarPre396;
                    n3_imopVar102 = _imopVarPre395;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                int i3;
                int i2;
                int i1;
                double u1[1037];
                double u2[1037];
#pragma omp for nowait
                for (i3 = 1; i3 < n3_imopVar102 - 1; i3++) {
                    for (i2 = 1; i2 < n2_imopVar101 - 1; i2++) {
                        for (i1 = 0; i1 < n1_imopVar100; i1++) {
                            u1[i1] = u_imopVar97[i3][i2 - 1][i1] + u_imopVar97[i3][i2 + 1][i1] + u_imopVar97[i3 - 1][i2][i1] + u_imopVar97[i3 + 1][i2][i1];
                            u2[i1] = u_imopVar97[i3 - 1][i2 - 1][i1] + u_imopVar97[i3 - 1][i2 + 1][i1] + u_imopVar97[i3 + 1][i2 - 1][i1] + u_imopVar97[i3 + 1][i2 + 1][i1];
                        }
                        for (i1 = 1; i1 < n1_imopVar100 - 1; i1++) {
                            r_imopVar99[i3][i2][i1] = v_imopVar98[i3][i2][i1] - a[0] * u_imopVar97[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                        }
                    }
                }
            }
#pragma omp parallel
            {
                double ***u_imopVar90;
                int kk;
                u_imopVar90 = r_imopVar99;
                kk = k_imopVar133;
                int i1;
                int i2;
                int i3;
#pragma omp for nowait
                for (i3 = 1; i3 < n3_imopVar102 - 1; i3++) {
                    for (i2 = 1; i2 < n2_imopVar101 - 1; i2++) {
                        u_imopVar90[i3][i2][n1_imopVar100 - 1] = u_imopVar90[i3][i2][1];
                        u_imopVar90[i3][i2][0] = u_imopVar90[i3][i2][n1_imopVar100 - 2];
                    }
                    for (i1 = 0; i1 < n1_imopVar100; i1++) {
                        u_imopVar90[i3][n2_imopVar101 - 1][i1] = u_imopVar90[i3][1][i1];
                        u_imopVar90[i3][0][i1] = u_imopVar90[i3][n2_imopVar101 - 2][i1];
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (i2 = 0; i2 < n2_imopVar101; i2++) {
                    for (i1 = 0; i1 < n1_imopVar100; i1++) {
                        u_imopVar90[n3_imopVar102 - 1][i2][i1] = u_imopVar90[1][i2][i1];
                        u_imopVar90[0][i2][i1] = u_imopVar90[n3_imopVar102 - 2][i2][i1];
                    }
                }
            }
            if (debug_vec[0] >= 1) {
                double s = 0.0;
                double tmp = 0.0;
                double ***r_imopVar89;
#pragma omp parallel default(shared)
                {
                    double ***u_imopVar88;
                    char *title;
                    int kk;
#pragma omp master
                    {
                        u_imopVar88 = r_imopVar99;
                        title = "   resid";
                        kk = k_imopVar133;
                    }
                    double rnm2;
                    double rnmu;
                    int _imopVarPre450;
                    int _imopVarPre451;
                    int _imopVarPre452;
                    double *_imopVarPre453;
                    double *_imopVarPre454;
#pragma omp master
                    {
                        _imopVarPre450 = nz[kk];
                        _imopVarPre451 = ny[kk];
                        _imopVarPre452 = nx[kk];
                        _imopVarPre453 = &rnmu;
                        _imopVarPre454 = &rnm2;
                    }
                    double *rnm2_imopVar75;
                    double *rnmu_imopVar76;
                    int nx_imopVar77;
                    int ny_imopVar78;
                    int nz_imopVar79;
#pragma omp master
                    {
                        r_imopVar89 = u_imopVar88;
                        rnm2_imopVar75 = _imopVarPre454;
                        rnmu_imopVar76 = _imopVarPre453;
                        nx_imopVar77 = _imopVarPre452;
                        ny_imopVar78 = _imopVarPre451;
                        nz_imopVar79 = _imopVarPre450;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                    int i3;
                    int i2;
                    int i1;
                    int n;
                    double aman = 0.0;
#pragma omp master
                    {
                        n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                    }
                    double _imopVarPre443;
                    double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                    for (i3 = 1; i3 < n3_imopVar102 - 1; i3++) {
                        for (i2 = 1; i2 < n2_imopVar101 - 1; i2++) {
                            for (i1 = 1; i1 < n1_imopVar100 - 1; i1++) {
                                s = s + r_imopVar89[i3][i2][i1] * r_imopVar89[i3][i2][i1];
                                double _imopVarPre440;
                                double _imopVarPre441;
                                _imopVarPre440 = r_imopVar89[i3][i2][i1];
                                _imopVarPre441 = fabs(_imopVarPre440);
                                aman = _imopVarPre441;
                                if (aman > tmp) {
                                    tmp = aman;
                                }
                            }
                        }
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                    {
                        *rnmu_imopVar76 = tmp;
                        _imopVarPre443 = s / (double) n;
                        _imopVarPre444 = sqrt(_imopVarPre443);
                        *rnm2_imopVar75 = _imopVarPre444;
                        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                    }
                }
            }
#pragma omp parallel default(shared)
            {
#pragma omp master
                {
                    if (debug_vec[2] >= k_imopVar133) {
                        showall(r_imopVar99, n1_imopVar100, n2_imopVar101, n3_imopVar102);
                    }
                }
                int _imopVarPre406;
                int _imopVarPre407;
                int _imopVarPre408;
                double ***_imopVarPre409;
                double ***_imopVarPre410;
#pragma omp master
                {
                    _imopVarPre406 = m3[k_imopVar133];
                    _imopVarPre407 = m2[k_imopVar133];
                    _imopVarPre408 = m1[k_imopVar133];
                    _imopVarPre409 = u[k_imopVar133];
                    _imopVarPre410 = r[k_imopVar133];
                    r_imopVar128 = _imopVarPre410;
                    u_imopVar129 = _imopVarPre409;
                    n1_imopVar130 = _imopVarPre408;
                    n2_imopVar131 = _imopVarPre407;
                    n3_imopVar132 = _imopVarPre406;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                int i3;
                int i2;
                int i1;
                double r1[1037];
                double r2[1037];
#pragma omp for nowait
                for (i3 = 1; i3 < n3_imopVar132 - 1; i3++) {
                    for (i2 = 1; i2 < n2_imopVar131 - 1; i2++) {
                        for (i1 = 0; i1 < n1_imopVar130; i1++) {
                            r1[i1] = r_imopVar128[i3][i2 - 1][i1] + r_imopVar128[i3][i2 + 1][i1] + r_imopVar128[i3 - 1][i2][i1] + r_imopVar128[i3 + 1][i2][i1];
                            r2[i1] = r_imopVar128[i3 - 1][i2 - 1][i1] + r_imopVar128[i3 - 1][i2 + 1][i1] + r_imopVar128[i3 + 1][i2 - 1][i1] + r_imopVar128[i3 + 1][i2 + 1][i1];
                        }
                        for (i1 = 1; i1 < n1_imopVar130 - 1; i1++) {
                            u_imopVar129[i3][i2][i1] = u_imopVar129[i3][i2][i1] + c[0] * r_imopVar128[i3][i2][i1] + c[1] * (r_imopVar128[i3][i2][i1 - 1] + r_imopVar128[i3][i2][i1 + 1] + r1[i1]) + c[2] * (r2[i1] + r1[i1 - 1] + r1[i1 + 1]);
                        }
                    }
                }
            }
#pragma omp parallel
            {
                int kk;
                kk = k_imopVar133;
                int i1;
                int i2;
                int i3;
#pragma omp for nowait
                for (i3 = 1; i3 < n3_imopVar132 - 1; i3++) {
                    for (i2 = 1; i2 < n2_imopVar131 - 1; i2++) {
                        u_imopVar129[i3][i2][n1_imopVar130 - 1] = u_imopVar129[i3][i2][1];
                        u_imopVar129[i3][i2][0] = u_imopVar129[i3][i2][n1_imopVar130 - 2];
                    }
                    for (i1 = 0; i1 < n1_imopVar130; i1++) {
                        u_imopVar129[i3][n2_imopVar131 - 1][i1] = u_imopVar129[i3][1][i1];
                        u_imopVar129[i3][0][i1] = u_imopVar129[i3][n2_imopVar131 - 2][i1];
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (i2 = 0; i2 < n2_imopVar131; i2++) {
                    for (i1 = 0; i1 < n1_imopVar130; i1++) {
                        u_imopVar129[n3_imopVar132 - 1][i2][i1] = u_imopVar129[1][i2][i1];
                        u_imopVar129[0][i2][i1] = u_imopVar129[n3_imopVar132 - 2][i2][i1];
                    }
                }
            }
            if (debug_vec[0] >= 1) {
                double ***r_imopVar80;
                double s = 0.0;
                double tmp = 0.0;
#pragma omp parallel default(shared)
                {
                    char *title;
                    int kk;
#pragma omp master
                    {
                        title = "   psinv";
                        kk = k_imopVar133;
                    }
                    double rnm2;
                    double rnmu;
                    int _imopVarPre450;
                    int _imopVarPre451;
                    int _imopVarPre452;
                    double *_imopVarPre453;
                    double *_imopVarPre454;
#pragma omp master
                    {
                        _imopVarPre450 = nz[kk];
                        _imopVarPre451 = ny[kk];
                        _imopVarPre452 = nx[kk];
                        _imopVarPre453 = &rnmu;
                        _imopVarPre454 = &rnm2;
                    }
                    double *rnm2_imopVar75;
                    double *rnmu_imopVar76;
                    int nx_imopVar77;
                    int ny_imopVar78;
                    int nz_imopVar79;
#pragma omp master
                    {
                        r_imopVar80 = u_imopVar129;
                        rnm2_imopVar75 = _imopVarPre454;
                        rnmu_imopVar76 = _imopVarPre453;
                        nx_imopVar77 = _imopVarPre452;
                        ny_imopVar78 = _imopVarPre451;
                        nz_imopVar79 = _imopVarPre450;
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                    int i3;
                    int i2;
                    int i1;
                    int n;
                    double aman = 0.0;
#pragma omp master
                    {
                        n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                    }
                    double _imopVarPre443;
                    double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                    for (i3 = 1; i3 < n3_imopVar132 - 1; i3++) {
                        for (i2 = 1; i2 < n2_imopVar131 - 1; i2++) {
                            for (i1 = 1; i1 < n1_imopVar130 - 1; i1++) {
                                s = s + r_imopVar80[i3][i2][i1] * r_imopVar80[i3][i2][i1];
                                double _imopVarPre440;
                                double _imopVarPre441;
                                _imopVarPre440 = r_imopVar80[i3][i2][i1];
                                _imopVarPre441 = fabs(_imopVarPre440);
                                aman = _imopVarPre441;
                                if (aman > tmp) {
                                    tmp = aman;
                                }
                            }
                        }
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                    {
                        *rnmu_imopVar76 = tmp;
                        _imopVarPre443 = s / (double) n;
                        _imopVarPre444 = sqrt(_imopVarPre443);
                        *rnm2_imopVar75 = _imopVarPre444;
                        printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                    }
                }
            }
            if (debug_vec[3] >= k_imopVar133) {
                showall(u_imopVar129, n1_imopVar130, n2_imopVar131, n3_imopVar132);
            }
        }
        int t1;
        int t2;
        int t3;
        int _imopVarPre435;
        int d1;
        int d2;
        double ***z;
        int mm1;
        int mm2;
        int mm3;
        int d3;
#pragma omp parallel default(shared)
        {
#pragma omp master
            {
                j_imopVar134 = lt - 1;
                k_imopVar133 = lt;
            }
            double ***_imopVarPre416;
            int _imopVarPre417;
            int _imopVarPre418;
            int _imopVarPre419;
            double ***_imopVarPre420;
#pragma omp master
            {
                _imopVarPre416 = u[lt];
                _imopVarPre417 = m3[j_imopVar134];
                _imopVarPre418 = m2[j_imopVar134];
                _imopVarPre419 = m1[j_imopVar134];
                _imopVarPre420 = u[j_imopVar134];
                z = _imopVarPre420;
                mm1 = _imopVarPre419;
                mm2 = _imopVarPre418;
                mm3 = _imopVarPre417;
                u_imopVar125 = _imopVarPre416;
            }
            int i3;
            int i2;
            int i1;
            double z1[1037];
            double z2[1037];
            double z3[1037];
            int _imopVarPre436;
#pragma omp master
            {
                _imopVarPre435 = n1 != 3;
                if (_imopVarPre435) {
                    _imopVarPre436 = n2 != 3;
                    if (_imopVarPre436) {
                        _imopVarPre436 = n3 != 3;
                    }
                    _imopVarPre435 = _imopVarPre436;
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            if (_imopVarPre435) {
#pragma omp for nowait
                for (i3 = 0; i3 < mm3 - 1; i3++) {
                    for (i2 = 0; i2 < mm2 - 1; i2++) {
                        for (i1 = 0; i1 < mm1; i1++) {
                            z1[i1] = z[i3][i2 + 1][i1] + z[i3][i2][i1];
                            z2[i1] = z[i3 + 1][i2][i1] + z[i3][i2][i1];
                            z3[i1] = z[i3 + 1][i2 + 1][i1] + z[i3 + 1][i2][i1] + z1[i1];
                        }
                        for (i1 = 0; i1 < mm1 - 1; i1++) {
                            u_imopVar125[2 * i3][2 * i2][2 * i1] = u_imopVar125[2 * i3][2 * i2][2 * i1] + z[i3][i2][i1];
                            u_imopVar125[2 * i3][2 * i2][2 * i1 + 1] = u_imopVar125[2 * i3][2 * i2][2 * i1 + 1] + 0.5 * (z[i3][i2][i1 + 1] + z[i3][i2][i1]);
                        }
                        for (i1 = 0; i1 < mm1 - 1; i1++) {
                            u_imopVar125[2 * i3][2 * i2 + 1][2 * i1] = u_imopVar125[2 * i3][2 * i2 + 1][2 * i1] + 0.5 * z1[i1];
                            u_imopVar125[2 * i3][2 * i2 + 1][2 * i1 + 1] = u_imopVar125[2 * i3][2 * i2 + 1][2 * i1 + 1] + 0.25 * (z1[i1] + z1[i1 + 1]);
                        }
                        for (i1 = 0; i1 < mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 + 1][2 * i2][2 * i1] = u_imopVar125[2 * i3 + 1][2 * i2][2 * i1] + 0.5 * z2[i1];
                            u_imopVar125[2 * i3 + 1][2 * i2][2 * i1 + 1] = u_imopVar125[2 * i3 + 1][2 * i2][2 * i1 + 1] + 0.25 * (z2[i1] + z2[i1 + 1]);
                        }
                        for (i1 = 0; i1 < mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 + 1][2 * i2 + 1][2 * i1] = u_imopVar125[2 * i3 + 1][2 * i2 + 1][2 * i1] + 0.25 * z3[i1];
                            u_imopVar125[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] = u_imopVar125[2 * i3 + 1][2 * i2 + 1][2 * i1 + 1] + 0.125 * (z3[i1] + z3[i1 + 1]);
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            } else {
#pragma omp master
                {
                    if (n1 == 3) {
                        d1 = 2;
                        t1 = 1;
                    } else {
                        d1 = 1;
                        t1 = 0;
                    }
                    if (n2 == 3) {
                        d2 = 2;
                        t2 = 1;
                    } else {
                        d2 = 1;
                        t2 = 0;
                    }
                    if (n3 == 3) {
                        d3 = 2;
                        t3 = 1;
                    } else {
                        d3 = 1;
                        t3 = 0;
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (i3 = d3; i3 <= mm3 - 1; i3++) {
                    for (i2 = d2; i2 <= mm2 - 1; i2++) {
                        for (i1 = d1; i1 <= mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u_imopVar125[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + z[i3 - 1][i2 - 1][i1 - 1];
                        }
                        for (i1 = 1; i1 <= mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u_imopVar125[2 * i3 - d3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.5 * (z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                    }
                    for (i2 = 1; i2 <= mm2 - 1; i2++) {
                        for (i1 = d1; i1 <= mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u_imopVar125[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                        for (i1 = 1; i1 <= mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u_imopVar125[2 * i3 - d3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (i3 = 1; i3 <= mm3 - 1; i3++) {
                    for (i2 = d2; i2 <= mm2 - 1; i2++) {
                        for (i1 = d1; i1 <= mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] = u_imopVar125[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - d1 - 1] + 0.5 * (z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                        for (i1 = 1; i1 <= mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] = u_imopVar125[2 * i3 - t3 - 1][2 * i2 - d2 - 1][2 * i1 - t1 - 1] + 0.25 * (z[i3][i2 - 1][i1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                    }
                    for (i2 = 1; i2 <= mm2 - 1; i2++) {
                        for (i1 = d1; i1 <= mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] = u_imopVar125[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - d1 - 1] + 0.25 * (z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                        for (i1 = 1; i1 <= mm1 - 1; i1++) {
                            u_imopVar125[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] = u_imopVar125[2 * i3 - t3 - 1][2 * i2 - t2 - 1][2 * i1 - t1 - 1] + 0.125 * (z[i3][i2][i1] + z[i3][i2 - 1][i1] + z[i3][i2][i1 - 1] + z[i3][i2 - 1][i1 - 1] + z[i3 - 1][i2][i1] + z[i3 - 1][i2 - 1][i1] + z[i3 - 1][i2][i1 - 1] + z[i3 - 1][i2 - 1][i1 - 1]);
                        }
                    }
                }
            }
        }
        if (debug_vec[0] >= 1) {
            int n3_imopVar96;
            double ***r;
            double s = 0.0;
            double tmp = 0.0;
            double ***r_imopVar112;
            double s_imopVar118 = 0.0;
            double tmp_imopVar119 = 0.0;
            int n1_imopVar94;
            int n2_imopVar95;
#pragma omp parallel default(shared)
            {
                int _imopVarPre438;
#pragma omp master
                {
                    _imopVarPre438 = k_imopVar133 - 1;
                }
                double ***u_imopVar93;
                char *title;
                int kk;
#pragma omp master
                {
                    u_imopVar93 = z;
                    n1_imopVar94 = mm1;
                    n2_imopVar95 = mm2;
                    n3_imopVar96 = mm3;
                    title = "z: inter";
                    kk = _imopVarPre438;
                }
                double rnm2;
                double rnmu;
                int _imopVarPre450;
                int _imopVarPre451;
                int _imopVarPre452;
                double *_imopVarPre453;
                double *_imopVarPre454;
#pragma omp master
                {
                    _imopVarPre450 = nz[kk];
                    _imopVarPre451 = ny[kk];
                    _imopVarPre452 = nx[kk];
                    _imopVarPre453 = &rnmu;
                    _imopVarPre454 = &rnm2;
                }
                double *rnm2_imopVar75;
                double *rnmu_imopVar76;
                int nx_imopVar77;
                int ny_imopVar78;
                int nz_imopVar79;
#pragma omp master
                {
                    r = u_imopVar93;
                    rnm2_imopVar75 = _imopVarPre454;
                    rnmu_imopVar76 = _imopVarPre453;
                    nx_imopVar77 = _imopVarPre452;
                    ny_imopVar78 = _imopVarPre451;
                    nz_imopVar79 = _imopVarPre450;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                char *title_imopVar103;
                int kk_imopVar104;
                double rnm2_imopVar105;
                double rnmu_imopVar106;
                int _imopVarPre450_imopVar107;
                int _imopVarPre451_imopVar108;
                int _imopVarPre452_imopVar109;
                double *_imopVarPre453_imopVar110;
                double *_imopVarPre454_imopVar111;
                double *rnm2_imopVar75_imopVar113;
                double *rnmu_imopVar76_imopVar114;
                int nx_imopVar77_imopVar115;
                int ny_imopVar78_imopVar116;
                int nz_imopVar79_imopVar117;
                int i3;
                int i2;
                int i1;
                int n;
                double aman = 0.0;
#pragma omp master
                {
                    n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                }
                double _imopVarPre443;
                double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                for (i3 = 1; i3 < n3_imopVar96 - 1; i3++) {
                    for (i2 = 1; i2 < n2_imopVar95 - 1; i2++) {
                        for (i1 = 1; i1 < n1_imopVar94 - 1; i1++) {
                            s = s + r[i3][i2][i1] * r[i3][i2][i1];
                            double _imopVarPre440;
                            double _imopVarPre441;
                            _imopVarPre440 = r[i3][i2][i1];
                            _imopVarPre441 = fabs(_imopVarPre440);
                            aman = _imopVarPre441;
                            if (aman > tmp) {
                                tmp = aman;
                            }
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    *rnmu_imopVar76 = tmp;
                    _imopVarPre443 = s / (double) n;
                    _imopVarPre444 = sqrt(_imopVarPre443);
                    *rnm2_imopVar75 = _imopVarPre444;
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                    title_imopVar103 = "u: inter";
                    kk_imopVar104 = k_imopVar133;
                    _imopVarPre450_imopVar107 = nz[kk_imopVar104];
                    _imopVarPre451_imopVar108 = ny[kk_imopVar104];
                    _imopVarPre452_imopVar109 = nx[kk_imopVar104];
                    _imopVarPre453_imopVar110 = &rnmu_imopVar106;
                    _imopVarPre454_imopVar111 = &rnm2_imopVar105;
                    r_imopVar112 = u_imopVar125;
                    rnm2_imopVar75_imopVar113 = _imopVarPre454_imopVar111;
                    rnmu_imopVar76_imopVar114 = _imopVarPre453_imopVar110;
                    nx_imopVar77_imopVar115 = _imopVarPre452_imopVar109;
                    ny_imopVar78_imopVar116 = _imopVarPre451_imopVar108;
                    nz_imopVar79_imopVar117 = _imopVarPre450_imopVar107;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                {
                    int i3;
                    int i2;
                    int i1;
                    int n;
                    double aman = 0.0;
#pragma omp master
                    {
                        n = nx_imopVar77_imopVar115 * ny_imopVar78_imopVar116 * nz_imopVar79_imopVar117;
                    }
                    double _imopVarPre443;
                    double _imopVarPre444;
#pragma omp for reduction(+:s_imopVar118) reduction(max:tmp_imopVar119) nowait
                    for (i3 = 1; i3 < n3 - 1; i3++) {
                        for (i2 = 1; i2 < n2 - 1; i2++) {
                            for (i1 = 1; i1 < n1 - 1; i1++) {
                                s_imopVar118 = s_imopVar118 + r_imopVar112[i3][i2][i1] * r_imopVar112[i3][i2][i1];
                                double _imopVarPre440;
                                double _imopVarPre441;
                                _imopVarPre440 = r_imopVar112[i3][i2][i1];
                                _imopVarPre441 = fabs(_imopVarPre440);
                                aman = _imopVarPre441;
                                if (aman > tmp_imopVar119) {
                                    tmp_imopVar119 = aman;
                                }
                            }
                        }
                    }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                    {
                        *rnmu_imopVar76_imopVar114 = tmp_imopVar119;
                        _imopVarPre443 = s_imopVar118 / (double) n;
                        _imopVarPre444 = sqrt(_imopVarPre443);
                        *rnm2_imopVar75_imopVar113 = _imopVarPre444;
                    }
                }
#pragma omp master
                {
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk_imopVar104, title_imopVar103, rnm2_imopVar105, rnmu_imopVar106);
                }
            }
        }
#pragma omp parallel default(shared)
        {
#pragma omp master
            {
                if (debug_vec[5] >= k_imopVar133) {
                    showall(z, mm1, mm2, mm3);
                    showall(u_imopVar125, n1, n2, n3);
                }
            }
            double ***_imopVarPre423;
            double ***_imopVarPre424;
#pragma omp master
            {
                _imopVarPre423 = r[lt];
                _imopVarPre424 = u[lt];
                u_imopVar91 = _imopVarPre424;
                r_imopVar92 = _imopVarPre423;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            int i3;
            int i2;
            int i1;
            double u1[1037];
            double u2[1037];
#pragma omp for nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    for (i1 = 0; i1 < n1; i1++) {
                        u1[i1] = u_imopVar91[i3][i2 - 1][i1] + u_imopVar91[i3][i2 + 1][i1] + u_imopVar91[i3 - 1][i2][i1] + u_imopVar91[i3 + 1][i2][i1];
                        u2[i1] = u_imopVar91[i3 - 1][i2 - 1][i1] + u_imopVar91[i3 - 1][i2 + 1][i1] + u_imopVar91[i3 + 1][i2 - 1][i1] + u_imopVar91[i3 + 1][i2 + 1][i1];
                    }
                    for (i1 = 1; i1 < n1 - 1; i1++) {
                        r_imopVar92[i3][i2][i1] = v[i3][i2][i1] - a[0] * u_imopVar91[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                    }
                }
            }
        }
#pragma omp parallel
        {
            double ***u_imopVar90;
            int kk;
            u_imopVar90 = r_imopVar92;
            kk = k_imopVar133;
            int i1;
            int i2;
            int i3;
#pragma omp for nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    u_imopVar90[i3][i2][n1 - 1] = u_imopVar90[i3][i2][1];
                    u_imopVar90[i3][i2][0] = u_imopVar90[i3][i2][n1 - 2];
                }
                for (i1 = 0; i1 < n1; i1++) {
                    u_imopVar90[i3][n2 - 1][i1] = u_imopVar90[i3][1][i1];
                    u_imopVar90[i3][0][i1] = u_imopVar90[i3][n2 - 2][i1];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i2 = 0; i2 < n2; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    u_imopVar90[n3 - 1][i2][i1] = u_imopVar90[1][i2][i1];
                    u_imopVar90[0][i2][i1] = u_imopVar90[n3 - 2][i2][i1];
                }
            }
        }
        if (debug_vec[0] >= 1) {
            double s = 0.0;
            double tmp = 0.0;
            double ***r_imopVar89;
#pragma omp parallel default(shared)
            {
                double ***u_imopVar88;
                char *title;
                int kk;
#pragma omp master
                {
                    u_imopVar88 = r_imopVar92;
                    title = "   resid";
                    kk = k_imopVar133;
                }
                double rnm2;
                double rnmu;
                int _imopVarPre450;
                int _imopVarPre451;
                int _imopVarPre452;
                double *_imopVarPre453;
                double *_imopVarPre454;
#pragma omp master
                {
                    _imopVarPre450 = nz[kk];
                    _imopVarPre451 = ny[kk];
                    _imopVarPre452 = nx[kk];
                    _imopVarPre453 = &rnmu;
                    _imopVarPre454 = &rnm2;
                }
                double *rnm2_imopVar75;
                double *rnmu_imopVar76;
                int nx_imopVar77;
                int ny_imopVar78;
                int nz_imopVar79;
#pragma omp master
                {
                    r_imopVar89 = u_imopVar88;
                    rnm2_imopVar75 = _imopVarPre454;
                    rnmu_imopVar76 = _imopVarPre453;
                    nx_imopVar77 = _imopVarPre452;
                    ny_imopVar78 = _imopVarPre451;
                    nz_imopVar79 = _imopVarPre450;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                int i3;
                int i2;
                int i1;
                int n;
                double aman = 0.0;
#pragma omp master
                {
                    n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                }
                double _imopVarPre443;
                double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                for (i3 = 1; i3 < n3 - 1; i3++) {
                    for (i2 = 1; i2 < n2 - 1; i2++) {
                        for (i1 = 1; i1 < n1 - 1; i1++) {
                            s = s + r_imopVar89[i3][i2][i1] * r_imopVar89[i3][i2][i1];
                            double _imopVarPre440;
                            double _imopVarPre441;
                            _imopVarPre440 = r_imopVar89[i3][i2][i1];
                            _imopVarPre441 = fabs(_imopVarPre440);
                            aman = _imopVarPre441;
                            if (aman > tmp) {
                                tmp = aman;
                            }
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    *rnmu_imopVar76 = tmp;
                    _imopVarPre443 = s / (double) n;
                    _imopVarPre444 = sqrt(_imopVarPre443);
                    *rnm2_imopVar75 = _imopVarPre444;
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                }
            }
        }
#pragma omp parallel default(shared)
        {
#pragma omp master
            {
                if (debug_vec[2] >= k_imopVar133) {
                    showall(r_imopVar92, n1, n2, n3);
                }
            }
            double ***_imopVarPre427;
            double ***_imopVarPre428;
#pragma omp master
            {
                _imopVarPre427 = u[lt];
                _imopVarPre428 = r[lt];
                r_imopVar126 = _imopVarPre428;
                u_imopVar127 = _imopVarPre427;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            int i3;
            int i2;
            int i1;
            double r1[1037];
            double r2[1037];
#pragma omp for nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    for (i1 = 0; i1 < n1; i1++) {
                        r1[i1] = r_imopVar126[i3][i2 - 1][i1] + r_imopVar126[i3][i2 + 1][i1] + r_imopVar126[i3 - 1][i2][i1] + r_imopVar126[i3 + 1][i2][i1];
                        r2[i1] = r_imopVar126[i3 - 1][i2 - 1][i1] + r_imopVar126[i3 - 1][i2 + 1][i1] + r_imopVar126[i3 + 1][i2 - 1][i1] + r_imopVar126[i3 + 1][i2 + 1][i1];
                    }
                    for (i1 = 1; i1 < n1 - 1; i1++) {
                        u_imopVar127[i3][i2][i1] = u_imopVar127[i3][i2][i1] + c[0] * r_imopVar126[i3][i2][i1] + c[1] * (r_imopVar126[i3][i2][i1 - 1] + r_imopVar126[i3][i2][i1 + 1] + r1[i1]) + c[2] * (r2[i1] + r1[i1 - 1] + r1[i1 + 1]);
                    }
                }
            }
        }
#pragma omp parallel
        {
            int kk;
            kk = k_imopVar133;
            int i1;
            int i2;
            int i3;
#pragma omp for nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    u_imopVar127[i3][i2][n1 - 1] = u_imopVar127[i3][i2][1];
                    u_imopVar127[i3][i2][0] = u_imopVar127[i3][i2][n1 - 2];
                }
                for (i1 = 0; i1 < n1; i1++) {
                    u_imopVar127[i3][n2 - 1][i1] = u_imopVar127[i3][1][i1];
                    u_imopVar127[i3][0][i1] = u_imopVar127[i3][n2 - 2][i1];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i2 = 0; i2 < n2; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    u_imopVar127[n3 - 1][i2][i1] = u_imopVar127[1][i2][i1];
                    u_imopVar127[0][i2][i1] = u_imopVar127[n3 - 2][i2][i1];
                }
            }
        }
        if (debug_vec[0] >= 1) {
            double ***r_imopVar80;
            double s = 0.0;
            double tmp = 0.0;
#pragma omp parallel default(shared)
            {
                char *title;
                int kk;
#pragma omp master
                {
                    title = "   psinv";
                    kk = k_imopVar133;
                }
                double rnm2;
                double rnmu;
                int _imopVarPre450;
                int _imopVarPre451;
                int _imopVarPre452;
                double *_imopVarPre453;
                double *_imopVarPre454;
#pragma omp master
                {
                    _imopVarPre450 = nz[kk];
                    _imopVarPre451 = ny[kk];
                    _imopVarPre452 = nx[kk];
                    _imopVarPre453 = &rnmu;
                    _imopVarPre454 = &rnm2;
                }
                double *rnm2_imopVar75;
                double *rnmu_imopVar76;
                int nx_imopVar77;
                int ny_imopVar78;
                int nz_imopVar79;
#pragma omp master
                {
                    r_imopVar80 = u_imopVar127;
                    rnm2_imopVar75 = _imopVarPre454;
                    rnmu_imopVar76 = _imopVarPre453;
                    nx_imopVar77 = _imopVarPre452;
                    ny_imopVar78 = _imopVarPre451;
                    nz_imopVar79 = _imopVarPre450;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                int i3;
                int i2;
                int i1;
                int n;
                double aman = 0.0;
#pragma omp master
                {
                    n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                }
                double _imopVarPre443;
                double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                for (i3 = 1; i3 < n3 - 1; i3++) {
                    for (i2 = 1; i2 < n2 - 1; i2++) {
                        for (i1 = 1; i1 < n1 - 1; i1++) {
                            s = s + r_imopVar80[i3][i2][i1] * r_imopVar80[i3][i2][i1];
                            double _imopVarPre440;
                            double _imopVarPre441;
                            _imopVarPre440 = r_imopVar80[i3][i2][i1];
                            _imopVarPre441 = fabs(_imopVarPre440);
                            aman = _imopVarPre441;
                            if (aman > tmp) {
                                tmp = aman;
                            }
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    *rnmu_imopVar76 = tmp;
                    _imopVarPre443 = s / (double) n;
                    _imopVarPre444 = sqrt(_imopVarPre443);
                    *rnm2_imopVar75 = _imopVarPre444;
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                }
            }
        }
#pragma omp parallel default(shared)
        {
#pragma omp master
            {
                if (debug_vec[3] >= k_imopVar133) {
                    showall(u_imopVar127, n1, n2, n3);
                }
            }
            double ***_imopVarPre293;
            double ***_imopVarPre294;
#pragma omp master
            {
                _imopVarPre293 = r[lt];
                _imopVarPre294 = u[lt];
                u_imopVar223 = _imopVarPre294;
                r_imopVar224 = _imopVarPre293;
                k_imopVar225 = lt;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            int i3;
            int i2;
            int i1;
            double u1[1037];
            double u2[1037];
#pragma omp for nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    for (i1 = 0; i1 < n1; i1++) {
                        u1[i1] = u_imopVar223[i3][i2 - 1][i1] + u_imopVar223[i3][i2 + 1][i1] + u_imopVar223[i3 - 1][i2][i1] + u_imopVar223[i3 + 1][i2][i1];
                        u2[i1] = u_imopVar223[i3 - 1][i2 - 1][i1] + u_imopVar223[i3 - 1][i2 + 1][i1] + u_imopVar223[i3 + 1][i2 - 1][i1] + u_imopVar223[i3 + 1][i2 + 1][i1];
                    }
                    for (i1 = 1; i1 < n1 - 1; i1++) {
                        r_imopVar224[i3][i2][i1] = v[i3][i2][i1] - a[0] * u_imopVar223[i3][i2][i1] - a[2] * (u2[i1] + u1[i1 - 1] + u1[i1 + 1]) - a[3] * (u2[i1 - 1] + u2[i1 + 1]);
                    }
                }
            }
        }
#pragma omp parallel
        {
            double ***u_imopVar90;
            int kk;
            u_imopVar90 = r_imopVar224;
            kk = k_imopVar225;
            int i1;
            int i2;
            int i3;
#pragma omp for nowait
            for (i3 = 1; i3 < n3 - 1; i3++) {
                for (i2 = 1; i2 < n2 - 1; i2++) {
                    u_imopVar90[i3][i2][n1 - 1] = u_imopVar90[i3][i2][1];
                    u_imopVar90[i3][i2][0] = u_imopVar90[i3][i2][n1 - 2];
                }
                for (i1 = 0; i1 < n1; i1++) {
                    u_imopVar90[i3][n2 - 1][i1] = u_imopVar90[i3][1][i1];
                    u_imopVar90[i3][0][i1] = u_imopVar90[i3][n2 - 2][i1];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i2 = 0; i2 < n2; i2++) {
                for (i1 = 0; i1 < n1; i1++) {
                    u_imopVar90[n3 - 1][i2][i1] = u_imopVar90[1][i2][i1];
                    u_imopVar90[0][i2][i1] = u_imopVar90[n3 - 2][i2][i1];
                }
            }
        }
        if (debug_vec[0] >= 1) {
            double tmp = 0.0;
            double ***r_imopVar89;
            double s = 0.0;
#pragma omp parallel default(shared)
            {
                double ***u_imopVar88;
                char *title;
                int kk;
#pragma omp master
                {
                    u_imopVar88 = r_imopVar224;
                    title = "   resid";
                    kk = k_imopVar225;
                }
                double rnm2;
                double rnmu;
                int _imopVarPre450;
                int _imopVarPre451;
                int _imopVarPre452;
                double *_imopVarPre453;
                double *_imopVarPre454;
#pragma omp master
                {
                    _imopVarPre450 = nz[kk];
                    _imopVarPre451 = ny[kk];
                    _imopVarPre452 = nx[kk];
                    _imopVarPre453 = &rnmu;
                    _imopVarPre454 = &rnm2;
                }
                double *rnm2_imopVar75;
                double *rnmu_imopVar76;
                int nx_imopVar77;
                int ny_imopVar78;
                int nz_imopVar79;
#pragma omp master
                {
                    r_imopVar89 = u_imopVar88;
                    rnm2_imopVar75 = _imopVarPre454;
                    rnmu_imopVar76 = _imopVarPre453;
                    nx_imopVar77 = _imopVarPre452;
                    ny_imopVar78 = _imopVarPre451;
                    nz_imopVar79 = _imopVarPre450;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                int i3;
                int i2;
                int i1;
                int n;
                double aman = 0.0;
#pragma omp master
                {
                    n = nx_imopVar77 * ny_imopVar78 * nz_imopVar79;
                }
                double _imopVarPre443;
                double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
                for (i3 = 1; i3 < n3 - 1; i3++) {
                    for (i2 = 1; i2 < n2 - 1; i2++) {
                        for (i1 = 1; i1 < n1 - 1; i1++) {
                            s = s + r_imopVar89[i3][i2][i1] * r_imopVar89[i3][i2][i1];
                            double _imopVarPre440;
                            double _imopVarPre441;
                            _imopVarPre440 = r_imopVar89[i3][i2][i1];
                            _imopVarPre441 = fabs(_imopVarPre440);
                            aman = _imopVarPre441;
                            if (aman > tmp) {
                                tmp = aman;
                            }
                        }
                    }
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
                {
                    *rnmu_imopVar76 = tmp;
                    _imopVarPre443 = s / (double) n;
                    _imopVarPre444 = sqrt(_imopVarPre443);
                    *rnm2_imopVar75 = _imopVarPre444;
                    printf(" Level%2d in %8s: norms =%21.14e%21.14e\n", kk, title, rnm2, rnmu);
                }
            }
        }
        if (debug_vec[2] >= k_imopVar225) {
            showall(r_imopVar224, n1, n2, n3);
        }
    }
    int _imopVarPre301;
    int _imopVarPre302;
    int _imopVarPre303;
    double *_imopVarPre304;
    double *_imopVarPre305;
    double ***_imopVarPre306;
    _imopVarPre301 = nz[lt];
    _imopVarPre302 = ny[lt];
    _imopVarPre303 = nx[lt];
    _imopVarPre304 = &rnmu;
    _imopVarPre305 = &rnm2;
    _imopVarPre306 = r[lt];
    double ***r_imopVar180;
    double *rnm2_imopVar181;
    double *rnmu_imopVar182;
    int nx_imopVar183;
    int ny_imopVar184;
    int nz_imopVar185;
    r_imopVar180 = _imopVarPre306;
    rnm2_imopVar181 = _imopVarPre305;
    rnmu_imopVar182 = _imopVarPre304;
    nx_imopVar183 = _imopVarPre303;
    ny_imopVar184 = _imopVarPre302;
    nz_imopVar185 = _imopVarPre301;
    double s = 0.0;
    double tmp = 0.0;
#pragma omp parallel default(shared)
    {
        int i3;
        int i2;
        int i1;
        int n;
        double aman = 0.0;
#pragma omp master
        {
            n = nx_imopVar183 * ny_imopVar184 * nz_imopVar185;
        }
        double _imopVarPre443;
        double _imopVarPre444;
#pragma omp for reduction(+:s) reduction(max:tmp) nowait
        for (i3 = 1; i3 < n3 - 1; i3++) {
            for (i2 = 1; i2 < n2 - 1; i2++) {
                for (i1 = 1; i1 < n1 - 1; i1++) {
                    s = s + r_imopVar180[i3][i2][i1] * r_imopVar180[i3][i2][i1];
                    double _imopVarPre440;
                    double _imopVarPre441;
                    _imopVarPre440 = r_imopVar180[i3][i2][i1];
                    _imopVarPre441 = fabs(_imopVarPre440);
                    aman = _imopVarPre441;
                    if (aman > tmp) {
                        tmp = aman;
                    }
                }
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
        {
            *rnmu_imopVar182 = tmp;
            _imopVarPre443 = s / (double) n;
            _imopVarPre444 = sqrt(_imopVarPre443);
            *rnm2_imopVar181 = _imopVarPre444;
        }
    }
#pragma omp parallel
    {
    }
    timer_stop(1);
    t = timer_read(1);
    tinit = timer_read(2);
    verified = 0;
    verify_value = 0.0;
    printf(" Initialization time: %15.3f seconds\n", tinit);
    printf(" Benchmark completed\n");
    if (Class != 'U') {
        if (Class == 'S') {
            verify_value = 0.530770700573e-04;
        } else {
            if (Class == 'W') {
                verify_value = 0.250391406439e-17;
            } else {
                if (Class == 'A') {
                    verify_value = 0.2433365309e-5;
                } else {
                    if (Class == 'B') {
                        verify_value = 0.180056440132e-5;
                    } else {
                        if (Class == 'C') {
                            verify_value = 0.570674826298e-06;
                        }
                    }
                }
            }
        }
        double _imopVarPre309;
        double _imopVarPre310;
        _imopVarPre309 = rnm2 - verify_value;
        _imopVarPre310 = fabs(_imopVarPre309);
        if (_imopVarPre310 <= epsilon) {
            verified = 1;
            printf(" VERIFICATION SUCCESSFUL\n");
            printf(" L2 Norm is %20.12e\n", rnm2);
            double _imopVarPre312;
            _imopVarPre312 = rnm2 - verify_value;
            printf(" Error is   %20.12e\n", _imopVarPre312);
        } else {
            verified = 0;
            printf(" VERIFICATION FAILED\n");
            printf(" L2 Norm is             %20.12e\n", rnm2);
            printf(" The correct L2 Norm is %20.12e\n", verify_value);
        }
    } else {
        verified = 0;
        printf(" Problem size unknown\n");
        printf(" NO VERIFICATION PERFORMED\n");
    }
    if (t != 0.0) {
        int nn = nx[lt] * ny[lt] * nz[lt];
        mflops = 58. * nit * nn * 1.0e-6 / t;
    } else {
        mflops = 0.0;
    }
    int _imopVarPre316;
    int _imopVarPre317;
    int _imopVarPre318;
    _imopVarPre316 = nz[lt];
    _imopVarPre317 = ny[lt];
    _imopVarPre318 = nx[lt];
    c_print_results("MG", Class, _imopVarPre318, _imopVarPre317, _imopVarPre316, nit, nthreads, t, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
}
static void setup(int *n1, int *n2 , int *n3 , int lt) {
    int k;
    for (k = lt - 1; k >= 1; k--) {
        nx[k] = nx[k + 1] / 2;
        ny[k] = ny[k + 1] / 2;
        nz[k] = nz[k + 1] / 2;
    }
    for (k = 1; k <= lt; k++) {
        m1[k] = nx[k] + 2;
        m2[k] = nz[k] + 2;
        m3[k] = ny[k] + 2;
    }
    is1 = 1;
    ie1 = nx[lt];
    *n1 = nx[lt] + 2;
    is2 = 1;
    ie2 = ny[lt];
    *n2 = ny[lt] + 2;
    is3 = 1;
    ie3 = nz[lt];
    *n3 = nz[lt] + 2;
    if (debug_vec[1] >= 1) {
        printf(" in setup, \n");
        printf("  lt  nx  ny  nz  n1  n2  n3 is1 is2 is3 ie1 ie2 ie3\n");
        int _imopVarPre325;
        int _imopVarPre326;
        int _imopVarPre327;
        int _imopVarPre328;
        int _imopVarPre329;
        int _imopVarPre330;
        _imopVarPre325 = *n3;
        _imopVarPre326 = *n2;
        _imopVarPre327 = *n1;
        _imopVarPre328 = nz[lt];
        _imopVarPre329 = ny[lt];
        _imopVarPre330 = nx[lt];
        printf("%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d\n", lt, _imopVarPre330, _imopVarPre329, _imopVarPre328, _imopVarPre327, _imopVarPre326, _imopVarPre325, is1, is2, is3, ie1, ie2, ie3);
    }
}
static void showall(double ***z, int n1 , int n2 , int n3) {
    int i1;
    int i2;
    int i3;
    int m1;
    int m2;
    int m3;
    int _imopVarPre483;
    int _imopVarPre484;
    _imopVarPre483 = (n1 < 18);
    if (_imopVarPre483) {
        _imopVarPre484 = n1;
    } else {
        _imopVarPre484 = 18;
    }
    m1 = _imopVarPre484;
    int _imopVarPre487;
    int _imopVarPre488;
    _imopVarPre487 = (n2 < 14);
    if (_imopVarPre487) {
        _imopVarPre488 = n2;
    } else {
        _imopVarPre488 = 14;
    }
    m2 = _imopVarPre488;
    int _imopVarPre491;
    int _imopVarPre492;
    _imopVarPre491 = (n3 < 18);
    if (_imopVarPre491) {
        _imopVarPre492 = n3;
    } else {
        _imopVarPre492 = 18;
    }
    m3 = _imopVarPre492;
    printf("\n");
    for (i3 = 0; i3 < m3; i3++) {
        for (i1 = 0; i1 < m1; i1++) {
            for (i2 = 0; i2 < m2; i2++) {
                double _imopVarPre494;
                _imopVarPre494 = z[i3][i2][i1];
                printf("%6.3f", _imopVarPre494);
            }
            printf("\n");
        }
        printf(" - - - - - - - \n");
    }
    printf("\n");
}
static double power(double ax, int n) {
    double aj;
    int nj;
    double rdummy;
    double power;
    power = 1.0;
    nj = n;
    aj = ax;
    while (nj != 0) {
        if ((nj % 2) == 1) {
            double *_imopVarPre496;
            double _imopVarPre497;
            _imopVarPre496 = &power;
            _imopVarPre497 = randlc(_imopVarPre496, aj);
            rdummy = _imopVarPre497;
        }
        double *_imopVarPre499;
        double _imopVarPre500;
        _imopVarPre499 = &aj;
        _imopVarPre500 = randlc(_imopVarPre499, aj);
        rdummy = _imopVarPre500;
        nj = nj / 2;
    }
    return power;
}
static void bubble(double ten[1037][2], int j1[1037][2] , int j2[1037][2] , int j3[1037][2] , int m , int ind) {
    double temp;
    int i;
    int j_temp;
    if (ind == 1) {
        for (i = 0; i < m - 1; i++) {
            if (ten[i][ind] > ten[i + 1][ind]) {
                temp = ten[i + 1][ind];
                ten[i + 1][ind] = ten[i][ind];
                ten[i][ind] = temp;
                j_temp = j1[i + 1][ind];
                j1[i + 1][ind] = j1[i][ind];
                j1[i][ind] = j_temp;
                j_temp = j2[i + 1][ind];
                j2[i + 1][ind] = j2[i][ind];
                j2[i][ind] = j_temp;
                j_temp = j3[i + 1][ind];
                j3[i + 1][ind] = j3[i][ind];
                j3[i][ind] = j_temp;
            } else {
                return;
            }
        }
    } else {
        for (i = 0; i < m - 1; i++) {
            if (ten[i][ind] < ten[i + 1][ind]) {
                temp = ten[i + 1][ind];
                ten[i + 1][ind] = ten[i][ind];
                ten[i][ind] = temp;
                j_temp = j1[i + 1][ind];
                j1[i + 1][ind] = j1[i][ind];
                j1[i][ind] = j_temp;
                j_temp = j2[i + 1][ind];
                j2[i + 1][ind] = j2[i][ind];
                j2[i][ind] = j_temp;
                j_temp = j3[i + 1][ind];
                j3[i + 1][ind] = j3[i][ind];
                j3[i][ind] = j_temp;
            } else {
                return;
            }
        }
    }
}
static void zero3(double ***z, int n1 , int n2 , int n3) {
    int i1;
    int i2;
    int i3;
#pragma omp for nowait
    for (i3 = 0; i3 < n3; i3++) {
        for (i2 = 0; i2 < n2; i2++) {
            for (i1 = 0; i1 < n1; i1++) {
                z[i3][i2][i1] = 0.0;
            }
        }
    }
}
