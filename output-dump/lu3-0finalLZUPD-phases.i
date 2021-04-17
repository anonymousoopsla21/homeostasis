
/*[]*/
typedef long long __int64_t;
/*[]*/
typedef __int64_t __darwin_off_t;
/*[]*/
typedef __darwin_off_t fpos_t;
/*[]*/
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
/*[]*/
struct __sFILEX ;
/*[]*/
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
/*[]*/
typedef struct __sFILE FILE;
/*[]*/
int fclose(FILE *);
/*[]*/
int fgetc(FILE *);
/*[]*/
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
/*[]*/
int fscanf(FILE *restrict , const char *restrict , ...);
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
void exit(int );
/*[]*/
extern double fabs(double );
/*[]*/
extern double sqrt(double );
/*[]*/
extern int omp_get_num_threads(void );
/*[]*/
typedef int boolean;
/*[]*/
extern void timer_clear(int );
/*[]*/
extern void timer_start(int );
/*[]*/
extern void timer_stop(int );
/*[]*/
extern double timer_read(int );
/*[]*/
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
/*[]*/
static int nx;
/*[]*/
static int ny;
/*[]*/
static int nz;
/*[]*/
static int nx0;
/*[]*/
static int ny0;
/*[]*/
static int nz0;
/*[]*/
static int ist;
/*[]*/
static int iend;
/*[]*/
static int jst;
/*[]*/
static int jend;
/*[]*/
static int ii1;
/*[]*/
static int ii2;
/*[]*/
static int ji1;
/*[]*/
static int ji2;
/*[]*/
static int ki1;
/*[]*/
static int ki2;
/*[]*/
static double dxi;
/*[]*/
static double deta;
/*[]*/
static double dzeta;
/*[]*/
static double tx1;
/*[]*/
static double tx2;
/*[]*/
static double tx3;
/*[]*/
static double ty1;
/*[]*/
static double ty2;
/*[]*/
static double ty3;
/*[]*/
static double tz1;
/*[]*/
static double tz2;
/*[]*/
static double tz3;
/*[]*/
static double dx1;
/*[]*/
static double dx2;
/*[]*/
static double dx3;
/*[]*/
static double dx4;
/*[]*/
static double dx5;
/*[]*/
static double dy1;
/*[]*/
static double dy2;
/*[]*/
static double dy3;
/*[]*/
static double dy4;
/*[]*/
static double dy5;
/*[]*/
static double dz1;
/*[]*/
static double dz2;
/*[]*/
static double dz3;
/*[]*/
static double dz4;
/*[]*/
static double dz5;
/*[]*/
static double dssp;
/*[]*/
static double u[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*[]*/
static double rsd[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*[]*/
static double frct[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*[]*/
static double flux[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*[]*/
static int ipr;
/*[]*/
static int inorm;
/*[]*/
static int itmax;
/*[]*/
static double dt;
/*[]*/
static double omega;
/*[]*/
static double tolrsd[5];
/*[]*/
static double rsdnm[5];
/*[]*/
static double errnm[5];
/*[]*/
static double frc;
/*[]*/
static double a[12][12][5][5];
/*[]*/
static double b[12][12][5][5];
/*[]*/
static double c[12][12][5][5];
/*[]*/
static double d[12][12][5][5];
/*[]*/
static double ce[5][13];
/*[]*/
static double maxtime;
/*[]*/
static boolean flag[12 / 2 * 2 + 1];
/*[]*/
static void blts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double ldz[12][12][5][5] , double ldy[12][12][5][5] , double ldx[12][12][5][5] , double d[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0);
/*[]*/
static void buts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double tv[12][12][5] , double d[12][12][5][5] , double udx[12][12][5][5] , double udy[12][12][5][5] , double udz[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0);
/*[]*/
static void domain(void );
/*[]*/
static void error(void );
/*[]*/
static void exact(int i, int j , int k , double u000ijk[5]);
/*[]*/
static void jacld(int k);
/*[]*/
static void jacu(int k);
/*[]*/
static void pintgr(void );
/*[]*/
static void read_input(void );
/*[]*/
static void setcoeff(void );
/*[]*/
static void verify(double xcr[5], double xce[5] , double xci , char *class , boolean *verified);
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    char class;
    /*[]*/
    boolean verified;
    /*[]*/
    double mflops;
    /*[]*/
    int nthreads = 1;
    /*[]*/
    read_input();
    /*[]*/
    /*[]*/
    domain();
    /*[]*/
    /*[]*/
    setcoeff();
    /*[]*/
    /*[1]*/
#pragma omp parallel
    {
    /*[1]*/
        /*[1]*/
        int i;
        /*[1]*/
        int j;
        /*[1]*/
        int k;
        /*[1]*/
        int iglob;
        /*[1]*/
        int jglob;
        /*[1]*/
#pragma omp for nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (i = 0; i < nx; i++) {
        /*[1]*/
            /*[1]*/
            iglob = i;
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (j = 0; j < ny; j++) {
            /*[1]*/
                /*[1]*/
                jglob = j;
                /*[1]*/
                double *_imopVarPre239;
                /*[1]*/
                _imopVarPre239 = &u[i][j][0][0];
                /*[1]*/
                exact(iglob, jglob, 0, _imopVarPre239);
                /*[1]*/
                /*[1]*/
                double *_imopVarPre242;
                /*[1]*/
                int _imopVarPre243;
                /*[1]*/
                _imopVarPre242 = &u[i][j][nz - 1][0];
                /*[1]*/
                _imopVarPre243 = nz - 1;
                /*[1]*/
                exact(iglob, jglob, _imopVarPre243, _imopVarPre242);
                /*[1]*/
            }
        }
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
        /*[2]*/
#pragma omp for nowait
        /*[2]*/
        /*[2]*/
        /*[2]*/
        for (i = 0; i < nx; i++) {
        /*[2]*/
            /*[2]*/
            iglob = i;
            /*[2]*/
            /*[2]*/
            /*[2]*/
            /*[2]*/
            for (k = 0; k < nz; k++) {
            /*[2]*/
                /*[2]*/
                double *_imopVarPre245;
                /*[2]*/
                _imopVarPre245 = &u[i][0][k][0];
                /*[2]*/
                exact(iglob, 0, k, _imopVarPre245);
                /*[2]*/
            }
        }
        /*[2]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[2]*/
#pragma omp barrier
        /*[3]*/
#pragma omp for nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (i = 0; i < nx; i++) {
        /*[3]*/
            /*[3]*/
            iglob = i;
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (k = 0; k < nz; k++) {
            /*[3]*/
                /*[3]*/
                double *_imopVarPre248;
                /*[3]*/
                int _imopVarPre249;
                /*[3]*/
                _imopVarPre248 = &u[i][ny - 1][k][0];
                /*[3]*/
                _imopVarPre249 = ny0 - 1;
                /*[3]*/
                exact(iglob, _imopVarPre249, k, _imopVarPre248);
                /*[3]*/
            }
        }
        /*[3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3]*/
#pragma omp barrier
        /*[4]*/
#pragma omp for nowait
        /*[4]*/
        /*[4]*/
        /*[4]*/
        for (j = 0; j < ny; j++) {
        /*[4]*/
            /*[4]*/
            jglob = j;
            /*[4]*/
            /*[4]*/
            /*[4]*/
            /*[4]*/
            for (k = 0; k < nz; k++) {
            /*[4]*/
                /*[4]*/
                double *_imopVarPre251;
                /*[4]*/
                _imopVarPre251 = &u[0][j][k][0];
                /*[4]*/
                exact(0, jglob, k, _imopVarPre251);
                /*[4]*/
            }
        }
        /*[4]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[4]*/
#pragma omp barrier
        /*[5]*/
#pragma omp for nowait
        /*[5]*/
        /*[5]*/
        /*[5]*/
        for (j = 0; j < ny; j++) {
        /*[5]*/
            /*[5]*/
            jglob = j;
            /*[5]*/
            /*[5]*/
            /*[5]*/
            /*[5]*/
            for (k = 0; k < nz; k++) {
            /*[5]*/
                /*[5]*/
                double *_imopVarPre254;
                /*[5]*/
                int _imopVarPre255;
                /*[5]*/
                _imopVarPre254 = &u[nx - 1][j][k][0];
                /*[5]*/
                _imopVarPre255 = nx0 - 1;
                /*[5]*/
                exact(_imopVarPre255, jglob, k, _imopVarPre254);
                /*[5]*/
            }
        }
    }
    /*[6]*/
#pragma omp parallel
    {
    /*[6]*/
        /*[6]*/
        int i;
        /*[6]*/
        int j;
        /*[6]*/
        int k;
        /*[6]*/
        int m;
        /*[6]*/
        int iglob;
        /*[6]*/
        int jglob;
        /*[6]*/
        double xi;
        /*[6]*/
        double eta;
        /*[6]*/
        double zeta;
        /*[6]*/
        double pxi;
        /*[6]*/
        double peta;
        /*[6]*/
        double pzeta;
        /*[6]*/
        double ue_1jk[5];
        /*[6]*/
        double ue_nx0jk[5];
        /*[6]*/
        double ue_i1k[5];
        /*[6]*/
        double ue_iny0k[5];
        /*[6]*/
        double ue_ij1[5];
        /*[6]*/
        double ue_ijnz[5];
        /*[6]*/
#pragma omp for nowait
        /*[6]*/
        /*[6]*/
        /*[6]*/
        for (j = 0; j < ny; j++) {
        /*[6]*/
            /*[6]*/
            jglob = j;
            /*[6]*/
            /*[6]*/
            /*[6]*/
            /*[6]*/
            for (k = 1; k < nz - 1; k++) {
            /*[6]*/
                /*[6]*/
                zeta = ((double) k) / (nz - 1);
                /*[6]*/
                int _imopVarPre361;
                /*[6]*/
                _imopVarPre361 = jglob != 0;
                /*[6]*/
                /*[6]*/
                if (_imopVarPre361) {
                /*[6]*/
                    /*[6]*/
                    _imopVarPre361 = jglob != ny0 - 1;
                }
                /*[6]*/
                /*[6]*/
                if (_imopVarPre361) {
                /*[6]*/
                    /*[6]*/
                    eta = ((double) jglob) / (ny0 - 1);
                    /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    /*[6]*/
                    for (i = 0; i < nx; i++) {
                    /*[6]*/
                        /*[6]*/
                        iglob = i;
                        /*[6]*/
                        int _imopVarPre363;
                        /*[6]*/
                        _imopVarPre363 = iglob != 0;
                        /*[6]*/
                        /*[6]*/
                        if (_imopVarPre363) {
                        /*[6]*/
                            /*[6]*/
                            _imopVarPre363 = iglob != nx0 - 1;
                        }
                        /*[6]*/
                        /*[6]*/
                        if (_imopVarPre363) {
                        /*[6]*/
                            /*[6]*/
                            xi = ((double) iglob) / (nx0 - 1);
                            /*[6]*/
                            exact(0, jglob, k, ue_1jk);
                            /*[6]*/
                            /*[6]*/
                            int _imopVarPre365;
                            /*[6]*/
                            _imopVarPre365 = nx0 - 1;
                            /*[6]*/
                            exact(_imopVarPre365, jglob, k, ue_nx0jk);
                            /*[6]*/
                            /*[6]*/
                            exact(iglob, 0, k, ue_i1k);
                            /*[6]*/
                            /*[6]*/
                            int _imopVarPre367;
                            /*[6]*/
                            _imopVarPre367 = ny0 - 1;
                            /*[6]*/
                            exact(iglob, _imopVarPre367, k, ue_iny0k);
                            /*[6]*/
                            /*[6]*/
                            exact(iglob, jglob, 0, ue_ij1);
                            /*[6]*/
                            /*[6]*/
                            int _imopVarPre369;
                            /*[6]*/
                            _imopVarPre369 = nz - 1;
                            /*[6]*/
                            exact(iglob, jglob, _imopVarPre369, ue_ijnz);
                            /*[6]*/
                            /*[6]*/
                            /*[6]*/
                            /*[6]*/
                            /*[6]*/
                            for (m = 0; m < 5; m++) {
                            /*[6]*/
                                /*[6]*/
                                pxi = (1.0 - xi) * ue_1jk[m] + xi * ue_nx0jk[m];
                                /*[6]*/
                                peta = (1.0 - eta) * ue_i1k[m] + eta * ue_iny0k[m];
                                /*[6]*/
                                pzeta = (1.0 - zeta) * ue_ij1[m] + zeta * ue_ijnz[m];
                                /*[6]*/
                                u[i][j][k][m] = pxi + peta + pzeta - pxi * peta - peta * pzeta - pzeta * pxi + pxi * peta * pzeta;
                            }
                        }
                    }
                }
            }
        }
    }
    /*[7]*/
#pragma omp parallel
    {
    /*[7]*/
        /*[7]*/
        int i;
        /*[7]*/
        int j;
        /*[7]*/
        int k;
        /*[7]*/
        int m;
        /*[7]*/
        int iglob;
        /*[7]*/
        int jglob;
        /*[7]*/
        int L1;
        /*[7]*/
        int L2;
        /*[7]*/
        int ist1;
        /*[7]*/
        int iend1;
        /*[7]*/
        int jst1;
        /*[7]*/
        int jend1;
        /*[7]*/
        double dsspm;
        /*[7]*/
        double xi;
        /*[7]*/
        double eta;
        /*[7]*/
        double zeta;
        /*[7]*/
        double q;
        /*[7]*/
        double u21;
        /*[7]*/
        double u31;
        /*[7]*/
        double u41;
        /*[7]*/
        double tmp;
        /*[7]*/
        double u21i;
        /*[7]*/
        double u31i;
        /*[7]*/
        double u41i;
        /*[7]*/
        double u51i;
        /*[7]*/
        double u21j;
        /*[7]*/
        double u31j;
        /*[7]*/
        double u41j;
        /*[7]*/
        double u51j;
        /*[7]*/
        double u21k;
        /*[7]*/
        double u31k;
        /*[7]*/
        double u41k;
        /*[7]*/
        double u51k;
        /*[7]*/
        double u21im1;
        /*[7]*/
        double u31im1;
        /*[7]*/
        double u41im1;
        /*[7]*/
        double u51im1;
        /*[7]*/
        double u21jm1;
        /*[7]*/
        double u31jm1;
        /*[7]*/
        double u41jm1;
        /*[7]*/
        double u51jm1;
        /*[7]*/
        double u21km1;
        /*[7]*/
        double u31km1;
        /*[7]*/
        double u41km1;
        /*[7]*/
        double u51km1;
        /*[7]*/
        dsspm = dssp;
        /*[7]*/
#pragma omp for nowait
        /*[7]*/
        /*[7]*/
        /*[7]*/
        for (i = 0; i < nx; i++) {
        /*[7]*/
            /*[7]*/
            /*[7]*/
            /*[7]*/
            /*[7]*/
            for (j = 0; j < ny; j++) {
            /*[7]*/
                /*[7]*/
                /*[7]*/
                /*[7]*/
                /*[7]*/
                for (k = 0; k < nz; k++) {
                /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    for (m = 0; m < 5; m++) {
                    /*[7]*/
                        /*[7]*/
                        frct[i][j][k][m] = 0.0;
                    }
                }
            }
        }
        /*[7]*/
#pragma omp for nowait
        /*[7]*/
        /*[7]*/
        /*[7]*/
        for (i = 0; i < nx; i++) {
        /*[7]*/
            /*[7]*/
            iglob = i;
            /*[7]*/
            xi = ((double) iglob) / (nx0 - 1);
            /*[7]*/
            /*[7]*/
            /*[7]*/
            /*[7]*/
            for (j = 0; j < ny; j++) {
            /*[7]*/
                /*[7]*/
                jglob = j;
                /*[7]*/
                eta = ((double) jglob) / (ny0 - 1);
                /*[7]*/
                /*[7]*/
                /*[7]*/
                /*[7]*/
                for (k = 0; k < nz; k++) {
                /*[7]*/
                    /*[7]*/
                    zeta = ((double) k) / (nz - 1);
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    /*[7]*/
                    for (m = 0; m < 5; m++) {
                    /*[7]*/
                        /*[7]*/
                        rsd[i][j][k][m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
                    }
                }
            }
        }
        /*[7]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[7]*/
#pragma omp barrier
        /*[8]*/
        L1 = 0;
        /*[8]*/
        L2 = nx - 1;
        /*[8]*/
#pragma omp for nowait
        /*[8]*/
        /*[8]*/
        /*[8]*/
        for (i = L1; i <= L2; i++) {
        /*[8]*/
            /*[8]*/
            /*[8]*/
            /*[8]*/
            /*[8]*/
            for (j = jst; j <= jend; j++) {
            /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                for (k = 1; k < nz - 1; k++) {
                /*[8]*/
                    /*[8]*/
                    flux[i][j][k][0] = rsd[i][j][k][1];
                    /*[8]*/
                    u21 = rsd[i][j][k][1] / rsd[i][j][k][0];
                    /*[8]*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*[8]*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u21 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*[8]*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u21;
                    /*[8]*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u21;
                    /*[8]*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u21;
                }
            }
        }
        /*[8]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[8]*/
#pragma omp barrier
        /*[9]*/
#pragma omp for nowait
        /*[9]*/
        /*[9]*/
        /*[9]*/
        for (j = jst; j <= jend; j++) {
        /*[9]*/
            /*[9]*/
            /*[9]*/
            /*[9]*/
            /*[9]*/
            for (k = 1; k <= nz - 2; k++) {
            /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (i = ist; i <= iend; i++) {
                /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    for (m = 0; m < 5; m++) {
                    /*[9]*/
                        /*[9]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - tx2 * (flux[i + 1][j][k][m] - flux[i - 1][j][k][m]);
                    }
                }
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (i = ist; i <= L2; i++) {
                /*[9]*/
                    /*[9]*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*[9]*/
                    u21i = tmp * rsd[i][j][k][1];
                    /*[9]*/
                    u31i = tmp * rsd[i][j][k][2];
                    /*[9]*/
                    u41i = tmp * rsd[i][j][k][3];
                    /*[9]*/
                    u51i = tmp * rsd[i][j][k][4];
                    /*[9]*/
                    tmp = 1.0 / rsd[i - 1][j][k][0];
                    /*[9]*/
                    u21im1 = tmp * rsd[i - 1][j][k][1];
                    /*[9]*/
                    u31im1 = tmp * rsd[i - 1][j][k][2];
                    /*[9]*/
                    u41im1 = tmp * rsd[i - 1][j][k][3];
                    /*[9]*/
                    u51im1 = tmp * rsd[i - 1][j][k][4];
                    /*[9]*/
                    flux[i][j][k][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    /*[9]*/
                    flux[i][j][k][2] = tx3 * (u31i - u31im1);
                    /*[9]*/
                    flux[i][j][k][3] = tx3 * (u41i - u41im1);
                    /*[9]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * ((u21i * u21i + u31i * u31i + u41i * u41i) - (u21im1 * u21im1 + u31im1 * u31im1 + u41im1 * u41im1)) + (1.0 / 6.0) * tx3 * (u21i * u21i - u21im1 * u21im1) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (i = ist; i <= iend; i++) {
                /*[9]*/
                    /*[9]*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dx1 * tx1 * (rsd[i - 1][j][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i + 1][j][k][0]);
                    /*[9]*/
                    frct[i][j][k][1] = frct[i][j][k][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][1] - flux[i][j][k][1]) + dx2 * tx1 * (rsd[i - 1][j][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i + 1][j][k][1]);
                    /*[9]*/
                    frct[i][j][k][2] = frct[i][j][k][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][2] - flux[i][j][k][2]) + dx3 * tx1 * (rsd[i - 1][j][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i + 1][j][k][2]);
                    /*[9]*/
                    frct[i][j][k][3] = frct[i][j][k][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][3] - flux[i][j][k][3]) + dx4 * tx1 * (rsd[i - 1][j][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i + 1][j][k][3]);
                    /*[9]*/
                    frct[i][j][k][4] = frct[i][j][k][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i + 1][j][k][4] - flux[i][j][k][4]) + dx5 * tx1 * (rsd[i - 1][j][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i + 1][j][k][4]);
                }
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (m = 0; m < 5; m++) {
                /*[9]*/
                    /*[9]*/
                    frct[1][j][k][m] = frct[1][j][k][m] - dsspm * (+5.0 * rsd[1][j][k][m] - 4.0 * rsd[2][j][k][m] + rsd[3][j][k][m]);
                    /*[9]*/
                    frct[2][j][k][m] = frct[2][j][k][m] - dsspm * (-4.0 * rsd[1][j][k][m] + 6.0 * rsd[2][j][k][m] - 4.0 * rsd[3][j][k][m] + rsd[4][j][k][m]);
                }
                /*[9]*/
                ist1 = 3;
                /*[9]*/
                iend1 = nx - 4;
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (i = ist1; i <= iend1; i++) {
                /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    /*[9]*/
                    for (m = 0; m < 5; m++) {
                    /*[9]*/
                        /*[9]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i - 2][j][k][m] - 4.0 * rsd[i - 1][j][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i + 1][j][k][m] + rsd[i + 2][j][k][m]);
                    }
                }
                /*[9]*/
                /*[9]*/
                /*[9]*/
                /*[9]*/
                for (m = 0; m < 5; m++) {
                /*[9]*/
                    /*[9]*/
                    frct[nx - 3][j][k][m] = frct[nx - 3][j][k][m] - dsspm * (rsd[nx - 5][j][k][m] - 4.0 * rsd[nx - 4][j][k][m] + 6.0 * rsd[nx - 3][j][k][m] - 4.0 * rsd[nx - 2][j][k][m]);
                    /*[9]*/
                    frct[nx - 2][j][k][m] = frct[nx - 2][j][k][m] - dsspm * (rsd[nx - 4][j][k][m] - 4.0 * rsd[nx - 3][j][k][m] + 5.0 * rsd[nx - 2][j][k][m]);
                }
            }
        }
        /*[9]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[9]*/
#pragma omp barrier
        /*[10]*/
        L1 = 0;
        /*[10]*/
        L2 = ny - 1;
        /*[10]*/
#pragma omp for nowait
        /*[10]*/
        /*[10]*/
        /*[10]*/
        for (i = ist; i <= iend; i++) {
        /*[10]*/
            /*[10]*/
            /*[10]*/
            /*[10]*/
            /*[10]*/
            for (j = L1; j <= L2; j++) {
            /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                /*[10]*/
                for (k = 1; k <= nz - 2; k++) {
                /*[10]*/
                    /*[10]*/
                    flux[i][j][k][0] = rsd[i][j][k][2];
                    /*[10]*/
                    u31 = rsd[i][j][k][2] / rsd[i][j][k][0];
                    /*[10]*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*[10]*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u31;
                    /*[10]*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u31 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*[10]*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u31;
                    /*[10]*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u31;
                }
            }
        }
        /*[10]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[10]*/
#pragma omp barrier
        /*[11]*/
#pragma omp for nowait
        /*[11]*/
        /*[11]*/
        /*[11]*/
        for (i = ist; i <= iend; i++) {
        /*[11]*/
            /*[11]*/
            /*[11]*/
            /*[11]*/
            /*[11]*/
            for (k = 1; k <= nz - 2; k++) {
            /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (j = jst; j <= jend; j++) {
                /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    for (m = 0; m < 5; m++) {
                    /*[11]*/
                        /*[11]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - ty2 * (flux[i][j + 1][k][m] - flux[i][j - 1][k][m]);
                    }
                }
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (j = jst; j <= L2; j++) {
                /*[11]*/
                    /*[11]*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*[11]*/
                    u21j = tmp * rsd[i][j][k][1];
                    /*[11]*/
                    u31j = tmp * rsd[i][j][k][2];
                    /*[11]*/
                    u41j = tmp * rsd[i][j][k][3];
                    /*[11]*/
                    u51j = tmp * rsd[i][j][k][4];
                    /*[11]*/
                    tmp = 1.0 / rsd[i][j - 1][k][0];
                    /*[11]*/
                    u21jm1 = tmp * rsd[i][j - 1][k][1];
                    /*[11]*/
                    u31jm1 = tmp * rsd[i][j - 1][k][2];
                    /*[11]*/
                    u41jm1 = tmp * rsd[i][j - 1][k][3];
                    /*[11]*/
                    u51jm1 = tmp * rsd[i][j - 1][k][4];
                    /*[11]*/
                    flux[i][j][k][1] = ty3 * (u21j - u21jm1);
                    /*[11]*/
                    flux[i][j][k][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    /*[11]*/
                    flux[i][j][k][3] = ty3 * (u41j - u41jm1);
                    /*[11]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * ((u21j * u21j + u31j * u31j + u41j * u41j) - (u21jm1 * u21jm1 + u31jm1 * u31jm1 + u41jm1 * u41jm1)) + (1.0 / 6.0) * ty3 * (u31j * u31j - u31jm1 * u31jm1) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (j = jst; j <= jend; j++) {
                /*[11]*/
                    /*[11]*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dy1 * ty1 * (rsd[i][j - 1][k][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j + 1][k][0]);
                    /*[11]*/
                    frct[i][j][k][1] = frct[i][j][k][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][1] - flux[i][j][k][1]) + dy2 * ty1 * (rsd[i][j - 1][k][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j + 1][k][1]);
                    /*[11]*/
                    frct[i][j][k][2] = frct[i][j][k][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][2] - flux[i][j][k][2]) + dy3 * ty1 * (rsd[i][j - 1][k][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j + 1][k][2]);
                    /*[11]*/
                    frct[i][j][k][3] = frct[i][j][k][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][3] - flux[i][j][k][3]) + dy4 * ty1 * (rsd[i][j - 1][k][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j + 1][k][3]);
                    /*[11]*/
                    frct[i][j][k][4] = frct[i][j][k][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i][j + 1][k][4] - flux[i][j][k][4]) + dy5 * ty1 * (rsd[i][j - 1][k][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j + 1][k][4]);
                }
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (m = 0; m < 5; m++) {
                /*[11]*/
                    /*[11]*/
                    frct[i][1][k][m] = frct[i][1][k][m] - dsspm * (+5.0 * rsd[i][1][k][m] - 4.0 * rsd[i][2][k][m] + rsd[i][3][k][m]);
                    /*[11]*/
                    frct[i][2][k][m] = frct[i][2][k][m] - dsspm * (-4.0 * rsd[i][1][k][m] + 6.0 * rsd[i][2][k][m] - 4.0 * rsd[i][3][k][m] + rsd[i][4][k][m]);
                }
                /*[11]*/
                jst1 = 3;
                /*[11]*/
                jend1 = ny - 4;
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (j = jst1; j <= jend1; j++) {
                /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    /*[11]*/
                    for (m = 0; m < 5; m++) {
                    /*[11]*/
                        /*[11]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j - 2][k][m] - 4.0 * rsd[i][j - 1][k][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j + 1][k][m] + rsd[i][j + 2][k][m]);
                    }
                }
                /*[11]*/
                /*[11]*/
                /*[11]*/
                /*[11]*/
                for (m = 0; m < 5; m++) {
                /*[11]*/
                    /*[11]*/
                    frct[i][ny - 3][k][m] = frct[i][ny - 3][k][m] - dsspm * (rsd[i][ny - 5][k][m] - 4.0 * rsd[i][ny - 4][k][m] + 6.0 * rsd[i][ny - 3][k][m] - 4.0 * rsd[i][ny - 2][k][m]);
                    /*[11]*/
                    frct[i][ny - 2][k][m] = frct[i][ny - 2][k][m] - dsspm * (rsd[i][ny - 4][k][m] - 4.0 * rsd[i][ny - 3][k][m] + 5.0 * rsd[i][ny - 2][k][m]);
                }
            }
        }
        /*[11]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[11]*/
#pragma omp barrier
        /*[12]*/
#pragma omp for nowait
        /*[12]*/
        /*[12]*/
        /*[12]*/
        for (i = ist; i <= iend; i++) {
        /*[12]*/
            /*[12]*/
            /*[12]*/
            /*[12]*/
            /*[12]*/
            for (j = jst; j <= jend; j++) {
            /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (k = 0; k <= nz - 1; k++) {
                /*[12]*/
                    /*[12]*/
                    flux[i][j][k][0] = rsd[i][j][k][3];
                    /*[12]*/
                    u41 = rsd[i][j][k][3] / rsd[i][j][k][0];
                    /*[12]*/
                    q = 0.50 * (rsd[i][j][k][1] * rsd[i][j][k][1] + rsd[i][j][k][2] * rsd[i][j][k][2] + rsd[i][j][k][3] * rsd[i][j][k][3]) / rsd[i][j][k][0];
                    /*[12]*/
                    flux[i][j][k][1] = rsd[i][j][k][1] * u41;
                    /*[12]*/
                    flux[i][j][k][2] = rsd[i][j][k][2] * u41;
                    /*[12]*/
                    flux[i][j][k][3] = rsd[i][j][k][3] * u41 + 0.40e+00 * (rsd[i][j][k][4] - q);
                    /*[12]*/
                    flux[i][j][k][4] = (1.40e+00 * rsd[i][j][k][4] - 0.40e+00 * q) * u41;
                }
                /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (k = 1; k <= nz - 2; k++) {
                /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    for (m = 0; m < 5; m++) {
                    /*[12]*/
                        /*[12]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - tz2 * (flux[i][j][k + 1][m] - flux[i][j][k - 1][m]);
                    }
                }
                /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (k = 1; k <= nz - 1; k++) {
                /*[12]*/
                    /*[12]*/
                    tmp = 1.0 / rsd[i][j][k][0];
                    /*[12]*/
                    u21k = tmp * rsd[i][j][k][1];
                    /*[12]*/
                    u31k = tmp * rsd[i][j][k][2];
                    /*[12]*/
                    u41k = tmp * rsd[i][j][k][3];
                    /*[12]*/
                    u51k = tmp * rsd[i][j][k][4];
                    /*[12]*/
                    tmp = 1.0 / rsd[i][j][k - 1][0];
                    /*[12]*/
                    u21km1 = tmp * rsd[i][j][k - 1][1];
                    /*[12]*/
                    u31km1 = tmp * rsd[i][j][k - 1][2];
                    /*[12]*/
                    u41km1 = tmp * rsd[i][j][k - 1][3];
                    /*[12]*/
                    u51km1 = tmp * rsd[i][j][k - 1][4];
                    /*[12]*/
                    flux[i][j][k][1] = tz3 * (u21k - u21km1);
                    /*[12]*/
                    flux[i][j][k][2] = tz3 * (u31k - u31km1);
                    /*[12]*/
                    flux[i][j][k][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    /*[12]*/
                    flux[i][j][k][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * ((u21k * u21k + u31k * u31k + u41k * u41k) - (u21km1 * u21km1 + u31km1 * u31km1 + u41km1 * u41km1)) + (1.0 / 6.0) * tz3 * (u41k * u41k - u41km1 * u41km1) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (k = 1; k <= nz - 2; k++) {
                /*[12]*/
                    /*[12]*/
                    frct[i][j][k][0] = frct[i][j][k][0] + dz1 * tz1 * (rsd[i][j][k + 1][0] - 2.0 * rsd[i][j][k][0] + rsd[i][j][k - 1][0]);
                    /*[12]*/
                    frct[i][j][k][1] = frct[i][j][k][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][1] - flux[i][j][k][1]) + dz2 * tz1 * (rsd[i][j][k + 1][1] - 2.0 * rsd[i][j][k][1] + rsd[i][j][k - 1][1]);
                    /*[12]*/
                    frct[i][j][k][2] = frct[i][j][k][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][2] - flux[i][j][k][2]) + dz3 * tz1 * (rsd[i][j][k + 1][2] - 2.0 * rsd[i][j][k][2] + rsd[i][j][k - 1][2]);
                    /*[12]*/
                    frct[i][j][k][3] = frct[i][j][k][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][3] - flux[i][j][k][3]) + dz4 * tz1 * (rsd[i][j][k + 1][3] - 2.0 * rsd[i][j][k][3] + rsd[i][j][k - 1][3]);
                    /*[12]*/
                    frct[i][j][k][4] = frct[i][j][k][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i][j][k + 1][4] - flux[i][j][k][4]) + dz5 * tz1 * (rsd[i][j][k + 1][4] - 2.0 * rsd[i][j][k][4] + rsd[i][j][k - 1][4]);
                }
                /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (m = 0; m < 5; m++) {
                /*[12]*/
                    /*[12]*/
                    frct[i][j][1][m] = frct[i][j][1][m] - dsspm * (+5.0 * rsd[i][j][1][m] - 4.0 * rsd[i][j][2][m] + rsd[i][j][3][m]);
                    /*[12]*/
                    frct[i][j][2][m] = frct[i][j][2][m] - dsspm * (-4.0 * rsd[i][j][1][m] + 6.0 * rsd[i][j][2][m] - 4.0 * rsd[i][j][3][m] + rsd[i][j][4][m]);
                }
                /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (k = 3; k <= nz - 4; k++) {
                /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    /*[12]*/
                    for (m = 0; m < 5; m++) {
                    /*[12]*/
                        /*[12]*/
                        frct[i][j][k][m] = frct[i][j][k][m] - dsspm * (rsd[i][j][k - 2][m] - 4.0 * rsd[i][j][k - 1][m] + 6.0 * rsd[i][j][k][m] - 4.0 * rsd[i][j][k + 1][m] + rsd[i][j][k + 2][m]);
                    }
                }
                /*[12]*/
                /*[12]*/
                /*[12]*/
                /*[12]*/
                for (m = 0; m < 5; m++) {
                /*[12]*/
                    /*[12]*/
                    frct[i][j][nz - 3][m] = frct[i][j][nz - 3][m] - dsspm * (rsd[i][j][nz - 5][m] - 4.0 * rsd[i][j][nz - 4][m] + 6.0 * rsd[i][j][nz - 3][m] - 4.0 * rsd[i][j][nz - 2][m]);
                    /*[12]*/
                    frct[i][j][nz - 2][m] = frct[i][j][nz - 2][m] - dsspm * (rsd[i][j][nz - 4][m] - 4.0 * rsd[i][j][nz - 3][m] + 5.0 * rsd[i][j][nz - 2][m]);
                }
            }
        }
    }
    /*[13]*/
#pragma omp parallel
    {
    /*[13]*/
        /*[13]*/
#pragma omp master
        {
        /*[13]*/
            /*[13]*/
            nthreads = omp_get_num_threads();
            /*[13]*/
        }
    }
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int m;
    /*[]*/
    int istep;
    /*[]*/
    double tmp;
    /*[]*/
    double delunm[5];
    /*[]*/
    double tv[12][12][5];
    /*[]*/
    tmp = 1.0 / (omega * (2.0 - omega));
    /*[14]*/
#pragma omp parallel private(i, j, k, m)
    {
    /*[14]*/
        /*[14]*/
#pragma omp for nowait
        /*[14]*/
        /*[14]*/
        /*[14]*/
        for (i = 0; i < 12; i++) {
        /*[14]*/
            /*[14]*/
            /*[14]*/
            /*[14]*/
            /*[14]*/
            for (j = 0; j < 12; j++) {
            /*[14]*/
                /*[14]*/
                /*[14]*/
                /*[14]*/
                /*[14]*/
                for (k = 0; k < 5; k++) {
                /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    /*[14]*/
                    for (m = 0; m < 5; m++) {
                    /*[14]*/
                        /*[14]*/
                        a[i][j][k][m] = 0.0;
                        /*[14]*/
                        b[i][j][k][m] = 0.0;
                        /*[14]*/
                        c[i][j][k][m] = 0.0;
                        /*[14]*/
                        d[i][j][k][m] = 0.0;
                    }
                }
            }
        }
    }
    /*[15]*/
#pragma omp parallel
    {
    /*[15]*/
        /*[15]*/
        int i_imopVar79;
        /*[15]*/
        int j_imopVar80;
        /*[15]*/
        int k_imopVar81;
        /*[15]*/
        int m_imopVar82;
        /*[15]*/
        int L1;
        /*[15]*/
        int L2;
        /*[15]*/
        int ist1;
        /*[15]*/
        int iend1;
        /*[15]*/
        int jst1;
        /*[15]*/
        int jend1;
        /*[15]*/
        double q;
        /*[15]*/
        double u21;
        /*[15]*/
        double u31;
        /*[15]*/
        double u41;
        /*[15]*/
        double tmp_imopVar83;
        /*[15]*/
        double u21i;
        /*[15]*/
        double u31i;
        /*[15]*/
        double u41i;
        /*[15]*/
        double u51i;
        /*[15]*/
        double u21j;
        /*[15]*/
        double u31j;
        /*[15]*/
        double u41j;
        /*[15]*/
        double u51j;
        /*[15]*/
        double u21k;
        /*[15]*/
        double u31k;
        /*[15]*/
        double u41k;
        /*[15]*/
        double u51k;
        /*[15]*/
        double u21im1;
        /*[15]*/
        double u31im1;
        /*[15]*/
        double u41im1;
        /*[15]*/
        double u51im1;
        /*[15]*/
        double u21jm1;
        /*[15]*/
        double u31jm1;
        /*[15]*/
        double u41jm1;
        /*[15]*/
        double u51jm1;
        /*[15]*/
        double u21km1;
        /*[15]*/
        double u31km1;
        /*[15]*/
        double u41km1;
        /*[15]*/
        double u51km1;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (i_imopVar79 = 0; i_imopVar79 <= nx - 1; i_imopVar79++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (j_imopVar80 = 0; j_imopVar80 <= ny - 1; j_imopVar80++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (k_imopVar81 = 0; k_imopVar81 <= nz - 1; k_imopVar81++) {
                /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    /*[15]*/
                    for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                    /*[15]*/
                        /*[15]*/
                        rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] = -frct[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82];
                    }
                }
            }
        }
        /*[15]*/
        L1 = 0;
        /*[15]*/
        L2 = nx - 1;
        /*[15]*/
#pragma omp for nowait
        /*[15]*/
        /*[15]*/
        /*[15]*/
        for (i_imopVar79 = L1; i_imopVar79 <= L2; i_imopVar79++) {
        /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            /*[15]*/
            for (j_imopVar80 = jst; j_imopVar80 <= jend; j_imopVar80++) {
            /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                /*[15]*/
                for (k_imopVar81 = 1; k_imopVar81 <= nz - 2; k_imopVar81++) {
                /*[15]*/
                    /*[15]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][0] = u[i_imopVar79][j_imopVar80][k_imopVar81][1];
                    /*[15]*/
                    u21 = u[i_imopVar79][j_imopVar80][k_imopVar81][1] / u[i_imopVar79][j_imopVar80][k_imopVar81][0];
                    /*[15]*/
                    q = 0.50 * (u[i_imopVar79][j_imopVar80][k_imopVar81][1] * u[i_imopVar79][j_imopVar80][k_imopVar81][1] + u[i_imopVar79][j_imopVar80][k_imopVar81][2] * u[i_imopVar79][j_imopVar80][k_imopVar81][2] + u[i_imopVar79][j_imopVar80][k_imopVar81][3] * u[i_imopVar79][j_imopVar80][k_imopVar81][3]) / u[i_imopVar79][j_imopVar80][k_imopVar81][0];
                    /*[15]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][1] = u[i_imopVar79][j_imopVar80][k_imopVar81][1] * u21 + 0.40e+00 * (u[i_imopVar79][j_imopVar80][k_imopVar81][4] - q);
                    /*[15]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][2] = u[i_imopVar79][j_imopVar80][k_imopVar81][2] * u21;
                    /*[15]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][3] = u[i_imopVar79][j_imopVar80][k_imopVar81][3] * u21;
                    /*[15]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][4] = (1.40e+00 * u[i_imopVar79][j_imopVar80][k_imopVar81][4] - 0.40e+00 * q) * u21;
                }
            }
        }
        /*[15]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[15]*/
#pragma omp barrier
        /*[16]*/
#pragma omp for nowait
        /*[16]*/
        /*[16]*/
        /*[16]*/
        for (j_imopVar80 = jst; j_imopVar80 <= jend; j_imopVar80++) {
        /*[16]*/
            /*[16]*/
            /*[16]*/
            /*[16]*/
            /*[16]*/
            for (k_imopVar81 = 1; k_imopVar81 <= nz - 2; k_imopVar81++) {
            /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (i_imopVar79 = ist; i_imopVar79 <= iend; i_imopVar79++) {
                /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                    /*[16]*/
                        /*[16]*/
                        rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] - tx2 * (flux[i_imopVar79 + 1][j_imopVar80][k_imopVar81][m_imopVar82] - flux[i_imopVar79 - 1][j_imopVar80][k_imopVar81][m_imopVar82]);
                    }
                }
                /*[16]*/
                L2 = nx - 1;
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (i_imopVar79 = ist; i_imopVar79 <= L2; i_imopVar79++) {
                /*[16]*/
                    /*[16]*/
                    tmp_imopVar83 = 1.0 / u[i_imopVar79][j_imopVar80][k_imopVar81][0];
                    /*[16]*/
                    u21i = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][1];
                    /*[16]*/
                    u31i = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][2];
                    /*[16]*/
                    u41i = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][3];
                    /*[16]*/
                    u51i = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][4];
                    /*[16]*/
                    tmp_imopVar83 = 1.0 / u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][0];
                    /*[16]*/
                    u21im1 = tmp_imopVar83 * u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][1];
                    /*[16]*/
                    u31im1 = tmp_imopVar83 * u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][2];
                    /*[16]*/
                    u41im1 = tmp_imopVar83 * u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][3];
                    /*[16]*/
                    u51im1 = tmp_imopVar83 * u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][4];
                    /*[16]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                    /*[16]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][2] = tx3 * (u31i - u31im1);
                    /*[16]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][3] = tx3 * (u41i - u41im1);
                    /*[16]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * (((u21i * u21i) + (u31i * u31i) + (u41i * u41i)) - ((u21im1 * u21im1) + (u31im1 * u31im1) + (u41im1 * u41im1))) + (1.0 / 6.0) * tx3 * ((u21i * u21i) - (u21im1 * u21im1)) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                }
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (i_imopVar79 = ist; i_imopVar79 <= iend; i_imopVar79++) {
                /*[16]*/
                    /*[16]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][0] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][0] + dx1 * tx1 * (u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][0] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][0] + u[i_imopVar79 + 1][j_imopVar80][k_imopVar81][0]);
                    /*[16]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][1] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79 + 1][j_imopVar80][k_imopVar81][1] - flux[i_imopVar79][j_imopVar80][k_imopVar81][1]) + dx2 * tx1 * (u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][1] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][1] + u[i_imopVar79 + 1][j_imopVar80][k_imopVar81][1]);
                    /*[16]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][2] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79 + 1][j_imopVar80][k_imopVar81][2] - flux[i_imopVar79][j_imopVar80][k_imopVar81][2]) + dx3 * tx1 * (u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][2] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][2] + u[i_imopVar79 + 1][j_imopVar80][k_imopVar81][2]);
                    /*[16]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][3] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79 + 1][j_imopVar80][k_imopVar81][3] - flux[i_imopVar79][j_imopVar80][k_imopVar81][3]) + dx4 * tx1 * (u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][3] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][3] + u[i_imopVar79 + 1][j_imopVar80][k_imopVar81][3]);
                    /*[16]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][4] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79 + 1][j_imopVar80][k_imopVar81][4] - flux[i_imopVar79][j_imopVar80][k_imopVar81][4]) + dx5 * tx1 * (u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][4] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][4] + u[i_imopVar79 + 1][j_imopVar80][k_imopVar81][4]);
                }
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                /*[16]*/
                    /*[16]*/
                    rsd[1][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[1][j_imopVar80][k_imopVar81][m_imopVar82] - dssp * (+5.0 * u[1][j_imopVar80][k_imopVar81][m_imopVar82] - 4.0 * u[2][j_imopVar80][k_imopVar81][m_imopVar82] + u[3][j_imopVar80][k_imopVar81][m_imopVar82]);
                    /*[16]*/
                    rsd[2][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[2][j_imopVar80][k_imopVar81][m_imopVar82] - dssp * (-4.0 * u[1][j_imopVar80][k_imopVar81][m_imopVar82] + 6.0 * u[2][j_imopVar80][k_imopVar81][m_imopVar82] - 4.0 * u[3][j_imopVar80][k_imopVar81][m_imopVar82] + u[4][j_imopVar80][k_imopVar81][m_imopVar82]);
                }
                /*[16]*/
                ist1 = 3;
                /*[16]*/
                iend1 = nx - 4;
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (i_imopVar79 = ist1; i_imopVar79 <= iend1; i_imopVar79++) {
                /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    /*[16]*/
                    for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                    /*[16]*/
                        /*[16]*/
                        rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] - dssp * (u[i_imopVar79 - 2][j_imopVar80][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79 - 1][j_imopVar80][k_imopVar81][m_imopVar82] + 6.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79 + 1][j_imopVar80][k_imopVar81][m_imopVar82] + u[i_imopVar79 + 2][j_imopVar80][k_imopVar81][m_imopVar82]);
                    }
                }
                /*[16]*/
                /*[16]*/
                /*[16]*/
                /*[16]*/
                for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                /*[16]*/
                    /*[16]*/
                    rsd[nx - 3][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[nx - 3][j_imopVar80][k_imopVar81][m_imopVar82] - dssp * (u[nx - 5][j_imopVar80][k_imopVar81][m_imopVar82] - 4.0 * u[nx - 4][j_imopVar80][k_imopVar81][m_imopVar82] + 6.0 * u[nx - 3][j_imopVar80][k_imopVar81][m_imopVar82] - 4.0 * u[nx - 2][j_imopVar80][k_imopVar81][m_imopVar82]);
                    /*[16]*/
                    rsd[nx - 2][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[nx - 2][j_imopVar80][k_imopVar81][m_imopVar82] - dssp * (u[nx - 4][j_imopVar80][k_imopVar81][m_imopVar82] - 4.0 * u[nx - 3][j_imopVar80][k_imopVar81][m_imopVar82] + 5.0 * u[nx - 2][j_imopVar80][k_imopVar81][m_imopVar82]);
                }
            }
        }
        /*[16]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[16]*/
#pragma omp barrier
        /*[17]*/
        L1 = 0;
        /*[17]*/
        L2 = ny - 1;
        /*[17]*/
#pragma omp for nowait
        /*[17]*/
        /*[17]*/
        /*[17]*/
        for (i_imopVar79 = ist; i_imopVar79 <= iend; i_imopVar79++) {
        /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            /*[17]*/
            for (j_imopVar80 = L1; j_imopVar80 <= L2; j_imopVar80++) {
            /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                /*[17]*/
                for (k_imopVar81 = 1; k_imopVar81 <= nz - 2; k_imopVar81++) {
                /*[17]*/
                    /*[17]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][0] = u[i_imopVar79][j_imopVar80][k_imopVar81][2];
                    /*[17]*/
                    u31 = u[i_imopVar79][j_imopVar80][k_imopVar81][2] / u[i_imopVar79][j_imopVar80][k_imopVar81][0];
                    /*[17]*/
                    q = 0.50 * (u[i_imopVar79][j_imopVar80][k_imopVar81][1] * u[i_imopVar79][j_imopVar80][k_imopVar81][1] + u[i_imopVar79][j_imopVar80][k_imopVar81][2] * u[i_imopVar79][j_imopVar80][k_imopVar81][2] + u[i_imopVar79][j_imopVar80][k_imopVar81][3] * u[i_imopVar79][j_imopVar80][k_imopVar81][3]) / u[i_imopVar79][j_imopVar80][k_imopVar81][0];
                    /*[17]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][1] = u[i_imopVar79][j_imopVar80][k_imopVar81][1] * u31;
                    /*[17]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][2] = u[i_imopVar79][j_imopVar80][k_imopVar81][2] * u31 + 0.40e+00 * (u[i_imopVar79][j_imopVar80][k_imopVar81][4] - q);
                    /*[17]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][3] = u[i_imopVar79][j_imopVar80][k_imopVar81][3] * u31;
                    /*[17]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][4] = (1.40e+00 * u[i_imopVar79][j_imopVar80][k_imopVar81][4] - 0.40e+00 * q) * u31;
                }
            }
        }
        /*[17]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[17]*/
#pragma omp barrier
        /*[18]*/
#pragma omp for nowait
        /*[18]*/
        /*[18]*/
        /*[18]*/
        for (i_imopVar79 = ist; i_imopVar79 <= iend; i_imopVar79++) {
        /*[18]*/
            /*[18]*/
            /*[18]*/
            /*[18]*/
            /*[18]*/
            for (k_imopVar81 = 1; k_imopVar81 <= nz - 2; k_imopVar81++) {
            /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (j_imopVar80 = jst; j_imopVar80 <= jend; j_imopVar80++) {
                /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                    /*[18]*/
                        /*[18]*/
                        rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] - ty2 * (flux[i_imopVar79][j_imopVar80 + 1][k_imopVar81][m_imopVar82] - flux[i_imopVar79][j_imopVar80 - 1][k_imopVar81][m_imopVar82]);
                    }
                }
                /*[18]*/
                L2 = ny - 1;
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (j_imopVar80 = jst; j_imopVar80 <= L2; j_imopVar80++) {
                /*[18]*/
                    /*[18]*/
                    tmp_imopVar83 = 1.0 / u[i_imopVar79][j_imopVar80][k_imopVar81][0];
                    /*[18]*/
                    u21j = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][1];
                    /*[18]*/
                    u31j = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][2];
                    /*[18]*/
                    u41j = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][3];
                    /*[18]*/
                    u51j = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][4];
                    /*[18]*/
                    tmp_imopVar83 = 1.0 / u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][0];
                    /*[18]*/
                    u21jm1 = tmp_imopVar83 * u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][1];
                    /*[18]*/
                    u31jm1 = tmp_imopVar83 * u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][2];
                    /*[18]*/
                    u41jm1 = tmp_imopVar83 * u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][3];
                    /*[18]*/
                    u51jm1 = tmp_imopVar83 * u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][4];
                    /*[18]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][1] = ty3 * (u21j - u21jm1);
                    /*[18]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                    /*[18]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][3] = ty3 * (u41j - u41jm1);
                    /*[18]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * (((u21j * u21j) + (u31j * u31j) + (u41j * u41j)) - ((u21jm1 * u21jm1) + (u31jm1 * u31jm1) + (u41jm1 * u41jm1))) + (1.0 / 6.0) * ty3 * ((u31j * u31j) - (u31jm1 * u31jm1)) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                }
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (j_imopVar80 = jst; j_imopVar80 <= jend; j_imopVar80++) {
                /*[18]*/
                    /*[18]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][0] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][0] + dy1 * ty1 * (u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][0] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][0] + u[i_imopVar79][j_imopVar80 + 1][k_imopVar81][0]);
                    /*[18]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][1] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79][j_imopVar80 + 1][k_imopVar81][1] - flux[i_imopVar79][j_imopVar80][k_imopVar81][1]) + dy2 * ty1 * (u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][1] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][1] + u[i_imopVar79][j_imopVar80 + 1][k_imopVar81][1]);
                    /*[18]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][2] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79][j_imopVar80 + 1][k_imopVar81][2] - flux[i_imopVar79][j_imopVar80][k_imopVar81][2]) + dy3 * ty1 * (u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][2] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][2] + u[i_imopVar79][j_imopVar80 + 1][k_imopVar81][2]);
                    /*[18]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][3] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79][j_imopVar80 + 1][k_imopVar81][3] - flux[i_imopVar79][j_imopVar80][k_imopVar81][3]) + dy4 * ty1 * (u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][3] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][3] + u[i_imopVar79][j_imopVar80 + 1][k_imopVar81][3]);
                    /*[18]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][4] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79][j_imopVar80 + 1][k_imopVar81][4] - flux[i_imopVar79][j_imopVar80][k_imopVar81][4]) + dy5 * ty1 * (u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][4] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][4] + u[i_imopVar79][j_imopVar80 + 1][k_imopVar81][4]);
                }
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                /*[18]*/
                    /*[18]*/
                    rsd[i_imopVar79][1][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][1][k_imopVar81][m_imopVar82] - dssp * (+5.0 * u[i_imopVar79][1][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79][2][k_imopVar81][m_imopVar82] + u[i_imopVar79][3][k_imopVar81][m_imopVar82]);
                    /*[18]*/
                    rsd[i_imopVar79][2][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][2][k_imopVar81][m_imopVar82] - dssp * (-4.0 * u[i_imopVar79][1][k_imopVar81][m_imopVar82] + 6.0 * u[i_imopVar79][2][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79][3][k_imopVar81][m_imopVar82] + u[i_imopVar79][4][k_imopVar81][m_imopVar82]);
                }
                /*[18]*/
                jst1 = 3;
                /*[18]*/
                jend1 = ny - 4;
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (j_imopVar80 = jst1; j_imopVar80 <= jend1; j_imopVar80++) {
                /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    /*[18]*/
                    for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                    /*[18]*/
                        /*[18]*/
                        rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] - dssp * (u[i_imopVar79][j_imopVar80 - 2][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79][j_imopVar80 - 1][k_imopVar81][m_imopVar82] + 6.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79][j_imopVar80 + 1][k_imopVar81][m_imopVar82] + u[i_imopVar79][j_imopVar80 + 2][k_imopVar81][m_imopVar82]);
                    }
                }
                /*[18]*/
                /*[18]*/
                /*[18]*/
                /*[18]*/
                for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                /*[18]*/
                    /*[18]*/
                    rsd[i_imopVar79][ny - 3][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][ny - 3][k_imopVar81][m_imopVar82] - dssp * (u[i_imopVar79][ny - 5][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79][ny - 4][k_imopVar81][m_imopVar82] + 6.0 * u[i_imopVar79][ny - 3][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79][ny - 2][k_imopVar81][m_imopVar82]);
                    /*[18]*/
                    rsd[i_imopVar79][ny - 2][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][ny - 2][k_imopVar81][m_imopVar82] - dssp * (u[i_imopVar79][ny - 4][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79][ny - 3][k_imopVar81][m_imopVar82] + 5.0 * u[i_imopVar79][ny - 2][k_imopVar81][m_imopVar82]);
                }
            }
        }
        /*[18]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[18]*/
#pragma omp barrier
        /*[19]*/
#pragma omp for nowait
        /*[19]*/
        /*[19]*/
        /*[19]*/
        for (i_imopVar79 = ist; i_imopVar79 <= iend; i_imopVar79++) {
        /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            /*[19]*/
            for (j_imopVar80 = jst; j_imopVar80 <= jend; j_imopVar80++) {
            /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (k_imopVar81 = 0; k_imopVar81 <= nz - 1; k_imopVar81++) {
                /*[19]*/
                    /*[19]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][0] = u[i_imopVar79][j_imopVar80][k_imopVar81][3];
                    /*[19]*/
                    u41 = u[i_imopVar79][j_imopVar80][k_imopVar81][3] / u[i_imopVar79][j_imopVar80][k_imopVar81][0];
                    /*[19]*/
                    q = 0.50 * (u[i_imopVar79][j_imopVar80][k_imopVar81][1] * u[i_imopVar79][j_imopVar80][k_imopVar81][1] + u[i_imopVar79][j_imopVar80][k_imopVar81][2] * u[i_imopVar79][j_imopVar80][k_imopVar81][2] + u[i_imopVar79][j_imopVar80][k_imopVar81][3] * u[i_imopVar79][j_imopVar80][k_imopVar81][3]) / u[i_imopVar79][j_imopVar80][k_imopVar81][0];
                    /*[19]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][1] = u[i_imopVar79][j_imopVar80][k_imopVar81][1] * u41;
                    /*[19]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][2] = u[i_imopVar79][j_imopVar80][k_imopVar81][2] * u41;
                    /*[19]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][3] = u[i_imopVar79][j_imopVar80][k_imopVar81][3] * u41 + 0.40e+00 * (u[i_imopVar79][j_imopVar80][k_imopVar81][4] - q);
                    /*[19]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][4] = (1.40e+00 * u[i_imopVar79][j_imopVar80][k_imopVar81][4] - 0.40e+00 * q) * u41;
                }
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (k_imopVar81 = 1; k_imopVar81 <= nz - 2; k_imopVar81++) {
                /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                    /*[19]*/
                        /*[19]*/
                        rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] - tz2 * (flux[i_imopVar79][j_imopVar80][k_imopVar81 + 1][m_imopVar82] - flux[i_imopVar79][j_imopVar80][k_imopVar81 - 1][m_imopVar82]);
                    }
                }
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (k_imopVar81 = 1; k_imopVar81 <= nz - 1; k_imopVar81++) {
                /*[19]*/
                    /*[19]*/
                    tmp_imopVar83 = 1.0 / u[i_imopVar79][j_imopVar80][k_imopVar81][0];
                    /*[19]*/
                    u21k = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][1];
                    /*[19]*/
                    u31k = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][2];
                    /*[19]*/
                    u41k = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][3];
                    /*[19]*/
                    u51k = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81][4];
                    /*[19]*/
                    tmp_imopVar83 = 1.0 / u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][0];
                    /*[19]*/
                    u21km1 = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][1];
                    /*[19]*/
                    u31km1 = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][2];
                    /*[19]*/
                    u41km1 = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][3];
                    /*[19]*/
                    u51km1 = tmp_imopVar83 * u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][4];
                    /*[19]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][1] = tz3 * (u21k - u21km1);
                    /*[19]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][2] = tz3 * (u31k - u31km1);
                    /*[19]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                    /*[19]*/
                    flux[i_imopVar79][j_imopVar80][k_imopVar81][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * (((u21k * u21k) + (u31k * u31k) + (u41k * u41k)) - ((u21km1 * u21km1) + (u31km1 * u31km1) + (u41km1 * u41km1))) + (1.0 / 6.0) * tz3 * ((u41k * u41k) - (u41km1 * u41km1)) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                }
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (k_imopVar81 = 1; k_imopVar81 <= nz - 2; k_imopVar81++) {
                /*[19]*/
                    /*[19]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][0] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][0] + dz1 * tz1 * (u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][0] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][0] + u[i_imopVar79][j_imopVar80][k_imopVar81 + 1][0]);
                    /*[19]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][1] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79][j_imopVar80][k_imopVar81 + 1][1] - flux[i_imopVar79][j_imopVar80][k_imopVar81][1]) + dz2 * tz1 * (u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][1] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][1] + u[i_imopVar79][j_imopVar80][k_imopVar81 + 1][1]);
                    /*[19]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][2] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79][j_imopVar80][k_imopVar81 + 1][2] - flux[i_imopVar79][j_imopVar80][k_imopVar81][2]) + dz3 * tz1 * (u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][2] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][2] + u[i_imopVar79][j_imopVar80][k_imopVar81 + 1][2]);
                    /*[19]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][3] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79][j_imopVar80][k_imopVar81 + 1][3] - flux[i_imopVar79][j_imopVar80][k_imopVar81][3]) + dz4 * tz1 * (u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][3] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][3] + u[i_imopVar79][j_imopVar80][k_imopVar81 + 1][3]);
                    /*[19]*/
                    rsd[i_imopVar79][j_imopVar80][k_imopVar81][4] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar79][j_imopVar80][k_imopVar81 + 1][4] - flux[i_imopVar79][j_imopVar80][k_imopVar81][4]) + dz5 * tz1 * (u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][4] - 2.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][4] + u[i_imopVar79][j_imopVar80][k_imopVar81 + 1][4]);
                }
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                /*[19]*/
                    /*[19]*/
                    rsd[i_imopVar79][j_imopVar80][1][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][1][m_imopVar82] - dssp * (+5.0 * u[i_imopVar79][j_imopVar80][1][m_imopVar82] - 4.0 * u[i_imopVar79][j_imopVar80][2][m_imopVar82] + u[i_imopVar79][j_imopVar80][3][m_imopVar82]);
                    /*[19]*/
                    rsd[i_imopVar79][j_imopVar80][2][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][2][m_imopVar82] - dssp * (-4.0 * u[i_imopVar79][j_imopVar80][1][m_imopVar82] + 6.0 * u[i_imopVar79][j_imopVar80][2][m_imopVar82] - 4.0 * u[i_imopVar79][j_imopVar80][3][m_imopVar82] + u[i_imopVar79][j_imopVar80][4][m_imopVar82]);
                }
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (k_imopVar81 = 3; k_imopVar81 <= nz - 4; k_imopVar81++) {
                /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    /*[19]*/
                    for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                    /*[19]*/
                        /*[19]*/
                        rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] - dssp * (u[i_imopVar79][j_imopVar80][k_imopVar81 - 2][m_imopVar82] - 4.0 * u[i_imopVar79][j_imopVar80][k_imopVar81 - 1][m_imopVar82] + 6.0 * u[i_imopVar79][j_imopVar80][k_imopVar81][m_imopVar82] - 4.0 * u[i_imopVar79][j_imopVar80][k_imopVar81 + 1][m_imopVar82] + u[i_imopVar79][j_imopVar80][k_imopVar81 + 2][m_imopVar82]);
                    }
                }
                /*[19]*/
                /*[19]*/
                /*[19]*/
                /*[19]*/
                for (m_imopVar82 = 0; m_imopVar82 < 5; m_imopVar82++) {
                /*[19]*/
                    /*[19]*/
                    rsd[i_imopVar79][j_imopVar80][nz - 3][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][nz - 3][m_imopVar82] - dssp * (u[i_imopVar79][j_imopVar80][nz - 5][m_imopVar82] - 4.0 * u[i_imopVar79][j_imopVar80][nz - 4][m_imopVar82] + 6.0 * u[i_imopVar79][j_imopVar80][nz - 3][m_imopVar82] - 4.0 * u[i_imopVar79][j_imopVar80][nz - 2][m_imopVar82]);
                    /*[19]*/
                    rsd[i_imopVar79][j_imopVar80][nz - 2][m_imopVar82] = rsd[i_imopVar79][j_imopVar80][nz - 2][m_imopVar82] - dssp * (u[i_imopVar79][j_imopVar80][nz - 4][m_imopVar82] - 4.0 * u[i_imopVar79][j_imopVar80][nz - 3][m_imopVar82] + 5.0 * u[i_imopVar79][j_imopVar80][nz - 2][m_imopVar82]);
                }
            }
        }
    }
    /*[20]*/
#pragma omp parallel
    {
    /*[20]*/
        /*[20]*/
        double ( *v )[12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
        /*[20]*/
        double *sum;
        /*[20]*/
        v = rsd;
        /*[20]*/
        sum = rsdnm;
        /*[20]*/
        int i_imopVar84;
        /*[20]*/
        int j_imopVar85;
        /*[20]*/
        int k_imopVar86;
        /*[20]*/
        int m_imopVar87;
        /*[20]*/
        double sum0 = 0.0;
        /*[20]*/
        double sum1 = 0.0;
        /*[20]*/
        double sum2 = 0.0;
        /*[20]*/
        double sum3 = 0.0;
        /*[20]*/
        double sum4 = 0.0;
        /*[20]*/
#pragma omp single nowait
        {
        /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            /*[20]*/
            for (m_imopVar87 = 0; m_imopVar87 < 5; m_imopVar87++) {
            /*[20]*/
                /*[20]*/
                sum[m_imopVar87] = 0.0;
            }
        }
        /*[20]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[20]*/
#pragma omp barrier
        /*[21]*/
#pragma omp for nowait
        /*[21]*/
        /*[21]*/
        /*[21]*/
        for (i_imopVar84 = ist; i_imopVar84 <= iend; i_imopVar84++) {
        /*[21]*/
            /*[21]*/
            /*[21]*/
            /*[21]*/
            /*[21]*/
            for (j_imopVar85 = jst; j_imopVar85 <= jend; j_imopVar85++) {
            /*[21]*/
                /*[21]*/
                /*[21]*/
                /*[21]*/
                /*[21]*/
                for (k_imopVar86 = 1; k_imopVar86 <= nz0 - 2; k_imopVar86++) {
                /*[21]*/
                    /*[21]*/
                    sum0 = sum0 + v[i_imopVar84][j_imopVar85][k_imopVar86][0] * v[i_imopVar84][j_imopVar85][k_imopVar86][0];
                    /*[21]*/
                    sum1 = sum1 + v[i_imopVar84][j_imopVar85][k_imopVar86][1] * v[i_imopVar84][j_imopVar85][k_imopVar86][1];
                    /*[21]*/
                    sum2 = sum2 + v[i_imopVar84][j_imopVar85][k_imopVar86][2] * v[i_imopVar84][j_imopVar85][k_imopVar86][2];
                    /*[21]*/
                    sum3 = sum3 + v[i_imopVar84][j_imopVar85][k_imopVar86][3] * v[i_imopVar84][j_imopVar85][k_imopVar86][3];
                    /*[21]*/
                    sum4 = sum4 + v[i_imopVar84][j_imopVar85][k_imopVar86][4] * v[i_imopVar84][j_imopVar85][k_imopVar86][4];
                }
            }
        }
        /*[21]*/
        // #pragma omp dummyFlush CRITICAL_START
        /*[21]*/
#pragma omp critical
        {
        /*[21]*/
            /*[21]*/
            sum[0] += sum0;
            /*[21]*/
            sum[1] += sum1;
            /*[21]*/
            sum[2] += sum2;
            /*[21]*/
            sum[3] += sum3;
            /*[21]*/
            sum[4] += sum4;
        }
        /*[21]*/
        // #pragma omp dummyFlush CRITICAL_END
        /*[21]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[21]*/
#pragma omp barrier
        /*[22]*/
#pragma omp single nowait
        {
        /*[22]*/
            /*[22]*/
            /*[22]*/
            /*[22]*/
            /*[22]*/
            for (m_imopVar87 = 0; m_imopVar87 < 5; m_imopVar87++) {
            /*[22]*/
                /*[22]*/
                double _imopVarPre154;
                /*[22]*/
                double _imopVarPre155;
                /*[22]*/
                _imopVarPre154 = sum[m_imopVar87] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
                /*[22]*/
                _imopVarPre155 = sqrt(_imopVarPre154);
                /*[22]*/
                /*[22]*/
                sum[m_imopVar87] = _imopVarPre155;
            }
        }
    }
    /*[]*/
    timer_clear(1);
    /*[]*/
    /*[]*/
    timer_start(1);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (istep = 1; istep <= itmax; istep++) {
    /*[]*/
        /*[]*/
        int _imopVarPre372;
        /*[]*/
        int _imopVarPre370;
        /*[]*/
        int _imopVarPre371;
        /*[]*/
        _imopVarPre370 = istep % 20 == 0;
        /*[]*/
        /*[]*/
        if (!_imopVarPre370) {
        /*[]*/
            /*[]*/
            _imopVarPre371 = istep == itmax;
            /*[]*/
            /*[]*/
            if (!_imopVarPre371) {
            /*[]*/
                /*[]*/
                _imopVarPre371 = istep == 1;
            }
            /*[]*/
            _imopVarPre370 = _imopVarPre371;
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre370) {
        /*[]*/
            /*[]*/
#pragma omp master
            {
            /*[]*/
                /*[]*/
                printf(" Time step %4d\n", istep);
                /*[]*/
            }
        }
        /*[23]*/
#pragma omp parallel private(istep, i, j, k, m)
        {
        /*[23]*/
            /*[23]*/
            int _imopVarPre377;
            /*[23]*/
            int _imopVarPre378;
            /*[23]*/
            int _imopVarPre379;
            /*[23]*/
            int _imopVarPre380;
            /*[23]*/
#pragma omp for nowait
            /*[23]*/
            /*[23]*/
            /*[23]*/
            for (i = ist; i <= iend; i++) {
            /*[23]*/
                /*[23]*/
                /*[23]*/
                /*[23]*/
                /*[23]*/
                for (j = jst; j <= jend; j++) {
                /*[23]*/
                    /*[23]*/
                    /*[23]*/
                    /*[23]*/
                    /*[23]*/
                    for (k = 1; k <= nz - 2; k++) {
                    /*[23]*/
                        /*[23]*/
                        /*[23]*/
                        /*[23]*/
                        /*[23]*/
                        for (m = 0; m < 5; m++) {
                        /*[23]*/
                            /*[23]*/
                            rsd[i][j][k][m] = dt * rsd[i][j][k][m];
                        }
                    }
                }
            }
            /*[23]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[23]*/
#pragma omp barrier
            /*[24]*/
            /*[24]*/
            /*[24]*/
            /*[24]*/
            for (k = 1; k <= nz - 2; k++) {
            /*[24]*/
                /*[24]*/
                jacld(k);
                /*[24]*/
                /*[24]*/
                blts(nx, ny, nz, k, omega, rsd, a, b, c, d, ist, iend, jst, jend, nx0, ny0);
                /*[24]*/
            }
            /*[24]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[24]*/
#pragma omp barrier
            /*[25]*/
            /*[25]*/
            /*[25]*/
            /*[25]*/
            for (k = nz - 2; k >= 1; k--) {
            /*[25]*/
                /*[25]*/
                jacu(k);
                /*[25]*/
                /*[25]*/
                buts(nx, ny, nz, k, omega, rsd, tv, d, a, b, c, ist, iend, jst, jend, nx0, ny0);
                /*[25]*/
            }
            /*[25]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[25]*/
#pragma omp barrier
            /*[26]*/
#pragma omp for nowait
            /*[26]*/
            /*[26]*/
            /*[26]*/
            for (i = ist; i <= iend; i++) {
            /*[26]*/
                /*[26]*/
                /*[26]*/
                /*[26]*/
                /*[26]*/
                for (j = jst; j <= jend; j++) {
                /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    for (k = 1; k <= nz - 2; k++) {
                    /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        /*[26]*/
                        for (m = 0; m < 5; m++) {
                        /*[26]*/
                            /*[26]*/
                            u[i][j][k][m] = u[i][j][k][m] + tmp * rsd[i][j][k][m];
                        }
                    }
                }
            }
            /*[26]*/
            /*[26]*/
            if (istep % inorm == 0) {
            /*[26]*/
                /*[26]*/
                double ( *v )[12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
                /*[26]*/
                double *sum;
                /*[26]*/
                v = rsd;
                /*[26]*/
                sum = delunm;
                /*[26]*/
                int i_imopVar75;
                /*[26]*/
                int j_imopVar76;
                /*[26]*/
                int k_imopVar77;
                /*[26]*/
                int m_imopVar78;
                /*[26]*/
                double sum0 = 0.0;
                /*[26]*/
                double sum1 = 0.0;
                /*[26]*/
                double sum2 = 0.0;
                /*[26]*/
                double sum3 = 0.0;
                /*[26]*/
                double sum4 = 0.0;
                /*[26]*/
#pragma omp single nowait
                {
                /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    /*[26]*/
                    for (m_imopVar78 = 0; m_imopVar78 < 5; m_imopVar78++) {
                    /*[26]*/
                        /*[26]*/
                        sum[m_imopVar78] = 0.0;
                    }
                }
                /*[26]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[26]*/
#pragma omp barrier
                /*[27]*/
#pragma omp for nowait
                /*[27]*/
                /*[27]*/
                /*[27]*/
                for (i_imopVar75 = ist; i_imopVar75 <= iend; i_imopVar75++) {
                /*[27]*/
                    /*[27]*/
                    /*[27]*/
                    /*[27]*/
                    /*[27]*/
                    for (j_imopVar76 = jst; j_imopVar76 <= jend; j_imopVar76++) {
                    /*[27]*/
                        /*[27]*/
                        /*[27]*/
                        /*[27]*/
                        /*[27]*/
                        for (k_imopVar77 = 1; k_imopVar77 <= nz0 - 2; k_imopVar77++) {
                        /*[27]*/
                            /*[27]*/
                            sum0 = sum0 + v[i_imopVar75][j_imopVar76][k_imopVar77][0] * v[i_imopVar75][j_imopVar76][k_imopVar77][0];
                            /*[27]*/
                            sum1 = sum1 + v[i_imopVar75][j_imopVar76][k_imopVar77][1] * v[i_imopVar75][j_imopVar76][k_imopVar77][1];
                            /*[27]*/
                            sum2 = sum2 + v[i_imopVar75][j_imopVar76][k_imopVar77][2] * v[i_imopVar75][j_imopVar76][k_imopVar77][2];
                            /*[27]*/
                            sum3 = sum3 + v[i_imopVar75][j_imopVar76][k_imopVar77][3] * v[i_imopVar75][j_imopVar76][k_imopVar77][3];
                            /*[27]*/
                            sum4 = sum4 + v[i_imopVar75][j_imopVar76][k_imopVar77][4] * v[i_imopVar75][j_imopVar76][k_imopVar77][4];
                        }
                    }
                }
                /*[27]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[27]*/
#pragma omp critical
                {
                /*[27]*/
                    /*[27]*/
                    sum[0] += sum0;
                    /*[27]*/
                    sum[1] += sum1;
                    /*[27]*/
                    sum[2] += sum2;
                    /*[27]*/
                    sum[3] += sum3;
                    /*[27]*/
                    sum[4] += sum4;
                }
                /*[27]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[27]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[27]*/
#pragma omp barrier
                /*[28]*/
#pragma omp single nowait
                {
                /*[28]*/
                    /*[28]*/
                    /*[28]*/
                    /*[28]*/
                    /*[28]*/
                    for (m_imopVar78 = 0; m_imopVar78 < 5; m_imopVar78++) {
                    /*[28]*/
                        /*[28]*/
                        double _imopVarPre154;
                        /*[28]*/
                        double _imopVarPre155;
                        /*[28]*/
                        _imopVarPre154 = sum[m_imopVar78] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
                        /*[28]*/
                        _imopVarPre155 = sqrt(_imopVarPre154);
                        /*[28]*/
                        /*[28]*/
                        sum[m_imopVar78] = _imopVarPre155;
                    }
                }
            }
            /*[26, 28]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[26, 28]*/
#pragma omp barrier
            /*[27, 29]*/
            int i_imopVar88;
            /*[27, 29]*/
            int j_imopVar89;
            /*[27, 29]*/
            int k_imopVar90;
            /*[27, 29]*/
            int m_imopVar91;
            /*[27, 29]*/
            int L1;
            /*[27, 29]*/
            int L2;
            /*[27, 29]*/
            int ist1;
            /*[27, 29]*/
            int iend1;
            /*[27, 29]*/
            int jst1;
            /*[27, 29]*/
            int jend1;
            /*[27, 29]*/
            double q;
            /*[27, 29]*/
            double u21;
            /*[27, 29]*/
            double u31;
            /*[27, 29]*/
            double u41;
            /*[27, 29]*/
            double tmp_imopVar92;
            /*[27, 29]*/
            double u21i;
            /*[27, 29]*/
            double u31i;
            /*[27, 29]*/
            double u41i;
            /*[27, 29]*/
            double u51i;
            /*[27, 29]*/
            double u21j;
            /*[27, 29]*/
            double u31j;
            /*[27, 29]*/
            double u41j;
            /*[27, 29]*/
            double u51j;
            /*[27, 29]*/
            double u21k;
            /*[27, 29]*/
            double u31k;
            /*[27, 29]*/
            double u41k;
            /*[27, 29]*/
            double u51k;
            /*[27, 29]*/
            double u21im1;
            /*[27, 29]*/
            double u31im1;
            /*[27, 29]*/
            double u41im1;
            /*[27, 29]*/
            double u51im1;
            /*[27, 29]*/
            double u21jm1;
            /*[27, 29]*/
            double u31jm1;
            /*[27, 29]*/
            double u41jm1;
            /*[27, 29]*/
            double u51jm1;
            /*[27, 29]*/
            double u21km1;
            /*[27, 29]*/
            double u31km1;
            /*[27, 29]*/
            double u41km1;
            /*[27, 29]*/
            double u51km1;
            /*[27, 29]*/
#pragma omp for nowait
            /*[27, 29]*/
            /*[27, 29]*/
            /*[27, 29]*/
            for (i_imopVar88 = 0; i_imopVar88 <= nx - 1; i_imopVar88++) {
            /*[27, 29]*/
                /*[27, 29]*/
                /*[27, 29]*/
                /*[27, 29]*/
                /*[27, 29]*/
                for (j_imopVar89 = 0; j_imopVar89 <= ny - 1; j_imopVar89++) {
                /*[27, 29]*/
                    /*[27, 29]*/
                    /*[27, 29]*/
                    /*[27, 29]*/
                    /*[27, 29]*/
                    for (k_imopVar90 = 0; k_imopVar90 <= nz - 1; k_imopVar90++) {
                    /*[27, 29]*/
                        /*[27, 29]*/
                        /*[27, 29]*/
                        /*[27, 29]*/
                        /*[27, 29]*/
                        for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                        /*[27, 29]*/
                            /*[27, 29]*/
                            rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] = -frct[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91];
                        }
                    }
                }
            }
            /*[27, 29]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[27, 29]*/
#pragma omp barrier
            /*[28, 30]*/
            L1 = 0;
            /*[28, 30]*/
            L2 = nx - 1;
            /*[28, 30]*/
#pragma omp for nowait
            /*[28, 30]*/
            /*[28, 30]*/
            /*[28, 30]*/
            for (i_imopVar88 = L1; i_imopVar88 <= L2; i_imopVar88++) {
            /*[28, 30]*/
                /*[28, 30]*/
                /*[28, 30]*/
                /*[28, 30]*/
                /*[28, 30]*/
                for (j_imopVar89 = jst; j_imopVar89 <= jend; j_imopVar89++) {
                /*[28, 30]*/
                    /*[28, 30]*/
                    /*[28, 30]*/
                    /*[28, 30]*/
                    /*[28, 30]*/
                    for (k_imopVar90 = 1; k_imopVar90 <= nz - 2; k_imopVar90++) {
                    /*[28, 30]*/
                        /*[28, 30]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][0] = u[i_imopVar88][j_imopVar89][k_imopVar90][1];
                        /*[28, 30]*/
                        u21 = u[i_imopVar88][j_imopVar89][k_imopVar90][1] / u[i_imopVar88][j_imopVar89][k_imopVar90][0];
                        /*[28, 30]*/
                        q = 0.50 * (u[i_imopVar88][j_imopVar89][k_imopVar90][1] * u[i_imopVar88][j_imopVar89][k_imopVar90][1] + u[i_imopVar88][j_imopVar89][k_imopVar90][2] * u[i_imopVar88][j_imopVar89][k_imopVar90][2] + u[i_imopVar88][j_imopVar89][k_imopVar90][3] * u[i_imopVar88][j_imopVar89][k_imopVar90][3]) / u[i_imopVar88][j_imopVar89][k_imopVar90][0];
                        /*[28, 30]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][1] = u[i_imopVar88][j_imopVar89][k_imopVar90][1] * u21 + 0.40e+00 * (u[i_imopVar88][j_imopVar89][k_imopVar90][4] - q);
                        /*[28, 30]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][2] = u[i_imopVar88][j_imopVar89][k_imopVar90][2] * u21;
                        /*[28, 30]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][3] = u[i_imopVar88][j_imopVar89][k_imopVar90][3] * u21;
                        /*[28, 30]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][4] = (1.40e+00 * u[i_imopVar88][j_imopVar89][k_imopVar90][4] - 0.40e+00 * q) * u21;
                    }
                }
            }
            /*[28, 30]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[28, 30]*/
#pragma omp barrier
            /*[29, 31]*/
#pragma omp for nowait
            /*[29, 31]*/
            /*[29, 31]*/
            /*[29, 31]*/
            for (j_imopVar89 = jst; j_imopVar89 <= jend; j_imopVar89++) {
            /*[29, 31]*/
                /*[29, 31]*/
                /*[29, 31]*/
                /*[29, 31]*/
                /*[29, 31]*/
                for (k_imopVar90 = 1; k_imopVar90 <= nz - 2; k_imopVar90++) {
                /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    for (i_imopVar88 = ist; i_imopVar88 <= iend; i_imopVar88++) {
                    /*[29, 31]*/
                        /*[29, 31]*/
                        /*[29, 31]*/
                        /*[29, 31]*/
                        /*[29, 31]*/
                        for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                        /*[29, 31]*/
                            /*[29, 31]*/
                            rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] - tx2 * (flux[i_imopVar88 + 1][j_imopVar89][k_imopVar90][m_imopVar91] - flux[i_imopVar88 - 1][j_imopVar89][k_imopVar90][m_imopVar91]);
                        }
                    }
                    /*[29, 31]*/
                    L2 = nx - 1;
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    for (i_imopVar88 = ist; i_imopVar88 <= L2; i_imopVar88++) {
                    /*[29, 31]*/
                        /*[29, 31]*/
                        tmp_imopVar92 = 1.0 / u[i_imopVar88][j_imopVar89][k_imopVar90][0];
                        /*[29, 31]*/
                        u21i = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][1];
                        /*[29, 31]*/
                        u31i = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][2];
                        /*[29, 31]*/
                        u41i = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][3];
                        /*[29, 31]*/
                        u51i = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][4];
                        /*[29, 31]*/
                        tmp_imopVar92 = 1.0 / u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][0];
                        /*[29, 31]*/
                        u21im1 = tmp_imopVar92 * u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][1];
                        /*[29, 31]*/
                        u31im1 = tmp_imopVar92 * u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][2];
                        /*[29, 31]*/
                        u41im1 = tmp_imopVar92 * u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][3];
                        /*[29, 31]*/
                        u51im1 = tmp_imopVar92 * u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][4];
                        /*[29, 31]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][1] = (4.0 / 3.0) * tx3 * (u21i - u21im1);
                        /*[29, 31]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][2] = tx3 * (u31i - u31im1);
                        /*[29, 31]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][3] = tx3 * (u41i - u41im1);
                        /*[29, 31]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tx3 * (((u21i * u21i) + (u31i * u31i) + (u41i * u41i)) - ((u21im1 * u21im1) + (u31im1 * u31im1) + (u41im1 * u41im1))) + (1.0 / 6.0) * tx3 * ((u21i * u21i) - (u21im1 * u21im1)) + 1.40e+00 * 1.40e+00 * tx3 * (u51i - u51im1);
                    }
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    for (i_imopVar88 = ist; i_imopVar88 <= iend; i_imopVar88++) {
                    /*[29, 31]*/
                        /*[29, 31]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][0] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][0] + dx1 * tx1 * (u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][0] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][0] + u[i_imopVar88 + 1][j_imopVar89][k_imopVar90][0]);
                        /*[29, 31]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][1] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][1] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88 + 1][j_imopVar89][k_imopVar90][1] - flux[i_imopVar88][j_imopVar89][k_imopVar90][1]) + dx2 * tx1 * (u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][1] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][1] + u[i_imopVar88 + 1][j_imopVar89][k_imopVar90][1]);
                        /*[29, 31]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][2] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][2] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88 + 1][j_imopVar89][k_imopVar90][2] - flux[i_imopVar88][j_imopVar89][k_imopVar90][2]) + dx3 * tx1 * (u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][2] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][2] + u[i_imopVar88 + 1][j_imopVar89][k_imopVar90][2]);
                        /*[29, 31]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][3] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][3] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88 + 1][j_imopVar89][k_imopVar90][3] - flux[i_imopVar88][j_imopVar89][k_imopVar90][3]) + dx4 * tx1 * (u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][3] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][3] + u[i_imopVar88 + 1][j_imopVar89][k_imopVar90][3]);
                        /*[29, 31]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][4] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][4] + tx3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88 + 1][j_imopVar89][k_imopVar90][4] - flux[i_imopVar88][j_imopVar89][k_imopVar90][4]) + dx5 * tx1 * (u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][4] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][4] + u[i_imopVar88 + 1][j_imopVar89][k_imopVar90][4]);
                    }
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                    /*[29, 31]*/
                        /*[29, 31]*/
                        rsd[1][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[1][j_imopVar89][k_imopVar90][m_imopVar91] - dssp * (+5.0 * u[1][j_imopVar89][k_imopVar90][m_imopVar91] - 4.0 * u[2][j_imopVar89][k_imopVar90][m_imopVar91] + u[3][j_imopVar89][k_imopVar90][m_imopVar91]);
                        /*[29, 31]*/
                        rsd[2][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[2][j_imopVar89][k_imopVar90][m_imopVar91] - dssp * (-4.0 * u[1][j_imopVar89][k_imopVar90][m_imopVar91] + 6.0 * u[2][j_imopVar89][k_imopVar90][m_imopVar91] - 4.0 * u[3][j_imopVar89][k_imopVar90][m_imopVar91] + u[4][j_imopVar89][k_imopVar90][m_imopVar91]);
                    }
                    /*[29, 31]*/
                    ist1 = 3;
                    /*[29, 31]*/
                    iend1 = nx - 4;
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    for (i_imopVar88 = ist1; i_imopVar88 <= iend1; i_imopVar88++) {
                    /*[29, 31]*/
                        /*[29, 31]*/
                        /*[29, 31]*/
                        /*[29, 31]*/
                        /*[29, 31]*/
                        for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                        /*[29, 31]*/
                            /*[29, 31]*/
                            rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] - dssp * (u[i_imopVar88 - 2][j_imopVar89][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88 - 1][j_imopVar89][k_imopVar90][m_imopVar91] + 6.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88 + 1][j_imopVar89][k_imopVar90][m_imopVar91] + u[i_imopVar88 + 2][j_imopVar89][k_imopVar90][m_imopVar91]);
                        }
                    }
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    /*[29, 31]*/
                    for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                    /*[29, 31]*/
                        /*[29, 31]*/
                        rsd[nx - 3][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[nx - 3][j_imopVar89][k_imopVar90][m_imopVar91] - dssp * (u[nx - 5][j_imopVar89][k_imopVar90][m_imopVar91] - 4.0 * u[nx - 4][j_imopVar89][k_imopVar90][m_imopVar91] + 6.0 * u[nx - 3][j_imopVar89][k_imopVar90][m_imopVar91] - 4.0 * u[nx - 2][j_imopVar89][k_imopVar90][m_imopVar91]);
                        /*[29, 31]*/
                        rsd[nx - 2][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[nx - 2][j_imopVar89][k_imopVar90][m_imopVar91] - dssp * (u[nx - 4][j_imopVar89][k_imopVar90][m_imopVar91] - 4.0 * u[nx - 3][j_imopVar89][k_imopVar90][m_imopVar91] + 5.0 * u[nx - 2][j_imopVar89][k_imopVar90][m_imopVar91]);
                    }
                }
            }
            /*[29, 31]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[29, 31]*/
#pragma omp barrier
            /*[30, 32]*/
            L1 = 0;
            /*[30, 32]*/
            L2 = ny - 1;
            /*[30, 32]*/
#pragma omp for nowait
            /*[30, 32]*/
            /*[30, 32]*/
            /*[30, 32]*/
            for (i_imopVar88 = ist; i_imopVar88 <= iend; i_imopVar88++) {
            /*[30, 32]*/
                /*[30, 32]*/
                /*[30, 32]*/
                /*[30, 32]*/
                /*[30, 32]*/
                for (j_imopVar89 = L1; j_imopVar89 <= L2; j_imopVar89++) {
                /*[30, 32]*/
                    /*[30, 32]*/
                    /*[30, 32]*/
                    /*[30, 32]*/
                    /*[30, 32]*/
                    for (k_imopVar90 = 1; k_imopVar90 <= nz - 2; k_imopVar90++) {
                    /*[30, 32]*/
                        /*[30, 32]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][0] = u[i_imopVar88][j_imopVar89][k_imopVar90][2];
                        /*[30, 32]*/
                        u31 = u[i_imopVar88][j_imopVar89][k_imopVar90][2] / u[i_imopVar88][j_imopVar89][k_imopVar90][0];
                        /*[30, 32]*/
                        q = 0.50 * (u[i_imopVar88][j_imopVar89][k_imopVar90][1] * u[i_imopVar88][j_imopVar89][k_imopVar90][1] + u[i_imopVar88][j_imopVar89][k_imopVar90][2] * u[i_imopVar88][j_imopVar89][k_imopVar90][2] + u[i_imopVar88][j_imopVar89][k_imopVar90][3] * u[i_imopVar88][j_imopVar89][k_imopVar90][3]) / u[i_imopVar88][j_imopVar89][k_imopVar90][0];
                        /*[30, 32]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][1] = u[i_imopVar88][j_imopVar89][k_imopVar90][1] * u31;
                        /*[30, 32]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][2] = u[i_imopVar88][j_imopVar89][k_imopVar90][2] * u31 + 0.40e+00 * (u[i_imopVar88][j_imopVar89][k_imopVar90][4] - q);
                        /*[30, 32]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][3] = u[i_imopVar88][j_imopVar89][k_imopVar90][3] * u31;
                        /*[30, 32]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][4] = (1.40e+00 * u[i_imopVar88][j_imopVar89][k_imopVar90][4] - 0.40e+00 * q) * u31;
                    }
                }
            }
            /*[30, 32]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[30, 32]*/
#pragma omp barrier
            /*[31, 33]*/
#pragma omp for nowait
            /*[31, 33]*/
            /*[31, 33]*/
            /*[31, 33]*/
            for (i_imopVar88 = ist; i_imopVar88 <= iend; i_imopVar88++) {
            /*[31, 33]*/
                /*[31, 33]*/
                /*[31, 33]*/
                /*[31, 33]*/
                /*[31, 33]*/
                for (k_imopVar90 = 1; k_imopVar90 <= nz - 2; k_imopVar90++) {
                /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    for (j_imopVar89 = jst; j_imopVar89 <= jend; j_imopVar89++) {
                    /*[31, 33]*/
                        /*[31, 33]*/
                        /*[31, 33]*/
                        /*[31, 33]*/
                        /*[31, 33]*/
                        for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                        /*[31, 33]*/
                            /*[31, 33]*/
                            rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] - ty2 * (flux[i_imopVar88][j_imopVar89 + 1][k_imopVar90][m_imopVar91] - flux[i_imopVar88][j_imopVar89 - 1][k_imopVar90][m_imopVar91]);
                        }
                    }
                    /*[31, 33]*/
                    L2 = ny - 1;
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    for (j_imopVar89 = jst; j_imopVar89 <= L2; j_imopVar89++) {
                    /*[31, 33]*/
                        /*[31, 33]*/
                        tmp_imopVar92 = 1.0 / u[i_imopVar88][j_imopVar89][k_imopVar90][0];
                        /*[31, 33]*/
                        u21j = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][1];
                        /*[31, 33]*/
                        u31j = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][2];
                        /*[31, 33]*/
                        u41j = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][3];
                        /*[31, 33]*/
                        u51j = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][4];
                        /*[31, 33]*/
                        tmp_imopVar92 = 1.0 / u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][0];
                        /*[31, 33]*/
                        u21jm1 = tmp_imopVar92 * u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][1];
                        /*[31, 33]*/
                        u31jm1 = tmp_imopVar92 * u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][2];
                        /*[31, 33]*/
                        u41jm1 = tmp_imopVar92 * u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][3];
                        /*[31, 33]*/
                        u51jm1 = tmp_imopVar92 * u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][4];
                        /*[31, 33]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][1] = ty3 * (u21j - u21jm1);
                        /*[31, 33]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][2] = (4.0 / 3.0) * ty3 * (u31j - u31jm1);
                        /*[31, 33]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][3] = ty3 * (u41j - u41jm1);
                        /*[31, 33]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * ty3 * (((u21j * u21j) + (u31j * u31j) + (u41j * u41j)) - ((u21jm1 * u21jm1) + (u31jm1 * u31jm1) + (u41jm1 * u41jm1))) + (1.0 / 6.0) * ty3 * ((u31j * u31j) - (u31jm1 * u31jm1)) + 1.40e+00 * 1.40e+00 * ty3 * (u51j - u51jm1);
                    }
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    for (j_imopVar89 = jst; j_imopVar89 <= jend; j_imopVar89++) {
                    /*[31, 33]*/
                        /*[31, 33]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][0] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][0] + dy1 * ty1 * (u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][0] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][0] + u[i_imopVar88][j_imopVar89 + 1][k_imopVar90][0]);
                        /*[31, 33]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][1] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][1] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88][j_imopVar89 + 1][k_imopVar90][1] - flux[i_imopVar88][j_imopVar89][k_imopVar90][1]) + dy2 * ty1 * (u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][1] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][1] + u[i_imopVar88][j_imopVar89 + 1][k_imopVar90][1]);
                        /*[31, 33]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][2] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][2] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88][j_imopVar89 + 1][k_imopVar90][2] - flux[i_imopVar88][j_imopVar89][k_imopVar90][2]) + dy3 * ty1 * (u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][2] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][2] + u[i_imopVar88][j_imopVar89 + 1][k_imopVar90][2]);
                        /*[31, 33]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][3] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][3] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88][j_imopVar89 + 1][k_imopVar90][3] - flux[i_imopVar88][j_imopVar89][k_imopVar90][3]) + dy4 * ty1 * (u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][3] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][3] + u[i_imopVar88][j_imopVar89 + 1][k_imopVar90][3]);
                        /*[31, 33]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][4] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][4] + ty3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88][j_imopVar89 + 1][k_imopVar90][4] - flux[i_imopVar88][j_imopVar89][k_imopVar90][4]) + dy5 * ty1 * (u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][4] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][4] + u[i_imopVar88][j_imopVar89 + 1][k_imopVar90][4]);
                    }
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                    /*[31, 33]*/
                        /*[31, 33]*/
                        rsd[i_imopVar88][1][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][1][k_imopVar90][m_imopVar91] - dssp * (+5.0 * u[i_imopVar88][1][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88][2][k_imopVar90][m_imopVar91] + u[i_imopVar88][3][k_imopVar90][m_imopVar91]);
                        /*[31, 33]*/
                        rsd[i_imopVar88][2][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][2][k_imopVar90][m_imopVar91] - dssp * (-4.0 * u[i_imopVar88][1][k_imopVar90][m_imopVar91] + 6.0 * u[i_imopVar88][2][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88][3][k_imopVar90][m_imopVar91] + u[i_imopVar88][4][k_imopVar90][m_imopVar91]);
                    }
                    /*[31, 33]*/
                    jst1 = 3;
                    /*[31, 33]*/
                    jend1 = ny - 4;
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    for (j_imopVar89 = jst1; j_imopVar89 <= jend1; j_imopVar89++) {
                    /*[31, 33]*/
                        /*[31, 33]*/
                        /*[31, 33]*/
                        /*[31, 33]*/
                        /*[31, 33]*/
                        for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                        /*[31, 33]*/
                            /*[31, 33]*/
                            rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] - dssp * (u[i_imopVar88][j_imopVar89 - 2][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88][j_imopVar89 - 1][k_imopVar90][m_imopVar91] + 6.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88][j_imopVar89 + 1][k_imopVar90][m_imopVar91] + u[i_imopVar88][j_imopVar89 + 2][k_imopVar90][m_imopVar91]);
                        }
                    }
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    /*[31, 33]*/
                    for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                    /*[31, 33]*/
                        /*[31, 33]*/
                        rsd[i_imopVar88][ny - 3][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][ny - 3][k_imopVar90][m_imopVar91] - dssp * (u[i_imopVar88][ny - 5][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88][ny - 4][k_imopVar90][m_imopVar91] + 6.0 * u[i_imopVar88][ny - 3][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88][ny - 2][k_imopVar90][m_imopVar91]);
                        /*[31, 33]*/
                        rsd[i_imopVar88][ny - 2][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][ny - 2][k_imopVar90][m_imopVar91] - dssp * (u[i_imopVar88][ny - 4][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88][ny - 3][k_imopVar90][m_imopVar91] + 5.0 * u[i_imopVar88][ny - 2][k_imopVar90][m_imopVar91]);
                    }
                }
            }
            /*[31, 33]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[31, 33]*/
#pragma omp barrier
            /*[32, 34]*/
#pragma omp for nowait
            /*[32, 34]*/
            /*[32, 34]*/
            /*[32, 34]*/
            for (i_imopVar88 = ist; i_imopVar88 <= iend; i_imopVar88++) {
            /*[32, 34]*/
                /*[32, 34]*/
                /*[32, 34]*/
                /*[32, 34]*/
                /*[32, 34]*/
                for (j_imopVar89 = jst; j_imopVar89 <= jend; j_imopVar89++) {
                /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    for (k_imopVar90 = 0; k_imopVar90 <= nz - 1; k_imopVar90++) {
                    /*[32, 34]*/
                        /*[32, 34]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][0] = u[i_imopVar88][j_imopVar89][k_imopVar90][3];
                        /*[32, 34]*/
                        u41 = u[i_imopVar88][j_imopVar89][k_imopVar90][3] / u[i_imopVar88][j_imopVar89][k_imopVar90][0];
                        /*[32, 34]*/
                        q = 0.50 * (u[i_imopVar88][j_imopVar89][k_imopVar90][1] * u[i_imopVar88][j_imopVar89][k_imopVar90][1] + u[i_imopVar88][j_imopVar89][k_imopVar90][2] * u[i_imopVar88][j_imopVar89][k_imopVar90][2] + u[i_imopVar88][j_imopVar89][k_imopVar90][3] * u[i_imopVar88][j_imopVar89][k_imopVar90][3]) / u[i_imopVar88][j_imopVar89][k_imopVar90][0];
                        /*[32, 34]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][1] = u[i_imopVar88][j_imopVar89][k_imopVar90][1] * u41;
                        /*[32, 34]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][2] = u[i_imopVar88][j_imopVar89][k_imopVar90][2] * u41;
                        /*[32, 34]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][3] = u[i_imopVar88][j_imopVar89][k_imopVar90][3] * u41 + 0.40e+00 * (u[i_imopVar88][j_imopVar89][k_imopVar90][4] - q);
                        /*[32, 34]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][4] = (1.40e+00 * u[i_imopVar88][j_imopVar89][k_imopVar90][4] - 0.40e+00 * q) * u41;
                    }
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    for (k_imopVar90 = 1; k_imopVar90 <= nz - 2; k_imopVar90++) {
                    /*[32, 34]*/
                        /*[32, 34]*/
                        /*[32, 34]*/
                        /*[32, 34]*/
                        /*[32, 34]*/
                        for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                        /*[32, 34]*/
                            /*[32, 34]*/
                            rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] - tz2 * (flux[i_imopVar88][j_imopVar89][k_imopVar90 + 1][m_imopVar91] - flux[i_imopVar88][j_imopVar89][k_imopVar90 - 1][m_imopVar91]);
                        }
                    }
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    for (k_imopVar90 = 1; k_imopVar90 <= nz - 1; k_imopVar90++) {
                    /*[32, 34]*/
                        /*[32, 34]*/
                        tmp_imopVar92 = 1.0 / u[i_imopVar88][j_imopVar89][k_imopVar90][0];
                        /*[32, 34]*/
                        u21k = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][1];
                        /*[32, 34]*/
                        u31k = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][2];
                        /*[32, 34]*/
                        u41k = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][3];
                        /*[32, 34]*/
                        u51k = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90][4];
                        /*[32, 34]*/
                        tmp_imopVar92 = 1.0 / u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][0];
                        /*[32, 34]*/
                        u21km1 = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][1];
                        /*[32, 34]*/
                        u31km1 = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][2];
                        /*[32, 34]*/
                        u41km1 = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][3];
                        /*[32, 34]*/
                        u51km1 = tmp_imopVar92 * u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][4];
                        /*[32, 34]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][1] = tz3 * (u21k - u21km1);
                        /*[32, 34]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][2] = tz3 * (u31k - u31km1);
                        /*[32, 34]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][3] = (4.0 / 3.0) * tz3 * (u41k - u41km1);
                        /*[32, 34]*/
                        flux[i_imopVar88][j_imopVar89][k_imopVar90][4] = 0.50 * (1.0 - 1.40e+00 * 1.40e+00) * tz3 * (((u21k * u21k) + (u31k * u31k) + (u41k * u41k)) - ((u21km1 * u21km1) + (u31km1 * u31km1) + (u41km1 * u41km1))) + (1.0 / 6.0) * tz3 * ((u41k * u41k) - (u41km1 * u41km1)) + 1.40e+00 * 1.40e+00 * tz3 * (u51k - u51km1);
                    }
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    for (k_imopVar90 = 1; k_imopVar90 <= nz - 2; k_imopVar90++) {
                    /*[32, 34]*/
                        /*[32, 34]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][0] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][0] + dz1 * tz1 * (u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][0] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][0] + u[i_imopVar88][j_imopVar89][k_imopVar90 + 1][0]);
                        /*[32, 34]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][1] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][1] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88][j_imopVar89][k_imopVar90 + 1][1] - flux[i_imopVar88][j_imopVar89][k_imopVar90][1]) + dz2 * tz1 * (u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][1] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][1] + u[i_imopVar88][j_imopVar89][k_imopVar90 + 1][1]);
                        /*[32, 34]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][2] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][2] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88][j_imopVar89][k_imopVar90 + 1][2] - flux[i_imopVar88][j_imopVar89][k_imopVar90][2]) + dz3 * tz1 * (u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][2] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][2] + u[i_imopVar88][j_imopVar89][k_imopVar90 + 1][2]);
                        /*[32, 34]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][3] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][3] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88][j_imopVar89][k_imopVar90 + 1][3] - flux[i_imopVar88][j_imopVar89][k_imopVar90][3]) + dz4 * tz1 * (u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][3] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][3] + u[i_imopVar88][j_imopVar89][k_imopVar90 + 1][3]);
                        /*[32, 34]*/
                        rsd[i_imopVar88][j_imopVar89][k_imopVar90][4] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][4] + tz3 * 1.00e-01 * 1.00e+00 * (flux[i_imopVar88][j_imopVar89][k_imopVar90 + 1][4] - flux[i_imopVar88][j_imopVar89][k_imopVar90][4]) + dz5 * tz1 * (u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][4] - 2.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][4] + u[i_imopVar88][j_imopVar89][k_imopVar90 + 1][4]);
                    }
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                    /*[32, 34]*/
                        /*[32, 34]*/
                        rsd[i_imopVar88][j_imopVar89][1][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][1][m_imopVar91] - dssp * (+5.0 * u[i_imopVar88][j_imopVar89][1][m_imopVar91] - 4.0 * u[i_imopVar88][j_imopVar89][2][m_imopVar91] + u[i_imopVar88][j_imopVar89][3][m_imopVar91]);
                        /*[32, 34]*/
                        rsd[i_imopVar88][j_imopVar89][2][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][2][m_imopVar91] - dssp * (-4.0 * u[i_imopVar88][j_imopVar89][1][m_imopVar91] + 6.0 * u[i_imopVar88][j_imopVar89][2][m_imopVar91] - 4.0 * u[i_imopVar88][j_imopVar89][3][m_imopVar91] + u[i_imopVar88][j_imopVar89][4][m_imopVar91]);
                    }
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    for (k_imopVar90 = 3; k_imopVar90 <= nz - 4; k_imopVar90++) {
                    /*[32, 34]*/
                        /*[32, 34]*/
                        /*[32, 34]*/
                        /*[32, 34]*/
                        /*[32, 34]*/
                        for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                        /*[32, 34]*/
                            /*[32, 34]*/
                            rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] - dssp * (u[i_imopVar88][j_imopVar89][k_imopVar90 - 2][m_imopVar91] - 4.0 * u[i_imopVar88][j_imopVar89][k_imopVar90 - 1][m_imopVar91] + 6.0 * u[i_imopVar88][j_imopVar89][k_imopVar90][m_imopVar91] - 4.0 * u[i_imopVar88][j_imopVar89][k_imopVar90 + 1][m_imopVar91] + u[i_imopVar88][j_imopVar89][k_imopVar90 + 2][m_imopVar91]);
                        }
                    }
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    /*[32, 34]*/
                    for (m_imopVar91 = 0; m_imopVar91 < 5; m_imopVar91++) {
                    /*[32, 34]*/
                        /*[32, 34]*/
                        rsd[i_imopVar88][j_imopVar89][nz - 3][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][nz - 3][m_imopVar91] - dssp * (u[i_imopVar88][j_imopVar89][nz - 5][m_imopVar91] - 4.0 * u[i_imopVar88][j_imopVar89][nz - 4][m_imopVar91] + 6.0 * u[i_imopVar88][j_imopVar89][nz - 3][m_imopVar91] - 4.0 * u[i_imopVar88][j_imopVar89][nz - 2][m_imopVar91]);
                        /*[32, 34]*/
                        rsd[i_imopVar88][j_imopVar89][nz - 2][m_imopVar91] = rsd[i_imopVar88][j_imopVar89][nz - 2][m_imopVar91] - dssp * (u[i_imopVar88][j_imopVar89][nz - 4][m_imopVar91] - 4.0 * u[i_imopVar88][j_imopVar89][nz - 3][m_imopVar91] + 5.0 * u[i_imopVar88][j_imopVar89][nz - 2][m_imopVar91]);
                    }
                }
            }
            /*[32, 34]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[32, 34]*/
#pragma omp barrier
            /*[33, 35]*/
#pragma omp master
            {
            /*[33, 35]*/
                /*[33, 35]*/
                _imopVarPre372 = (istep % inorm == 0);
                /*[33, 35]*/
                /*[33, 35]*/
                if (!_imopVarPre372) {
                /*[33, 35]*/
                    /*[33, 35]*/
                    _imopVarPre372 = (istep == itmax);
                }
            }
            /*[33, 35]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[33, 35]*/
#pragma omp barrier
            /*[34, 36]*/
            /*[34, 36]*/
            if (_imopVarPre372) {
            /*[34, 36]*/
                /*[34, 36]*/
                double ( *v )[12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
                /*[34, 36]*/
                double *sum;
                /*[34, 36]*/
                v = rsd;
                /*[34, 36]*/
                sum = rsdnm;
                /*[34, 36]*/
                int i_imopVar93;
                /*[34, 36]*/
                int j_imopVar94;
                /*[34, 36]*/
                int k_imopVar95;
                /*[34, 36]*/
                int m_imopVar96;
                /*[34, 36]*/
                double sum0 = 0.0;
                /*[34, 36]*/
                double sum1 = 0.0;
                /*[34, 36]*/
                double sum2 = 0.0;
                /*[34, 36]*/
                double sum3 = 0.0;
                /*[34, 36]*/
                double sum4 = 0.0;
                /*[34, 36]*/
#pragma omp single nowait
                {
                /*[34, 36]*/
                    /*[34, 36]*/
                    /*[34, 36]*/
                    /*[34, 36]*/
                    /*[34, 36]*/
                    for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
                    /*[34, 36]*/
                        /*[34, 36]*/
                        sum[m_imopVar96] = 0.0;
                    }
                }
                /*[34, 36]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[34, 36]*/
#pragma omp barrier
                /*[35]*/
#pragma omp for nowait
                /*[35]*/
                /*[35]*/
                /*[35]*/
                for (i_imopVar93 = ist; i_imopVar93 <= iend; i_imopVar93++) {
                /*[35]*/
                    /*[35]*/
                    /*[35]*/
                    /*[35]*/
                    /*[35]*/
                    for (j_imopVar94 = jst; j_imopVar94 <= jend; j_imopVar94++) {
                    /*[35]*/
                        /*[35]*/
                        /*[35]*/
                        /*[35]*/
                        /*[35]*/
                        for (k_imopVar95 = 1; k_imopVar95 <= nz0 - 2; k_imopVar95++) {
                        /*[35]*/
                            /*[35]*/
                            sum0 = sum0 + v[i_imopVar93][j_imopVar94][k_imopVar95][0] * v[i_imopVar93][j_imopVar94][k_imopVar95][0];
                            /*[35]*/
                            sum1 = sum1 + v[i_imopVar93][j_imopVar94][k_imopVar95][1] * v[i_imopVar93][j_imopVar94][k_imopVar95][1];
                            /*[35]*/
                            sum2 = sum2 + v[i_imopVar93][j_imopVar94][k_imopVar95][2] * v[i_imopVar93][j_imopVar94][k_imopVar95][2];
                            /*[35]*/
                            sum3 = sum3 + v[i_imopVar93][j_imopVar94][k_imopVar95][3] * v[i_imopVar93][j_imopVar94][k_imopVar95][3];
                            /*[35]*/
                            sum4 = sum4 + v[i_imopVar93][j_imopVar94][k_imopVar95][4] * v[i_imopVar93][j_imopVar94][k_imopVar95][4];
                        }
                    }
                }
                /*[35]*/
                // #pragma omp dummyFlush CRITICAL_START
                /*[35]*/
#pragma omp critical
                {
                /*[35]*/
                    /*[35]*/
                    sum[0] += sum0;
                    /*[35]*/
                    sum[1] += sum1;
                    /*[35]*/
                    sum[2] += sum2;
                    /*[35]*/
                    sum[3] += sum3;
                    /*[35]*/
                    sum[4] += sum4;
                }
                /*[35]*/
                // #pragma omp dummyFlush CRITICAL_END
                /*[35]*/
                // #pragma omp dummyFlush BARRIER_START
                /*[35]*/
#pragma omp barrier
                /*[36]*/
#pragma omp single nowait
                {
                /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    /*[36]*/
                    for (m_imopVar96 = 0; m_imopVar96 < 5; m_imopVar96++) {
                    /*[36]*/
                        /*[36]*/
                        double _imopVarPre154;
                        /*[36]*/
                        double _imopVarPre155;
                        /*[36]*/
                        _imopVarPre154 = sum[m_imopVar96] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
                        /*[36]*/
                        _imopVarPre155 = sqrt(_imopVarPre154);
                        /*[36]*/
                        /*[36]*/
                        sum[m_imopVar96] = _imopVarPre155;
                    }
                }
            }
            /*[34, 36]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[34, 36]*/
#pragma omp barrier
            /*[35]*/
#pragma omp master
            {
            /*[35]*/
                /*[35]*/
                _imopVarPre377 = (rsdnm[0] < tolrsd[0]);
                /*[35]*/
                /*[35]*/
                if (_imopVarPre377) {
                /*[35]*/
                    /*[35]*/
                    _imopVarPre378 = (rsdnm[1] < tolrsd[1]);
                    /*[35]*/
                    /*[35]*/
                    if (_imopVarPre378) {
                    /*[35]*/
                        /*[35]*/
                        _imopVarPre379 = (rsdnm[2] < tolrsd[2]);
                        /*[35]*/
                        /*[35]*/
                        if (_imopVarPre379) {
                        /*[35]*/
                            /*[35]*/
                            _imopVarPre380 = (rsdnm[3] < tolrsd[3]);
                            /*[35]*/
                            /*[35]*/
                            if (_imopVarPre380) {
                            /*[35]*/
                                /*[35]*/
                                _imopVarPre380 = (rsdnm[4] < tolrsd[4]);
                            }
                            /*[35]*/
                            _imopVarPre379 = _imopVarPre380;
                        }
                        /*[35]*/
                        _imopVarPre378 = _imopVarPre379;
                    }
                    /*[35]*/
                    _imopVarPre377 = _imopVarPre378;
                }
                /*[35]*/
                /*[35]*/
                if (_imopVarPre377) {
                /*[35]*/
                    /*[35]*/
                    exit(1);
                    /*[35]*/
                }
            }
        }
    }
    /*[]*/
    timer_stop(1);
    /*[]*/
    /*[]*/
    maxtime = timer_read(1);
    /*[]*/
    /*[]*/
    error();
    /*[]*/
    /*[]*/
    pintgr();
    /*[]*/
    /*[]*/
    int *_imopVarPre144;
    /*[]*/
    char *_imopVarPre145;
    /*[]*/
    _imopVarPre144 = &verified;
    /*[]*/
    _imopVarPre145 = &class;
    /*[]*/
    verify(rsdnm, errnm, frc, _imopVarPre145, _imopVarPre144);
    /*[]*/
    /*[]*/
    mflops = (double) itmax * (1984.77 * (double) nx0 * (double) ny0 * (double) nz0 - 10923.3 * (((double) (nx0 + ny0 + nz0) / 3.0) * ((double) (nx0 + ny0 + nz0) / 3.0)) + 27770.9 * (double) (nx0 + ny0 + nz0) / 3.0 - 144010.0) / (maxtime * 1000000.0);
    /*[]*/
    c_print_results("LU", class, nx0, ny0, nz0, itmax, nthreads, maxtime, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*[]*/
}
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
/*[24, 37]*/
static void blts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double ldz[12][12][5][5] , double ldy[12][12][5][5] , double ldx[12][12][5][5] , double d[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
/*[24, 37]*/
    /*[24, 37]*/
    int i;
    /*[24, 37]*/
    int j;
    /*[24, 37]*/
    int m;
    /*[24, 37]*/
    double tmp;
    /*[24, 37]*/
    double tmp1;
    /*[24, 37]*/
    double tmat[5][5];
    /*[24, 37]*/
#pragma omp for nowait schedule(static)
    /*[24, 37]*/
    /*[24, 37]*/
    /*[24, 37]*/
    for (i = ist; i <= iend; i++) {
    /*[24, 37]*/
        /*[24, 37]*/
        /*[24, 37]*/
        /*[24, 37]*/
        /*[24, 37]*/
        for (j = jst; j <= jend; j++) {
        /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            for (m = 0; m < 5; m++) {
            /*[24, 37]*/
                /*[24, 37]*/
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldz[i][j][m][0] * v[i][j][k - 1][0] + ldz[i][j][m][1] * v[i][j][k - 1][1] + ldz[i][j][m][2] * v[i][j][k - 1][2] + ldz[i][j][m][3] * v[i][j][k - 1][3] + ldz[i][j][m][4] * v[i][j][k - 1][4]);
            }
        }
    }
    /*[24, 37]*/
#pragma omp for nowait schedule(static)
    /*[24, 37]*/
    /*[24, 37]*/
    /*[24, 37]*/
    for (i = ist; i <= iend; i++) {
    /*[24, 37]*/
        /*[24, 37]*/
        /*[24, 37]*/
        if (i != ist) {
        /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            while (flag[i - 1] == 0) {
            /*[24, 37]*/
                /*[24, 37]*/
                // #pragma omp dummyFlush FLUSH_START
                /*[24, 37]*/
#pragma omp flush(flag)
                /*[24, 37]*/
                ;
            }
        }
        /*[24, 37]*/
        /*[24, 37]*/
        if (i != iend) {
        /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            while (flag[i] == 1) {
            /*[24, 37]*/
                /*[24, 37]*/
                // #pragma omp dummyFlush FLUSH_START
                /*[24, 37]*/
#pragma omp flush(flag)
                /*[24, 37]*/
                ;
            }
        }
        /*[24, 37]*/
        /*[24, 37]*/
        /*[24, 37]*/
        /*[24, 37]*/
        for (j = jst; j <= jend; j++) {
        /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            for (m = 0; m < 5; m++) {
            /*[24, 37]*/
                /*[24, 37]*/
                v[i][j][k][m] = v[i][j][k][m] - omega * (ldy[i][j][m][0] * v[i][j - 1][k][0] + ldx[i][j][m][0] * v[i - 1][j][k][0] + ldy[i][j][m][1] * v[i][j - 1][k][1] + ldx[i][j][m][1] * v[i - 1][j][k][1] + ldy[i][j][m][2] * v[i][j - 1][k][2] + ldx[i][j][m][2] * v[i - 1][j][k][2] + ldy[i][j][m][3] * v[i][j - 1][k][3] + ldx[i][j][m][3] * v[i - 1][j][k][3] + ldy[i][j][m][4] * v[i][j - 1][k][4] + ldx[i][j][m][4] * v[i - 1][j][k][4]);
            }
            /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            /*[24, 37]*/
            for (m = 0; m < 5; m++) {
            /*[24, 37]*/
                /*[24, 37]*/
                tmat[m][0] = d[i][j][m][0];
                /*[24, 37]*/
                tmat[m][1] = d[i][j][m][1];
                /*[24, 37]*/
                tmat[m][2] = d[i][j][m][2];
                /*[24, 37]*/
                tmat[m][3] = d[i][j][m][3];
                /*[24, 37]*/
                tmat[m][4] = d[i][j][m][4];
            }
            /*[24, 37]*/
            tmp1 = 1.0 / tmat[0][0];
            /*[24, 37]*/
            tmp = tmp1 * tmat[1][0];
            /*[24, 37]*/
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            /*[24, 37]*/
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            /*[24, 37]*/
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            /*[24, 37]*/
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            /*[24, 37]*/
            v[i][j][k][1] = v[i][j][k][1] - v[i][j][k][0] * tmp;
            /*[24, 37]*/
            tmp = tmp1 * tmat[2][0];
            /*[24, 37]*/
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            /*[24, 37]*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            /*[24, 37]*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            /*[24, 37]*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            /*[24, 37]*/
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][0] * tmp;
            /*[24, 37]*/
            tmp = tmp1 * tmat[3][0];
            /*[24, 37]*/
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            /*[24, 37]*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            /*[24, 37]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            /*[24, 37]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            /*[24, 37]*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][0] * tmp;
            /*[24, 37]*/
            tmp = tmp1 * tmat[4][0];
            /*[24, 37]*/
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            /*[24, 37]*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            /*[24, 37]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            /*[24, 37]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            /*[24, 37]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][0] * tmp;
            /*[24, 37]*/
            tmp1 = 1.0 / tmat[1][1];
            /*[24, 37]*/
            tmp = tmp1 * tmat[2][1];
            /*[24, 37]*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            /*[24, 37]*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            /*[24, 37]*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            /*[24, 37]*/
            v[i][j][k][2] = v[i][j][k][2] - v[i][j][k][1] * tmp;
            /*[24, 37]*/
            tmp = tmp1 * tmat[3][1];
            /*[24, 37]*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            /*[24, 37]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            /*[24, 37]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            /*[24, 37]*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][1] * tmp;
            /*[24, 37]*/
            tmp = tmp1 * tmat[4][1];
            /*[24, 37]*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            /*[24, 37]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            /*[24, 37]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            /*[24, 37]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][1] * tmp;
            /*[24, 37]*/
            tmp1 = 1.0 / tmat[2][2];
            /*[24, 37]*/
            tmp = tmp1 * tmat[3][2];
            /*[24, 37]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            /*[24, 37]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            /*[24, 37]*/
            v[i][j][k][3] = v[i][j][k][3] - v[i][j][k][2] * tmp;
            /*[24, 37]*/
            tmp = tmp1 * tmat[4][2];
            /*[24, 37]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            /*[24, 37]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            /*[24, 37]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][2] * tmp;
            /*[24, 37]*/
            tmp1 = 1.0 / tmat[3][3];
            /*[24, 37]*/
            tmp = tmp1 * tmat[4][3];
            /*[24, 37]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            /*[24, 37]*/
            v[i][j][k][4] = v[i][j][k][4] - v[i][j][k][3] * tmp;
            /*[24, 37]*/
            v[i][j][k][4] = v[i][j][k][4] / tmat[4][4];
            /*[24, 37]*/
            v[i][j][k][3] = v[i][j][k][3] - tmat[3][4] * v[i][j][k][4];
            /*[24, 37]*/
            v[i][j][k][3] = v[i][j][k][3] / tmat[3][3];
            /*[24, 37]*/
            v[i][j][k][2] = v[i][j][k][2] - tmat[2][3] * v[i][j][k][3] - tmat[2][4] * v[i][j][k][4];
            /*[24, 37]*/
            v[i][j][k][2] = v[i][j][k][2] / tmat[2][2];
            /*[24, 37]*/
            v[i][j][k][1] = v[i][j][k][1] - tmat[1][2] * v[i][j][k][2] - tmat[1][3] * v[i][j][k][3] - tmat[1][4] * v[i][j][k][4];
            /*[24, 37]*/
            v[i][j][k][1] = v[i][j][k][1] / tmat[1][1];
            /*[24, 37]*/
            v[i][j][k][0] = v[i][j][k][0] - tmat[0][1] * v[i][j][k][1] - tmat[0][2] * v[i][j][k][2] - tmat[0][3] * v[i][j][k][3] - tmat[0][4] * v[i][j][k][4];
            /*[24, 37]*/
            v[i][j][k][0] = v[i][j][k][0] / tmat[0][0];
        }
        /*[24, 37]*/
        /*[24, 37]*/
        if (i != ist) {
        /*[24, 37]*/
            /*[24, 37]*/
            flag[i - 1] = 0;
        }
        /*[24, 37]*/
        /*[24, 37]*/
        if (i != iend) {
        /*[24, 37]*/
            /*[24, 37]*/
            flag[i] = 1;
        }
        /*[24, 37]*/
        // #pragma omp dummyFlush FLUSH_START
        /*[24, 37]*/
#pragma omp flush(flag)
    }
}
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
/*[25, 38]*/
static void buts(int nx, int ny , int nz , int k , double omega , double v[12][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] , double tv[12][12][5] , double d[12][12][5][5] , double udx[12][12][5][5] , double udy[12][12][5][5] , double udz[12][12][5][5] , int ist , int iend , int jst , int jend , int nx0 , int ny0) {
/*[25, 38]*/
    /*[25, 38]*/
    int i;
    /*[25, 38]*/
    int j;
    /*[25, 38]*/
    int m;
    /*[25, 38]*/
    double tmp;
    /*[25, 38]*/
    double tmp1;
    /*[25, 38]*/
    double tmat[5][5];
    /*[25, 38]*/
#pragma omp for nowait schedule(static)
    /*[25, 38]*/
    /*[25, 38]*/
    /*[25, 38]*/
    for (i = iend; i >= ist; i--) {
    /*[25, 38]*/
        /*[25, 38]*/
        /*[25, 38]*/
        /*[25, 38]*/
        /*[25, 38]*/
        for (j = jend; j >= jst; j--) {
        /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            for (m = 0; m < 5; m++) {
            /*[25, 38]*/
                /*[25, 38]*/
                tv[i][j][m] = omega * (udz[i][j][m][0] * v[i][j][k + 1][0] + udz[i][j][m][1] * v[i][j][k + 1][1] + udz[i][j][m][2] * v[i][j][k + 1][2] + udz[i][j][m][3] * v[i][j][k + 1][3] + udz[i][j][m][4] * v[i][j][k + 1][4]);
            }
        }
    }
    /*[25, 38]*/
#pragma omp for nowait schedule(static)
    /*[25, 38]*/
    /*[25, 38]*/
    /*[25, 38]*/
    for (i = iend; i >= ist; i--) {
    /*[25, 38]*/
        /*[25, 38]*/
        /*[25, 38]*/
        if (i != iend) {
        /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            while (flag[i + 1] == 0) {
            /*[25, 38]*/
                /*[25, 38]*/
                // #pragma omp dummyFlush FLUSH_START
                /*[25, 38]*/
#pragma omp flush(flag)
                /*[25, 38]*/
                ;
            }
        }
        /*[25, 38]*/
        /*[25, 38]*/
        if (i != ist) {
        /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            while (flag[i] == 1) {
            /*[25, 38]*/
                /*[25, 38]*/
                // #pragma omp dummyFlush FLUSH_START
                /*[25, 38]*/
#pragma omp flush(flag)
                /*[25, 38]*/
                ;
            }
        }
        /*[25, 38]*/
        /*[25, 38]*/
        /*[25, 38]*/
        /*[25, 38]*/
        for (j = jend; j >= jst; j--) {
        /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            for (m = 0; m < 5; m++) {
            /*[25, 38]*/
                /*[25, 38]*/
                tv[i][j][m] = tv[i][j][m] + omega * (udy[i][j][m][0] * v[i][j + 1][k][0] + udx[i][j][m][0] * v[i + 1][j][k][0] + udy[i][j][m][1] * v[i][j + 1][k][1] + udx[i][j][m][1] * v[i + 1][j][k][1] + udy[i][j][m][2] * v[i][j + 1][k][2] + udx[i][j][m][2] * v[i + 1][j][k][2] + udy[i][j][m][3] * v[i][j + 1][k][3] + udx[i][j][m][3] * v[i + 1][j][k][3] + udy[i][j][m][4] * v[i][j + 1][k][4] + udx[i][j][m][4] * v[i + 1][j][k][4]);
            }
            /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            /*[25, 38]*/
            for (m = 0; m < 5; m++) {
            /*[25, 38]*/
                /*[25, 38]*/
                tmat[m][0] = d[i][j][m][0];
                /*[25, 38]*/
                tmat[m][1] = d[i][j][m][1];
                /*[25, 38]*/
                tmat[m][2] = d[i][j][m][2];
                /*[25, 38]*/
                tmat[m][3] = d[i][j][m][3];
                /*[25, 38]*/
                tmat[m][4] = d[i][j][m][4];
            }
            /*[25, 38]*/
            tmp1 = 1.0 / tmat[0][0];
            /*[25, 38]*/
            tmp = tmp1 * tmat[1][0];
            /*[25, 38]*/
            tmat[1][1] = tmat[1][1] - tmp * tmat[0][1];
            /*[25, 38]*/
            tmat[1][2] = tmat[1][2] - tmp * tmat[0][2];
            /*[25, 38]*/
            tmat[1][3] = tmat[1][3] - tmp * tmat[0][3];
            /*[25, 38]*/
            tmat[1][4] = tmat[1][4] - tmp * tmat[0][4];
            /*[25, 38]*/
            tv[i][j][1] = tv[i][j][1] - tv[i][j][0] * tmp;
            /*[25, 38]*/
            tmp = tmp1 * tmat[2][0];
            /*[25, 38]*/
            tmat[2][1] = tmat[2][1] - tmp * tmat[0][1];
            /*[25, 38]*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[0][2];
            /*[25, 38]*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[0][3];
            /*[25, 38]*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[0][4];
            /*[25, 38]*/
            tv[i][j][2] = tv[i][j][2] - tv[i][j][0] * tmp;
            /*[25, 38]*/
            tmp = tmp1 * tmat[3][0];
            /*[25, 38]*/
            tmat[3][1] = tmat[3][1] - tmp * tmat[0][1];
            /*[25, 38]*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[0][2];
            /*[25, 38]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[0][3];
            /*[25, 38]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[0][4];
            /*[25, 38]*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][0] * tmp;
            /*[25, 38]*/
            tmp = tmp1 * tmat[4][0];
            /*[25, 38]*/
            tmat[4][1] = tmat[4][1] - tmp * tmat[0][1];
            /*[25, 38]*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[0][2];
            /*[25, 38]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[0][3];
            /*[25, 38]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[0][4];
            /*[25, 38]*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][0] * tmp;
            /*[25, 38]*/
            tmp1 = 1.0 / tmat[1][1];
            /*[25, 38]*/
            tmp = tmp1 * tmat[2][1];
            /*[25, 38]*/
            tmat[2][2] = tmat[2][2] - tmp * tmat[1][2];
            /*[25, 38]*/
            tmat[2][3] = tmat[2][3] - tmp * tmat[1][3];
            /*[25, 38]*/
            tmat[2][4] = tmat[2][4] - tmp * tmat[1][4];
            /*[25, 38]*/
            tv[i][j][2] = tv[i][j][2] - tv[i][j][1] * tmp;
            /*[25, 38]*/
            tmp = tmp1 * tmat[3][1];
            /*[25, 38]*/
            tmat[3][2] = tmat[3][2] - tmp * tmat[1][2];
            /*[25, 38]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[1][3];
            /*[25, 38]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[1][4];
            /*[25, 38]*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][1] * tmp;
            /*[25, 38]*/
            tmp = tmp1 * tmat[4][1];
            /*[25, 38]*/
            tmat[4][2] = tmat[4][2] - tmp * tmat[1][2];
            /*[25, 38]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[1][3];
            /*[25, 38]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[1][4];
            /*[25, 38]*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][1] * tmp;
            /*[25, 38]*/
            tmp1 = 1.0 / tmat[2][2];
            /*[25, 38]*/
            tmp = tmp1 * tmat[3][2];
            /*[25, 38]*/
            tmat[3][3] = tmat[3][3] - tmp * tmat[2][3];
            /*[25, 38]*/
            tmat[3][4] = tmat[3][4] - tmp * tmat[2][4];
            /*[25, 38]*/
            tv[i][j][3] = tv[i][j][3] - tv[i][j][2] * tmp;
            /*[25, 38]*/
            tmp = tmp1 * tmat[4][2];
            /*[25, 38]*/
            tmat[4][3] = tmat[4][3] - tmp * tmat[2][3];
            /*[25, 38]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[2][4];
            /*[25, 38]*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][2] * tmp;
            /*[25, 38]*/
            tmp1 = 1.0 / tmat[3][3];
            /*[25, 38]*/
            tmp = tmp1 * tmat[4][3];
            /*[25, 38]*/
            tmat[4][4] = tmat[4][4] - tmp * tmat[3][4];
            /*[25, 38]*/
            tv[i][j][4] = tv[i][j][4] - tv[i][j][3] * tmp;
            /*[25, 38]*/
            tv[i][j][4] = tv[i][j][4] / tmat[4][4];
            /*[25, 38]*/
            tv[i][j][3] = tv[i][j][3] - tmat[3][4] * tv[i][j][4];
            /*[25, 38]*/
            tv[i][j][3] = tv[i][j][3] / tmat[3][3];
            /*[25, 38]*/
            tv[i][j][2] = tv[i][j][2] - tmat[2][3] * tv[i][j][3] - tmat[2][4] * tv[i][j][4];
            /*[25, 38]*/
            tv[i][j][2] = tv[i][j][2] / tmat[2][2];
            /*[25, 38]*/
            tv[i][j][1] = tv[i][j][1] - tmat[1][2] * tv[i][j][2] - tmat[1][3] * tv[i][j][3] - tmat[1][4] * tv[i][j][4];
            /*[25, 38]*/
            tv[i][j][1] = tv[i][j][1] / tmat[1][1];
            /*[25, 38]*/
            tv[i][j][0] = tv[i][j][0] - tmat[0][1] * tv[i][j][1] - tmat[0][2] * tv[i][j][2] - tmat[0][3] * tv[i][j][3] - tmat[0][4] * tv[i][j][4];
            /*[25, 38]*/
            tv[i][j][0] = tv[i][j][0] / tmat[0][0];
            /*[25, 38]*/
            v[i][j][k][0] = v[i][j][k][0] - tv[i][j][0];
            /*[25, 38]*/
            v[i][j][k][1] = v[i][j][k][1] - tv[i][j][1];
            /*[25, 38]*/
            v[i][j][k][2] = v[i][j][k][2] - tv[i][j][2];
            /*[25, 38]*/
            v[i][j][k][3] = v[i][j][k][3] - tv[i][j][3];
            /*[25, 38]*/
            v[i][j][k][4] = v[i][j][k][4] - tv[i][j][4];
        }
        /*[25, 38]*/
        /*[25, 38]*/
        if (i != iend) {
        /*[25, 38]*/
            /*[25, 38]*/
            flag[i + 1] = 0;
        }
        /*[25, 38]*/
        /*[25, 38]*/
        if (i != ist) {
        /*[25, 38]*/
            /*[25, 38]*/
            flag[i] = 1;
        }
        /*[25, 38]*/
        // #pragma omp dummyFlush FLUSH_START
        /*[25, 38]*/
#pragma omp flush(flag)
    }
}
/*[]*/
static void domain() {
/*[]*/
    /*[]*/
    nx = nx0;
    /*[]*/
    ny = ny0;
    /*[]*/
    nz = nz0;
    /*[]*/
    int _imopVarPre146;
    /*[]*/
    int _imopVarPre147;
    /*[]*/
    _imopVarPre146 = nx < 4;
    /*[]*/
    /*[]*/
    if (!_imopVarPre146) {
    /*[]*/
        /*[]*/
        _imopVarPre147 = ny < 4;
        /*[]*/
        /*[]*/
        if (!_imopVarPre147) {
        /*[]*/
            /*[]*/
            _imopVarPre147 = nz < 4;
        }
        /*[]*/
        _imopVarPre146 = _imopVarPre147;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre146) {
    /*[]*/
        /*[]*/
        printf("     SUBDOMAIN SIZE IS TOO SMALL - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE GREATER THAN OR EQUAL\n" "     TO 4 THEY ARE CURRENTLY%3d%3d%3d\n", nx, ny, nz);
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    int _imopVarPre148;
    /*[]*/
    int _imopVarPre149;
    /*[]*/
    _imopVarPre148 = nx > 12;
    /*[]*/
    /*[]*/
    if (!_imopVarPre148) {
    /*[]*/
        /*[]*/
        _imopVarPre149 = ny > 12;
        /*[]*/
        /*[]*/
        if (!_imopVarPre149) {
        /*[]*/
            /*[]*/
            _imopVarPre149 = nz > 12;
        }
        /*[]*/
        _imopVarPre148 = _imopVarPre149;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre148) {
    /*[]*/
        /*[]*/
        printf("     SUBDOMAIN SIZE IS TOO LARGE - \n" "     ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS\n" "     SO THAT NX, NY AND NZ ARE LESS THAN OR EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY.  THEY ARE\n" "     CURRENTLY%4d%4d%4d\n", nx, ny, nz);
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    ist = 1;
    /*[]*/
    iend = nx - 2;
    /*[]*/
    jst = 1;
    /*[]*/
    jend = ny - 2;
}
/*[]*/
static void error() {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int m;
    /*[]*/
    int iglob;
    /*[]*/
    int jglob;
    /*[]*/
    double tmp;
    /*[]*/
    double u000ijk[5];
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        errnm[m] = 0.0;
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = ist; i <= iend; i++) {
    /*[]*/
        /*[]*/
        iglob = i;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = jst; j <= jend; j++) {
        /*[]*/
            /*[]*/
            jglob = j;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = 1; k <= nz - 2; k++) {
            /*[]*/
                /*[]*/
                exact(iglob, jglob, k, u000ijk);
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                /*[]*/
                for (m = 0; m < 5; m++) {
                /*[]*/
                    /*[]*/
                    tmp = (u000ijk[m] - u[i][j][k][m]);
                    /*[]*/
                    errnm[m] = errnm[m] + tmp * tmp;
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        double _imopVarPre151;
        /*[]*/
        double _imopVarPre152;
        /*[]*/
        _imopVarPre151 = errnm[m] / ((nx0 - 2) * (ny0 - 2) * (nz0 - 2));
        /*[]*/
        _imopVarPre152 = sqrt(_imopVarPre151);
        /*[]*/
        /*[]*/
        errnm[m] = _imopVarPre152;
    }
}
/*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
/*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
/*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
/*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
/*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
static void exact(int i, int j , int k , double u000ijk[5]) {
/*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    int m;
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    double xi;
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    double eta;
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    double zeta;
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    xi = ((double) i) / (nx0 - 1);
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    eta = ((double) j) / (ny0 - 1);
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    zeta = ((double) k) / (nz - 1);
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
    for (m = 0; m < 5; m++) {
    /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
        /*[1, 2, 3, 4, 5, 6, 39, 40, 41, 42, 43, 44]*/
        u000ijk[m] = ce[m][0] + ce[m][1] * xi + ce[m][2] * eta + ce[m][3] * zeta + ce[m][4] * xi * xi + ce[m][5] * eta * eta + ce[m][6] * zeta * zeta + ce[m][7] * xi * xi * xi + ce[m][8] * eta * eta * eta + ce[m][9] * zeta * zeta * zeta + ce[m][10] * xi * xi * xi * xi + ce[m][11] * eta * eta * eta * eta + ce[m][12] * zeta * zeta * zeta * zeta;
    }
}
/*[24, 37]*/
/*[24, 37]*/
static void jacld(int k) {
/*[24, 37]*/
    /*[24, 37]*/
    int i;
    /*[24, 37]*/
    int j;
    /*[24, 37]*/
    double r43;
    /*[24, 37]*/
    double c1345;
    /*[24, 37]*/
    double c34;
    /*[24, 37]*/
    double tmp1;
    /*[24, 37]*/
    double tmp2;
    /*[24, 37]*/
    double tmp3;
    /*[24, 37]*/
    r43 = (4.0 / 3.0);
    /*[24, 37]*/
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    /*[24, 37]*/
    c34 = 1.00e-01 * 1.00e+00;
    /*[24, 37]*/
#pragma omp for nowait schedule(static)
    /*[24, 37]*/
    /*[24, 37]*/
    /*[24, 37]*/
    for (i = ist; i <= iend; i++) {
    /*[24, 37]*/
        /*[24, 37]*/
        /*[24, 37]*/
        /*[24, 37]*/
        /*[24, 37]*/
        for (j = jst; j <= jend; j++) {
        /*[24, 37]*/
            /*[24, 37]*/
            tmp1 = 1.0 / u[i][j][k][0];
            /*[24, 37]*/
            tmp2 = tmp1 * tmp1;
            /*[24, 37]*/
            tmp3 = tmp1 * tmp2;
            /*[24, 37]*/
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            /*[24, 37]*/
            d[i][j][0][1] = 0.0;
            /*[24, 37]*/
            d[i][j][0][2] = 0.0;
            /*[24, 37]*/
            d[i][j][0][3] = 0.0;
            /*[24, 37]*/
            d[i][j][0][4] = 0.0;
            /*[24, 37]*/
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            /*[24, 37]*/
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            /*[24, 37]*/
            d[i][j][1][2] = 0.0;
            /*[24, 37]*/
            d[i][j][1][3] = 0.0;
            /*[24, 37]*/
            d[i][j][1][4] = 0.0;
            /*[24, 37]*/
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            /*[24, 37]*/
            d[i][j][2][1] = 0.0;
            /*[24, 37]*/
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            /*[24, 37]*/
            d[i][j][2][3] = 0.0;
            /*[24, 37]*/
            d[i][j][2][4] = 0.0;
            /*[24, 37]*/
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            /*[24, 37]*/
            d[i][j][3][1] = 0.0;
            /*[24, 37]*/
            d[i][j][3][2] = 0.0;
            /*[24, 37]*/
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            /*[24, 37]*/
            d[i][j][3][4] = 0.0;
            /*[24, 37]*/
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            /*[24, 37]*/
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            /*[24, 37]*/
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            /*[24, 37]*/
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            /*[24, 37]*/
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            /*[24, 37]*/
            tmp1 = 1.0 / u[i][j][k - 1][0];
            /*[24, 37]*/
            tmp2 = tmp1 * tmp1;
            /*[24, 37]*/
            tmp3 = tmp1 * tmp2;
            /*[24, 37]*/
            a[i][j][0][0] = -dt * tz1 * dz1;
            /*[24, 37]*/
            a[i][j][0][1] = 0.0;
            /*[24, 37]*/
            a[i][j][0][2] = 0.0;
            /*[24, 37]*/
            a[i][j][0][3] = -dt * tz2;
            /*[24, 37]*/
            a[i][j][0][4] = 0.0;
            /*[24, 37]*/
            a[i][j][1][0] = -dt * tz2 * (-(u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][1]);
            /*[24, 37]*/
            a[i][j][1][1] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            /*[24, 37]*/
            a[i][j][1][2] = 0.0;
            /*[24, 37]*/
            a[i][j][1][3] = -dt * tz2 * (u[i][j][k - 1][1] * tmp1);
            /*[24, 37]*/
            a[i][j][1][4] = 0.0;
            /*[24, 37]*/
            a[i][j][2][0] = -dt * tz2 * (-(u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k - 1][2]);
            /*[24, 37]*/
            a[i][j][2][1] = 0.0;
            /*[24, 37]*/
            a[i][j][2][2] = -dt * tz2 * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            /*[24, 37]*/
            a[i][j][2][3] = -dt * tz2 * (u[i][j][k - 1][2] * tmp1);
            /*[24, 37]*/
            a[i][j][2][4] = 0.0;
            /*[24, 37]*/
            a[i][j][3][0] = -dt * tz2 * (-(u[i][j][k - 1][3] * tmp1) * (u[i][j][k - 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k - 1][3]);
            /*[24, 37]*/
            a[i][j][3][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * tmp1));
            /*[24, 37]*/
            a[i][j][3][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * tmp1));
            /*[24, 37]*/
            a[i][j][3][3] = -dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k - 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            /*[24, 37]*/
            a[i][j][3][4] = -dt * tz2 * 0.40e+00;
            /*[24, 37]*/
            a[i][j][4][0] = -dt * tz2 * ((0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k - 1][4] * tmp1)) * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (u[i][j][k - 1][1] * u[i][j][k - 1][1]) - (c34 - c1345) * tmp3 * (u[i][j][k - 1][2] * u[i][j][k - 1][2]) - (r43 * c34 - c1345) * tmp3 * (u[i][j][k - 1][3] * u[i][j][k - 1][3]) - c1345 * tmp2 * u[i][j][k - 1][4]);
            /*[24, 37]*/
            a[i][j][4][1] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][1] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][1];
            /*[24, 37]*/
            a[i][j][4][2] = -dt * tz2 * (-0.40e+00 * (u[i][j][k - 1][2] * u[i][j][k - 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k - 1][2];
            /*[24, 37]*/
            a[i][j][4][3] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k - 1][1] * u[i][j][k - 1][1] + u[i][j][k - 1][2] * u[i][j][k - 1][2] + 3.0 * u[i][j][k - 1][3] * u[i][j][k - 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k - 1][3];
            /*[24, 37]*/
            a[i][j][4][4] = -dt * tz2 * (1.40e+00 * (u[i][j][k - 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
            /*[24, 37]*/
            tmp1 = 1.0 / u[i][j - 1][k][0];
            /*[24, 37]*/
            tmp2 = tmp1 * tmp1;
            /*[24, 37]*/
            tmp3 = tmp1 * tmp2;
            /*[24, 37]*/
            b[i][j][0][0] = -dt * ty1 * dy1;
            /*[24, 37]*/
            b[i][j][0][1] = 0.0;
            /*[24, 37]*/
            b[i][j][0][2] = -dt * ty2;
            /*[24, 37]*/
            b[i][j][0][3] = 0.0;
            /*[24, 37]*/
            b[i][j][0][4] = 0.0;
            /*[24, 37]*/
            b[i][j][1][0] = -dt * ty2 * (-(u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][1]);
            /*[24, 37]*/
            b[i][j][1][1] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            /*[24, 37]*/
            b[i][j][1][2] = -dt * ty2 * (u[i][j - 1][k][1] * tmp1);
            /*[24, 37]*/
            b[i][j][1][3] = 0.0;
            /*[24, 37]*/
            b[i][j][1][4] = 0.0;
            /*[24, 37]*/
            b[i][j][2][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * tmp1) * (u[i][j - 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j - 1][k][2]);
            /*[24, 37]*/
            b[i][j][2][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * tmp1));
            /*[24, 37]*/
            b[i][j][2][2] = -dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            /*[24, 37]*/
            b[i][j][2][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][3] * tmp1));
            /*[24, 37]*/
            b[i][j][2][4] = -dt * ty2 * 0.40e+00;
            /*[24, 37]*/
            b[i][j][3][0] = -dt * ty2 * (-(u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j - 1][k][3]);
            /*[24, 37]*/
            b[i][j][3][1] = 0.0;
            /*[24, 37]*/
            b[i][j][3][2] = -dt * ty2 * (u[i][j - 1][k][3] * tmp1);
            /*[24, 37]*/
            b[i][j][3][3] = -dt * ty2 * (u[i][j - 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            /*[24, 37]*/
            b[i][j][3][4] = 0.0;
            /*[24, 37]*/
            b[i][j][4][0] = -dt * ty2 * ((0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][1] + u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j - 1][k][4] * tmp1)) * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j - 1][k][1]) * (u[i][j - 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j - 1][k][2]) * (u[i][j - 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j - 1][k][3]) * (u[i][j - 1][k][3]))) - c1345 * tmp2 * u[i][j - 1][k][4]);
            /*[24, 37]*/
            b[i][j][4][1] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][1] * u[i][j - 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][1];
            /*[24, 37]*/
            b[i][j][4][2] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j - 1][k][1] * u[i][j - 1][k][1] + 3.0 * u[i][j - 1][k][2] * u[i][j - 1][k][2] + u[i][j - 1][k][3] * u[i][j - 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j - 1][k][2];
            /*[24, 37]*/
            b[i][j][4][3] = -dt * ty2 * (-0.40e+00 * (u[i][j - 1][k][2] * u[i][j - 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j - 1][k][3];
            /*[24, 37]*/
            b[i][j][4][4] = -dt * ty2 * (1.40e+00 * (u[i][j - 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            /*[24, 37]*/
            tmp1 = 1.0 / u[i - 1][j][k][0];
            /*[24, 37]*/
            tmp2 = tmp1 * tmp1;
            /*[24, 37]*/
            tmp3 = tmp1 * tmp2;
            /*[24, 37]*/
            c[i][j][0][0] = -dt * tx1 * dx1;
            /*[24, 37]*/
            c[i][j][0][1] = -dt * tx2;
            /*[24, 37]*/
            c[i][j][0][2] = 0.0;
            /*[24, 37]*/
            c[i][j][0][3] = 0.0;
            /*[24, 37]*/
            c[i][j][0][4] = 0.0;
            /*[24, 37]*/
            c[i][j][1][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * tmp1) * (u[i - 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i - 1][j][k][1]);
            /*[24, 37]*/
            c[i][j][1][1] = -dt * tx2 * ((2.0 - 0.40e+00) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            /*[24, 37]*/
            c[i][j][1][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * tmp1));
            /*[24, 37]*/
            c[i][j][1][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * tmp1));
            /*[24, 37]*/
            c[i][j][1][4] = -dt * tx2 * 0.40e+00;
            /*[24, 37]*/
            c[i][j][2][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][2]);
            /*[24, 37]*/
            c[i][j][2][1] = -dt * tx2 * (u[i - 1][j][k][2] * tmp1);
            /*[24, 37]*/
            c[i][j][2][2] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            /*[24, 37]*/
            c[i][j][2][3] = 0.0;
            /*[24, 37]*/
            c[i][j][2][4] = 0.0;
            /*[24, 37]*/
            c[i][j][3][0] = -dt * tx2 * (-(u[i - 1][j][k][1] * u[i - 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i - 1][j][k][3]);
            /*[24, 37]*/
            c[i][j][3][1] = -dt * tx2 * (u[i - 1][j][k][3] * tmp1);
            /*[24, 37]*/
            c[i][j][3][2] = 0.0;
            /*[24, 37]*/
            c[i][j][3][3] = -dt * tx2 * (u[i - 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            /*[24, 37]*/
            c[i][j][3][4] = 0.0;
            /*[24, 37]*/
            c[i][j][4][0] = -dt * tx2 * ((0.40e+00 * (u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i - 1][j][k][4] * tmp1)) * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i - 1][j][k][1]) * (u[i - 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][2]) * (u[i - 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i - 1][j][k][3]) * (u[i - 1][j][k][3]))) - c1345 * tmp2 * u[i - 1][j][k][4]);
            /*[24, 37]*/
            c[i][j][4][1] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i - 1][j][k][1] * u[i - 1][j][k][1] + u[i - 1][j][k][2] * u[i - 1][j][k][2] + u[i - 1][j][k][3] * u[i - 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i - 1][j][k][1];
            /*[24, 37]*/
            c[i][j][4][2] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][2] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][2];
            /*[24, 37]*/
            c[i][j][4][3] = -dt * tx2 * (-0.40e+00 * (u[i - 1][j][k][3] * u[i - 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i - 1][j][k][3];
            /*[24, 37]*/
            c[i][j][4][4] = -dt * tx2 * (1.40e+00 * (u[i - 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
        }
    }
}
/*[25, 38]*/
/*[25, 38]*/
static void jacu(int k) {
/*[25, 38]*/
    /*[25, 38]*/
    int i;
    /*[25, 38]*/
    int j;
    /*[25, 38]*/
    double r43;
    /*[25, 38]*/
    double c1345;
    /*[25, 38]*/
    double c34;
    /*[25, 38]*/
    double tmp1;
    /*[25, 38]*/
    double tmp2;
    /*[25, 38]*/
    double tmp3;
    /*[25, 38]*/
    r43 = (4.0 / 3.0);
    /*[25, 38]*/
    c1345 = 1.40e+00 * 1.00e-01 * 1.00e+00 * 1.40e+00;
    /*[25, 38]*/
    c34 = 1.00e-01 * 1.00e+00;
    /*[25, 38]*/
#pragma omp for nowait schedule(static)
    /*[25, 38]*/
    /*[25, 38]*/
    /*[25, 38]*/
    for (i = iend; i >= ist; i--) {
    /*[25, 38]*/
        /*[25, 38]*/
        /*[25, 38]*/
        /*[25, 38]*/
        /*[25, 38]*/
        for (j = jend; j >= jst; j--) {
        /*[25, 38]*/
            /*[25, 38]*/
            tmp1 = 1.0 / u[i][j][k][0];
            /*[25, 38]*/
            tmp2 = tmp1 * tmp1;
            /*[25, 38]*/
            tmp3 = tmp1 * tmp2;
            /*[25, 38]*/
            d[i][j][0][0] = 1.0 + dt * 2.0 * (tx1 * dx1 + ty1 * dy1 + tz1 * dz1);
            /*[25, 38]*/
            d[i][j][0][1] = 0.0;
            /*[25, 38]*/
            d[i][j][0][2] = 0.0;
            /*[25, 38]*/
            d[i][j][0][3] = 0.0;
            /*[25, 38]*/
            d[i][j][0][4] = 0.0;
            /*[25, 38]*/
            d[i][j][1][0] = dt * 2.0 * (tx1 * (-r43 * c34 * tmp2 * u[i][j][k][1]) + ty1 * (-c34 * tmp2 * u[i][j][k][1]) + tz1 * (-c34 * tmp2 * u[i][j][k][1]));
            /*[25, 38]*/
            d[i][j][1][1] = 1.0 + dt * 2.0 * (tx1 * r43 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx2 + ty1 * dy2 + tz1 * dz2);
            /*[25, 38]*/
            d[i][j][1][2] = 0.0;
            /*[25, 38]*/
            d[i][j][1][3] = 0.0;
            /*[25, 38]*/
            d[i][j][1][4] = 0.0;
            /*[25, 38]*/
            d[i][j][2][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][2]) + ty1 * (-r43 * c34 * tmp2 * u[i][j][k][2]) + tz1 * (-c34 * tmp2 * u[i][j][k][2]));
            /*[25, 38]*/
            d[i][j][2][1] = 0.0;
            /*[25, 38]*/
            d[i][j][2][2] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * r43 * c34 * tmp1 + tz1 * c34 * tmp1) + dt * 2.0 * (tx1 * dx3 + ty1 * dy3 + tz1 * dz3);
            /*[25, 38]*/
            d[i][j][2][3] = 0.0;
            /*[25, 38]*/
            d[i][j][2][4] = 0.0;
            /*[25, 38]*/
            d[i][j][3][0] = dt * 2.0 * (tx1 * (-c34 * tmp2 * u[i][j][k][3]) + ty1 * (-c34 * tmp2 * u[i][j][k][3]) + tz1 * (-r43 * c34 * tmp2 * u[i][j][k][3]));
            /*[25, 38]*/
            d[i][j][3][1] = 0.0;
            /*[25, 38]*/
            d[i][j][3][2] = 0.0;
            /*[25, 38]*/
            d[i][j][3][3] = 1.0 + dt * 2.0 * (tx1 * c34 * tmp1 + ty1 * c34 * tmp1 + tz1 * r43 * c34 * tmp1) + dt * 2.0 * (tx1 * dx4 + ty1 * dy4 + tz1 * dz4);
            /*[25, 38]*/
            d[i][j][3][4] = 0.0;
            /*[25, 38]*/
            d[i][j][4][0] = dt * 2.0 * (tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]) + tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4]));
            /*[25, 38]*/
            d[i][j][4][1] = dt * 2.0 * (tx1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][1] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][1] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][1]);
            /*[25, 38]*/
            d[i][j][4][2] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][2] + ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][2] + tz1 * (c34 - c1345) * tmp2 * u[i][j][k][2]);
            /*[25, 38]*/
            d[i][j][4][3] = dt * 2.0 * (tx1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + ty1 * (c34 - c1345) * tmp2 * u[i][j][k][3] + tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k][3]);
            /*[25, 38]*/
            d[i][j][4][4] = 1.0 + dt * 2.0 * (tx1 * c1345 * tmp1 + ty1 * c1345 * tmp1 + tz1 * c1345 * tmp1) + dt * 2.0 * (tx1 * dx5 + ty1 * dy5 + tz1 * dz5);
            /*[25, 38]*/
            tmp1 = 1.0 / u[i + 1][j][k][0];
            /*[25, 38]*/
            tmp2 = tmp1 * tmp1;
            /*[25, 38]*/
            tmp3 = tmp1 * tmp2;
            /*[25, 38]*/
            a[i][j][0][0] = -dt * tx1 * dx1;
            /*[25, 38]*/
            a[i][j][0][1] = dt * tx2;
            /*[25, 38]*/
            a[i][j][0][2] = 0.0;
            /*[25, 38]*/
            a[i][j][0][3] = 0.0;
            /*[25, 38]*/
            a[i][j][0][4] = 0.0;
            /*[25, 38]*/
            a[i][j][1][0] = dt * tx2 * (-(u[i + 1][j][k][1] * tmp1) * (u[i + 1][j][k][1] * tmp1) + 0.40e+00 * 0.50 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-r43 * c34 * tmp2 * u[i + 1][j][k][1]);
            /*[25, 38]*/
            a[i][j][1][1] = dt * tx2 * ((2.0 - 0.40e+00) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (r43 * c34 * tmp1) - dt * tx1 * dx2;
            /*[25, 38]*/
            a[i][j][1][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * tmp1));
            /*[25, 38]*/
            a[i][j][1][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * tmp1));
            /*[25, 38]*/
            a[i][j][1][4] = dt * tx2 * 0.40e+00;
            /*[25, 38]*/
            a[i][j][2][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][2]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][2]);
            /*[25, 38]*/
            a[i][j][2][1] = dt * tx2 * (u[i + 1][j][k][2] * tmp1);
            /*[25, 38]*/
            a[i][j][2][2] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx3;
            /*[25, 38]*/
            a[i][j][2][3] = 0.0;
            /*[25, 38]*/
            a[i][j][2][4] = 0.0;
            /*[25, 38]*/
            a[i][j][3][0] = dt * tx2 * (-(u[i + 1][j][k][1] * u[i + 1][j][k][3]) * tmp2) - dt * tx1 * (-c34 * tmp2 * u[i + 1][j][k][3]);
            /*[25, 38]*/
            a[i][j][3][1] = dt * tx2 * (u[i + 1][j][k][3] * tmp1);
            /*[25, 38]*/
            a[i][j][3][2] = 0.0;
            /*[25, 38]*/
            a[i][j][3][3] = dt * tx2 * (u[i + 1][j][k][1] * tmp1) - dt * tx1 * (c34 * tmp1) - dt * tx1 * dx4;
            /*[25, 38]*/
            a[i][j][3][4] = 0.0;
            /*[25, 38]*/
            a[i][j][4][0] = dt * tx2 * ((0.40e+00 * (u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2 - 1.40e+00 * (u[i + 1][j][k][4] * tmp1)) * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * (-(r43 * c34 - c1345) * tmp3 * (((u[i + 1][j][k][1]) * (u[i + 1][j][k][1]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][2]) * (u[i + 1][j][k][2]))) - (c34 - c1345) * tmp3 * (((u[i + 1][j][k][3]) * (u[i + 1][j][k][3]))) - c1345 * tmp2 * u[i + 1][j][k][4]);
            /*[25, 38]*/
            a[i][j][4][1] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][4] * tmp1) - 0.50 * 0.40e+00 * ((3.0 * u[i + 1][j][k][1] * u[i + 1][j][k][1] + u[i + 1][j][k][2] * u[i + 1][j][k][2] + u[i + 1][j][k][3] * u[i + 1][j][k][3]) * tmp2)) - dt * tx1 * (r43 * c34 - c1345) * tmp2 * u[i + 1][j][k][1];
            /*[25, 38]*/
            a[i][j][4][2] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][2] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][2];
            /*[25, 38]*/
            a[i][j][4][3] = dt * tx2 * (-0.40e+00 * (u[i + 1][j][k][3] * u[i + 1][j][k][1]) * tmp2) - dt * tx1 * (c34 - c1345) * tmp2 * u[i + 1][j][k][3];
            /*[25, 38]*/
            a[i][j][4][4] = dt * tx2 * (1.40e+00 * (u[i + 1][j][k][1] * tmp1)) - dt * tx1 * c1345 * tmp1 - dt * tx1 * dx5;
            /*[25, 38]*/
            tmp1 = 1.0 / u[i][j + 1][k][0];
            /*[25, 38]*/
            tmp2 = tmp1 * tmp1;
            /*[25, 38]*/
            tmp3 = tmp1 * tmp2;
            /*[25, 38]*/
            b[i][j][0][0] = -dt * ty1 * dy1;
            /*[25, 38]*/
            b[i][j][0][1] = 0.0;
            /*[25, 38]*/
            b[i][j][0][2] = dt * ty2;
            /*[25, 38]*/
            b[i][j][0][3] = 0.0;
            /*[25, 38]*/
            b[i][j][0][4] = 0.0;
            /*[25, 38]*/
            b[i][j][1][0] = dt * ty2 * (-(u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][1]);
            /*[25, 38]*/
            b[i][j][1][1] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy2;
            /*[25, 38]*/
            b[i][j][1][2] = dt * ty2 * (u[i][j + 1][k][1] * tmp1);
            /*[25, 38]*/
            b[i][j][1][3] = 0.0;
            /*[25, 38]*/
            b[i][j][1][4] = 0.0;
            /*[25, 38]*/
            b[i][j][2][0] = dt * ty2 * (-(u[i][j + 1][k][2] * tmp1) * (u[i][j + 1][k][2] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (-r43 * c34 * tmp2 * u[i][j + 1][k][2]);
            /*[25, 38]*/
            b[i][j][2][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * tmp1));
            /*[25, 38]*/
            b[i][j][2][2] = dt * ty2 * ((2.0 - 0.40e+00) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (r43 * c34 * tmp1) - dt * ty1 * dy3;
            /*[25, 38]*/
            b[i][j][2][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][3] * tmp1));
            /*[25, 38]*/
            b[i][j][2][4] = dt * ty2 * 0.40e+00;
            /*[25, 38]*/
            b[i][j][3][0] = dt * ty2 * (-(u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (-c34 * tmp2 * u[i][j + 1][k][3]);
            /*[25, 38]*/
            b[i][j][3][1] = 0.0;
            /*[25, 38]*/
            b[i][j][3][2] = dt * ty2 * (u[i][j + 1][k][3] * tmp1);
            /*[25, 38]*/
            b[i][j][3][3] = dt * ty2 * (u[i][j + 1][k][2] * tmp1) - dt * ty1 * (c34 * tmp1) - dt * ty1 * dy4;
            /*[25, 38]*/
            b[i][j][3][4] = 0.0;
            /*[25, 38]*/
            b[i][j][4][0] = dt * ty2 * ((0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][1] + u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2 - 1.40e+00 * (u[i][j + 1][k][4] * tmp1)) * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * (-(c34 - c1345) * tmp3 * (((u[i][j + 1][k][1]) * (u[i][j + 1][k][1]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j + 1][k][2]) * (u[i][j + 1][k][2]))) - (c34 - c1345) * tmp3 * (((u[i][j + 1][k][3]) * (u[i][j + 1][k][3]))) - c1345 * tmp2 * u[i][j + 1][k][4]);
            /*[25, 38]*/
            b[i][j][4][1] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][1] * u[i][j + 1][k][2]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][1];
            /*[25, 38]*/
            b[i][j][4][2] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j + 1][k][1] * u[i][j + 1][k][1] + 3.0 * u[i][j + 1][k][2] * u[i][j + 1][k][2] + u[i][j + 1][k][3] * u[i][j + 1][k][3]) * tmp2)) - dt * ty1 * (r43 * c34 - c1345) * tmp2 * u[i][j + 1][k][2];
            /*[25, 38]*/
            b[i][j][4][3] = dt * ty2 * (-0.40e+00 * (u[i][j + 1][k][2] * u[i][j + 1][k][3]) * tmp2) - dt * ty1 * (c34 - c1345) * tmp2 * u[i][j + 1][k][3];
            /*[25, 38]*/
            b[i][j][4][4] = dt * ty2 * (1.40e+00 * (u[i][j + 1][k][2] * tmp1)) - dt * ty1 * c1345 * tmp1 - dt * ty1 * dy5;
            /*[25, 38]*/
            tmp1 = 1.0 / u[i][j][k + 1][0];
            /*[25, 38]*/
            tmp2 = tmp1 * tmp1;
            /*[25, 38]*/
            tmp3 = tmp1 * tmp2;
            /*[25, 38]*/
            c[i][j][0][0] = -dt * tz1 * dz1;
            /*[25, 38]*/
            c[i][j][0][1] = 0.0;
            /*[25, 38]*/
            c[i][j][0][2] = 0.0;
            /*[25, 38]*/
            c[i][j][0][3] = dt * tz2;
            /*[25, 38]*/
            c[i][j][0][4] = 0.0;
            /*[25, 38]*/
            c[i][j][1][0] = dt * tz2 * (-(u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][1]);
            /*[25, 38]*/
            c[i][j][1][1] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * c34 * tmp1 - dt * tz1 * dz2;
            /*[25, 38]*/
            c[i][j][1][2] = 0.0;
            /*[25, 38]*/
            c[i][j][1][3] = dt * tz2 * (u[i][j][k + 1][1] * tmp1);
            /*[25, 38]*/
            c[i][j][1][4] = 0.0;
            /*[25, 38]*/
            c[i][j][2][0] = dt * tz2 * (-(u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (-c34 * tmp2 * u[i][j][k + 1][2]);
            /*[25, 38]*/
            c[i][j][2][1] = 0.0;
            /*[25, 38]*/
            c[i][j][2][2] = dt * tz2 * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (c34 * tmp1) - dt * tz1 * dz3;
            /*[25, 38]*/
            c[i][j][2][3] = dt * tz2 * (u[i][j][k + 1][2] * tmp1);
            /*[25, 38]*/
            c[i][j][2][4] = 0.0;
            /*[25, 38]*/
            c[i][j][3][0] = dt * tz2 * (-(u[i][j][k + 1][3] * tmp1) * (u[i][j][k + 1][3] * tmp1) + 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (-r43 * c34 * tmp2 * u[i][j][k + 1][3]);
            /*[25, 38]*/
            c[i][j][3][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * tmp1));
            /*[25, 38]*/
            c[i][j][3][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * tmp1));
            /*[25, 38]*/
            c[i][j][3][3] = dt * tz2 * (2.0 - 0.40e+00) * (u[i][j][k + 1][3] * tmp1) - dt * tz1 * (r43 * c34 * tmp1) - dt * tz1 * dz4;
            /*[25, 38]*/
            c[i][j][3][4] = dt * tz2 * 0.40e+00;
            /*[25, 38]*/
            c[i][j][4][0] = dt * tz2 * ((0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2 - 1.40e+00 * (u[i][j][k + 1][4] * tmp1)) * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * (-(c34 - c1345) * tmp3 * (((u[i][j][k + 1][1]) * (u[i][j][k + 1][1]))) - (c34 - c1345) * tmp3 * (((u[i][j][k + 1][2]) * (u[i][j][k + 1][2]))) - (r43 * c34 - c1345) * tmp3 * (((u[i][j][k + 1][3]) * (u[i][j][k + 1][3]))) - c1345 * tmp2 * u[i][j][k + 1][4]);
            /*[25, 38]*/
            c[i][j][4][1] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][1] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][1];
            /*[25, 38]*/
            c[i][j][4][2] = dt * tz2 * (-0.40e+00 * (u[i][j][k + 1][2] * u[i][j][k + 1][3]) * tmp2) - dt * tz1 * (c34 - c1345) * tmp2 * u[i][j][k + 1][2];
            /*[25, 38]*/
            c[i][j][4][3] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][4] * tmp1) - 0.50 * 0.40e+00 * ((u[i][j][k + 1][1] * u[i][j][k + 1][1] + u[i][j][k + 1][2] * u[i][j][k + 1][2] + 3.0 * u[i][j][k + 1][3] * u[i][j][k + 1][3]) * tmp2)) - dt * tz1 * (r43 * c34 - c1345) * tmp2 * u[i][j][k + 1][3];
            /*[25, 38]*/
            c[i][j][4][4] = dt * tz2 * (1.40e+00 * (u[i][j][k + 1][3] * tmp1)) - dt * tz1 * c1345 * tmp1 - dt * tz1 * dz5;
        }
    }
}
/*[]*/
static void pintgr() {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    int ibeg;
    /*[]*/
    int ifin;
    /*[]*/
    int ifin1;
    /*[]*/
    int jbeg;
    /*[]*/
    int jfin;
    /*[]*/
    int jfin1;
    /*[]*/
    int iglob;
    /*[]*/
    int iglob1;
    /*[]*/
    int iglob2;
    /*[]*/
    int jglob;
    /*[]*/
    int jglob1;
    /*[]*/
    int jglob2;
    /*[]*/
    double phi1[12 + 2][12 + 2];
    /*[]*/
    double phi2[12 + 2][12 + 2];
    /*[]*/
    double frc1;
    /*[]*/
    double frc2;
    /*[]*/
    double frc3;
    /*[]*/
    ibeg = nx;
    /*[]*/
    ifin = 0;
    /*[]*/
    iglob1 = -1;
    /*[]*/
    iglob2 = nx - 1;
    /*[]*/
    int _imopVarPre157;
    /*[]*/
    _imopVarPre157 = iglob1 >= ii1;
    /*[]*/
    /*[]*/
    if (_imopVarPre157) {
    /*[]*/
        /*[]*/
        _imopVarPre157 = iglob2 < ii2 + nx;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre157) {
    /*[]*/
        /*[]*/
        ibeg = 0;
    }
    /*[]*/
    int _imopVarPre159;
    /*[]*/
    _imopVarPre159 = iglob1 >= ii1 - nx;
    /*[]*/
    /*[]*/
    if (_imopVarPre159) {
    /*[]*/
        /*[]*/
        _imopVarPre159 = iglob2 <= ii2;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre159) {
    /*[]*/
        /*[]*/
        ifin = nx;
    }
    /*[]*/
    int _imopVarPre161;
    /*[]*/
    _imopVarPre161 = ii1 >= iglob1;
    /*[]*/
    /*[]*/
    if (_imopVarPre161) {
    /*[]*/
        /*[]*/
        _imopVarPre161 = ii1 <= iglob2;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre161) {
    /*[]*/
        /*[]*/
        ibeg = ii1;
    }
    /*[]*/
    int _imopVarPre163;
    /*[]*/
    _imopVarPre163 = ii2 >= iglob1;
    /*[]*/
    /*[]*/
    if (_imopVarPre163) {
    /*[]*/
        /*[]*/
        _imopVarPre163 = ii2 <= iglob2;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre163) {
    /*[]*/
        /*[]*/
        ifin = ii2;
    }
    /*[]*/
    jbeg = ny;
    /*[]*/
    jfin = -1;
    /*[]*/
    jglob1 = 0;
    /*[]*/
    jglob2 = ny - 1;
    /*[]*/
    int _imopVarPre165;
    /*[]*/
    _imopVarPre165 = jglob1 >= ji1;
    /*[]*/
    /*[]*/
    if (_imopVarPre165) {
    /*[]*/
        /*[]*/
        _imopVarPre165 = jglob2 < ji2 + ny;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre165) {
    /*[]*/
        /*[]*/
        jbeg = 0;
    }
    /*[]*/
    int _imopVarPre167;
    /*[]*/
    _imopVarPre167 = jglob1 > ji1 - ny;
    /*[]*/
    /*[]*/
    if (_imopVarPre167) {
    /*[]*/
        /*[]*/
        _imopVarPre167 = jglob2 <= ji2;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre167) {
    /*[]*/
        /*[]*/
        jfin = ny;
    }
    /*[]*/
    int _imopVarPre169;
    /*[]*/
    _imopVarPre169 = ji1 >= jglob1;
    /*[]*/
    /*[]*/
    if (_imopVarPre169) {
    /*[]*/
        /*[]*/
        _imopVarPre169 = ji1 <= jglob2;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre169) {
    /*[]*/
        /*[]*/
        jbeg = ji1;
    }
    /*[]*/
    int _imopVarPre171;
    /*[]*/
    _imopVarPre171 = ji2 >= jglob1;
    /*[]*/
    /*[]*/
    if (_imopVarPre171) {
    /*[]*/
        /*[]*/
        _imopVarPre171 = ji2 <= jglob2;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre171) {
    /*[]*/
        /*[]*/
        jfin = ji2;
    }
    /*[]*/
    ifin1 = ifin;
    /*[]*/
    jfin1 = jfin;
    /*[]*/
    /*[]*/
    if (ifin1 == ii2) {
    /*[]*/
        /*[]*/
        ifin1 = ifin - 1;
    }
    /*[]*/
    /*[]*/
    if (jfin1 == ji2) {
    /*[]*/
        /*[]*/
        jfin1 = jfin - 1;
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i <= 12 + 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 0; k <= 12 + 1; k++) {
        /*[]*/
            /*[]*/
            phi1[i][k] = 0.0;
            /*[]*/
            phi2[i][k] = 0.0;
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = ibeg; i <= ifin; i++) {
    /*[]*/
        /*[]*/
        iglob = i;
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = jbeg; j <= jfin; j++) {
        /*[]*/
            /*[]*/
            jglob = j;
            /*[]*/
            k = ki1;
            /*[]*/
            phi1[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
            /*[]*/
            k = ki2;
            /*[]*/
            phi2[i][j] = 0.40e+00 * (u[i][j][k][4] - 0.50 * (((u[i][j][k][1]) * (u[i][j][k][1])) + ((u[i][j][k][2]) * (u[i][j][k][2])) + ((u[i][j][k][3]) * (u[i][j][k][3]))) / u[i][j][k][0]);
        }
    }
    /*[]*/
    frc1 = 0.0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = ibeg; i <= ifin1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = jbeg; j <= jfin1; j++) {
        /*[]*/
            /*[]*/
            frc1 = frc1 + (phi1[i][j] + phi1[i + 1][j] + phi1[i][j + 1] + phi1[i + 1][j + 1] + phi2[i][j] + phi2[i + 1][j] + phi2[i][j + 1] + phi2[i + 1][j + 1]);
        }
    }
    /*[]*/
    frc1 = dxi * deta * frc1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i <= 12 + 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 0; k <= 12 + 1; k++) {
        /*[]*/
            /*[]*/
            phi1[i][k] = 0.0;
            /*[]*/
            phi2[i][k] = 0.0;
        }
    }
    /*[]*/
    jglob = jbeg;
    /*[]*/
    /*[]*/
    if (jglob == ji1) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = ibeg; i <= ifin; i++) {
        /*[]*/
            /*[]*/
            iglob = i;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = ki1; k <= ki2; k++) {
            /*[]*/
                /*[]*/
                phi1[i][k] = 0.40e+00 * (u[i][jbeg][k][4] - 0.50 * (((u[i][jbeg][k][1]) * (u[i][jbeg][k][1])) + ((u[i][jbeg][k][2]) * (u[i][jbeg][k][2])) + ((u[i][jbeg][k][3]) * (u[i][jbeg][k][3]))) / u[i][jbeg][k][0]);
            }
        }
    }
    /*[]*/
    jglob = jfin;
    /*[]*/
    /*[]*/
    if (jglob == ji2) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = ibeg; i <= ifin; i++) {
        /*[]*/
            /*[]*/
            iglob = i;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = ki1; k <= ki2; k++) {
            /*[]*/
                /*[]*/
                phi2[i][k] = 0.40e+00 * (u[i][jfin][k][4] - 0.50 * (((u[i][jfin][k][1]) * (u[i][jfin][k][1])) + ((u[i][jfin][k][2]) * (u[i][jfin][k][2])) + ((u[i][jfin][k][3]) * (u[i][jfin][k][3]))) / u[i][jfin][k][0]);
            }
        }
    }
    /*[]*/
    frc2 = 0.0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = ibeg; i <= ifin1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = ki1; k <= ki2 - 1; k++) {
        /*[]*/
            /*[]*/
            frc2 = frc2 + (phi1[i][k] + phi1[i + 1][k] + phi1[i][k + 1] + phi1[i + 1][k + 1] + phi2[i][k] + phi2[i + 1][k] + phi2[i][k + 1] + phi2[i + 1][k + 1]);
        }
    }
    /*[]*/
    frc2 = dxi * dzeta * frc2;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i <= 12 + 1; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = 0; k <= 12 + 1; k++) {
        /*[]*/
            /*[]*/
            phi1[i][k] = 0.0;
            /*[]*/
            phi2[i][k] = 0.0;
        }
    }
    /*[]*/
    iglob = ibeg;
    /*[]*/
    /*[]*/
    if (iglob == ii1) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = jbeg; j <= jfin; j++) {
        /*[]*/
            /*[]*/
            jglob = j;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = ki1; k <= ki2; k++) {
            /*[]*/
                /*[]*/
                phi1[j][k] = 0.40e+00 * (u[ibeg][j][k][4] - 0.50 * (((u[ibeg][j][k][1]) * (u[ibeg][j][k][1])) + ((u[ibeg][j][k][2]) * (u[ibeg][j][k][2])) + ((u[ibeg][j][k][3]) * (u[ibeg][j][k][3]))) / u[ibeg][j][k][0]);
            }
        }
    }
    /*[]*/
    iglob = ifin;
    /*[]*/
    /*[]*/
    if (iglob == ii2) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = jbeg; j <= jfin; j++) {
        /*[]*/
            /*[]*/
            jglob = j;
            /*[]*/
            /*[]*/
            /*[]*/
            /*[]*/
            for (k = ki1; k <= ki2; k++) {
            /*[]*/
                /*[]*/
                phi2[j][k] = 0.40e+00 * (u[ifin][j][k][4] - 0.50 * (((u[ifin][j][k][1]) * (u[ifin][j][k][1])) + ((u[ifin][j][k][2]) * (u[ifin][j][k][2])) + ((u[ifin][j][k][3]) * (u[ifin][j][k][3]))) / u[ifin][j][k][0]);
            }
        }
    }
    /*[]*/
    frc3 = 0.0;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = jbeg; j <= jfin1; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (k = ki1; k <= ki2 - 1; k++) {
        /*[]*/
            /*[]*/
            frc3 = frc3 + (phi1[j][k] + phi1[j + 1][k] + phi1[j][k + 1] + phi1[j + 1][k + 1] + phi2[j][k] + phi2[j + 1][k] + phi2[j][k + 1] + phi2[j + 1][k + 1]);
        }
    }
    /*[]*/
    frc3 = deta * dzeta * frc3;
    /*[]*/
    frc = 0.25 * (frc1 + frc2 + frc3);
}
/*[]*/
static void read_input() {
/*[]*/
    /*[]*/
    FILE *fp;
    /*[]*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - LU Benchmark\n\n");
    /*[]*/
    /*[]*/
    fp = fopen("inputlu.data", "r");
    /*[]*/
    /*[]*/
    /*[]*/
    if (fp != ((void *) 0)) {
    /*[]*/
        /*[]*/
        printf(" Reading from input file inputlu.data\n");
        /*[]*/
        /*[]*/
        int _imopVarPre173;
        /*[]*/
        _imopVarPre173 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre173 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre173 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre175;
        /*[]*/
        _imopVarPre175 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre175 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre175 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int *_imopVarPre178;
        /*[]*/
        int *_imopVarPre179;
        /*[]*/
        _imopVarPre178 = &inorm;
        /*[]*/
        _imopVarPre179 = &ipr;
        /*[]*/
        fscanf(fp, "%d%d", _imopVarPre179, _imopVarPre178);
        /*[]*/
        /*[]*/
        int _imopVarPre181;
        /*[]*/
        _imopVarPre181 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre181 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre181 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre183;
        /*[]*/
        _imopVarPre183 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre183 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre183 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre185;
        /*[]*/
        _imopVarPre185 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre185 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre185 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int *_imopVarPre187;
        /*[]*/
        _imopVarPre187 = &itmax;
        /*[]*/
        fscanf(fp, "%d", _imopVarPre187);
        /*[]*/
        /*[]*/
        int _imopVarPre189;
        /*[]*/
        _imopVarPre189 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre189 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre189 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre191;
        /*[]*/
        _imopVarPre191 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre191 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre191 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre193;
        /*[]*/
        _imopVarPre193 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre193 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre193 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        double *_imopVarPre195;
        /*[]*/
        _imopVarPre195 = &dt;
        /*[]*/
        fscanf(fp, "%lf", _imopVarPre195);
        /*[]*/
        /*[]*/
        int _imopVarPre197;
        /*[]*/
        _imopVarPre197 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre197 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre197 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre199;
        /*[]*/
        _imopVarPre199 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre199 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre199 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre201;
        /*[]*/
        _imopVarPre201 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre201 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre201 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        double *_imopVarPre203;
        /*[]*/
        _imopVarPre203 = &omega;
        /*[]*/
        fscanf(fp, "%lf", _imopVarPre203);
        /*[]*/
        /*[]*/
        int _imopVarPre205;
        /*[]*/
        _imopVarPre205 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre205 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre205 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre207;
        /*[]*/
        _imopVarPre207 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre207 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre207 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre209;
        /*[]*/
        _imopVarPre209 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre209 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre209 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        double *_imopVarPre215;
        /*[]*/
        double *_imopVarPre216;
        /*[]*/
        double *_imopVarPre217;
        /*[]*/
        double *_imopVarPre218;
        /*[]*/
        double *_imopVarPre219;
        /*[]*/
        _imopVarPre215 = &tolrsd[4];
        /*[]*/
        _imopVarPre216 = &tolrsd[3];
        /*[]*/
        _imopVarPre217 = &tolrsd[2];
        /*[]*/
        _imopVarPre218 = &tolrsd[1];
        /*[]*/
        _imopVarPre219 = &tolrsd[0];
        /*[]*/
        fscanf(fp, "%lf%lf%lf%lf%lf", _imopVarPre219, _imopVarPre218, _imopVarPre217, _imopVarPre216, _imopVarPre215);
        /*[]*/
        /*[]*/
        int _imopVarPre221;
        /*[]*/
        _imopVarPre221 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre221 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre221 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre223;
        /*[]*/
        _imopVarPre223 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre223 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre223 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int _imopVarPre225;
        /*[]*/
        _imopVarPre225 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre225 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre225 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        int *_imopVarPre229;
        /*[]*/
        int *_imopVarPre230;
        /*[]*/
        int *_imopVarPre231;
        /*[]*/
        _imopVarPre229 = &nz0;
        /*[]*/
        _imopVarPre230 = &ny0;
        /*[]*/
        _imopVarPre231 = &nx0;
        /*[]*/
        fscanf(fp, "%d%d%d", _imopVarPre231, _imopVarPre230, _imopVarPre229);
        /*[]*/
        /*[]*/
        int _imopVarPre233;
        /*[]*/
        _imopVarPre233 = fgetc(fp);
        /*[]*/
        /*[]*/
        /*[]*/
        while (_imopVarPre233 != '\n') {
        /*[]*/
            /*[]*/
            ;
            /*[]*/
            _imopVarPre233 = fgetc(fp);
            /*[]*/
        }
        /*[]*/
        fclose(fp);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        ipr = 1;
        /*[]*/
        inorm = 50;
        /*[]*/
        itmax = 50;
        /*[]*/
        dt = 0.5;
        /*[]*/
        omega = 1.2;
        /*[]*/
        tolrsd[0] = 1.0e-8;
        /*[]*/
        tolrsd[1] = 1.0e-8;
        /*[]*/
        tolrsd[2] = 1.0e-8;
        /*[]*/
        tolrsd[3] = 1.0e-8;
        /*[]*/
        tolrsd[4] = 1.0e-8;
        /*[]*/
        nx0 = 12;
        /*[]*/
        ny0 = 12;
        /*[]*/
        nz0 = 12;
    }
    /*[]*/
    int _imopVarPre234;
    /*[]*/
    int _imopVarPre235;
    /*[]*/
    _imopVarPre234 = nx0 < 4;
    /*[]*/
    /*[]*/
    if (!_imopVarPre234) {
    /*[]*/
        /*[]*/
        _imopVarPre235 = ny0 < 4;
        /*[]*/
        /*[]*/
        if (!_imopVarPre235) {
        /*[]*/
            /*[]*/
            _imopVarPre235 = nz0 < 4;
        }
        /*[]*/
        _imopVarPre234 = _imopVarPre235;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre234) {
    /*[]*/
        /*[]*/
        printf("     PROBLEM SIZE IS TOO SMALL - \n" "     SET EACH OF NX, NY AND NZ AT LEAST EQUAL TO 5\n");
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    int _imopVarPre236;
    /*[]*/
    int _imopVarPre237;
    /*[]*/
    _imopVarPre236 = nx0 > 12;
    /*[]*/
    /*[]*/
    if (!_imopVarPre236) {
    /*[]*/
        /*[]*/
        _imopVarPre237 = ny0 > 12;
        /*[]*/
        /*[]*/
        if (!_imopVarPre237) {
        /*[]*/
            /*[]*/
            _imopVarPre237 = nz0 > 12;
        }
        /*[]*/
        _imopVarPre236 = _imopVarPre237;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre236) {
    /*[]*/
        /*[]*/
        printf("     PROBLEM SIZE IS TOO LARGE - \n" "     NX, NY AND NZ SHOULD BE EQUAL TO \n" "     ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY\n");
        /*[]*/
        /*[]*/
        exit(1);
        /*[]*/
    }
    /*[]*/
    printf(" Size: %3dx%3dx%3d\n", nx0, ny0, nz0);
    /*[]*/
    /*[]*/
    printf(" Iterations: %3d\n", itmax);
    /*[]*/
}
/*[]*/
static void setcoeff() {
/*[]*/
    /*[]*/
    dxi = 1.0 / (nx0 - 1);
    /*[]*/
    deta = 1.0 / (ny0 - 1);
    /*[]*/
    dzeta = 1.0 / (nz0 - 1);
    /*[]*/
    tx1 = 1.0 / (dxi * dxi);
    /*[]*/
    tx2 = 1.0 / (2.0 * dxi);
    /*[]*/
    tx3 = 1.0 / dxi;
    /*[]*/
    ty1 = 1.0 / (deta * deta);
    /*[]*/
    ty2 = 1.0 / (2.0 * deta);
    /*[]*/
    ty3 = 1.0 / deta;
    /*[]*/
    tz1 = 1.0 / (dzeta * dzeta);
    /*[]*/
    tz2 = 1.0 / (2.0 * dzeta);
    /*[]*/
    tz3 = 1.0 / dzeta;
    /*[]*/
    ii1 = 1;
    /*[]*/
    ii2 = nx0 - 2;
    /*[]*/
    ji1 = 1;
    /*[]*/
    ji2 = ny0 - 3;
    /*[]*/
    ki1 = 2;
    /*[]*/
    ki2 = nz0 - 2;
    /*[]*/
    dx1 = 0.75;
    /*[]*/
    dx2 = dx1;
    /*[]*/
    dx3 = dx1;
    /*[]*/
    dx4 = dx1;
    /*[]*/
    dx5 = dx1;
    /*[]*/
    dy1 = 0.75;
    /*[]*/
    dy2 = dy1;
    /*[]*/
    dy3 = dy1;
    /*[]*/
    dy4 = dy1;
    /*[]*/
    dy5 = dy1;
    /*[]*/
    dz1 = 1.00;
    /*[]*/
    dz2 = dz1;
    /*[]*/
    dz3 = dz1;
    /*[]*/
    dz4 = dz1;
    /*[]*/
    dz5 = dz1;
    /*[]*/
    int _imopVarPre348;
    /*[]*/
    double _imopVarPre349;
    /*[]*/
    int _imopVarPre350;
    /*[]*/
    double _imopVarPre351;
    /*[]*/
    int _imopVarPre358;
    /*[]*/
    double _imopVarPre359;
    /*[]*/
    _imopVarPre348 = (dy1 > dz1);
    /*[]*/
    /*[]*/
    if (_imopVarPre348) {
    /*[]*/
        /*[]*/
        _imopVarPre349 = dy1;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre349 = dz1;
    }
    /*[]*/
    _imopVarPre350 = (dx1 > _imopVarPre349);
    /*[]*/
    /*[]*/
    if (_imopVarPre350) {
    /*[]*/
        /*[]*/
        _imopVarPre351 = dx1;
    } else {
    /*[]*/
        /*[]*/
        _imopVarPre358 = (dy1 > dz1);
        /*[]*/
        /*[]*/
        if (_imopVarPre358) {
        /*[]*/
            /*[]*/
            _imopVarPre359 = dy1;
        } else {
        /*[]*/
            /*[]*/
            _imopVarPre359 = dz1;
        }
        /*[]*/
        _imopVarPre351 = _imopVarPre359;
    }
    /*[]*/
    dssp = _imopVarPre351 / 4.0;
    /*[]*/
    ce[0][0] = 2.0;
    /*[]*/
    ce[0][1] = 0.0;
    /*[]*/
    ce[0][2] = 0.0;
    /*[]*/
    ce[0][3] = 4.0;
    /*[]*/
    ce[0][4] = 5.0;
    /*[]*/
    ce[0][5] = 3.0;
    /*[]*/
    ce[0][6] = 5.0e-01;
    /*[]*/
    ce[0][7] = 2.0e-02;
    /*[]*/
    ce[0][8] = 1.0e-02;
    /*[]*/
    ce[0][9] = 3.0e-02;
    /*[]*/
    ce[0][10] = 5.0e-01;
    /*[]*/
    ce[0][11] = 4.0e-01;
    /*[]*/
    ce[0][12] = 3.0e-01;
    /*[]*/
    ce[1][0] = 1.0;
    /*[]*/
    ce[1][1] = 0.0;
    /*[]*/
    ce[1][2] = 0.0;
    /*[]*/
    ce[1][3] = 0.0;
    /*[]*/
    ce[1][4] = 1.0;
    /*[]*/
    ce[1][5] = 2.0;
    /*[]*/
    ce[1][6] = 3.0;
    /*[]*/
    ce[1][7] = 1.0e-02;
    /*[]*/
    ce[1][8] = 3.0e-02;
    /*[]*/
    ce[1][9] = 2.0e-02;
    /*[]*/
    ce[1][10] = 4.0e-01;
    /*[]*/
    ce[1][11] = 3.0e-01;
    /*[]*/
    ce[1][12] = 5.0e-01;
    /*[]*/
    ce[2][0] = 2.0;
    /*[]*/
    ce[2][1] = 2.0;
    /*[]*/
    ce[2][2] = 0.0;
    /*[]*/
    ce[2][3] = 0.0;
    /*[]*/
    ce[2][4] = 0.0;
    /*[]*/
    ce[2][5] = 2.0;
    /*[]*/
    ce[2][6] = 3.0;
    /*[]*/
    ce[2][7] = 4.0e-02;
    /*[]*/
    ce[2][8] = 3.0e-02;
    /*[]*/
    ce[2][9] = 5.0e-02;
    /*[]*/
    ce[2][10] = 3.0e-01;
    /*[]*/
    ce[2][11] = 5.0e-01;
    /*[]*/
    ce[2][12] = 4.0e-01;
    /*[]*/
    ce[3][0] = 2.0;
    /*[]*/
    ce[3][1] = 2.0;
    /*[]*/
    ce[3][2] = 0.0;
    /*[]*/
    ce[3][3] = 0.0;
    /*[]*/
    ce[3][4] = 0.0;
    /*[]*/
    ce[3][5] = 2.0;
    /*[]*/
    ce[3][6] = 3.0;
    /*[]*/
    ce[3][7] = 3.0e-02;
    /*[]*/
    ce[3][8] = 5.0e-02;
    /*[]*/
    ce[3][9] = 4.0e-02;
    /*[]*/
    ce[3][10] = 2.0e-01;
    /*[]*/
    ce[3][11] = 1.0e-01;
    /*[]*/
    ce[3][12] = 3.0e-01;
    /*[]*/
    ce[4][0] = 5.0;
    /*[]*/
    ce[4][1] = 4.0;
    /*[]*/
    ce[4][2] = 3.0;
    /*[]*/
    ce[4][3] = 2.0;
    /*[]*/
    ce[4][4] = 1.0e-01;
    /*[]*/
    ce[4][5] = 4.0e-01;
    /*[]*/
    ce[4][6] = 3.0e-01;
    /*[]*/
    ce[4][7] = 5.0e-02;
    /*[]*/
    ce[4][8] = 4.0e-02;
    /*[]*/
    ce[4][9] = 3.0e-02;
    /*[]*/
    ce[4][10] = 1.0e-01;
    /*[]*/
    ce[4][11] = 3.0e-01;
    /*[]*/
    ce[4][12] = 2.0e-01;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
static void verify(double xcr[5], double xce[5] , double xci , char *class , boolean *verified) {
/*[]*/
    /*[]*/
    double xcrref[5];
    /*[]*/
    double xceref[5];
    /*[]*/
    double xciref;
    /*[]*/
    double xcrdif[5];
    /*[]*/
    double xcedif[5];
    /*[]*/
    double xcidif;
    /*[]*/
    double epsilon;
    /*[]*/
    double dtref;
    /*[]*/
    int m;
    /*[]*/
    epsilon = 1.0e-08;
    /*[]*/
    *class = 'U';
    /*[]*/
    *verified = 1;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        xcrref[m] = 1.0;
        /*[]*/
        xceref[m] = 1.0;
    }
    /*[]*/
    xciref = 1.0;
    /*[]*/
    int _imopVarPre384;
    /*[]*/
    int _imopVarPre385;
    /*[]*/
    int _imopVarPre386;
    /*[]*/
    _imopVarPre384 = nx0 == 12;
    /*[]*/
    /*[]*/
    if (_imopVarPre384) {
    /*[]*/
        /*[]*/
        _imopVarPre385 = ny0 == 12;
        /*[]*/
        /*[]*/
        if (_imopVarPre385) {
        /*[]*/
            /*[]*/
            _imopVarPre386 = nz0 == 12;
            /*[]*/
            /*[]*/
            if (_imopVarPre386) {
            /*[]*/
                /*[]*/
                _imopVarPre386 = itmax == 50;
            }
            /*[]*/
            _imopVarPre385 = _imopVarPre386;
        }
        /*[]*/
        _imopVarPre384 = _imopVarPre385;
    }
    /*[]*/
    /*[]*/
    if (_imopVarPre384) {
    /*[]*/
        /*[]*/
        *class = 'S';
        /*[]*/
        dtref = 5.0e-1;
        /*[]*/
        xcrref[0] = 1.6196343210976702e-02;
        /*[]*/
        xcrref[1] = 2.1976745164821318e-03;
        /*[]*/
        xcrref[2] = 1.5179927653399185e-03;
        /*[]*/
        xcrref[3] = 1.5029584435994323e-03;
        /*[]*/
        xcrref[4] = 3.4264073155896461e-02;
        /*[]*/
        xceref[0] = 6.4223319957960924e-04;
        /*[]*/
        xceref[1] = 8.4144342047347926e-05;
        /*[]*/
        xceref[2] = 5.8588269616485186e-05;
        /*[]*/
        xceref[3] = 5.8474222595157350e-05;
        /*[]*/
        xceref[4] = 1.3103347914111294e-03;
        /*[]*/
        xciref = 7.8418928865937083;
    } else {
    /*[]*/
        /*[]*/
        int _imopVarPre390;
        /*[]*/
        int _imopVarPre391;
        /*[]*/
        int _imopVarPre392;
        /*[]*/
        _imopVarPre390 = nx0 == 33;
        /*[]*/
        /*[]*/
        if (_imopVarPre390) {
        /*[]*/
            /*[]*/
            _imopVarPre391 = ny0 == 33;
            /*[]*/
            /*[]*/
            if (_imopVarPre391) {
            /*[]*/
                /*[]*/
                _imopVarPre392 = nz0 == 33;
                /*[]*/
                /*[]*/
                if (_imopVarPre392) {
                /*[]*/
                    /*[]*/
                    _imopVarPre392 = itmax == 300;
                }
                /*[]*/
                _imopVarPre391 = _imopVarPre392;
            }
            /*[]*/
            _imopVarPre390 = _imopVarPre391;
        }
        /*[]*/
        /*[]*/
        if (_imopVarPre390) {
        /*[]*/
            /*[]*/
            *class = 'W';
            /*[]*/
            dtref = 1.5e-3;
            /*[]*/
            xcrref[0] = 0.1236511638192e+02;
            /*[]*/
            xcrref[1] = 0.1317228477799e+01;
            /*[]*/
            xcrref[2] = 0.2550120713095e+01;
            /*[]*/
            xcrref[3] = 0.2326187750252e+01;
            /*[]*/
            xcrref[4] = 0.2826799444189e+02;
            /*[]*/
            xceref[0] = 0.4867877144216;
            /*[]*/
            xceref[1] = 0.5064652880982e-01;
            /*[]*/
            xceref[2] = 0.9281818101960e-01;
            /*[]*/
            xceref[3] = 0.8570126542733e-01;
            /*[]*/
            xceref[4] = 0.1084277417792e+01;
            /*[]*/
            xciref = 0.1161399311023e+02;
        } else {
        /*[]*/
            /*[]*/
            int _imopVarPre396;
            /*[]*/
            int _imopVarPre397;
            /*[]*/
            int _imopVarPre398;
            /*[]*/
            _imopVarPre396 = nx0 == 64;
            /*[]*/
            /*[]*/
            if (_imopVarPre396) {
            /*[]*/
                /*[]*/
                _imopVarPre397 = ny0 == 64;
                /*[]*/
                /*[]*/
                if (_imopVarPre397) {
                /*[]*/
                    /*[]*/
                    _imopVarPre398 = nz0 == 64;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre398) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre398 = itmax == 250;
                    }
                    /*[]*/
                    _imopVarPre397 = _imopVarPre398;
                }
                /*[]*/
                _imopVarPre396 = _imopVarPre397;
            }
            /*[]*/
            /*[]*/
            if (_imopVarPre396) {
            /*[]*/
                /*[]*/
                *class = 'A';
                /*[]*/
                dtref = 2.0e+0;
                /*[]*/
                xcrref[0] = 7.7902107606689367e+02;
                /*[]*/
                xcrref[1] = 6.3402765259692870e+01;
                /*[]*/
                xcrref[2] = 1.9499249727292479e+02;
                /*[]*/
                xcrref[3] = 1.7845301160418537e+02;
                /*[]*/
                xcrref[4] = 1.8384760349464247e+03;
                /*[]*/
                xceref[0] = 2.9964085685471943e+01;
                /*[]*/
                xceref[1] = 2.8194576365003349;
                /*[]*/
                xceref[2] = 7.3473412698774742;
                /*[]*/
                xceref[3] = 6.7139225687777051;
                /*[]*/
                xceref[4] = 7.0715315688392578e+01;
                /*[]*/
                xciref = 2.6030925604886277e+01;
            } else {
            /*[]*/
                /*[]*/
                int _imopVarPre402;
                /*[]*/
                int _imopVarPre403;
                /*[]*/
                int _imopVarPre404;
                /*[]*/
                _imopVarPre402 = nx0 == 102;
                /*[]*/
                /*[]*/
                if (_imopVarPre402) {
                /*[]*/
                    /*[]*/
                    _imopVarPre403 = ny0 == 102;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre403) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre404 = nz0 == 102;
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre404) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre404 = itmax == 250;
                        }
                        /*[]*/
                        _imopVarPre403 = _imopVarPre404;
                    }
                    /*[]*/
                    _imopVarPre402 = _imopVarPre403;
                }
                /*[]*/
                /*[]*/
                if (_imopVarPre402) {
                /*[]*/
                    /*[]*/
                    *class = 'B';
                    /*[]*/
                    dtref = 2.0e+0;
                    /*[]*/
                    xcrref[0] = 3.5532672969982736e+03;
                    /*[]*/
                    xcrref[1] = 2.6214750795310692e+02;
                    /*[]*/
                    xcrref[2] = 8.8333721850952190e+02;
                    /*[]*/
                    xcrref[3] = 7.7812774739425265e+02;
                    /*[]*/
                    xcrref[4] = 7.3087969592545314e+03;
                    /*[]*/
                    xceref[0] = 1.1401176380212709e+02;
                    /*[]*/
                    xceref[1] = 8.1098963655421574;
                    /*[]*/
                    xceref[2] = 2.8480597317698308e+01;
                    /*[]*/
                    xceref[3] = 2.5905394567832939e+01;
                    /*[]*/
                    xceref[4] = 2.6054907504857413e+02;
                    /*[]*/
                    xciref = 4.7887162703308227e+01;
                } else {
                /*[]*/
                    /*[]*/
                    int _imopVarPre408;
                    /*[]*/
                    int _imopVarPre409;
                    /*[]*/
                    int _imopVarPre410;
                    /*[]*/
                    _imopVarPre408 = nx0 == 162;
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre408) {
                    /*[]*/
                        /*[]*/
                        _imopVarPre409 = ny0 == 162;
                        /*[]*/
                        /*[]*/
                        if (_imopVarPre409) {
                        /*[]*/
                            /*[]*/
                            _imopVarPre410 = nz0 == 162;
                            /*[]*/
                            /*[]*/
                            if (_imopVarPre410) {
                            /*[]*/
                                /*[]*/
                                _imopVarPre410 = itmax == 250;
                            }
                            /*[]*/
                            _imopVarPre409 = _imopVarPre410;
                        }
                        /*[]*/
                        _imopVarPre408 = _imopVarPre409;
                    }
                    /*[]*/
                    /*[]*/
                    if (_imopVarPre408) {
                    /*[]*/
                        /*[]*/
                        *class = 'C';
                        /*[]*/
                        dtref = 2.0e+0;
                        /*[]*/
                        xcrref[0] = 1.03766980323537846e+04;
                        /*[]*/
                        xcrref[1] = 8.92212458801008552e+02;
                        /*[]*/
                        xcrref[2] = 2.56238814582660871e+03;
                        /*[]*/
                        xcrref[3] = 2.19194343857831427e+03;
                        /*[]*/
                        xcrref[4] = 1.78078057261061185e+04;
                        /*[]*/
                        xceref[0] = 2.15986399716949279e+02;
                        /*[]*/
                        xceref[1] = 1.55789559239863600e+01;
                        /*[]*/
                        xceref[2] = 5.41318863077207766e+01;
                        /*[]*/
                        xceref[3] = 4.82262643154045421e+01;
                        /*[]*/
                        xceref[4] = 4.55902910043250358e+02;
                        /*[]*/
                        xciref = 6.66404553572181300e+01;
                    } else {
                    /*[]*/
                        /*[]*/
                        *verified = 0;
                    }
                }
            }
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        double _imopVarPre412;
        /*[]*/
        double _imopVarPre413;
        /*[]*/
        _imopVarPre412 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*[]*/
        _imopVarPre413 = fabs(_imopVarPre412);
        /*[]*/
        /*[]*/
        xcrdif[m] = _imopVarPre413;
        /*[]*/
        double _imopVarPre415;
        /*[]*/
        double _imopVarPre416;
        /*[]*/
        _imopVarPre415 = (xce[m] - xceref[m]) / xceref[m];
        /*[]*/
        _imopVarPre416 = fabs(_imopVarPre415);
        /*[]*/
        /*[]*/
        xcedif[m] = _imopVarPre416;
    }
    /*[]*/
    double _imopVarPre418;
    /*[]*/
    double _imopVarPre419;
    /*[]*/
    _imopVarPre418 = (xci - xciref) / xciref;
    /*[]*/
    _imopVarPre419 = fabs(_imopVarPre418);
    /*[]*/
    /*[]*/
    xcidif = _imopVarPre419;
    /*[]*/
    /*[]*/
    if (*class != 'U') {
    /*[]*/
        /*[]*/
        char _imopVarPre421;
        /*[]*/
        _imopVarPre421 = *class;
        /*[]*/
        printf("\n Verification being performed for class %1c\n", _imopVarPre421);
        /*[]*/
        /*[]*/
        printf(" Accuracy setting for epsilon = %20.13e\n", epsilon);
        /*[]*/
        /*[]*/
        double _imopVarPre424;
        /*[]*/
        double _imopVarPre425;
        /*[]*/
        _imopVarPre424 = dt - dtref;
        /*[]*/
        _imopVarPre425 = fabs(_imopVarPre424);
        /*[]*/
        /*[]*/
        /*[]*/
        if (_imopVarPre425 > epsilon) {
        /*[]*/
            /*[]*/
            *verified = 0;
            /*[]*/
            *class = 'U';
            /*[]*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*[]*/
        }
    } else {
    /*[]*/
        /*[]*/
        printf(" Unknown class\n");
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (*class != 'U') {
    /*[]*/
        /*[]*/
        printf(" Comparison of RMS-norms of residual\n");
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf(" RMS-norms of residual\n");
        /*[]*/
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (*class == 'U') {
        /*[]*/
            /*[]*/
            double _imopVarPre427;
            /*[]*/
            _imopVarPre427 = xcr[m];
            /*[]*/
            printf("          %2d  %20.13e\n", m, _imopVarPre427);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            /*[]*/
            if (xcrdif[m] > epsilon) {
            /*[]*/
                /*[]*/
                *verified = 0;
                /*[]*/
                double _imopVarPre431;
                /*[]*/
                double _imopVarPre432;
                /*[]*/
                double _imopVarPre433;
                /*[]*/
                _imopVarPre431 = xcrdif[m];
                /*[]*/
                _imopVarPre432 = xcrref[m];
                /*[]*/
                _imopVarPre433 = xcr[m];
                /*[]*/
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre433, _imopVarPre432, _imopVarPre431);
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                double _imopVarPre437;
                /*[]*/
                double _imopVarPre438;
                /*[]*/
                double _imopVarPre439;
                /*[]*/
                _imopVarPre437 = xcrdif[m];
                /*[]*/
                _imopVarPre438 = xcrref[m];
                /*[]*/
                _imopVarPre439 = xcr[m];
                /*[]*/
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre439, _imopVarPre438, _imopVarPre437);
                /*[]*/
            }
        }
    }
    /*[]*/
    /*[]*/
    if (*class != 'U') {
    /*[]*/
        /*[]*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf(" RMS-norms of solution error\n");
        /*[]*/
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (m = 0; m < 5; m++) {
    /*[]*/
        /*[]*/
        /*[]*/
        if (*class == 'U') {
        /*[]*/
            /*[]*/
            double _imopVarPre441;
            /*[]*/
            _imopVarPre441 = xce[m];
            /*[]*/
            printf("          %2d  %20.13e\n", m, _imopVarPre441);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            /*[]*/
            if (xcedif[m] > epsilon) {
            /*[]*/
                /*[]*/
                *verified = 0;
                /*[]*/
                double _imopVarPre445;
                /*[]*/
                double _imopVarPre446;
                /*[]*/
                double _imopVarPre447;
                /*[]*/
                _imopVarPre445 = xcedif[m];
                /*[]*/
                _imopVarPre446 = xceref[m];
                /*[]*/
                _imopVarPre447 = xce[m];
                /*[]*/
                printf(" FAILURE: %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre447, _imopVarPre446, _imopVarPre445);
                /*[]*/
            } else {
            /*[]*/
                /*[]*/
                double _imopVarPre451;
                /*[]*/
                double _imopVarPre452;
                /*[]*/
                double _imopVarPre453;
                /*[]*/
                _imopVarPre451 = xcedif[m];
                /*[]*/
                _imopVarPre452 = xceref[m];
                /*[]*/
                _imopVarPre453 = xce[m];
                /*[]*/
                printf("          %2d  %20.13e%20.13e%20.13e\n", m, _imopVarPre453, _imopVarPre452, _imopVarPre451);
                /*[]*/
            }
        }
    }
    /*[]*/
    /*[]*/
    if (*class != 'U') {
    /*[]*/
        /*[]*/
        printf(" Comparison of surface integral\n");
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        printf(" Surface integral\n");
        /*[]*/
    }
    /*[]*/
    /*[]*/
    if (*class == 'U') {
    /*[]*/
        /*[]*/
        printf("              %20.13e\n", xci);
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        /*[]*/
        if (xcidif > epsilon) {
        /*[]*/
            /*[]*/
            *verified = 0;
            /*[]*/
            printf(" FAILURE:     %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            printf("              %20.13e%20.13e%20.13e\n", xci, xciref, xcidif);
            /*[]*/
        }
    }
    /*[]*/
    /*[]*/
    if (*class == 'U') {
    /*[]*/
        /*[]*/
        printf(" No reference values provided\n");
        /*[]*/
        /*[]*/
        printf(" No verification performed\n");
        /*[]*/
    } else {
    /*[]*/
        /*[]*/
        /*[]*/
        if (*verified) {
        /*[]*/
            /*[]*/
            printf(" Verification Successful\n");
            /*[]*/
        } else {
        /*[]*/
            /*[]*/
            printf(" Verification failed\n");
            /*[]*/
        }
    }
}
