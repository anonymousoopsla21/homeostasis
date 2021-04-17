
/*READ_S: []
WRITE_S: []*/
typedef long long __int64_t;
/*READ_S: []
WRITE_S: []*/
typedef __int64_t __darwin_off_t;
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
WRITE_S: [exit]*/
void exit(int );
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
WRITE_S: [grid_points, grid_points.f]*/
static int grid_points[3];
/*READ_S: []
WRITE_S: [tx1]*/
static double tx1;
/*READ_S: []
WRITE_S: [tx2]*/
static double tx2;
/*READ_S: []
WRITE_S: [tx3]*/
static double tx3;
/*READ_S: []
WRITE_S: [ty1]*/
static double ty1;
/*READ_S: []
WRITE_S: [ty2]*/
static double ty2;
/*READ_S: []
WRITE_S: [ty3]*/
static double ty3;
/*READ_S: []
WRITE_S: [tz1]*/
static double tz1;
/*READ_S: []
WRITE_S: [tz2]*/
static double tz2;
/*READ_S: []
WRITE_S: [tz3]*/
static double tz3;
/*READ_S: []
WRITE_S: [dx1]*/
static double dx1;
/*READ_S: []
WRITE_S: [dx2]*/
static double dx2;
/*READ_S: []
WRITE_S: [dx3]*/
static double dx3;
/*READ_S: []
WRITE_S: [dx4]*/
static double dx4;
/*READ_S: []
WRITE_S: [dx5]*/
static double dx5;
/*READ_S: []
WRITE_S: [dy1]*/
static double dy1;
/*READ_S: []
WRITE_S: [dy2]*/
static double dy2;
/*READ_S: []
WRITE_S: [dy3]*/
static double dy3;
/*READ_S: []
WRITE_S: [dy4]*/
static double dy4;
/*READ_S: []
WRITE_S: [dy5]*/
static double dy5;
/*READ_S: []
WRITE_S: [dz1]*/
static double dz1;
/*READ_S: []
WRITE_S: [dz2]*/
static double dz2;
/*READ_S: []
WRITE_S: [dz3]*/
static double dz3;
/*READ_S: []
WRITE_S: [dz4]*/
static double dz4;
/*READ_S: []
WRITE_S: [dz5]*/
static double dz5;
/*READ_S: []
WRITE_S: [dssp]*/
static double dssp;
/*READ_S: []
WRITE_S: [dt]*/
static double dt;
/*READ_S: []
WRITE_S: [ce.f, ce]*/
static double ce[13][5];
/*READ_S: []
WRITE_S: [dxmax]*/
static double dxmax;
/*READ_S: []
WRITE_S: [dymax]*/
static double dymax;
/*READ_S: []
WRITE_S: [dzmax]*/
static double dzmax;
/*READ_S: []
WRITE_S: [xxcon1]*/
static double xxcon1;
/*READ_S: []
WRITE_S: [xxcon2]*/
static double xxcon2;
/*READ_S: []
WRITE_S: [xxcon3]*/
static double xxcon3;
/*READ_S: []
WRITE_S: [xxcon4]*/
static double xxcon4;
/*READ_S: []
WRITE_S: [xxcon5]*/
static double xxcon5;
/*READ_S: []
WRITE_S: [dx1tx1]*/
static double dx1tx1;
/*READ_S: []
WRITE_S: [dx2tx1]*/
static double dx2tx1;
/*READ_S: []
WRITE_S: [dx3tx1]*/
static double dx3tx1;
/*READ_S: []
WRITE_S: [dx4tx1]*/
static double dx4tx1;
/*READ_S: []
WRITE_S: [dx5tx1]*/
static double dx5tx1;
/*READ_S: []
WRITE_S: [yycon1]*/
static double yycon1;
/*READ_S: []
WRITE_S: [yycon2]*/
static double yycon2;
/*READ_S: []
WRITE_S: [yycon3]*/
static double yycon3;
/*READ_S: []
WRITE_S: [yycon4]*/
static double yycon4;
/*READ_S: []
WRITE_S: [yycon5]*/
static double yycon5;
/*READ_S: []
WRITE_S: [dy1ty1]*/
static double dy1ty1;
/*READ_S: []
WRITE_S: [dy2ty1]*/
static double dy2ty1;
/*READ_S: []
WRITE_S: [dy3ty1]*/
static double dy3ty1;
/*READ_S: []
WRITE_S: [dy4ty1]*/
static double dy4ty1;
/*READ_S: []
WRITE_S: [dy5ty1]*/
static double dy5ty1;
/*READ_S: []
WRITE_S: [zzcon1]*/
static double zzcon1;
/*READ_S: []
WRITE_S: [zzcon2]*/
static double zzcon2;
/*READ_S: []
WRITE_S: [zzcon3]*/
static double zzcon3;
/*READ_S: []
WRITE_S: [zzcon4]*/
static double zzcon4;
/*READ_S: []
WRITE_S: [zzcon5]*/
static double zzcon5;
/*READ_S: []
WRITE_S: [dz1tz1]*/
static double dz1tz1;
/*READ_S: []
WRITE_S: [dz2tz1]*/
static double dz2tz1;
/*READ_S: []
WRITE_S: [dz3tz1]*/
static double dz3tz1;
/*READ_S: []
WRITE_S: [dz4tz1]*/
static double dz4tz1;
/*READ_S: []
WRITE_S: [dz5tz1]*/
static double dz5tz1;
/*READ_S: []
WRITE_S: [dnxm1]*/
static double dnxm1;
/*READ_S: []
WRITE_S: [dnym1]*/
static double dnym1;
/*READ_S: []
WRITE_S: [dnzm1]*/
static double dnzm1;
/*READ_S: []
WRITE_S: [c1c2]*/
static double c1c2;
/*READ_S: []
WRITE_S: [c1c5]*/
static double c1c5;
/*READ_S: []
WRITE_S: [c3c4]*/
static double c3c4;
/*READ_S: []
WRITE_S: [c1345]*/
static double c1345;
/*READ_S: []
WRITE_S: [conz1]*/
static double conz1;
/*READ_S: []
WRITE_S: [c1]*/
static double c1;
/*READ_S: []
WRITE_S: [c2]*/
static double c2;
/*READ_S: []
WRITE_S: [c3]*/
static double c3;
/*READ_S: []
WRITE_S: [c4]*/
static double c4;
/*READ_S: []
WRITE_S: [c5]*/
static double c5;
/*READ_S: []
WRITE_S: [c4dssp]*/
static double c4dssp;
/*READ_S: []
WRITE_S: [c5dssp]*/
static double c5dssp;
/*READ_S: []
WRITE_S: [dtdssp]*/
static double dtdssp;
/*READ_S: []
WRITE_S: [dttx1]*/
static double dttx1;
/*READ_S: []
WRITE_S: [bt]*/
static double bt;
/*READ_S: []
WRITE_S: [dttx2]*/
static double dttx2;
/*READ_S: []
WRITE_S: [dtty1]*/
static double dtty1;
/*READ_S: []
WRITE_S: [dtty2]*/
static double dtty2;
/*READ_S: []
WRITE_S: [dttz1]*/
static double dttz1;
/*READ_S: []
WRITE_S: [dttz2]*/
static double dttz2;
/*READ_S: []
WRITE_S: [c2dttx1]*/
static double c2dttx1;
/*READ_S: []
WRITE_S: [c2dtty1]*/
static double c2dtty1;
/*READ_S: []
WRITE_S: [c2dttz1]*/
static double c2dttz1;
/*READ_S: []
WRITE_S: [comz1]*/
static double comz1;
/*READ_S: []
WRITE_S: [comz4]*/
static double comz4;
/*READ_S: []
WRITE_S: [comz5]*/
static double comz5;
/*READ_S: []
WRITE_S: [comz6]*/
static double comz6;
/*READ_S: []
WRITE_S: [c3c4tx3]*/
static double c3c4tx3;
/*READ_S: []
WRITE_S: [c3c4ty3]*/
static double c3c4ty3;
/*READ_S: []
WRITE_S: [c3c4tz3]*/
static double c3c4tz3;
/*READ_S: []
WRITE_S: [c2iv]*/
static double c2iv;
/*READ_S: []
WRITE_S: [con43]*/
static double con43;
/*READ_S: []
WRITE_S: [con16]*/
static double con16;
/*READ_S: []
WRITE_S: [u.f, u]*/
static double u[5][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [us.f, us]*/
static double us[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [vs, vs.f]*/
static double vs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [ws.f, ws]*/
static double ws[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [qs.f, qs]*/
static double qs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [ainv, ainv.f]*/
static double ainv[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [rho_i, rho_i.f]*/
static double rho_i[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [speed.f, speed]*/
static double speed[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [square, square.f]*/
static double square[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [rhs, rhs.f]*/
static double rhs[5][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [forcing, forcing.f]*/
static double forcing[5][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [lhs, lhs.f]*/
static double lhs[15][12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [cv.f, cv]*/
static double cv[12];
/*READ_S: []
WRITE_S: [rhon.f, rhon]*/
static double rhon[12];
/*READ_S: []
WRITE_S: [rhos.f, rhos]*/
static double rhos[12];
/*READ_S: []
WRITE_S: [rhoq.f, rhoq]*/
static double rhoq[12];
/*READ_S: []
WRITE_S: [cuf, cuf.f]*/
static double cuf[12];
/*READ_S: []
WRITE_S: [q.f, q]*/
static double q[12];
/*READ_S: []
WRITE_S: [ue.f, ue]*/
static double ue[5][12];
/*READ_S: []
WRITE_S: [buf, buf.f]*/
static double buf[5][12];
/*READ_S: []
WRITE_S: [add]*/
static void add(void );
/*READ_S: []
WRITE_S: [adi]*/
static void adi(void );
/*READ_S: []
WRITE_S: [error_norm]*/
static void error_norm(double rms[5]);
/*READ_S: []
WRITE_S: [rhs_norm]*/
static void rhs_norm(double rms[5]);
/*READ_S: []
WRITE_S: [exact_rhs]*/
static void exact_rhs(void );
/*READ_S: []
WRITE_S: [exact_solution]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]);
/*READ_S: []
WRITE_S: [initialize]*/
static void initialize(void );
/*READ_S: []
WRITE_S: [lhsinit]*/
static void lhsinit(void );
/*READ_S: []
WRITE_S: [lhsx]*/
static void lhsx(void );
/*READ_S: []
WRITE_S: [lhsy]*/
static void lhsy(void );
/*READ_S: []
WRITE_S: [lhsz]*/
static void lhsz(void );
/*READ_S: []
WRITE_S: [ninvr]*/
static void ninvr(void );
/*READ_S: []
WRITE_S: [pinvr]*/
static void pinvr(void );
/*READ_S: []
WRITE_S: [compute_rhs]*/
static void compute_rhs(void );
/*READ_S: []
WRITE_S: [set_constants]*/
static void set_constants(void );
/*READ_S: []
WRITE_S: [txinvr]*/
static void txinvr(void );
/*READ_S: []
WRITE_S: [tzetar]*/
static void tzetar(void );
/*READ_S: []
WRITE_S: [verify]*/
static void verify(int no_time_steps, char *class , boolean *verified);
/*READ_S: []
WRITE_S: [x_solve]*/
static void x_solve(void );
/*READ_S: []
WRITE_S: [y_solve]*/
static void y_solve(void );
/*READ_S: []
WRITE_S: [z_solve]*/
static void z_solve(void );
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [z_solve, x_solve, rhon.f, _imopVarPre2077, xxcon2, grid_points.f, _imopVarPre168, square.f, dx5, _imopVarPre2163, q, dymax, c2, dz3tz1, timer_read, rhon, c1c5, c3c4tx3, xxcon3, i, ue.f, _imopVarPre2162, dx4, _imopVarPre727, m, buf, c1, _imopVarPre715, fscanf, k, verify, _imopVarPre1345, j, _imopVarPre2079, comz5, pinvr, adi, _imopVarPre2091, dt, ue, speed, buf.f, c_print_results, yycon5, xxcon1, i, speed.f, tzetar, c3c4ty3, comz4, conz1, grid_points, dtdssp, dx4tx1, rho_i.f, square, _imopVarPre2164, dy2ty1, _imopVarPre717, yycon4, lhs, dxmax, us.f, c3c4, dx5tx1, timer_clear, dz2tz1, i, i, c2dttz1, dttz1, rhos.f, zzcon1, verified, &dt, lhs.f, cuf, i, yycon3, comz6, _imopVarPre2170, us, i, c3c4tz3, rhos, txinvr, _imopVarPre2143, _imopVarPre1353, cuf.f, fgetc, j, yycon2, dx1tx1, _imopVarPre2087, vs.f, xxcon4, printf, c2dtty1, dtty1, rhoq.f, dy5ty1, fabs, fopen, _imopVarPre1451, rhs.f, con16, dy1ty1, vs, yycon1, xxcon5, exact_solution, dttz2, rhoq, _imopVarPre1343, pow, rhs, _imopVarPre2141, _imopVarPre1355, dnzm1, i, dz1tz1, _imopVarPre2169, y_solve, ws.f, xce.f, tz1, _imopVarPre2182, c2dttx1, _imopVarPre1449, dttx1, dnym1, zzcon5, dz1, _imopVarPre2175, ainv.f, _imopVarPre1981, timer_stop, dssp, ws, dtty2, zzcon4, dz5tz1, m, _imopVarPre2174, ainv, _imopVarPre2151, dy4ty1, timer_start, ty1, tz3, _imopVarPre2180, dx2tx1, zzcon3, dz3, _imopVarPre2099, dy1, _imopVarPre831, exit, lhsx, _imopVarPre2168, c2iv, dzmax, _imopVarPre2181, tz2, sqrt, u.f, dttx2, zzcon2, dz2, lhsy, i, _imopVarPre2158, qs.f, c1c2, rhs_norm, tx1, i, ty3, u, rho_i, j, dz5, dy3, dx1, set_constants, _imopVarPre821, xcr.f, lhsinit, lhsz, _imopVarPre2157, _imopVarPre1973, _imopVarPre160, exact_rhs, qs, dz4tz1, add, ninvr, ty2, cv.f, c5, dz4, dnxm1, dy2, nullCell, _imopVarPre2156, ce.f, forcing.f, comz1, tx3, _imopVarPre1459, j, c4, cv, dy5, bt, dx3, initialize, _imopVarPre823, _imopVarPre2095, _imopVarPre1971, dx3tx1, _imopVarPre1983, error_norm, forcing, ce, fclose, compute_rhs, tx2, i, i, q.f, c3, dy3ty1, dy4, dx2, con43, _imopVarPre725, _imopVarPre2176]
WRITE_S: [xce.f, ws.f, rhon.f, tz1, xxcon2, grid_points.f, c2dttx1, dttx1, dx5, square.f, dnym1, dymax, c2, zzcon5, dz1, dz3tz1, ainv.f, dssp, c1c5, xxcon3, c3c4tx3, ue.f, dtty2, dx4, zzcon4, c1, dz5tz1, dy4ty1, comz5, ty1, tz3, dx2tx1, dt, zzcon3, c1345, dz3, dy1, buf.f, yycon5, xxcon1, c2iv, speed.f, dzmax, tz2, c3c4ty3, comz4, conz1, u.f, dtdssp, dx4tx1, rho_i.f, dttx2, zzcon2, dy2ty1, dz2, yycon4, u_exact.f, dxmax, qs.f, c1c2, us.f, c3c4, dx5tx1, tx1, ty3, dz2tz1, c2dttz1, dttz1, rhos.f, zzcon1, c4dssp, dz5, dy3, dx1, lhs.f, xcr.f, yycon3, dz4tz1, comz6, ty2, c3c4tz3, cv.f, c5, dnxm1, dz4, dy2, c5dssp, nullCell, cuf.f, yycon2, ce.f, forcing.f, dx1tx1, vs.f, xxcon4, comz1, tx3, c2dtty1, c4, dtty1, rhoq.f, dy5ty1, dy5, bt, dx3, rhs.f, con16, dx3tx1, Pface.f, dy1ty1, yycon1, xxcon5, temp.f, tx2, q.f, c3, dttz2, dy3ty1, dy4, con43, dx2, dz1tz1, dnzm1]*/
int main(int argc, char **argv) {
/*READ_S: [z_solve, x_solve, rhon.f, _imopVarPre2077, xxcon2, grid_points.f, _imopVarPre168, square.f, dx5, _imopVarPre2163, q, dymax, c2, dz3tz1, timer_read, rhon, c1c5, c3c4tx3, xxcon3, i, ue.f, _imopVarPre2162, dx4, _imopVarPre727, m, buf, c1, _imopVarPre715, fscanf, k, verify, _imopVarPre1345, j, _imopVarPre2079, comz5, pinvr, adi, _imopVarPre2091, dt, ue, speed, buf.f, c_print_results, yycon5, xxcon1, i, speed.f, tzetar, c3c4ty3, comz4, conz1, grid_points, dtdssp, dx4tx1, rho_i.f, square, _imopVarPre2164, dy2ty1, _imopVarPre717, yycon4, lhs, dxmax, us.f, c3c4, dx5tx1, timer_clear, dz2tz1, i, i, c2dttz1, dttz1, rhos.f, zzcon1, verified, &dt, lhs.f, cuf, i, yycon3, comz6, _imopVarPre2170, us, i, c3c4tz3, rhos, txinvr, _imopVarPre2143, _imopVarPre1353, cuf.f, fgetc, j, yycon2, dx1tx1, _imopVarPre2087, vs.f, xxcon4, printf, c2dtty1, dtty1, rhoq.f, dy5ty1, fabs, fopen, _imopVarPre1451, rhs.f, con16, dy1ty1, vs, yycon1, xxcon5, exact_solution, dttz2, rhoq, _imopVarPre1343, pow, rhs, _imopVarPre2141, _imopVarPre1355, dnzm1, i, dz1tz1, _imopVarPre2169, y_solve, ws.f, xce.f, tz1, _imopVarPre2182, c2dttx1, _imopVarPre1449, dttx1, dnym1, zzcon5, dz1, _imopVarPre2175, ainv.f, _imopVarPre1981, timer_stop, dssp, ws, dtty2, zzcon4, dz5tz1, m, _imopVarPre2174, ainv, _imopVarPre2151, dy4ty1, timer_start, ty1, tz3, _imopVarPre2180, dx2tx1, zzcon3, dz3, _imopVarPre2099, dy1, _imopVarPre831, exit, lhsx, _imopVarPre2168, c2iv, dzmax, _imopVarPre2181, tz2, sqrt, u.f, dttx2, zzcon2, dz2, lhsy, i, _imopVarPre2158, qs.f, c1c2, rhs_norm, tx1, i, ty3, u, rho_i, j, dz5, dy3, dx1, set_constants, _imopVarPre821, xcr.f, lhsinit, lhsz, _imopVarPre2157, _imopVarPre1973, _imopVarPre160, exact_rhs, qs, dz4tz1, add, ninvr, ty2, cv.f, c5, dz4, dnxm1, dy2, nullCell, _imopVarPre2156, ce.f, forcing.f, comz1, tx3, _imopVarPre1459, j, c4, cv, dy5, bt, dx3, initialize, _imopVarPre823, _imopVarPre2095, _imopVarPre1971, dx3tx1, _imopVarPre1983, error_norm, forcing, ce, fclose, compute_rhs, tx2, i, i, q.f, c3, dy3ty1, dy4, dx2, con43, _imopVarPre725, _imopVarPre2176]
WRITE_S: [xce.f, ws.f, rhon.f, tz1, xxcon2, grid_points.f, c2dttx1, dttx1, dx5, square.f, dnym1, dymax, c2, zzcon5, dz1, dz3tz1, ainv.f, dssp, c1c5, xxcon3, c3c4tx3, ue.f, dtty2, dx4, zzcon4, c1, dz5tz1, dy4ty1, comz5, ty1, tz3, dx2tx1, dt, zzcon3, c1345, dz3, dy1, buf.f, yycon5, xxcon1, c2iv, speed.f, dzmax, tz2, c3c4ty3, comz4, conz1, u.f, dtdssp, dx4tx1, rho_i.f, dttx2, zzcon2, dy2ty1, dz2, yycon4, u_exact.f, dxmax, qs.f, c1c2, us.f, c3c4, dx5tx1, tx1, ty3, dz2tz1, c2dttz1, dttz1, rhos.f, zzcon1, c4dssp, dz5, dy3, dx1, lhs.f, xcr.f, yycon3, dz4tz1, comz6, ty2, c3c4tz3, cv.f, c5, dnxm1, dz4, dy2, c5dssp, nullCell, cuf.f, yycon2, ce.f, forcing.f, dx1tx1, vs.f, xxcon4, comz1, tx3, c2dtty1, c4, dtty1, rhoq.f, dy5ty1, dy5, bt, dx3, rhs.f, con16, dx3tx1, Pface.f, dy1ty1, yycon1, xxcon5, temp.f, tx2, q.f, c3, dttz2, dy3ty1, dy4, con43, dx2, dz1tz1, dnzm1]*/
    /*READ_S: []
    WRITE_S: []*/
    int niter;
    /*READ_S: []
    WRITE_S: []*/
    int step;
    /*READ_S: []
    WRITE_S: []*/
    double mflops;
    /*READ_S: []
    WRITE_S: []*/
    double tmax;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads = 1;
    /*READ_S: []
    WRITE_S: []*/
    boolean verified;
    /*READ_S: []
    WRITE_S: []*/
    char class;
    /*READ_S: []
    WRITE_S: []*/
    FILE *fp;
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - SP Benchmark\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fopen]
    WRITE_S: []*/
    fp = fopen("inputsp.data", "r");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, grid_points, grid_points.f, dt, fclose, &dt, nullCell, fscanf, fgetc]
    WRITE_S: [grid_points.f, dt, nullCell]*/
    if (fp != ((void *) 0)) {
    /*READ_S: [printf, grid_points, grid_points.f, dt, fclose, &dt, nullCell, fscanf, fgetc]
    WRITE_S: [grid_points.f, dt, nullCell]*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Reading from input file inputsp.data\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre141;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre141 = &niter;
        /*READ_S: [nullCell, fscanf]
        WRITE_S: [nullCell]*/
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
        double *_imopVarPre145;
        /*READ_S: [&dt]
        WRITE_S: []*/
        _imopVarPre145 = &dt;
        /*READ_S: [dt, nullCell, fscanf]
        WRITE_S: [dt, nullCell]*/
        fscanf(fp, "%lf", _imopVarPre145);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre147;
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        _imopVarPre147 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
        while (_imopVarPre147 != '\n') {
        /*READ_S: [nullCell, fgetc]
        WRITE_S: [nullCell]*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [nullCell, fgetc]
            WRITE_S: [nullCell]*/
            _imopVarPre147 = fgetc(fp);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre151;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre152;
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre153;
        /*READ_S: [grid_points]
        WRITE_S: []*/
        _imopVarPre151 = &grid_points[2];
        /*READ_S: [grid_points]
        WRITE_S: []*/
        _imopVarPre152 = &grid_points[1];
        /*READ_S: [grid_points]
        WRITE_S: []*/
        _imopVarPre153 = &grid_points[0];
        /*READ_S: [grid_points.f, nullCell, fscanf]
        WRITE_S: [grid_points.f, nullCell]*/
        fscanf(fp, "%d%d%d", _imopVarPre153, _imopVarPre152, _imopVarPre151);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fclose, nullCell]
        WRITE_S: [nullCell]*/
        fclose(fp);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [grid_points, printf]
    WRITE_S: [grid_points.f, dt]*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" No input file inputsp.data. Using compiled defaults");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        niter = 100;
        /*READ_S: []
        WRITE_S: [dt]*/
        dt = 0.015;
        /*READ_S: [grid_points]
        WRITE_S: [grid_points.f]*/
        grid_points[0] = 12;
        /*READ_S: [grid_points]
        WRITE_S: [grid_points.f]*/
        grid_points[1] = 12;
        /*READ_S: [grid_points]
        WRITE_S: [grid_points.f]*/
        grid_points[2] = 12;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre157;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre158;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre159;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre157 = grid_points[2];
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre158 = grid_points[1];
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre159 = grid_points[0];
    /*READ_S: [printf]
    WRITE_S: []*/
    printf(" Size: %3dx%3dx%3d\n", _imopVarPre159, _imopVarPre158, _imopVarPre157);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, dt]
    WRITE_S: []*/
    printf(" Iterations: %3d   dt: %10.6f\n", niter, dt);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre160;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre161;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre160 = (grid_points[0] > 12);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    if (!_imopVarPre160) {
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        _imopVarPre161 = (grid_points[1] > 12);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        if (!_imopVarPre161) {
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            _imopVarPre161 = (grid_points[2] > 12);
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre160 = _imopVarPre161;
    }
    /*READ_S: [_imopVarPre160]
    WRITE_S: []*/
    /*READ_S: [printf, grid_points, exit, grid_points.f, _imopVarPre160]
    WRITE_S: []*/
    if (_imopVarPre160) {
    /*READ_S: [printf, grid_points, exit, grid_points.f]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre165;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre166;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre167;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        _imopVarPre165 = grid_points[2];
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        _imopVarPre166 = grid_points[1];
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        _imopVarPre167 = grid_points[0];
        /*READ_S: [printf]
        WRITE_S: []*/
        printf("%d, %d, %d\n", _imopVarPre167, _imopVarPre166, _imopVarPre165);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Problem size too big for compiled array sizes\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [exit]
        WRITE_S: []*/
        exit(1);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [set_constants]
    WRITE_S: []*/
    set_constants();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [initialize]
    WRITE_S: []*/
    initialize();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lhsinit]
    WRITE_S: []*/
    lhsinit();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [exact_rhs]
    WRITE_S: []*/
    exact_rhs();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [adi]
    WRITE_S: []*/
    adi();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [initialize]
    WRITE_S: []*/
    initialize();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_clear]
    WRITE_S: []*/
    timer_clear(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [timer_start]
    WRITE_S: []*/
    timer_start(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [z_solve, y_solve, x_solve, ws.f, rhon.f, _imopVarPre2077, xxcon2, grid_points.f, _imopVarPre168, c2dttx1, _imopVarPre1449, dttx1, square.f, dx5, dymax, c2, zzcon5, dz1, dz3tz1, ainv.f, _imopVarPre1981, dssp, ws, rhon, c1c5, xxcon3, i, dtty2, _imopVarPre727, m, zzcon4, c1, _imopVarPre715, dz5tz1, m, k, ainv, _imopVarPre1345, j, dy4ty1, _imopVarPre2079, comz5, pinvr, adi, dx2tx1, dt, speed, zzcon3, dy1, _imopVarPre831, yycon5, lhsx, i, speed.f, c2iv, tzetar, dzmax, comz4, tz2, sqrt, u.f, grid_points, dx4tx1, rho_i.f, square, dttx2, zzcon2, _imopVarPre717, dy2ty1, yycon4, lhsy, lhs, i, dxmax, qs.f, c1c2, us.f, c3c4, dx5tx1, i, dz2tz1, i, i, c2dttz1, dttz1, u, rho_i, rhos.f, j, dz5, dy3, dx1, lhs.f, _imopVarPre821, i, lhsz, yycon3, _imopVarPre1973, qs, dz4tz1, add, ninvr, comz6, us, ty2, cv.f, rhos, txinvr, _imopVarPre1353, dz4, j, yycon2, forcing.f, dx1tx1, _imopVarPre2087, vs.f, xxcon4, comz1, _imopVarPre1459, c2dtty1, printf, j, dtty1, cv, rhoq.f, bt, dy5ty1, dy5, _imopVarPre1451, _imopVarPre823, rhs.f, _imopVarPre1971, dx3tx1, _imopVarPre1983, dy1ty1, forcing, vs, compute_rhs, xxcon5, tx2, i, i, dttz2, dy3ty1, rhoq, dx2, con43, _imopVarPre1343, _imopVarPre725, rhs, _imopVarPre1355, i, dz1tz1]
    WRITE_S: [qs.f, speed.f, ws.f, rhon.f, us.f, vs.f, u.f, cv.f, rho_i.f, rhos.f, square.f, rhoq.f, lhs.f, rhs.f, ainv.f]*/
    for (step = 1; step <= niter; step++) {
    /*READ_S: [z_solve, y_solve, x_solve, ws.f, rhon.f, _imopVarPre2077, xxcon2, grid_points.f, _imopVarPre168, c2dttx1, _imopVarPre1449, dttx1, square.f, dx5, dymax, c2, zzcon5, dz1, dz3tz1, ainv.f, _imopVarPre1981, dssp, ws, rhon, c1c5, xxcon3, i, dtty2, _imopVarPre727, m, zzcon4, c1, _imopVarPre715, dz5tz1, m, k, ainv, _imopVarPre1345, j, dy4ty1, _imopVarPre2079, comz5, pinvr, adi, dx2tx1, dt, speed, zzcon3, dy1, _imopVarPre831, yycon5, lhsx, i, speed.f, c2iv, tzetar, dzmax, comz4, tz2, sqrt, u.f, grid_points, dx4tx1, rho_i.f, square, dttx2, zzcon2, _imopVarPre717, dy2ty1, yycon4, lhsy, lhs, i, dxmax, qs.f, c1c2, us.f, c3c4, dx5tx1, i, dz2tz1, i, i, c2dttz1, dttz1, u, rho_i, rhos.f, j, dz5, dy3, dx1, lhs.f, _imopVarPre821, i, lhsz, yycon3, _imopVarPre1973, qs, dz4tz1, add, ninvr, comz6, us, ty2, cv.f, rhos, txinvr, _imopVarPre1353, dz4, j, yycon2, forcing.f, dx1tx1, _imopVarPre2087, vs.f, xxcon4, comz1, _imopVarPre1459, c2dtty1, printf, j, dtty1, cv, rhoq.f, bt, dy5ty1, dy5, _imopVarPre1451, _imopVarPre823, rhs.f, _imopVarPre1971, dx3tx1, _imopVarPre1983, dy1ty1, forcing, vs, compute_rhs, xxcon5, tx2, i, i, dttz2, dy3ty1, rhoq, dx2, con43, _imopVarPre1343, _imopVarPre725, rhs, _imopVarPre1355, i, dz1tz1]
    WRITE_S: [qs.f, speed.f, ws.f, rhon.f, us.f, vs.f, u.f, cv.f, rho_i.f, rhos.f, square.f, rhoq.f, lhs.f, rhs.f, ainv.f]*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre168;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre168 = step % 20 == 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        if (!_imopVarPre168) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre168 = step == 1;
        }
        /*READ_S: [_imopVarPre168]
        WRITE_S: []*/
        /*READ_S: [printf, _imopVarPre168]
        WRITE_S: []*/
        if (_imopVarPre168) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" Time step %4d\n", step);
            /*READ_S: []
            WRITE_S: []*/
        }
        /*READ_S: [adi]
        WRITE_S: []*/
        adi();
        /*READ_S: []
        WRITE_S: []*/
    }
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
    tmax = timer_read(1);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int *_imopVarPre171;
    /*READ_S: []
    WRITE_S: []*/
    char *_imopVarPre172;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre171 = &verified;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre172 = &class;
    /*READ_S: [verify]
    WRITE_S: []*/
    verify(niter, _imopVarPre172, _imopVarPre171);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [pow]
    WRITE_S: []*/
    if (tmax != 0) {
    /*READ_S: [pow]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre179;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre180;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre179 = (double) 12;
        /*READ_S: [pow]
        WRITE_S: []*/
        _imopVarPre180 = pow(_imopVarPre179, 3.0);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        mflops = (881.174 * _imopVarPre180 - 4683.91 * (((double) 12) * ((double) 12)) + 11484.5 * (double) 12 - 19272.4) * (double) niter / (tmax * 1000000.0);
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        mflops = 0.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre184;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre185;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre186;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre184 = grid_points[2];
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre185 = grid_points[1];
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre186 = grid_points[0];
    /*READ_S: [c_print_results]
    WRITE_S: []*/
    c_print_results("SP", class, _imopVarPre186, _imopVarPre185, _imopVarPre184, niter, nthreads, tmax, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [u.f, grid_points, grid_points.f, u, rhs, m, rhs.f]
WRITE_S: [u.f]*/
static void add(void ) {
/*READ_S: [u.f, grid_points, grid_points.f, u, rhs, m, rhs.f]
WRITE_S: [u.f]*/
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
    int m;
    /*READ_S: [u.f, grid_points, grid_points.f, u, rhs, m, rhs.f]
    WRITE_S: [u.f]*/
#pragma omp for nowait
    /*READ_S: [m]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [u.f, grid_points, grid_points.f, u, rhs, rhs.f]
    WRITE_S: [u.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u.f, grid_points, grid_points.f, u, rhs, rhs.f]
        WRITE_S: [u.f]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [u.f, grid_points, grid_points.f, u, rhs, rhs.f]
        WRITE_S: [u.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, grid_points, grid_points.f, u, rhs, rhs.f]
            WRITE_S: [u.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [u.f, grid_points, grid_points.f, u, rhs, rhs.f]
            WRITE_S: [u.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u.f, grid_points, grid_points.f, u, rhs, rhs.f]
                WRITE_S: [u.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [u.f, u, rhs, rhs.f]
                WRITE_S: [u.f]*/
                    /*READ_S: [u.f, u, rhs, rhs.f]
                    WRITE_S: [u.f]*/
                    u[m][i][j][k] = u[m][i][j][k] + rhs[m][i][j][k];
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
/*READ_S: [z_solve, y_solve, x_solve, ws.f, rhon.f, _imopVarPre2077, xxcon2, grid_points.f, c2dttx1, _imopVarPre1449, dttx1, square.f, dx5, dymax, c2, zzcon5, dz1, dz3tz1, ainv.f, _imopVarPre1981, dssp, ws, rhon, c1c5, xxcon3, i, dtty2, _imopVarPre727, m, zzcon4, c1, _imopVarPre715, dz5tz1, m, k, ainv, _imopVarPre1345, j, dy4ty1, _imopVarPre2079, comz5, pinvr, dx2tx1, dt, speed, zzcon3, dy1, _imopVarPre831, yycon5, lhsx, i, speed.f, c2iv, tzetar, dzmax, comz4, tz2, sqrt, u.f, grid_points, dx4tx1, rho_i.f, square, dttx2, zzcon2, _imopVarPre717, dy2ty1, yycon4, lhsy, lhs, i, dxmax, qs.f, c1c2, us.f, c3c4, dx5tx1, i, dz2tz1, i, i, c2dttz1, dttz1, u, rho_i, rhos.f, j, dz5, dy3, dx1, lhs.f, _imopVarPre821, i, lhsz, yycon3, _imopVarPre1973, qs, dz4tz1, add, ninvr, comz6, us, ty2, cv.f, rhos, txinvr, _imopVarPre1353, dz4, j, yycon2, forcing.f, dx1tx1, _imopVarPre2087, vs.f, xxcon4, comz1, _imopVarPre1459, c2dtty1, j, dtty1, cv, rhoq.f, bt, dy5ty1, dy5, _imopVarPre1451, _imopVarPre823, rhs.f, _imopVarPre1971, dx3tx1, _imopVarPre1983, dy1ty1, forcing, vs, compute_rhs, xxcon5, tx2, i, i, dttz2, dy3ty1, rhoq, dx2, con43, _imopVarPre1343, _imopVarPre725, rhs, _imopVarPre1355, i, dz1tz1]
WRITE_S: [qs.f, speed.f, ws.f, rhon.f, us.f, vs.f, u.f, cv.f, rho_i.f, rhos.f, square.f, rhoq.f, lhs.f, rhs.f, ainv.f]*/
static void adi(void ) {
/*READ_S: [z_solve, y_solve, x_solve, ws.f, rhon.f, _imopVarPre2077, xxcon2, grid_points.f, c2dttx1, _imopVarPre1449, dttx1, square.f, dx5, dymax, c2, zzcon5, dz1, dz3tz1, ainv.f, _imopVarPre1981, dssp, ws, rhon, c1c5, xxcon3, i, dtty2, _imopVarPre727, m, zzcon4, c1, _imopVarPre715, dz5tz1, m, k, ainv, _imopVarPre1345, j, dy4ty1, _imopVarPre2079, comz5, pinvr, dx2tx1, dt, speed, zzcon3, dy1, _imopVarPre831, yycon5, lhsx, i, speed.f, c2iv, tzetar, dzmax, comz4, tz2, sqrt, u.f, grid_points, dx4tx1, rho_i.f, square, dttx2, zzcon2, _imopVarPre717, dy2ty1, yycon4, lhsy, lhs, i, dxmax, qs.f, c1c2, us.f, c3c4, dx5tx1, i, dz2tz1, i, i, c2dttz1, dttz1, u, rho_i, rhos.f, j, dz5, dy3, dx1, lhs.f, _imopVarPre821, i, lhsz, yycon3, _imopVarPre1973, qs, dz4tz1, add, ninvr, comz6, us, ty2, cv.f, rhos, txinvr, _imopVarPre1353, dz4, j, yycon2, forcing.f, dx1tx1, _imopVarPre2087, vs.f, xxcon4, comz1, _imopVarPre1459, c2dtty1, j, dtty1, cv, rhoq.f, bt, dy5ty1, dy5, _imopVarPre1451, _imopVarPre823, rhs.f, _imopVarPre1971, dx3tx1, _imopVarPre1983, dy1ty1, forcing, vs, compute_rhs, xxcon5, tx2, i, i, dttz2, dy3ty1, rhoq, dx2, con43, _imopVarPre1343, _imopVarPre725, rhs, _imopVarPre1355, i, dz1tz1]
WRITE_S: [qs.f, speed.f, ws.f, rhon.f, us.f, vs.f, u.f, cv.f, rho_i.f, rhos.f, square.f, rhoq.f, lhs.f, rhs.f, ainv.f]*/
    /*READ_S: [compute_rhs]
    WRITE_S: []*/
    compute_rhs();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [txinvr]
    WRITE_S: []*/
    txinvr();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [x_solve]
    WRITE_S: []*/
    x_solve();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [y_solve]
    WRITE_S: []*/
    y_solve();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [z_solve]
    WRITE_S: []*/
    z_solve();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [add]
    WRITE_S: []*/
    add();
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, xce.f, dnym1, dnxm1, sqrt, dnzm1]
WRITE_S: [u_exact.f, Pface.f, xce.f, temp.f]*/
static void error_norm(double rms[5]) {
/*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, xce.f, dnym1, dnxm1, sqrt, dnzm1]
WRITE_S: [u_exact.f, Pface.f, xce.f, temp.f]*/
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
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int d;
    /*READ_S: []
    WRITE_S: []*/
    double xi;
    /*READ_S: []
    WRITE_S: []*/
    double eta;
    /*READ_S: []
    WRITE_S: []*/
    double zeta;
    /*READ_S: []
    WRITE_S: []*/
    double u_exact[5];
    /*READ_S: []
    WRITE_S: []*/
    double add;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [xce.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: []
    WRITE_S: [xce.f]*/
        /*READ_S: []
        WRITE_S: [xce.f]*/
        rms[m] = 0.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, xce.f, dnym1, dnxm1, dnzm1]
    WRITE_S: [u_exact.f, Pface.f, xce.f, temp.f]*/
    for (i = 0; i <= grid_points[0] - 1; i++) {
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, xce.f, dnym1, dnxm1, dnzm1]
    WRITE_S: [u_exact.f, Pface.f, xce.f, temp.f]*/
        /*READ_S: [dnxm1]
        WRITE_S: []*/
        xi = (double) i * dnxm1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, exact_solution, grid_points.f, u, ce.f, ce, xce.f, dnym1, dnzm1]
        WRITE_S: [u_exact.f, Pface.f, xce.f, temp.f]*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
        /*READ_S: [grid_points, u.f, exact_solution, grid_points.f, u, ce.f, ce, xce.f, dnym1, dnzm1]
        WRITE_S: [u_exact.f, Pface.f, xce.f, temp.f]*/
            /*READ_S: [dnym1]
            WRITE_S: []*/
            eta = (double) j * dnym1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, u.f, exact_solution, grid_points.f, u, ce.f, ce, xce.f, dnzm1]
            WRITE_S: [u_exact.f, Pface.f, xce.f, temp.f]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
            /*READ_S: [u.f, exact_solution, u, ce.f, ce, xce.f, dnzm1]
            WRITE_S: [u_exact.f, Pface.f, xce.f, temp.f]*/
                /*READ_S: [dnzm1]
                WRITE_S: []*/
                zeta = (double) k * dnzm1;
                /*READ_S: [exact_solution]
                WRITE_S: []*/
                exact_solution(xi, eta, zeta, u_exact);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u.f, u, xce.f]
                WRITE_S: [xce.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u.f, u, xce.f]
                WRITE_S: [xce.f]*/
                    /*READ_S: [u.f, u]
                    WRITE_S: []*/
                    add = u[m][i][j][k] - u_exact[m];
                    /*READ_S: [xce.f]
                    WRITE_S: [xce.f]*/
                    rms[m] = rms[m] + add * add;
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
    /*READ_S: [grid_points, grid_points.f, xce.f, sqrt]
    WRITE_S: [xce.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [grid_points, grid_points.f, xce.f, sqrt]
    WRITE_S: [xce.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, xce.f]
        WRITE_S: [xce.f]*/
        for (d = 0; d < 3; d++) {
        /*READ_S: [grid_points, grid_points.f, xce.f]
        WRITE_S: [xce.f]*/
            /*READ_S: [grid_points, grid_points.f, xce.f]
            WRITE_S: [xce.f]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre188;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre189;
        /*READ_S: [xce.f]
        WRITE_S: []*/
        _imopVarPre188 = rms[m];
        /*READ_S: [sqrt]
        WRITE_S: []*/
        _imopVarPre189 = sqrt(_imopVarPre188);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [xce.f]*/
        rms[m] = _imopVarPre189;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [grid_points, grid_points.f, rhs, sqrt, xcr.f, rhs.f]
WRITE_S: [xcr.f]*/
static void rhs_norm(double rms[5]) {
/*READ_S: [grid_points, grid_points.f, rhs, sqrt, xcr.f, rhs.f]
WRITE_S: [xcr.f]*/
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
    int d;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    double add;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: [xcr.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: []
    WRITE_S: [xcr.f]*/
        /*READ_S: []
        WRITE_S: [xcr.f]*/
        rms[m] = 0.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f, rhs, xcr.f, rhs.f]
    WRITE_S: [xcr.f]*/
    for (i = 0; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, rhs, xcr.f, rhs.f]
    WRITE_S: [xcr.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, rhs, xcr.f, rhs.f]
        WRITE_S: [xcr.f]*/
        for (j = 0; j <= grid_points[1] - 2; j++) {
        /*READ_S: [grid_points, grid_points.f, rhs, xcr.f, rhs.f]
        WRITE_S: [xcr.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, rhs, xcr.f, rhs.f]
            WRITE_S: [xcr.f]*/
            for (k = 0; k <= grid_points[2] - 2; k++) {
            /*READ_S: [rhs, xcr.f, rhs.f]
            WRITE_S: [xcr.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs, xcr.f, rhs.f]
                WRITE_S: [xcr.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rhs, xcr.f, rhs.f]
                WRITE_S: [xcr.f]*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    add = rhs[m][i][j][k];
                    /*READ_S: [xcr.f]
                    WRITE_S: [xcr.f]*/
                    rms[m] = rms[m] + add * add;
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
    /*READ_S: [grid_points, grid_points.f, sqrt, xcr.f]
    WRITE_S: [xcr.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [grid_points, grid_points.f, sqrt, xcr.f]
    WRITE_S: [xcr.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, xcr.f]
        WRITE_S: [xcr.f]*/
        for (d = 0; d < 3; d++) {
        /*READ_S: [grid_points, grid_points.f, xcr.f]
        WRITE_S: [xcr.f]*/
            /*READ_S: [grid_points, grid_points.f, xcr.f]
            WRITE_S: [xcr.f]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre191;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre192;
        /*READ_S: [xcr.f]
        WRITE_S: []*/
        _imopVarPre191 = rms[m];
        /*READ_S: [sqrt]
        WRITE_S: []*/
        _imopVarPre192 = sqrt(_imopVarPre191);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [xcr.f]*/
        rms[m] = _imopVarPre192;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [yycon4, dx5tx1, xxcon2, dz2tz1, grid_points.f, q, zzcon1, dnym1, c2, zzcon5, cuf, dz3tz1, yycon3, dssp, dz4tz1, ty2, xxcon3, ue.f, dnxm1, zzcon4, buf, c1, dz5tz1, cuf.f, yycon2, dy4ty1, ce.f, forcing.f, dx1tx1, xxcon4, dx2tx1, ue, dy5ty1, zzcon3, buf.f, yycon5, xxcon1, dx3tx1, dy1ty1, forcing, ce, tz2, yycon1, xxcon5, tx2, grid_points, exact_solution, dx4tx1, q.f, dy3ty1, zzcon2, dy2ty1, dnzm1, dz1tz1]
WRITE_S: [u_exact.f, Pface.f, ue.f, q.f, forcing.f, buf.f, cuf.f, temp.f]*/
static void exact_rhs(void ) {
/*READ_S: [yycon4, dx5tx1, xxcon2, dz2tz1, grid_points.f, q, zzcon1, dnym1, c2, zzcon5, cuf, dz3tz1, yycon3, dssp, dz4tz1, ty2, xxcon3, ue.f, dnxm1, zzcon4, buf, c1, dz5tz1, cuf.f, yycon2, dy4ty1, ce.f, forcing.f, dx1tx1, xxcon4, dx2tx1, ue, dy5ty1, zzcon3, buf.f, yycon5, xxcon1, dx3tx1, dy1ty1, forcing, ce, tz2, yycon1, xxcon5, tx2, grid_points, exact_solution, dx4tx1, q.f, dy3ty1, zzcon2, dy2ty1, dnzm1, dz1tz1]
WRITE_S: [u_exact.f, Pface.f, ue.f, q.f, forcing.f, buf.f, cuf.f, temp.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double dtemp[5];
    /*READ_S: []
    WRITE_S: []*/
    double xi;
    /*READ_S: []
    WRITE_S: []*/
    double eta;
    /*READ_S: []
    WRITE_S: []*/
    double zeta;
    /*READ_S: []
    WRITE_S: []*/
    double dtpp;
    /*READ_S: []
    WRITE_S: []*/
    int m;
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
    int ip1;
    /*READ_S: []
    WRITE_S: []*/
    int im1;
    /*READ_S: []
    WRITE_S: []*/
    int jp1;
    /*READ_S: []
    WRITE_S: []*/
    int jm1;
    /*READ_S: []
    WRITE_S: []*/
    int km1;
    /*READ_S: []
    WRITE_S: []*/
    int kp1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
    WRITE_S: [forcing.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
    WRITE_S: [forcing.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
        WRITE_S: [forcing.f]*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
        /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
        WRITE_S: [forcing.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                /*READ_S: [forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: [forcing, forcing.f]
                    WRITE_S: [forcing.f]*/
                    forcing[m][i][j][k] = 0.0;
                }
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ce.f, forcing.f, dx1tx1, xxcon4, dx5tx1, xxcon2, grid_points.f, dx2tx1, ue, q, dnym1, c2, buf.f, cuf, xxcon1, dx3tx1, dssp, forcing, ce, xxcon5, tx2, xxcon3, grid_points, exact_solution, dx4tx1, ue.f, q.f, dnxm1, buf, c1, cuf.f, dnzm1]
    WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
    for (k = 1; k <= grid_points[2] - 2; k++) {
    /*READ_S: [ce.f, forcing.f, dx1tx1, xxcon4, dx5tx1, xxcon2, grid_points.f, dx2tx1, ue, q, dnym1, c2, buf.f, cuf, xxcon1, dx3tx1, dssp, forcing, ce, xxcon5, tx2, xxcon3, grid_points, exact_solution, dx4tx1, ue.f, q.f, dnxm1, buf, c1, cuf.f, dnzm1]
    WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
        /*READ_S: [dnzm1]
        WRITE_S: []*/
        zeta = (double) k * dnzm1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ce.f, forcing.f, dx1tx1, xxcon4, dx5tx1, xxcon2, grid_points.f, dx2tx1, ue, q, dnym1, c2, buf.f, cuf, xxcon1, dx3tx1, dssp, forcing, ce, xxcon5, tx2, xxcon3, grid_points, exact_solution, dx4tx1, ue.f, q.f, dnxm1, buf, c1, cuf.f]
        WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [ce.f, forcing.f, dx1tx1, xxcon4, dx5tx1, xxcon2, grid_points.f, dx2tx1, ue, q, dnym1, c2, buf.f, cuf, xxcon1, dx3tx1, dssp, forcing, ce, xxcon5, tx2, xxcon3, grid_points, exact_solution, dx4tx1, ue.f, q.f, dnxm1, buf, c1, cuf.f]
        WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
            /*READ_S: [dnym1]
            WRITE_S: []*/
            eta = (double) j * dnym1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce.f, ce, grid_points, exact_solution, grid_points.f, ue.f, ue, q, dnxm1, buf, buf.f, cuf, cuf.f]
            WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, buf.f, cuf.f, temp.f]*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*READ_S: [exact_solution, ue.f, ue, ce.f, ce, q, dnxm1, buf, buf.f, cuf, cuf.f]
            WRITE_S: [u_exact.f, Pface.f, ue.f, q.f, buf.f, cuf.f, temp.f]*/
                /*READ_S: [dnxm1]
                WRITE_S: []*/
                xi = (double) i * dnxm1;
                /*READ_S: [exact_solution]
                WRITE_S: []*/
                exact_solution(xi, eta, zeta, dtemp);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ue.f, ue]
                WRITE_S: [ue.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [ue.f, ue]
                WRITE_S: [ue.f]*/
                    /*READ_S: [ue.f, ue]
                    WRITE_S: [ue.f]*/
                    ue[m][i] = dtemp[m];
                }
                /*READ_S: []
                WRITE_S: []*/
                dtpp = 1.0 / dtemp[0];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [buf, buf.f]
                WRITE_S: [buf.f]*/
                for (m = 1; m < 5; m++) {
                /*READ_S: [buf, buf.f]
                WRITE_S: [buf.f]*/
                    /*READ_S: [buf, buf.f]
                    WRITE_S: [buf.f]*/
                    buf[m][i] = dtpp * dtemp[m];
                }
                /*READ_S: [buf, cuf, buf.f]
                WRITE_S: [cuf.f]*/
                cuf[i] = buf[1][i] * buf[1][i];
                /*READ_S: [buf, buf.f, cuf, cuf.f]
                WRITE_S: [buf.f]*/
                buf[0][i] = cuf[i] + buf[2][i] * buf[2][i] + buf[3][i] * buf[3][i];
                /*READ_S: [ue.f, ue, q, buf, buf.f]
                WRITE_S: [q.f]*/
                q[i] = 0.5 * (buf[1][i] * ue[1][i] + buf[2][i] * ue[2][i] + buf[3][i] * ue[3][i]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [forcing.f, dx1tx1, xxcon4, dx5tx1, xxcon2, grid_points.f, dx2tx1, ue, q, c2, buf.f, cuf, xxcon1, dx3tx1, forcing, xxcon5, tx2, xxcon3, grid_points, dx4tx1, ue.f, q.f, buf, c1, cuf.f]
            WRITE_S: [forcing.f]*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [xxcon1, dx3tx1, forcing, forcing.f, dx1tx1, xxcon4, dx5tx1, xxcon5, tx2, xxcon2, xxcon3, dx4tx1, ue.f, q.f, dx2tx1, ue, q, c2, buf, c1, buf.f, cuf, cuf.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                im1 = i - 1;
                /*READ_S: []
                WRITE_S: []*/
                ip1 = i + 1;
                /*READ_S: [ue.f, ue, forcing, forcing.f, dx1tx1, tx2]
                WRITE_S: [forcing.f]*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - tx2 * (ue[1][ip1] - ue[1][im1]) + dx1tx1 * (ue[0][ip1] - 2.0 * ue[0][i] + ue[0][im1]);
                /*READ_S: [xxcon1, ue.f, q.f, dx2tx1, ue, forcing, forcing.f, q, c2, buf, buf.f, tx2]
                WRITE_S: [forcing.f]*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - tx2 * ((ue[1][ip1] * buf[1][ip1] + c2 * (ue[4][ip1] - q[ip1])) - (ue[1][im1] * buf[1][im1] + c2 * (ue[4][im1] - q[im1]))) + xxcon1 * (buf[1][ip1] - 2.0 * buf[1][i] + buf[1][im1]) + dx2tx1 * (ue[1][ip1] - 2.0 * ue[1][i] + ue[1][im1]);
                /*READ_S: [dx3tx1, ue.f, ue, forcing, forcing.f, buf, buf.f, tx2, xxcon2]
                WRITE_S: [forcing.f]*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - tx2 * (ue[2][ip1] * buf[1][ip1] - ue[2][im1] * buf[1][im1]) + xxcon2 * (buf[2][ip1] - 2.0 * buf[2][i] + buf[2][im1]) + dx3tx1 * (ue[2][ip1] - 2.0 * ue[2][i] + ue[2][im1]);
                /*READ_S: [dx4tx1, ue.f, ue, forcing, forcing.f, buf, buf.f, tx2, xxcon2]
                WRITE_S: [forcing.f]*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - tx2 * (ue[3][ip1] * buf[1][ip1] - ue[3][im1] * buf[1][im1]) + xxcon2 * (buf[3][ip1] - 2.0 * buf[3][i] + buf[3][im1]) + dx4tx1 * (ue[3][ip1] - 2.0 * ue[3][i] + ue[3][im1]);
                /*READ_S: [forcing, forcing.f, xxcon4, dx5tx1, xxcon5, tx2, xxcon3, ue.f, q.f, ue, q, c2, buf, c1, buf.f, cuf, cuf.f]
                WRITE_S: [forcing.f]*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - tx2 * (buf[1][ip1] * (c1 * ue[4][ip1] - c2 * q[ip1]) - buf[1][im1] * (c1 * ue[4][im1] - c2 * q[im1])) + 0.5 * xxcon3 * (buf[0][ip1] - 2.0 * buf[0][i] + buf[0][im1]) + xxcon4 * (cuf[ip1] - 2.0 * cuf[i] + cuf[im1]) + xxcon5 * (buf[4][ip1] - 2.0 * buf[4][i] + buf[4][im1]) + dx5tx1 * (ue[4][ip1] - 2.0 * ue[4][i] + ue[4][im1]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                i = 1;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
                /*READ_S: []
                WRITE_S: []*/
                i = 2;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                for (i = 3; i <= grid_points[0] - 4; i++) {
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                    WRITE_S: [forcing.f]*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1] + ue[m][i + 2]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                i = grid_points[0] - 3;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 6.0 * ue[m][i] - 4.0 * ue[m][i + 1]);
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                i = grid_points[0] - 2;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][i - 2] - 4.0 * ue[m][i - 1] + 5.0 * ue[m][i]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [yycon4, yycon2, dy4ty1, ce.f, forcing.f, grid_points.f, ue, q, dy5ty1, dnym1, c2, buf.f, cuf, yycon5, yycon3, dssp, dy1ty1, forcing, ce, yycon1, ty2, grid_points, exact_solution, ue.f, q.f, dy3ty1, dnxm1, dy2ty1, buf, c1, cuf.f, dnzm1]
    WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
    for (k = 1; k <= grid_points[2] - 2; k++) {
    /*READ_S: [yycon4, yycon2, dy4ty1, ce.f, forcing.f, grid_points.f, ue, q, dy5ty1, dnym1, c2, buf.f, cuf, yycon5, yycon3, dssp, dy1ty1, forcing, ce, yycon1, ty2, grid_points, exact_solution, ue.f, q.f, dy3ty1, dnxm1, dy2ty1, buf, c1, cuf.f, dnzm1]
    WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
        /*READ_S: [dnzm1]
        WRITE_S: []*/
        zeta = (double) k * dnzm1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [yycon4, yycon2, dy4ty1, ce.f, forcing.f, grid_points.f, ue, q, dy5ty1, dnym1, c2, buf.f, cuf, yycon5, yycon3, dssp, dy1ty1, forcing, ce, yycon1, ty2, grid_points, exact_solution, ue.f, q.f, dy3ty1, dnxm1, dy2ty1, buf, c1, cuf.f]
        WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [yycon4, yycon2, dy4ty1, ce.f, forcing.f, grid_points.f, ue, q, dy5ty1, dnym1, c2, buf.f, cuf, yycon5, yycon3, dssp, dy1ty1, forcing, ce, yycon1, ty2, grid_points, exact_solution, ue.f, q.f, dy3ty1, dnxm1, dy2ty1, buf, c1, cuf.f]
        WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
            /*READ_S: [dnxm1]
            WRITE_S: []*/
            xi = (double) i * dnxm1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce.f, ce, grid_points, grid_points.f, exact_solution, ue.f, ue, q, dnym1, buf, buf.f, cuf, cuf.f]
            WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, buf.f, cuf.f, temp.f]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*READ_S: [exact_solution, ue.f, ue, ce.f, q, ce, dnym1, buf, buf.f, cuf, cuf.f]
            WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, buf.f, cuf.f, temp.f]*/
                /*READ_S: [dnym1]
                WRITE_S: []*/
                eta = (double) j * dnym1;
                /*READ_S: [exact_solution]
                WRITE_S: []*/
                exact_solution(xi, eta, zeta, dtemp);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ue.f, ue]
                WRITE_S: [ue.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [ue.f, ue]
                WRITE_S: [ue.f]*/
                    /*READ_S: [ue.f, ue]
                    WRITE_S: [ue.f]*/
                    ue[m][j] = dtemp[m];
                }
                /*READ_S: []
                WRITE_S: []*/
                dtpp = 1.0 / dtemp[0];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [buf, buf.f]
                WRITE_S: [buf.f]*/
                for (m = 1; m < 5; m++) {
                /*READ_S: [buf, buf.f]
                WRITE_S: [buf.f]*/
                    /*READ_S: [buf, buf.f]
                    WRITE_S: [buf.f]*/
                    buf[m][j] = dtpp * dtemp[m];
                }
                /*READ_S: [buf, cuf, buf.f]
                WRITE_S: [cuf.f]*/
                cuf[j] = buf[2][j] * buf[2][j];
                /*READ_S: [buf, buf.f, cuf, cuf.f]
                WRITE_S: [buf.f]*/
                buf[0][j] = cuf[j] + buf[1][j] * buf[1][j] + buf[3][j] * buf[3][j];
                /*READ_S: [ue.f, ue, q, buf, buf.f]
                WRITE_S: [q.f]*/
                q[j] = 0.5 * (buf[1][j] * ue[1][j] + buf[2][j] * ue[2][j] + buf[3][j] * ue[3][j]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [yycon4, yycon2, dy4ty1, forcing.f, grid_points.f, ue, q, dy5ty1, c2, buf.f, cuf, yycon5, yycon3, dy1ty1, forcing, yycon1, ty2, grid_points, ue.f, q.f, dy3ty1, dy2ty1, buf, c1, cuf.f]
            WRITE_S: [forcing.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [yycon5, yycon4, yycon3, yycon2, dy4ty1, dy1ty1, forcing, forcing.f, yycon1, ty2, ue.f, q.f, ue, dy3ty1, q, dy5ty1, dy2ty1, c2, buf, c1, buf.f, cuf, cuf.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                jm1 = j - 1;
                /*READ_S: []
                WRITE_S: []*/
                jp1 = j + 1;
                /*READ_S: [ue.f, dy1ty1, ue, forcing, forcing.f, ty2]
                WRITE_S: [forcing.f]*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - ty2 * (ue[2][jp1] - ue[2][jm1]) + dy1ty1 * (ue[0][jp1] - 2.0 * ue[0][j] + ue[0][jm1]);
                /*READ_S: [yycon2, ue.f, ue, forcing, forcing.f, dy2ty1, buf, buf.f, ty2]
                WRITE_S: [forcing.f]*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - ty2 * (ue[1][jp1] * buf[2][jp1] - ue[1][jm1] * buf[2][jm1]) + yycon2 * (buf[1][jp1] - 2.0 * buf[1][j] + buf[1][jm1]) + dy2ty1 * (ue[1][jp1] - 2.0 * ue[1][j] + ue[1][jm1]);
                /*READ_S: [ue.f, q.f, ue, forcing, dy3ty1, forcing.f, q, c2, buf, buf.f, yycon1, ty2]
                WRITE_S: [forcing.f]*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - ty2 * ((ue[2][jp1] * buf[2][jp1] + c2 * (ue[4][jp1] - q[jp1])) - (ue[2][jm1] * buf[2][jm1] + c2 * (ue[4][jm1] - q[jm1]))) + yycon1 * (buf[2][jp1] - 2.0 * buf[2][j] + buf[2][jm1]) + dy3ty1 * (ue[2][jp1] - 2.0 * ue[2][j] + ue[2][jm1]);
                /*READ_S: [yycon2, ue.f, dy4ty1, ue, forcing, forcing.f, buf, buf.f, ty2]
                WRITE_S: [forcing.f]*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - ty2 * (ue[3][jp1] * buf[2][jp1] - ue[3][jm1] * buf[2][jm1]) + yycon2 * (buf[3][jp1] - 2.0 * buf[3][j] + buf[3][jm1]) + dy4ty1 * (ue[3][jp1] - 2.0 * ue[3][j] + ue[3][jm1]);
                /*READ_S: [yycon5, yycon4, yycon3, forcing, forcing.f, ty2, ue.f, q.f, ue, q, dy5ty1, c2, buf, c1, buf.f, cuf, cuf.f]
                WRITE_S: [forcing.f]*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - ty2 * (buf[2][jp1] * (c1 * ue[4][jp1] - c2 * q[jp1]) - buf[2][jm1] * (c1 * ue[4][jm1] - c2 * q[jm1])) + 0.5 * yycon3 * (buf[0][jp1] - 2.0 * buf[0][j] + buf[0][jm1]) + yycon4 * (cuf[jp1] - 2.0 * cuf[j] + cuf[jm1]) + yycon5 * (buf[4][jp1] - 2.0 * buf[4][j] + buf[4][jm1]) + dy5ty1 * (ue[4][jp1] - 2.0 * ue[4][j] + ue[4][jm1]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                j = 1;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
                /*READ_S: []
                WRITE_S: []*/
                j = 2;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                for (j = 3; j <= grid_points[1] - 4; j++) {
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                    WRITE_S: [forcing.f]*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1] + ue[m][j + 2]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                j = grid_points[1] - 3;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 6.0 * ue[m][j] - 4.0 * ue[m][j + 1]);
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                j = grid_points[1] - 2;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][j - 2] - 4.0 * ue[m][j - 1] + 5.0 * ue[m][j]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ce.f, forcing.f, dz2tz1, grid_points.f, ue, q, zzcon1, dnym1, zzcon3, c2, zzcon5, buf.f, cuf, dz3tz1, dssp, forcing, ce, dz4tz1, tz2, grid_points, exact_solution, ue.f, q.f, zzcon2, dnxm1, zzcon4, buf, c1, dz5tz1, cuf.f, dz1tz1, dnzm1]
    WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*READ_S: [ce.f, forcing.f, dz2tz1, grid_points.f, ue, q, zzcon1, dnym1, zzcon3, c2, zzcon5, buf.f, cuf, dz3tz1, dssp, forcing, ce, dz4tz1, tz2, grid_points, exact_solution, ue.f, q.f, zzcon2, dnxm1, zzcon4, buf, c1, dz5tz1, cuf.f, dz1tz1, dnzm1]
    WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
        /*READ_S: [dnym1]
        WRITE_S: []*/
        eta = (double) j * dnym1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [ce.f, forcing.f, dz2tz1, grid_points.f, ue, q, zzcon1, zzcon3, c2, zzcon5, buf.f, cuf, dz3tz1, dssp, forcing, ce, dz4tz1, tz2, grid_points, exact_solution, ue.f, q.f, zzcon2, dnxm1, zzcon4, buf, c1, dz5tz1, cuf.f, dz1tz1, dnzm1]
        WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [ce.f, forcing.f, dz2tz1, grid_points.f, ue, q, zzcon1, zzcon3, c2, zzcon5, buf.f, cuf, dz3tz1, dssp, forcing, ce, dz4tz1, tz2, grid_points, exact_solution, ue.f, q.f, zzcon2, dnxm1, zzcon4, buf, c1, dz5tz1, cuf.f, dz1tz1, dnzm1]
        WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, forcing.f, buf.f, cuf.f, temp.f]*/
            /*READ_S: [dnxm1]
            WRITE_S: []*/
            xi = (double) i * dnxm1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [ce.f, ce, grid_points, grid_points.f, exact_solution, ue.f, ue, q, buf, buf.f, cuf, cuf.f, dnzm1]
            WRITE_S: [u_exact.f, Pface.f, ue.f, q.f, buf.f, cuf.f, temp.f]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
            /*READ_S: [exact_solution, ue.f, ue, ce.f, ce, q, buf, buf.f, cuf, cuf.f, dnzm1]
            WRITE_S: [u_exact.f, Pface.f, q.f, ue.f, buf.f, cuf.f, temp.f]*/
                /*READ_S: [dnzm1]
                WRITE_S: []*/
                zeta = (double) k * dnzm1;
                /*READ_S: [exact_solution]
                WRITE_S: []*/
                exact_solution(xi, eta, zeta, dtemp);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [ue.f, ue]
                WRITE_S: [ue.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [ue.f, ue]
                WRITE_S: [ue.f]*/
                    /*READ_S: [ue.f, ue]
                    WRITE_S: [ue.f]*/
                    ue[m][k] = dtemp[m];
                }
                /*READ_S: []
                WRITE_S: []*/
                dtpp = 1.0 / dtemp[0];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [buf, buf.f]
                WRITE_S: [buf.f]*/
                for (m = 1; m < 5; m++) {
                /*READ_S: [buf, buf.f]
                WRITE_S: [buf.f]*/
                    /*READ_S: [buf, buf.f]
                    WRITE_S: [buf.f]*/
                    buf[m][k] = dtpp * dtemp[m];
                }
                /*READ_S: [buf, cuf, buf.f]
                WRITE_S: [cuf.f]*/
                cuf[k] = buf[3][k] * buf[3][k];
                /*READ_S: [buf, buf.f, cuf, cuf.f]
                WRITE_S: [buf.f]*/
                buf[0][k] = cuf[k] + buf[1][k] * buf[1][k] + buf[2][k] * buf[2][k];
                /*READ_S: [ue.f, ue, q, buf, buf.f]
                WRITE_S: [q.f]*/
                q[k] = 0.5 * (buf[1][k] * ue[1][k] + buf[2][k] * ue[2][k] + buf[3][k] * ue[3][k]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [forcing.f, dz2tz1, grid_points.f, ue, q, zzcon1, zzcon3, c2, zzcon5, buf.f, cuf, dz3tz1, forcing, dz4tz1, tz2, grid_points, ue.f, q.f, zzcon2, zzcon4, buf, c1, dz5tz1, cuf.f, dz1tz1]
            WRITE_S: [forcing.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [forcing, forcing.f, dz4tz1, tz2, dz2tz1, ue.f, q.f, ue, q, zzcon1, zzcon2, zzcon3, c2, zzcon4, buf, c1, zzcon5, dz5tz1, buf.f, cuf, dz3tz1, cuf.f, dz1tz1]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                km1 = k - 1;
                /*READ_S: []
                WRITE_S: []*/
                kp1 = k + 1;
                /*READ_S: [ue.f, ue, forcing, forcing.f, tz2, dz1tz1]
                WRITE_S: [forcing.f]*/
                forcing[0][i][j][k] = forcing[0][i][j][k] - tz2 * (ue[3][kp1] - ue[3][km1]) + dz1tz1 * (ue[0][kp1] - 2.0 * ue[0][k] + ue[0][km1]);
                /*READ_S: [ue.f, ue, forcing, forcing.f, zzcon2, buf, tz2, buf.f, dz2tz1]
                WRITE_S: [forcing.f]*/
                forcing[1][i][j][k] = forcing[1][i][j][k] - tz2 * (ue[1][kp1] * buf[3][kp1] - ue[1][km1] * buf[3][km1]) + zzcon2 * (buf[1][kp1] - 2.0 * buf[1][k] + buf[1][km1]) + dz2tz1 * (ue[1][kp1] - 2.0 * ue[1][k] + ue[1][km1]);
                /*READ_S: [ue.f, ue, forcing, forcing.f, zzcon2, buf, tz2, buf.f, dz3tz1]
                WRITE_S: [forcing.f]*/
                forcing[2][i][j][k] = forcing[2][i][j][k] - tz2 * (ue[2][kp1] * buf[3][kp1] - ue[2][km1] * buf[3][km1]) + zzcon2 * (buf[2][kp1] - 2.0 * buf[2][k] + buf[2][km1]) + dz3tz1 * (ue[2][kp1] - 2.0 * ue[2][k] + ue[2][km1]);
                /*READ_S: [ue.f, q.f, ue, forcing, forcing.f, q, zzcon1, dz4tz1, c2, buf, tz2, buf.f]
                WRITE_S: [forcing.f]*/
                forcing[3][i][j][k] = forcing[3][i][j][k] - tz2 * ((ue[3][kp1] * buf[3][kp1] + c2 * (ue[4][kp1] - q[kp1])) - (ue[3][km1] * buf[3][km1] + c2 * (ue[4][km1] - q[km1]))) + zzcon1 * (buf[3][kp1] - 2.0 * buf[3][k] + buf[3][km1]) + dz4tz1 * (ue[3][kp1] - 2.0 * ue[3][k] + ue[3][km1]);
                /*READ_S: [forcing, forcing.f, tz2, ue.f, q.f, ue, q, zzcon3, c2, zzcon4, buf, c1, zzcon5, dz5tz1, buf.f, cuf, cuf.f]
                WRITE_S: [forcing.f]*/
                forcing[4][i][j][k] = forcing[4][i][j][k] - tz2 * (buf[3][kp1] * (c1 * ue[4][kp1] - c2 * q[kp1]) - buf[3][km1] * (c1 * ue[4][km1] - c2 * q[km1])) + 0.5 * zzcon3 * (buf[0][kp1] - 2.0 * buf[0][k] + buf[0][km1]) + zzcon4 * (cuf[kp1] - 2.0 * cuf[k] + cuf[km1]) + zzcon5 * (buf[4][kp1] - 2.0 * buf[4][k] + buf[4][km1]) + dz5tz1 * (ue[4][kp1] - 2.0 * ue[4][k] + ue[4][km1]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                k = 1;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (5.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
                /*READ_S: []
                WRITE_S: []*/
                k = 2;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (-4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                for (k = 3; k <= grid_points[2] - 4; k++) {
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                    WRITE_S: [forcing.f]*/
                    forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1] + ue[m][k + 2]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [grid_points, grid_points.f, dssp, ue.f, ue, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                k = grid_points[2] - 3;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 6.0 * ue[m][k] - 4.0 * ue[m][k + 1]);
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                k = grid_points[2] - 2;
                /*READ_S: [dssp, ue.f, ue, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                forcing[m][i][j][k] = forcing[m][i][j][k] - dssp * (ue[m][k - 2] - 4.0 * ue[m][k - 1] + 5.0 * ue[m][k]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
    WRITE_S: [forcing.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
    WRITE_S: [forcing.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
        WRITE_S: [forcing.f]*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
        WRITE_S: [forcing.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: [forcing, forcing.f]
                    WRITE_S: [forcing.f]*/
                    forcing[m][i][j][k] = -1.0 * forcing[m][i][j][k];
                }
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
/*READ_S: [ce.f, ce]
WRITE_S: [u_exact.f, Pface.f, temp.f]*/
static void exact_solution(double xi, double eta , double zeta , double dtemp[5]) {
/*READ_S: [ce.f, ce]
WRITE_S: [u_exact.f, Pface.f, temp.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [ce.f, ce]
    WRITE_S: [u_exact.f, Pface.f, temp.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [ce.f, ce]
    WRITE_S: [u_exact.f, Pface.f, temp.f]*/
        /*READ_S: [ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, temp.f]*/
        dtemp[m] = ce[0][m] + xi * (ce[1][m] + xi * (ce[4][m] + xi * (ce[7][m] + xi * ce[10][m]))) + eta * (ce[2][m] + eta * (ce[5][m] + eta * (ce[8][m] + eta * ce[11][m]))) + zeta * (ce[3][m] + zeta * (ce[6][m] + zeta * (ce[9][m] + zeta * ce[12][m])));
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnxm1, dnzm1]
WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
static void initialize(void ) {
/*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnxm1, dnzm1]
WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
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
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int ix;
    /*READ_S: []
    WRITE_S: []*/
    int iy;
    /*READ_S: []
    WRITE_S: []*/
    int iz;
    /*READ_S: []
    WRITE_S: []*/
    double xi;
    /*READ_S: []
    WRITE_S: []*/
    double eta;
    /*READ_S: []
    WRITE_S: []*/
    double zeta;
    /*READ_S: []
    WRITE_S: []*/
    double Pface[2][3][5];
    /*READ_S: []
    WRITE_S: []*/
    double Pxi;
    /*READ_S: []
    WRITE_S: []*/
    double Peta;
    /*READ_S: []
    WRITE_S: []*/
    double Pzeta;
    /*READ_S: []
    WRITE_S: []*/
    double temp[5];
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [u.f, u]
    WRITE_S: [u.f]*/
    for (i = 0; i <= 12 - 1; i++) {
    /*READ_S: [u.f, u]
    WRITE_S: [u.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u.f, u]
        WRITE_S: [u.f]*/
        for (j = 0; j <= 12 - 1; j++) {
        /*READ_S: [u.f, u]
        WRITE_S: [u.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
            for (k = 0; k <= 12 - 1; k++) {
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[0][i][j][k] = 1.0;
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[1][i][j][k] = 0.0;
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[2][i][j][k] = 0.0;
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[3][i][j][k] = 0.0;
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[4][i][j][k] = 1.0;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnxm1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
    for (i = 0; i <= grid_points[0] - 1; i++) {
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnxm1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        /*READ_S: [dnxm1]
        WRITE_S: []*/
        xi = (double) i * dnxm1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        for (j = 0; j <= grid_points[1] - 1; j++) {
        /*READ_S: [u.f, grid_points, exact_solution, grid_points.f, u, ce.f, ce, dnym1, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
            /*READ_S: [dnym1]
            WRITE_S: []*/
            eta = (double) j * dnym1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, grid_points, exact_solution, grid_points.f, u, ce.f, ce, dnzm1]
            WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
            /*READ_S: [u.f, exact_solution, u, ce.f, ce, dnzm1]
            WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
                /*READ_S: [dnzm1]
                WRITE_S: []*/
                zeta = (double) k * dnzm1;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
                for (ix = 0; ix < 2; ix++) {
                /*READ_S: [exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    double *_imopVarPre195;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre196;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre195 = &Pface[ix][0][0];
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre196 = (double) ix;
                    /*READ_S: [exact_solution]
                    WRITE_S: []*/
                    exact_solution(_imopVarPre196, eta, zeta, _imopVarPre195);
                    /*READ_S: []
                    WRITE_S: []*/
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
                for (iy = 0; iy < 2; iy++) {
                /*READ_S: [exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    double *_imopVarPre199;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre200;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre199 = &Pface[iy][1][0];
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre200 = (double) iy;
                    /*READ_S: [exact_solution]
                    WRITE_S: []*/
                    exact_solution(xi, _imopVarPre200, zeta, _imopVarPre199);
                    /*READ_S: []
                    WRITE_S: []*/
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
                for (iz = 0; iz < 2; iz++) {
                /*READ_S: [exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    double *_imopVarPre203;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre204;
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre203 = &Pface[iz][2][0];
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre204 = (double) iz;
                    /*READ_S: [exact_solution]
                    WRITE_S: []*/
                    exact_solution(xi, eta, _imopVarPre204, _imopVarPre203);
                    /*READ_S: []
                    WRITE_S: []*/
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    Pxi = xi * Pface[1][0][m] + (1.0 - xi) * Pface[0][0][m];
                    /*READ_S: []
                    WRITE_S: []*/
                    Peta = eta * Pface[1][1][m] + (1.0 - eta) * Pface[0][1][m];
                    /*READ_S: []
                    WRITE_S: []*/
                    Pzeta = zeta * Pface[1][2][m] + (1.0 - zeta) * Pface[0][2][m];
                    /*READ_S: [u.f, u]
                    WRITE_S: [u.f]*/
                    u[m][i][j][k] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
                }
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    xi = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    i = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [u.f, grid_points, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
    for (j = 0; j < grid_points[1]; j++) {
    /*READ_S: [u.f, grid_points, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        /*READ_S: [dnym1]
        WRITE_S: []*/
        eta = (double) j * dnym1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u.f, grid_points, grid_points.f, exact_solution, u, ce.f, ce, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        for (k = 0; k < grid_points[2]; k++) {
        /*READ_S: [u.f, exact_solution, u, ce.f, ce, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
            /*READ_S: [dnzm1]
            WRITE_S: []*/
            zeta = (double) k * dnzm1;
            /*READ_S: [exact_solution]
            WRITE_S: []*/
            exact_solution(xi, eta, zeta, temp);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    xi = 1.0;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    i = grid_points[0] - 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
    for (j = 0; j < grid_points[1]; j++) {
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        /*READ_S: [dnym1]
        WRITE_S: []*/
        eta = (double) j * dnym1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        for (k = 0; k < grid_points[2]; k++) {
        /*READ_S: [u.f, exact_solution, u, ce.f, ce, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
            /*READ_S: [dnzm1]
            WRITE_S: []*/
            zeta = (double) k * dnzm1;
            /*READ_S: [exact_solution]
            WRITE_S: []*/
            exact_solution(xi, eta, zeta, temp);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    eta = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    j = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, u.f, exact_solution, grid_points.f, u, ce.f, ce, dnxm1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*READ_S: [u.f, grid_points, exact_solution, grid_points.f, u, ce.f, ce, dnxm1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        /*READ_S: [dnxm1]
        WRITE_S: []*/
        xi = (double) i * dnxm1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u.f, grid_points, exact_solution, grid_points.f, u, ce.f, ce, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        for (k = 0; k < grid_points[2]; k++) {
        /*READ_S: [u.f, exact_solution, u, ce.f, ce, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
            /*READ_S: [dnzm1]
            WRITE_S: []*/
            zeta = (double) k * dnzm1;
            /*READ_S: [exact_solution]
            WRITE_S: []*/
            exact_solution(xi, eta, zeta, temp);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    eta = 1.0;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    j = grid_points[1] - 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnxm1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnxm1, dnzm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        /*READ_S: [dnxm1]
        WRITE_S: []*/
        xi = (double) i * dnxm1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        for (k = 0; k < grid_points[2]; k++) {
        /*READ_S: [u.f, exact_solution, u, ce.f, ce, dnzm1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
            /*READ_S: [dnzm1]
            WRITE_S: []*/
            zeta = (double) k * dnzm1;
            /*READ_S: [exact_solution]
            WRITE_S: []*/
            exact_solution(xi, eta, zeta, temp);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    zeta = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    k = 0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, u.f, exact_solution, grid_points.f, u, ce.f, ce, dnym1, dnxm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*READ_S: [grid_points, u.f, exact_solution, grid_points.f, u, ce.f, ce, dnym1, dnxm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        /*READ_S: [dnxm1]
        WRITE_S: []*/
        xi = (double) i * dnxm1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, exact_solution, grid_points.f, u, ce.f, ce, dnym1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*READ_S: [u.f, exact_solution, u, ce.f, ce, dnym1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
            /*READ_S: [dnym1]
            WRITE_S: []*/
            eta = (double) j * dnym1;
            /*READ_S: [exact_solution]
            WRITE_S: []*/
            exact_solution(xi, eta, zeta, temp);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    zeta = 1.0;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    k = grid_points[2] - 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnxm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1, dnxm1]
    WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        /*READ_S: [dnxm1]
        WRITE_S: []*/
        xi = (double) i * dnxm1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, exact_solution, u, ce.f, ce, dnym1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*READ_S: [u.f, exact_solution, u, ce.f, ce, dnym1]
        WRITE_S: [u.f, u_exact.f, Pface.f, temp.f]*/
            /*READ_S: [dnym1]
            WRITE_S: []*/
            eta = (double) j * dnym1;
            /*READ_S: [exact_solution]
            WRITE_S: []*/
            exact_solution(xi, eta, zeta, temp);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [u.f, u]
            WRITE_S: [u.f]*/
                /*READ_S: [u.f, u]
                WRITE_S: [u.f]*/
                u[m][i][j][k] = temp[m];
            }
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f]
WRITE_S: [lhs.f]*/
static void lhsinit(void ) {
/*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f]
WRITE_S: [lhs.f]*/
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
    int n;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f]
    WRITE_S: [lhs.f]*/
    for (n = 0; n < 15; n++) {
    /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f]
    WRITE_S: [lhs.f]*/
        /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f]
        WRITE_S: [lhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [grid_points, grid_points.f, lhs, lhs.f]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f]
            WRITE_S: [lhs.f]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n][i][j][k] = 0.0;
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
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f]
    WRITE_S: [lhs.f]*/
    for (n = 0; n < 3; n++) {
    /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f]
    WRITE_S: [lhs.f]*/
        /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f]
        WRITE_S: [lhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [grid_points, grid_points.f, lhs, lhs.f]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f]
            WRITE_S: [lhs.f]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[5 * n + 2][i][j][k] = 1.0;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, comz5, comz1, grid_points.f, i, c2dttx1, rho_i, dttx1, cv, dx5, speed, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, speed.f, rhon, comz6, us, c1c5, comz4, grid_points, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, _imopVarPre725, _imopVarPre715, j]
WRITE_S: [cv.f, rhon.f, lhs.f]*/
static void lhsx(void ) {
/*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, comz5, comz1, grid_points.f, i, c2dttx1, rho_i, dttx1, cv, dx5, speed, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, speed.f, rhon, comz6, us, c1c5, comz4, grid_points, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, _imopVarPre725, _imopVarPre715, j]
WRITE_S: [cv.f, rhon.f, lhs.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double ru1;
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
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, grid_points.f, i, c2dttx1, rho_i, dttx1, dx5, cv, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, rhon, c1c5, us, grid_points, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, _imopVarPre725, _imopVarPre715]
    WRITE_S: [cv.f, rhon.f, lhs.f]*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, grid_points.f, i, c2dttx1, rho_i, dttx1, dx5, cv, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, rhon, c1c5, us, grid_points, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, _imopVarPre725, _imopVarPre715]
    WRITE_S: [cv.f, rhon.f, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, grid_points.f, i, c2dttx1, rho_i, dttx1, dx5, cv, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, rhon, c1c5, us, grid_points, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, _imopVarPre725, _imopVarPre715]
        WRITE_S: [cv.f, rhon.f, lhs.f]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, grid_points.f, i, c2dttx1, rho_i, dttx1, dx5, cv, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, rhon, c1c5, us, grid_points, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, _imopVarPre725, _imopVarPre715]
        WRITE_S: [cv.f, rhon.f, lhs.f]*/
            /*READ_S: [dxmax, us.f, c3c4, rhon, c1c5, us, grid_points, grid_points.f, i, rho_i, rho_i.f, dx5, cv, _imopVarPre727, _imopVarPre717, dx2, con43, dx1, _imopVarPre725, _imopVarPre715, _imopVarPre821, _imopVarPre831, _imopVarPre823]
            WRITE_S: [cv.f, rhon.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*READ_S: [dxmax, us.f, c3c4, rhon, c1c5, us, rho_i, rho_i.f, dx5, cv, _imopVarPre727, _imopVarPre717, dx2, con43, dx1, _imopVarPre725, _imopVarPre715, _imopVarPre821, _imopVarPre831, _imopVarPre823]
            WRITE_S: [cv.f, rhon.f]*/
                /*READ_S: [rho_i, rho_i.f, c3c4]
                WRITE_S: []*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*READ_S: [cv, us.f, us]
                WRITE_S: [cv.f]*/
                cv[i] = us[i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre715;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre716;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre717;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre718;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre725;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre726;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre727;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre728;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre821;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre822;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre823;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre824;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre831;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre832;
                /*READ_S: [dxmax, dx1]
                WRITE_S: []*/
                _imopVarPre715 = ((dxmax + ru1) > dx1);
                /*READ_S: [_imopVarPre715]
                WRITE_S: []*/
                /*READ_S: [dxmax, dx1, _imopVarPre715]
                WRITE_S: []*/
                if (_imopVarPre715) {
                /*READ_S: [dxmax]
                WRITE_S: []*/
                    /*READ_S: [dxmax]
                    WRITE_S: []*/
                    _imopVarPre716 = (dxmax + ru1);
                } else {
                /*READ_S: [dx1]
                WRITE_S: []*/
                    /*READ_S: [dx1]
                    WRITE_S: []*/
                    _imopVarPre716 = dx1;
                }
                /*READ_S: [dx5, c1c5]
                WRITE_S: []*/
                _imopVarPre717 = ((dx5 + c1c5 * ru1) > _imopVarPre716);
                /*READ_S: [_imopVarPre717]
                WRITE_S: []*/
                /*READ_S: [dxmax, dx5, _imopVarPre717, dx1, _imopVarPre725, c1c5]
                WRITE_S: []*/
                if (_imopVarPre717) {
                /*READ_S: [dx5, c1c5]
                WRITE_S: []*/
                    /*READ_S: [dx5, c1c5]
                    WRITE_S: []*/
                    _imopVarPre718 = (dx5 + c1c5 * ru1);
                } else {
                /*READ_S: [dxmax, dx1, _imopVarPre725]
                WRITE_S: []*/
                    /*READ_S: [dxmax, dx1]
                    WRITE_S: []*/
                    _imopVarPre725 = ((dxmax + ru1) > dx1);
                    /*READ_S: [_imopVarPre725]
                    WRITE_S: []*/
                    /*READ_S: [dxmax, _imopVarPre725, dx1]
                    WRITE_S: []*/
                    if (_imopVarPre725) {
                    /*READ_S: [dxmax]
                    WRITE_S: []*/
                        /*READ_S: [dxmax]
                        WRITE_S: []*/
                        _imopVarPre726 = (dxmax + ru1);
                    } else {
                    /*READ_S: [dx1]
                    WRITE_S: []*/
                        /*READ_S: [dx1]
                        WRITE_S: []*/
                        _imopVarPre726 = dx1;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre718 = _imopVarPre726;
                }
                /*READ_S: [dx2, con43]
                WRITE_S: []*/
                _imopVarPre727 = ((dx2 + con43 * ru1) > _imopVarPre718);
                /*READ_S: [_imopVarPre727]
                WRITE_S: []*/
                /*READ_S: [dxmax, dx5, _imopVarPre727, dx2, con43, dx1, c1c5, _imopVarPre821, _imopVarPre831, _imopVarPre823]
                WRITE_S: []*/
                if (_imopVarPre727) {
                /*READ_S: [dx2, con43]
                WRITE_S: []*/
                    /*READ_S: [dx2, con43]
                    WRITE_S: []*/
                    _imopVarPre728 = (dx2 + con43 * ru1);
                } else {
                /*READ_S: [dxmax, dx5, dx1, c1c5, _imopVarPre821, _imopVarPre831, _imopVarPre823]
                WRITE_S: []*/
                    /*READ_S: [dxmax, dx1]
                    WRITE_S: []*/
                    _imopVarPre821 = ((dxmax + ru1) > dx1);
                    /*READ_S: [_imopVarPre821]
                    WRITE_S: []*/
                    /*READ_S: [dxmax, dx1, _imopVarPre821]
                    WRITE_S: []*/
                    if (_imopVarPre821) {
                    /*READ_S: [dxmax]
                    WRITE_S: []*/
                        /*READ_S: [dxmax]
                        WRITE_S: []*/
                        _imopVarPre822 = (dxmax + ru1);
                    } else {
                    /*READ_S: [dx1]
                    WRITE_S: []*/
                        /*READ_S: [dx1]
                        WRITE_S: []*/
                        _imopVarPre822 = dx1;
                    }
                    /*READ_S: [dx5, c1c5]
                    WRITE_S: []*/
                    _imopVarPre823 = ((dx5 + c1c5 * ru1) > _imopVarPre822);
                    /*READ_S: [_imopVarPre823]
                    WRITE_S: []*/
                    /*READ_S: [dxmax, dx5, dx1, c1c5, _imopVarPre831, _imopVarPre823]
                    WRITE_S: []*/
                    if (_imopVarPre823) {
                    /*READ_S: [dx5, c1c5]
                    WRITE_S: []*/
                        /*READ_S: [dx5, c1c5]
                        WRITE_S: []*/
                        _imopVarPre824 = (dx5 + c1c5 * ru1);
                    } else {
                    /*READ_S: [dxmax, dx1, _imopVarPre831]
                    WRITE_S: []*/
                        /*READ_S: [dxmax, dx1]
                        WRITE_S: []*/
                        _imopVarPre831 = ((dxmax + ru1) > dx1);
                        /*READ_S: [_imopVarPre831]
                        WRITE_S: []*/
                        /*READ_S: [dxmax, dx1, _imopVarPre831]
                        WRITE_S: []*/
                        if (_imopVarPre831) {
                        /*READ_S: [dxmax]
                        WRITE_S: []*/
                            /*READ_S: [dxmax]
                            WRITE_S: []*/
                            _imopVarPre832 = (dxmax + ru1);
                        } else {
                        /*READ_S: [dx1]
                        WRITE_S: []*/
                            /*READ_S: [dx1]
                            WRITE_S: []*/
                            _imopVarPre832 = dx1;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre824 = _imopVarPre832;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre728 = _imopVarPre824;
                }
                /*READ_S: [rhon]
                WRITE_S: [rhon.f]*/
                rhon[i] = _imopVarPre728;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [grid_points, cv.f, grid_points.f, i, lhs, c2dttx1, dttx1, cv, dttx2, rhon.f, rhon, lhs.f]
            WRITE_S: [lhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [cv.f, lhs, c2dttx1, dttx1, cv, dttx2, rhon.f, rhon, lhs.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[0][i][j][k] = 0.0;
                /*READ_S: [cv.f, lhs, dttx1, cv, dttx2, rhon.f, rhon, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[1][i][j][k] = -dttx2 * cv[i - 1] - dttx1 * rhon[i - 1];
                /*READ_S: [lhs, c2dttx1, rhon.f, rhon, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2][i][j][k] = 1.0 + c2dttx1 * rhon[i];
                /*READ_S: [cv.f, lhs, dttx1, cv, dttx2, rhon.f, rhon, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[3][i][j][k] = dttx2 * cv[i + 1] - dttx1 * rhon[i + 1];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[4][i][j][k] = 0.0;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    i = 1;
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, j, comz1]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*READ_S: [lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
            /*READ_S: [lhs, comz5, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*READ_S: [lhs, comz6, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz6;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[3][i + 1][j][k] = lhs[3][i + 1][j][k] - comz4;
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[4][i + 1][j][k] = lhs[4][i + 1][j][k] + comz1;
        }
    }
    /*READ_S: [grid_points, grid_points.f, i, lhs, comz6, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 3; i <= grid_points[0] - 4; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
            WRITE_S: [lhs.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [lhs, comz6, lhs.f, comz4, comz1]
            WRITE_S: [lhs.f]*/
                /*READ_S: [lhs, lhs.f, comz1]
                WRITE_S: [lhs.f]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*READ_S: [lhs, lhs.f, comz4]
                WRITE_S: [lhs.f]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*READ_S: [lhs, comz6, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*READ_S: [lhs, lhs.f, comz4]
                WRITE_S: [lhs.f]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*READ_S: [lhs, lhs.f, comz1]
                WRITE_S: [lhs.f]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    i = grid_points[0] - 3;
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, j, comz1]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j <= grid_points[1] - 2; j++) {
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*READ_S: [lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*READ_S: [lhs, comz6, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[0][i + 1][j][k] = lhs[0][i + 1][j][k] + comz1;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[1][i + 1][j][k] = lhs[1][i + 1][j][k] - comz4;
            /*READ_S: [lhs, comz5, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i + 1][j][k] = lhs[2][i + 1][j][k] + comz5;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [grid_points, grid_points.f, i, lhs, dttx2, speed.f, speed, lhs.f]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, dttx2, speed.f, speed, lhs.f]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, dttx2, speed.f, speed, lhs.f]
        WRITE_S: [lhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [grid_points, grid_points.f, lhs, dttx2, speed.f, speed, lhs.f]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, dttx2, speed.f, speed, lhs.f]
            WRITE_S: [lhs.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [lhs, dttx2, speed.f, speed, lhs.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*READ_S: [lhs, dttx2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttx2 * speed[i - 1][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*READ_S: [lhs, dttx2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttx2 * speed[i + 1][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*READ_S: [lhs, dttx2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttx2 * speed[i - 1][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*READ_S: [lhs, dttx2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttx2 * speed[i + 1][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
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
/*READ_S: [j, lhs, c3c4, comz5, vs.f, comz1, _imopVarPre1459, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, speed, _imopVarPre1451, dymax, dy3, dy1, lhs.f, i, speed.f, vs, comz6, c1c5, comz4, grid_points, cv.f, dtty2, rho_i.f, rhoq, _imopVarPre1353, con43, _imopVarPre1343, _imopVarPre1355, _imopVarPre1345]
WRITE_S: [cv.f, rhoq.f, lhs.f]*/
static void lhsy(void ) {
/*READ_S: [j, lhs, c3c4, comz5, vs.f, comz1, _imopVarPre1459, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, speed, _imopVarPre1451, dymax, dy3, dy1, lhs.f, i, speed.f, vs, comz6, c1c5, comz4, grid_points, cv.f, dtty2, rho_i.f, rhoq, _imopVarPre1353, con43, _imopVarPre1343, _imopVarPre1355, _imopVarPre1345]
WRITE_S: [cv.f, rhoq.f, lhs.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double ru1;
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
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [j, lhs, c3c4, vs.f, _imopVarPre1459, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, _imopVarPre1451, dymax, dy3, dy1, lhs.f, vs, c1c5, grid_points, cv.f, rho_i.f, dtty2, rhoq, _imopVarPre1353, con43, _imopVarPre1343, _imopVarPre1355, _imopVarPre1345]
    WRITE_S: [cv.f, rhoq.f, lhs.f]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [j, lhs, c3c4, vs.f, _imopVarPre1459, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, _imopVarPre1451, dymax, dy3, dy1, lhs.f, vs, c1c5, grid_points, cv.f, rho_i.f, dtty2, rhoq, _imopVarPre1353, con43, _imopVarPre1343, _imopVarPre1355, _imopVarPre1345]
    WRITE_S: [cv.f, rhoq.f, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [j, lhs, c3c4, vs.f, _imopVarPre1459, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, _imopVarPre1451, dymax, dy3, dy1, lhs.f, vs, c1c5, grid_points, cv.f, rho_i.f, dtty2, rhoq, _imopVarPre1353, con43, _imopVarPre1343, _imopVarPre1355, _imopVarPre1345]
        WRITE_S: [cv.f, rhoq.f, lhs.f]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*READ_S: [j, lhs, c3c4, vs.f, _imopVarPre1459, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, _imopVarPre1451, dymax, dy3, dy1, lhs.f, vs, c1c5, grid_points, cv.f, rho_i.f, dtty2, rhoq, _imopVarPre1353, con43, _imopVarPre1343, _imopVarPre1355, _imopVarPre1345]
        WRITE_S: [cv.f, rhoq.f, lhs.f]*/
            /*READ_S: [j, vs, c3c4, vs.f, c1c5, _imopVarPre1459, grid_points, grid_points.f, rho_i, _imopVarPre1449, rho_i.f, cv, dy5, rhoq, _imopVarPre1451, _imopVarPre1353, dymax, dy3, con43, _imopVarPre1343, dy1, _imopVarPre1355, _imopVarPre1345]
            WRITE_S: [cv.f, rhoq.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*READ_S: [vs, c3c4, vs.f, c1c5, _imopVarPre1459, rho_i, _imopVarPre1449, rho_i.f, cv, dy5, rhoq, _imopVarPre1451, _imopVarPre1353, dymax, dy3, con43, _imopVarPre1343, dy1, _imopVarPre1355, _imopVarPre1345]
            WRITE_S: [cv.f, rhoq.f]*/
                /*READ_S: [rho_i, rho_i.f, c3c4]
                WRITE_S: []*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*READ_S: [cv, vs, vs.f]
                WRITE_S: [cv.f]*/
                cv[j] = vs[i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1343;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1344;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1345;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1346;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1353;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1354;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1355;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1356;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1449;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1450;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1451;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1452;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1459;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1460;
                /*READ_S: [dymax, dy1]
                WRITE_S: []*/
                _imopVarPre1343 = ((dymax + ru1) > dy1);
                /*READ_S: [_imopVarPre1343]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre1343, dymax, dy1]
                WRITE_S: []*/
                if (_imopVarPre1343) {
                /*READ_S: [dymax]
                WRITE_S: []*/
                    /*READ_S: [dymax]
                    WRITE_S: []*/
                    _imopVarPre1344 = (dymax + ru1);
                } else {
                /*READ_S: [dy1]
                WRITE_S: []*/
                    /*READ_S: [dy1]
                    WRITE_S: []*/
                    _imopVarPre1344 = dy1;
                }
                /*READ_S: [dy5, c1c5]
                WRITE_S: []*/
                _imopVarPre1345 = ((dy5 + c1c5 * ru1) > _imopVarPre1344);
                /*READ_S: [_imopVarPre1345]
                WRITE_S: []*/
                /*READ_S: [dy5, _imopVarPre1353, dymax, dy1, c1c5, _imopVarPre1345]
                WRITE_S: []*/
                if (_imopVarPre1345) {
                /*READ_S: [dy5, c1c5]
                WRITE_S: []*/
                    /*READ_S: [dy5, c1c5]
                    WRITE_S: []*/
                    _imopVarPre1346 = (dy5 + c1c5 * ru1);
                } else {
                /*READ_S: [_imopVarPre1353, dymax, dy1]
                WRITE_S: []*/
                    /*READ_S: [dymax, dy1]
                    WRITE_S: []*/
                    _imopVarPre1353 = ((dymax + ru1) > dy1);
                    /*READ_S: [_imopVarPre1353]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre1353, dymax, dy1]
                    WRITE_S: []*/
                    if (_imopVarPre1353) {
                    /*READ_S: [dymax]
                    WRITE_S: []*/
                        /*READ_S: [dymax]
                        WRITE_S: []*/
                        _imopVarPre1354 = (dymax + ru1);
                    } else {
                    /*READ_S: [dy1]
                    WRITE_S: []*/
                        /*READ_S: [dy1]
                        WRITE_S: []*/
                        _imopVarPre1354 = dy1;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre1346 = _imopVarPre1354;
                }
                /*READ_S: [dy3, con43]
                WRITE_S: []*/
                _imopVarPre1355 = ((dy3 + con43 * ru1) > _imopVarPre1346);
                /*READ_S: [_imopVarPre1355]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre1459, _imopVarPre1449, dy5, _imopVarPre1451, dymax, dy3, con43, dy1, c1c5, _imopVarPre1355]
                WRITE_S: []*/
                if (_imopVarPre1355) {
                /*READ_S: [dy3, con43]
                WRITE_S: []*/
                    /*READ_S: [dy3, con43]
                    WRITE_S: []*/
                    _imopVarPre1356 = (dy3 + con43 * ru1);
                } else {
                /*READ_S: [_imopVarPre1459, _imopVarPre1449, dy5, _imopVarPre1451, dymax, dy1, c1c5]
                WRITE_S: []*/
                    /*READ_S: [dymax, dy1]
                    WRITE_S: []*/
                    _imopVarPre1449 = ((dymax + ru1) > dy1);
                    /*READ_S: [_imopVarPre1449]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre1449, dymax, dy1]
                    WRITE_S: []*/
                    if (_imopVarPre1449) {
                    /*READ_S: [dymax]
                    WRITE_S: []*/
                        /*READ_S: [dymax]
                        WRITE_S: []*/
                        _imopVarPre1450 = (dymax + ru1);
                    } else {
                    /*READ_S: [dy1]
                    WRITE_S: []*/
                        /*READ_S: [dy1]
                        WRITE_S: []*/
                        _imopVarPre1450 = dy1;
                    }
                    /*READ_S: [dy5, c1c5]
                    WRITE_S: []*/
                    _imopVarPre1451 = ((dy5 + c1c5 * ru1) > _imopVarPre1450);
                    /*READ_S: [_imopVarPre1451]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre1459, dy5, _imopVarPre1451, dymax, dy1, c1c5]
                    WRITE_S: []*/
                    if (_imopVarPre1451) {
                    /*READ_S: [dy5, c1c5]
                    WRITE_S: []*/
                        /*READ_S: [dy5, c1c5]
                        WRITE_S: []*/
                        _imopVarPre1452 = (dy5 + c1c5 * ru1);
                    } else {
                    /*READ_S: [_imopVarPre1459, dymax, dy1]
                    WRITE_S: []*/
                        /*READ_S: [dymax, dy1]
                        WRITE_S: []*/
                        _imopVarPre1459 = ((dymax + ru1) > dy1);
                        /*READ_S: [_imopVarPre1459]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre1459, dymax, dy1]
                        WRITE_S: []*/
                        if (_imopVarPre1459) {
                        /*READ_S: [dymax]
                        WRITE_S: []*/
                            /*READ_S: [dymax]
                            WRITE_S: []*/
                            _imopVarPre1460 = (dymax + ru1);
                        } else {
                        /*READ_S: [dy1]
                        WRITE_S: []*/
                            /*READ_S: [dy1]
                            WRITE_S: []*/
                            _imopVarPre1460 = dy1;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre1452 = _imopVarPre1460;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre1356 = _imopVarPre1452;
                }
                /*READ_S: [rhoq]
                WRITE_S: [rhoq.f]*/
                rhoq[j] = _imopVarPre1356;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [c2dtty1, grid_points, cv.f, grid_points.f, j, lhs, dtty2, dtty1, cv, rhoq.f, rhoq, lhs.f]
            WRITE_S: [lhs.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [c2dtty1, cv.f, lhs, dtty2, dtty1, cv, rhoq.f, rhoq, lhs.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[0][i][j][k] = 0.0;
                /*READ_S: [cv.f, lhs, dtty2, dtty1, cv, rhoq.f, rhoq, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[1][i][j][k] = -dtty2 * cv[j - 1] - dtty1 * rhoq[j - 1];
                /*READ_S: [c2dtty1, lhs, rhoq.f, rhoq, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2][i][j][k] = 1.0 + c2dtty1 * rhoq[j];
                /*READ_S: [cv.f, lhs, dtty2, dtty1, cv, rhoq.f, rhoq, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[3][i][j][k] = dtty2 * cv[j + 1] - dtty1 * rhoq[j + 1];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[4][i][j][k] = 0.0;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    j = 1;
    /*READ_S: [grid_points, i, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*READ_S: [lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
            /*READ_S: [lhs, comz5, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*READ_S: [lhs, comz6, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz6;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[3][i][j + 1][k] = lhs[3][i][j + 1][k] - comz4;
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[4][i][j + 1][k] = lhs[4][i][j + 1][k] + comz1;
        }
    }
    /*READ_S: [grid_points, i, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
        for (j = 3; j <= grid_points[1] - 4; j++) {
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
            WRITE_S: [lhs.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [lhs, comz6, lhs.f, comz4, comz1]
            WRITE_S: [lhs.f]*/
                /*READ_S: [lhs, lhs.f, comz1]
                WRITE_S: [lhs.f]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*READ_S: [lhs, lhs.f, comz4]
                WRITE_S: [lhs.f]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*READ_S: [lhs, comz6, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*READ_S: [lhs, lhs.f, comz4]
                WRITE_S: [lhs.f]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*READ_S: [lhs, lhs.f, comz1]
                WRITE_S: [lhs.f]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    j = grid_points[1] - 3;
    /*READ_S: [grid_points, i, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
        for (k = 1; k <= grid_points[2] - 2; k++) {
        /*READ_S: [lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*READ_S: [lhs, comz6, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[0][i][j + 1][k] = lhs[0][i][j + 1][k] + comz1;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[1][i][j + 1][k] = lhs[1][i][j + 1][k] - comz4;
            /*READ_S: [lhs, comz5, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j + 1][k] = lhs[2][i][j + 1][k] + comz5;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [grid_points, i, grid_points.f, lhs, dtty2, speed.f, speed, lhs.f]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, dtty2, speed.f, speed, lhs.f]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, dtty2, speed.f, speed, lhs.f]
        WRITE_S: [lhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [grid_points, grid_points.f, lhs, dtty2, speed.f, speed, lhs.f]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, dtty2, speed.f, speed, lhs.f]
            WRITE_S: [lhs.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [lhs, dtty2, speed.f, speed, lhs.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*READ_S: [lhs, dtty2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dtty2 * speed[i][j - 1][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*READ_S: [lhs, dtty2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dtty2 * speed[i][j + 1][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*READ_S: [lhs, dtty2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dtty2 * speed[i][j - 1][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*READ_S: [lhs, dtty2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dtty2 * speed[i][j + 1][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
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
/*READ_S: [lhs, ws.f, _imopVarPre2079, c3c4, _imopVarPre2087, comz5, _imopVarPre2077, comz1, grid_points.f, c2dttz1, dttz1, rho_i, rhos.f, cv, speed, dz5, lhs.f, dz1, _imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, speed.f, dzmax, ws, comz6, c1c5, comz4, grid_points, i, cv.f, rho_i.f, dttz2, rhos, dz4, con43, k]
WRITE_S: [cv.f, rhos.f, lhs.f]*/
static void lhsz(void ) {
/*READ_S: [lhs, ws.f, _imopVarPre2079, c3c4, _imopVarPre2087, comz5, _imopVarPre2077, comz1, grid_points.f, c2dttz1, dttz1, rho_i, rhos.f, cv, speed, dz5, lhs.f, dz1, _imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, speed.f, dzmax, ws, comz6, c1c5, comz4, grid_points, i, cv.f, rho_i.f, dttz2, rhos, dz4, con43, k]
WRITE_S: [cv.f, rhos.f, lhs.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double ru1;
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
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lhs, ws.f, _imopVarPre2079, c3c4, _imopVarPre2087, _imopVarPre2077, grid_points.f, c2dttz1, dttz1, rho_i, rhos.f, cv, dz5, lhs.f, dz1, _imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, dzmax, ws, c1c5, grid_points, cv.f, rho_i.f, dttz2, rhos, dz4, con43, k]
    WRITE_S: [cv.f, rhos.f, lhs.f]*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [lhs, ws.f, _imopVarPre2079, c3c4, _imopVarPre2087, _imopVarPre2077, grid_points.f, c2dttz1, dttz1, rho_i, rhos.f, cv, dz5, lhs.f, dz1, _imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, dzmax, ws, c1c5, grid_points, cv.f, rho_i.f, dttz2, rhos, dz4, con43, k]
    WRITE_S: [cv.f, rhos.f, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [lhs, ws.f, _imopVarPre2079, c3c4, _imopVarPre2087, _imopVarPre2077, grid_points.f, c2dttz1, dttz1, rho_i, rhos.f, cv, dz5, lhs.f, dz1, _imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, dzmax, ws, c1c5, grid_points, cv.f, rho_i.f, dttz2, rhos, dz4, con43, k]
        WRITE_S: [cv.f, rhos.f, lhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [lhs, ws.f, _imopVarPre2079, c3c4, _imopVarPre2087, _imopVarPre2077, grid_points.f, c2dttz1, dttz1, rho_i, rhos.f, cv, dz5, lhs.f, dz1, _imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, dzmax, ws, c1c5, grid_points, cv.f, rho_i.f, dttz2, rhos, dz4, con43, k]
        WRITE_S: [cv.f, rhos.f, lhs.f]*/
            /*READ_S: [_imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, ws.f, _imopVarPre2079, dzmax, ws, c3c4, _imopVarPre2087, c1c5, _imopVarPre2077, grid_points, grid_points.f, rho_i, rho_i.f, rhos, cv, dz5, dz4, con43, dz1, k]
            WRITE_S: [cv.f, rhos.f]*/
#pragma omp for nowait
            /*READ_S: [k]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (k = 0; k <= grid_points[2] - 1; k++) {
            /*READ_S: [_imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, ws.f, _imopVarPre2079, dzmax, ws, c3c4, _imopVarPre2087, c1c5, _imopVarPre2077, rho_i, rho_i.f, rhos, cv, dz5, dz4, con43, dz1]
            WRITE_S: [cv.f, rhos.f]*/
                /*READ_S: [rho_i, rho_i.f, c3c4]
                WRITE_S: []*/
                ru1 = c3c4 * rho_i[i][j][k];
                /*READ_S: [cv, ws.f, ws]
                WRITE_S: [cv.f]*/
                cv[k] = ws[i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1971;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1972;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1973;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1974;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1981;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1982;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre1983;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre1984;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre2077;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2078;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre2079;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2080;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre2087;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2088;
                /*READ_S: [dzmax, dz1]
                WRITE_S: []*/
                _imopVarPre1971 = ((dzmax + ru1) > dz1);
                /*READ_S: [_imopVarPre1971]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre1971, dzmax, dz1]
                WRITE_S: []*/
                if (_imopVarPre1971) {
                /*READ_S: [dzmax]
                WRITE_S: []*/
                    /*READ_S: [dzmax]
                    WRITE_S: []*/
                    _imopVarPre1972 = (dzmax + ru1);
                } else {
                /*READ_S: [dz1]
                WRITE_S: []*/
                    /*READ_S: [dz1]
                    WRITE_S: []*/
                    _imopVarPre1972 = dz1;
                }
                /*READ_S: [dz5, c1c5]
                WRITE_S: []*/
                _imopVarPre1973 = ((dz5 + c1c5 * ru1) > _imopVarPre1972);
                /*READ_S: [_imopVarPre1973]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre1981, _imopVarPre1973, dz5, dzmax, c1c5, dz1]
                WRITE_S: []*/
                if (_imopVarPre1973) {
                /*READ_S: [dz5, c1c5]
                WRITE_S: []*/
                    /*READ_S: [dz5, c1c5]
                    WRITE_S: []*/
                    _imopVarPre1974 = (dz5 + c1c5 * ru1);
                } else {
                /*READ_S: [_imopVarPre1981, dzmax, dz1]
                WRITE_S: []*/
                    /*READ_S: [dzmax, dz1]
                    WRITE_S: []*/
                    _imopVarPre1981 = ((dzmax + ru1) > dz1);
                    /*READ_S: [_imopVarPre1981]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre1981, dzmax, dz1]
                    WRITE_S: []*/
                    if (_imopVarPre1981) {
                    /*READ_S: [dzmax]
                    WRITE_S: []*/
                        /*READ_S: [dzmax]
                        WRITE_S: []*/
                        _imopVarPre1982 = (dzmax + ru1);
                    } else {
                    /*READ_S: [dz1]
                    WRITE_S: []*/
                        /*READ_S: [dz1]
                        WRITE_S: []*/
                        _imopVarPre1982 = dz1;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre1974 = _imopVarPre1982;
                }
                /*READ_S: [dz4, con43]
                WRITE_S: []*/
                _imopVarPre1983 = ((dz4 + con43 * ru1) > _imopVarPre1974);
                /*READ_S: [_imopVarPre1983]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre1983, dz5, dz4, con43, _imopVarPre2079, dzmax, _imopVarPre2087, c1c5, _imopVarPre2077, dz1]
                WRITE_S: []*/
                if (_imopVarPre1983) {
                /*READ_S: [dz4, con43]
                WRITE_S: []*/
                    /*READ_S: [dz4, con43]
                    WRITE_S: []*/
                    _imopVarPre1984 = (dz4 + con43 * ru1);
                } else {
                /*READ_S: [dz5, _imopVarPre2079, dzmax, _imopVarPre2087, c1c5, _imopVarPre2077, dz1]
                WRITE_S: []*/
                    /*READ_S: [dzmax, dz1]
                    WRITE_S: []*/
                    _imopVarPre2077 = ((dzmax + ru1) > dz1);
                    /*READ_S: [_imopVarPre2077]
                    WRITE_S: []*/
                    /*READ_S: [dzmax, _imopVarPre2077, dz1]
                    WRITE_S: []*/
                    if (_imopVarPre2077) {
                    /*READ_S: [dzmax]
                    WRITE_S: []*/
                        /*READ_S: [dzmax]
                        WRITE_S: []*/
                        _imopVarPre2078 = (dzmax + ru1);
                    } else {
                    /*READ_S: [dz1]
                    WRITE_S: []*/
                        /*READ_S: [dz1]
                        WRITE_S: []*/
                        _imopVarPre2078 = dz1;
                    }
                    /*READ_S: [dz5, c1c5]
                    WRITE_S: []*/
                    _imopVarPre2079 = ((dz5 + c1c5 * ru1) > _imopVarPre2078);
                    /*READ_S: [_imopVarPre2079]
                    WRITE_S: []*/
                    /*READ_S: [dz5, _imopVarPre2079, dzmax, _imopVarPre2087, c1c5, dz1]
                    WRITE_S: []*/
                    if (_imopVarPre2079) {
                    /*READ_S: [dz5, c1c5]
                    WRITE_S: []*/
                        /*READ_S: [dz5, c1c5]
                        WRITE_S: []*/
                        _imopVarPre2080 = (dz5 + c1c5 * ru1);
                    } else {
                    /*READ_S: [dzmax, _imopVarPre2087, dz1]
                    WRITE_S: []*/
                        /*READ_S: [dzmax, dz1]
                        WRITE_S: []*/
                        _imopVarPre2087 = ((dzmax + ru1) > dz1);
                        /*READ_S: [_imopVarPre2087]
                        WRITE_S: []*/
                        /*READ_S: [dzmax, _imopVarPre2087, dz1]
                        WRITE_S: []*/
                        if (_imopVarPre2087) {
                        /*READ_S: [dzmax]
                        WRITE_S: []*/
                            /*READ_S: [dzmax]
                            WRITE_S: []*/
                            _imopVarPre2088 = (dzmax + ru1);
                        } else {
                        /*READ_S: [dz1]
                        WRITE_S: []*/
                            /*READ_S: [dz1]
                            WRITE_S: []*/
                            _imopVarPre2088 = dz1;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre2080 = _imopVarPre2088;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre1984 = _imopVarPre2080;
                }
                /*READ_S: [rhos]
                WRITE_S: [rhos.f]*/
                rhos[k] = _imopVarPre1984;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [grid_points, cv.f, c2dttz1, grid_points.f, dttz1, lhs, rhos.f, dttz2, rhos, cv, lhs.f, k]
            WRITE_S: [lhs.f]*/
#pragma omp for nowait
            /*READ_S: [k]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [cv.f, c2dttz1, dttz1, lhs, rhos.f, dttz2, rhos, cv, lhs.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[0][i][j][k] = 0.0;
                /*READ_S: [cv.f, dttz1, lhs, rhos.f, dttz2, rhos, cv, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[1][i][j][k] = -dttz2 * cv[k - 1] - dttz1 * rhos[k - 1];
                /*READ_S: [c2dttz1, lhs, rhos.f, rhos, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2][i][j][k] = 1.0 + c2dttz1 * rhos[k];
                /*READ_S: [cv.f, dttz1, lhs, rhos.f, dttz2, rhos, cv, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[3][i][j][k] = dttz2 * cv[k + 1] - dttz1 * rhos[k + 1];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[4][i][j][k] = 0.0;
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    k = 1;
    /*READ_S: [grid_points, i, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
            /*READ_S: [lhs, comz5, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz5;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*READ_S: [lhs, comz6, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz6;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[3][i][j][k + 1] = lhs[3][i][j][k + 1] - comz4;
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[4][i][j][k + 1] = lhs[4][i][j][k + 1] + comz1;
        }
    }
    /*READ_S: [i, grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, comz6, lhs.f, comz4, comz1]
            WRITE_S: [lhs.f]*/
            for (k = 3; k <= grid_points[2] - 4; k++) {
            /*READ_S: [lhs, comz6, lhs.f, comz4, comz1]
            WRITE_S: [lhs.f]*/
                /*READ_S: [lhs, lhs.f, comz1]
                WRITE_S: [lhs.f]*/
                lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
                /*READ_S: [lhs, lhs.f, comz4]
                WRITE_S: [lhs.f]*/
                lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
                /*READ_S: [lhs, comz6, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
                /*READ_S: [lhs, lhs.f, comz4]
                WRITE_S: [lhs.f]*/
                lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
                /*READ_S: [lhs, lhs.f, comz1]
                WRITE_S: [lhs.f]*/
                lhs[4][i][j][k] = lhs[4][i][j][k] + comz1;
            }
        }
    }
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    k = grid_points[2] - 3;
    /*READ_S: [grid_points, i, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [lhs, comz6, comz5, lhs.f, comz4, comz1]
        WRITE_S: [lhs.f]*/
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[0][i][j][k] = lhs[0][i][j][k] + comz1;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[1][i][j][k] = lhs[1][i][j][k] - comz4;
            /*READ_S: [lhs, comz6, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j][k] = lhs[2][i][j][k] + comz6;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[3][i][j][k] = lhs[3][i][j][k] - comz4;
            /*READ_S: [lhs, lhs.f, comz1]
            WRITE_S: [lhs.f]*/
            lhs[0][i][j][k + 1] = lhs[0][i][j][k + 1] + comz1;
            /*READ_S: [lhs, lhs.f, comz4]
            WRITE_S: [lhs.f]*/
            lhs[1][i][j][k + 1] = lhs[1][i][j][k + 1] - comz4;
            /*READ_S: [lhs, comz5, lhs.f]
            WRITE_S: [lhs.f]*/
            lhs[2][i][j][k + 1] = lhs[2][i][j][k + 1] + comz5;
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [i, grid_points, grid_points.f, lhs, dttz2, speed.f, speed, lhs.f]
    WRITE_S: [lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [grid_points, grid_points.f, lhs, dttz2, speed.f, speed, lhs.f]
    WRITE_S: [lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, dttz2, speed.f, speed, lhs.f]
        WRITE_S: [lhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [grid_points, grid_points.f, lhs, dttz2, speed.f, speed, lhs.f]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, dttz2, speed.f, speed, lhs.f]
            WRITE_S: [lhs.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [lhs, dttz2, speed.f, speed, lhs.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[0 + 5][i][j][k] = lhs[0][i][j][k];
                /*READ_S: [lhs, dttz2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[1 + 5][i][j][k] = lhs[1][i][j][k] - dttz2 * speed[i][j][k - 1];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2 + 5][i][j][k] = lhs[2][i][j][k];
                /*READ_S: [lhs, dttz2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[3 + 5][i][j][k] = lhs[3][i][j][k] + dttz2 * speed[i][j][k + 1];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[4 + 5][i][j][k] = lhs[4][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[0 + 10][i][j][k] = lhs[0][i][j][k];
                /*READ_S: [lhs, dttz2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[1 + 10][i][j][k] = lhs[1][i][j][k] + dttz2 * speed[i][j][k - 1];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[2 + 10][i][j][k] = lhs[2][i][j][k];
                /*READ_S: [lhs, dttz2, speed.f, speed, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[3 + 10][i][j][k] = lhs[3][i][j][k] - dttz2 * speed[i][j][k + 1];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[4 + 10][i][j][k] = lhs[4][i][j][k];
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
/*READ_S: [grid_points, i, grid_points.f, bt, rhs, rhs.f]
WRITE_S: [rhs.f]*/
static void ninvr(void ) {
/*READ_S: [grid_points, i, grid_points.f, bt, rhs, rhs.f]
WRITE_S: [rhs.f]*/
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
    double r1;
    /*READ_S: []
    WRITE_S: []*/
    double r2;
    /*READ_S: []
    WRITE_S: []*/
    double r3;
    /*READ_S: []
    WRITE_S: []*/
    double r4;
    /*READ_S: []
    WRITE_S: []*/
    double r5;
    /*READ_S: []
    WRITE_S: []*/
    double t1;
    /*READ_S: []
    WRITE_S: []*/
    double t2;
    /*READ_S: [grid_points, i, grid_points.f, bt, rhs, rhs.f]
    WRITE_S: [rhs.f]*/
#pragma omp parallel default(shared) private(i, j, k, r1, r2, r3, r4, r5, t1, t2)
    {
    /*READ_S: [grid_points, i, grid_points.f, bt, rhs, rhs.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: [grid_points, i, grid_points.f, bt, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [grid_points, grid_points.f, bt, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, bt, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, grid_points.f, bt, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, bt, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [bt, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r1 = rhs[0][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r2 = rhs[1][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r3 = rhs[2][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r4 = rhs[3][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r5 = rhs[4][i][j][k];
                    /*READ_S: [bt]
                    WRITE_S: []*/
                    t1 = bt * r3;
                    /*READ_S: []
                    WRITE_S: []*/
                    t2 = 0.5 * (r4 + r5);
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[0][i][j][k] = -r2;
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[1][i][j][k] = r1;
                    /*READ_S: [bt, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[2][i][j][k] = bt * (r4 - r5);
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[3][i][j][k] = -t1 + t2;
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[4][i][j][k] = t1 + t2;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [i, grid_points, grid_points.f, bt, rhs, rhs.f]
WRITE_S: [rhs.f]*/
static void pinvr(void ) {
/*READ_S: [i, grid_points, grid_points.f, bt, rhs, rhs.f]
WRITE_S: [rhs.f]*/
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
    double r1;
    /*READ_S: []
    WRITE_S: []*/
    double r2;
    /*READ_S: []
    WRITE_S: []*/
    double r3;
    /*READ_S: []
    WRITE_S: []*/
    double r4;
    /*READ_S: []
    WRITE_S: []*/
    double r5;
    /*READ_S: []
    WRITE_S: []*/
    double t1;
    /*READ_S: []
    WRITE_S: []*/
    double t2;
    /*READ_S: [grid_points, i, grid_points.f, bt, rhs, rhs.f]
    WRITE_S: [rhs.f]*/
#pragma omp parallel default(shared) private(i, j, k, r1, r2, r3, r4, r5, t1, t2)
    {
    /*READ_S: [grid_points, i, grid_points.f, bt, rhs, rhs.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: [grid_points, i, grid_points.f, bt, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [grid_points, grid_points.f, bt, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, bt, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, grid_points.f, bt, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, bt, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [bt, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r1 = rhs[0][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r2 = rhs[1][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r3 = rhs[2][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r4 = rhs[3][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: []*/
                    r5 = rhs[4][i][j][k];
                    /*READ_S: [bt]
                    WRITE_S: []*/
                    t1 = bt * r1;
                    /*READ_S: []
                    WRITE_S: []*/
                    t2 = 0.5 * (r4 + r5);
                    /*READ_S: [bt, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[0][i][j][k] = bt * (r4 - r5);
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[1][i][j][k] = -r3;
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[2][i][j][k] = r2;
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[3][i][j][k] = -t1 + t2;
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[4][i][j][k] = t1 + t2;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: [yycon4, qs.f, c1c2, ws.f, us.f, dx5tx1, xxcon2, dz2tz1, grid_points.f, u, rho_i, square.f, c2, zzcon5, dz3tz1, ainv.f, yycon3, dssp, qs, dz4tz1, ws, us, ty2, xxcon3, zzcon4, c1, dz5tz1, ainv, yycon2, dy4ty1, forcing.f, dx1tx1, vs.f, xxcon4, j, dx2tx1, dt, dy5ty1, speed, zzcon3, rhs.f, yycon5, dx3tx1, dy1ty1, forcing, speed.f, vs, tz2, xxcon5, sqrt, tx2, u.f, grid_points, i, dx4tx1, rho_i.f, square, dy3ty1, zzcon2, con43, dy2ty1, rhs, dz1tz1]
WRITE_S: [rho_i.f, square.f, qs.f, speed.f, ws.f, us.f, vs.f, rhs.f, ainv.f]*/
static void compute_rhs(void ) {
/*READ_S: [yycon4, qs.f, c1c2, ws.f, us.f, dx5tx1, xxcon2, dz2tz1, grid_points.f, u, rho_i, square.f, c2, zzcon5, dz3tz1, ainv.f, yycon3, dssp, qs, dz4tz1, ws, us, ty2, xxcon3, zzcon4, c1, dz5tz1, ainv, yycon2, dy4ty1, forcing.f, dx1tx1, vs.f, xxcon4, j, dx2tx1, dt, dy5ty1, speed, zzcon3, rhs.f, yycon5, dx3tx1, dy1ty1, forcing, speed.f, vs, tz2, xxcon5, sqrt, tx2, u.f, grid_points, i, dx4tx1, rho_i.f, square, dy3ty1, zzcon2, con43, dy2ty1, rhs, dz1tz1]
WRITE_S: [rho_i.f, square.f, qs.f, speed.f, ws.f, us.f, vs.f, rhs.f, ainv.f]*/
    /*READ_S: [yycon4, qs.f, c1c2, ws.f, us.f, dx5tx1, xxcon2, dz2tz1, grid_points.f, u, rho_i, square.f, c2, zzcon5, dz3tz1, ainv.f, yycon3, dssp, qs, dz4tz1, ws, us, ty2, xxcon3, zzcon4, c1, dz5tz1, ainv, yycon2, dy4ty1, forcing.f, dx1tx1, vs.f, xxcon4, j, dx2tx1, dt, dy5ty1, speed, zzcon3, rhs.f, yycon5, dx3tx1, dy1ty1, forcing, speed.f, vs, tz2, xxcon5, sqrt, tx2, u.f, grid_points, i, dx4tx1, rho_i.f, square, dy3ty1, zzcon2, con43, dy2ty1, rhs, dz1tz1]
    WRITE_S: [rho_i.f, square.f, qs.f, speed.f, ws.f, us.f, vs.f, rhs.f, ainv.f]*/
#pragma omp parallel
    {
    /*READ_S: [yycon4, qs.f, c1c2, ws.f, us.f, dx5tx1, xxcon2, dz2tz1, grid_points.f, u, rho_i, square.f, c2, zzcon5, dz3tz1, ainv.f, yycon3, dssp, qs, dz4tz1, ws, us, ty2, xxcon3, zzcon4, c1, dz5tz1, ainv, yycon2, dy4ty1, forcing.f, dx1tx1, vs.f, xxcon4, j, dx2tx1, dt, dy5ty1, speed, zzcon3, rhs.f, yycon5, dx3tx1, dy1ty1, forcing, speed.f, vs, tz2, xxcon5, sqrt, tx2, u.f, grid_points, i, dx4tx1, rho_i.f, square, dy3ty1, zzcon2, con43, dy2ty1, rhs, dz1tz1]
    WRITE_S: [rho_i.f, square.f, qs.f, speed.f, ws.f, us.f, vs.f, rhs.f, ainv.f]*/
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
        int m;
        /*READ_S: []
        WRITE_S: []*/
        double aux;
        /*READ_S: []
        WRITE_S: []*/
        double rho_inv;
        /*READ_S: []
        WRITE_S: []*/
        double uijk;
        /*READ_S: []
        WRITE_S: []*/
        double up1;
        /*READ_S: []
        WRITE_S: []*/
        double um1;
        /*READ_S: []
        WRITE_S: []*/
        double vijk;
        /*READ_S: []
        WRITE_S: []*/
        double vp1;
        /*READ_S: []
        WRITE_S: []*/
        double vm1;
        /*READ_S: []
        WRITE_S: []*/
        double wijk;
        /*READ_S: []
        WRITE_S: []*/
        double wp1;
        /*READ_S: []
        WRITE_S: []*/
        double wm1;
        /*READ_S: [qs.f, c1c2, qs, speed.f, vs, ws.f, ws, us.f, us, vs.f, sqrt, u.f, grid_points, grid_points.f, i, u, rho_i, rho_i.f, square, square.f, speed, ainv, ainv.f]
        WRITE_S: [rho_i.f, qs.f, square.f, speed.f, ws.f, us.f, vs.f, ainv.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i <= grid_points[0] - 1; i++) {
        /*READ_S: [qs.f, c1c2, qs, speed.f, vs, ws.f, ws, us.f, us, vs.f, sqrt, u.f, grid_points, grid_points.f, u, rho_i, rho_i.f, square, square.f, speed, ainv, ainv.f]
        WRITE_S: [rho_i.f, qs.f, square.f, speed.f, ws.f, us.f, vs.f, ainv.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [qs.f, c1c2, qs, speed.f, vs, ws.f, ws, us.f, us, vs.f, sqrt, u.f, grid_points, grid_points.f, u, rho_i, rho_i.f, square, square.f, speed, ainv, ainv.f]
            WRITE_S: [rho_i.f, qs.f, square.f, speed.f, ws.f, us.f, vs.f, ainv.f]*/
            for (j = 0; j <= grid_points[1] - 1; j++) {
            /*READ_S: [qs.f, c1c2, qs, speed.f, vs, ws.f, ws, us.f, vs.f, us, sqrt, u.f, grid_points, grid_points.f, u, rho_i, rho_i.f, square, square.f, speed, ainv, ainv.f]
            WRITE_S: [rho_i.f, qs.f, square.f, speed.f, ws.f, us.f, vs.f, ainv.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [qs.f, c1c2, qs, speed.f, vs, ws.f, ws, us.f, vs.f, us, sqrt, u.f, grid_points, grid_points.f, u, rho_i, rho_i.f, square, square.f, speed, ainv, ainv.f]
                WRITE_S: [rho_i.f, qs.f, square.f, speed.f, ws.f, us.f, vs.f, ainv.f]*/
                for (k = 0; k <= grid_points[2] - 1; k++) {
                /*READ_S: [qs.f, c1c2, qs, speed.f, vs, ws.f, ws, us.f, vs.f, us, sqrt, u.f, u, rho_i, rho_i.f, square, square.f, speed, ainv, ainv.f]
                WRITE_S: [rho_i.f, qs.f, square.f, speed.f, ws.f, us.f, vs.f, ainv.f]*/
                    /*READ_S: [u.f, u]
                    WRITE_S: []*/
                    rho_inv = 1.0 / u[0][i][j][k];
                    /*READ_S: [rho_i, rho_i.f]
                    WRITE_S: [rho_i.f]*/
                    rho_i[i][j][k] = rho_inv;
                    /*READ_S: [u.f, u, us.f, us]
                    WRITE_S: [us.f]*/
                    us[i][j][k] = u[1][i][j][k] * rho_inv;
                    /*READ_S: [u.f, u, vs, vs.f]
                    WRITE_S: [vs.f]*/
                    vs[i][j][k] = u[2][i][j][k] * rho_inv;
                    /*READ_S: [u.f, u, ws.f, ws]
                    WRITE_S: [ws.f]*/
                    ws[i][j][k] = u[3][i][j][k] * rho_inv;
                    /*READ_S: [u.f, u, square, square.f]
                    WRITE_S: [square.f]*/
                    square[i][j][k] = 0.5 * (u[1][i][j][k] * u[1][i][j][k] + u[2][i][j][k] * u[2][i][j][k] + u[3][i][j][k] * u[3][i][j][k]) * rho_inv;
                    /*READ_S: [square, qs.f, square.f, qs]
                    WRITE_S: [qs.f]*/
                    qs[i][j][k] = square[i][j][k] * rho_inv;
                    /*READ_S: [u.f, u, square, c1c2, square.f]
                    WRITE_S: []*/
                    aux = c1c2 * rho_inv * (u[4][i][j][k] - square[i][j][k]);
                    /*READ_S: [sqrt]
                    WRITE_S: []*/
                    aux = sqrt(aux);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [speed.f, speed]
                    WRITE_S: [speed.f]*/
                    speed[i][j][k] = aux;
                    /*READ_S: [ainv, ainv.f]
                    WRITE_S: [ainv.f]*/
                    ainv[i][j][k] = 1.0 / aux;
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, i, forcing, forcing.f, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, i, forcing, forcing.f, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f, i, forcing, forcing.f, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 0; i <= grid_points[0] - 1; i++) {
            /*READ_S: [grid_points, grid_points.f, forcing, forcing.f, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, forcing, forcing.f, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 0; j <= grid_points[1] - 1; j++) {
                /*READ_S: [grid_points, grid_points.f, forcing, forcing.f, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, forcing, forcing.f, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = 0; k <= grid_points[2] - 1; k++) {
                    /*READ_S: [forcing, forcing.f, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [forcing, forcing.f, rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = forcing[m][i][j][k];
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
        /*READ_S: [qs.f, ws.f, dx1tx1, us.f, vs.f, dx5tx1, xxcon4, xxcon2, grid_points.f, u, rho_i, dx2tx1, square.f, c2, rhs.f, dx3tx1, qs, vs, ws, us, xxcon5, tx2, xxcon3, grid_points, u.f, i, dx4tx1, rho_i.f, square, con43, c1, rhs]
        WRITE_S: [rhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [qs.f, ws.f, dx1tx1, us.f, vs.f, dx5tx1, xxcon4, xxcon2, grid_points.f, u, rho_i, dx2tx1, square.f, c2, rhs.f, dx3tx1, qs, vs, ws, us, xxcon5, tx2, xxcon3, u.f, grid_points, dx4tx1, rho_i.f, square, con43, c1, rhs]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [qs.f, ws.f, dx1tx1, us.f, vs.f, dx5tx1, xxcon4, xxcon2, grid_points.f, u, rho_i, dx2tx1, square.f, c2, rhs.f, dx3tx1, qs, vs, ws, us, xxcon5, tx2, xxcon3, u.f, grid_points, dx4tx1, rho_i.f, square, con43, c1, rhs]
            WRITE_S: [rhs.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [qs.f, ws.f, dx1tx1, us.f, vs.f, dx5tx1, xxcon4, xxcon2, grid_points.f, u, rho_i, dx2tx1, square.f, c2, rhs.f, dx3tx1, qs, vs, ws, us, xxcon5, tx2, xxcon3, u.f, grid_points, dx4tx1, rho_i.f, square, con43, c1, rhs]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [qs.f, ws.f, dx1tx1, us.f, vs.f, dx5tx1, xxcon4, xxcon2, grid_points.f, u, rho_i, dx2tx1, square.f, c2, rhs.f, dx3tx1, qs, vs, ws, us, xxcon5, tx2, xxcon3, u.f, grid_points, dx4tx1, rho_i.f, square, con43, c1, rhs]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [qs.f, ws.f, dx1tx1, us.f, vs.f, dx5tx1, xxcon4, xxcon2, u, rho_i, dx2tx1, square.f, c2, rhs.f, dx3tx1, qs, vs, ws, us, xxcon5, tx2, xxcon3, u.f, dx4tx1, rho_i.f, square, con43, c1, rhs]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [us.f, us]
                    WRITE_S: []*/
                    uijk = us[i][j][k];
                    /*READ_S: [us.f, us]
                    WRITE_S: []*/
                    up1 = us[i + 1][j][k];
                    /*READ_S: [us.f, us]
                    WRITE_S: []*/
                    um1 = us[i - 1][j][k];
                    /*READ_S: [u.f, u, dx1tx1, rhs, tx2, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dx1tx1 * (u[0][i + 1][j][k] - 2.0 * u[0][i][j][k] + u[0][i - 1][j][k]) - tx2 * (u[1][i + 1][j][k] - u[1][i - 1][j][k]);
                    /*READ_S: [u.f, u, dx2tx1, square, square.f, con43, c2, rhs, xxcon2, tx2, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dx2tx1 * (u[1][i + 1][j][k] - 2.0 * u[1][i][j][k] + u[1][i - 1][j][k]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[1][i + 1][j][k] * up1 - u[1][i - 1][j][k] * um1 + (u[4][i + 1][j][k] - square[i + 1][j][k] - u[4][i - 1][j][k] + square[i - 1][j][k]) * c2);
                    /*READ_S: [u.f, dx3tx1, u, vs, vs.f, rhs, xxcon2, tx2, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dx3tx1 * (u[2][i + 1][j][k] - 2.0 * u[2][i][j][k] + u[2][i - 1][j][k]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[2][i + 1][j][k] * up1 - u[2][i - 1][j][k] * um1);
                    /*READ_S: [u.f, dx4tx1, u, ws.f, ws, rhs, xxcon2, tx2, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dx4tx1 * (u[3][i + 1][j][k] - 2.0 * u[3][i][j][k] + u[3][i - 1][j][k]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[3][i + 1][j][k] * up1 - u[3][i - 1][j][k] * um1);
                    /*READ_S: [qs.f, qs, dx5tx1, xxcon4, xxcon5, tx2, xxcon3, u.f, u, rho_i, rho_i.f, square, square.f, c2, c1, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dx5tx1 * (u[4][i + 1][j][k] - 2.0 * u[4][i][j][k] + u[4][i - 1][j][k]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[4][i + 1][j][k] * rho_i[i + 1][j][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i - 1][j][k] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[4][i + 1][j][k] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[4][i - 1][j][k] - c2 * square[i - 1][j][k]) * um1);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        i = 1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, j, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, j, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, j, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
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
        i = 2;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, j, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, j, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, j, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
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
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 3 * 1; i <= grid_points[0] - 3 * 1 - 1; i++) {
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k] + u[m][i + 2][j][k]);
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
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        i = grid_points[0] - 3;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, j, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, j, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, j, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i + 1][j][k]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        i = grid_points[0] - 2;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, j, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, j, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, j, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i - 2][j][k] - 4.0 * u[m][i - 1][j][k] + 5.0 * u[m][i][j][k]);
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
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [yycon4, yycon2, dy4ty1, qs.f, ws.f, us.f, vs.f, grid_points.f, u, rho_i, square.f, dy5ty1, c2, rhs.f, yycon5, yycon3, dy1ty1, qs, vs, ws, us, ty2, grid_points, u.f, i, rho_i.f, square, dy3ty1, dy2ty1, con43, c1, rhs]
        WRITE_S: [rhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [yycon4, yycon2, dy4ty1, qs.f, ws.f, us.f, vs.f, grid_points.f, u, rho_i, square.f, dy5ty1, c2, rhs.f, yycon5, yycon3, dy1ty1, qs, vs, ws, us, ty2, u.f, grid_points, rho_i.f, square, dy3ty1, con43, dy2ty1, c1, rhs]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [yycon4, yycon2, dy4ty1, qs.f, ws.f, us.f, vs.f, grid_points.f, u, rho_i, square.f, dy5ty1, c2, rhs.f, yycon5, yycon3, dy1ty1, qs, vs, ws, us, ty2, u.f, grid_points, rho_i.f, square, dy3ty1, con43, dy2ty1, c1, rhs]
            WRITE_S: [rhs.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [yycon4, yycon2, dy4ty1, qs.f, ws.f, us.f, vs.f, grid_points.f, u, rho_i, square.f, dy5ty1, c2, rhs.f, yycon5, yycon3, dy1ty1, qs, vs, ws, us, ty2, u.f, grid_points, rho_i.f, square, dy3ty1, con43, dy2ty1, c1, rhs]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [yycon4, yycon2, dy4ty1, qs.f, ws.f, us.f, vs.f, grid_points.f, u, rho_i, square.f, dy5ty1, c2, rhs.f, yycon5, yycon3, dy1ty1, qs, vs, ws, us, ty2, u.f, grid_points, rho_i.f, square, dy3ty1, con43, dy2ty1, c1, rhs]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [yycon4, yycon2, dy4ty1, qs.f, ws.f, us.f, vs.f, u, rho_i, square.f, dy5ty1, c2, rhs.f, yycon5, yycon3, dy1ty1, qs, vs, ws, us, ty2, u.f, rho_i.f, square, dy3ty1, con43, dy2ty1, c1, rhs]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [vs, vs.f]
                    WRITE_S: []*/
                    vijk = vs[i][j][k];
                    /*READ_S: [vs, vs.f]
                    WRITE_S: []*/
                    vp1 = vs[i][j + 1][k];
                    /*READ_S: [vs, vs.f]
                    WRITE_S: []*/
                    vm1 = vs[i][j - 1][k];
                    /*READ_S: [u.f, u, dy1ty1, rhs, ty2, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dy1ty1 * (u[0][i][j + 1][k] - 2.0 * u[0][i][j][k] + u[0][i][j - 1][k]) - ty2 * (u[2][i][j + 1][k] - u[2][i][j - 1][k]);
                    /*READ_S: [u.f, u, yycon2, dy2ty1, us.f, us, rhs, ty2, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dy2ty1 * (u[1][i][j + 1][k] - 2.0 * u[1][i][j][k] + u[1][i][j - 1][k]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[1][i][j + 1][k] * vp1 - u[1][i][j - 1][k] * vm1);
                    /*READ_S: [u.f, u, yycon2, square, dy3ty1, square.f, con43, c2, rhs, ty2, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dy3ty1 * (u[2][i][j + 1][k] - 2.0 * u[2][i][j][k] + u[2][i][j - 1][k]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[2][i][j + 1][k] * vp1 - u[2][i][j - 1][k] * vm1 + (u[4][i][j + 1][k] - square[i][j + 1][k] - u[4][i][j - 1][k] + square[i][j - 1][k]) * c2);
                    /*READ_S: [u.f, u, yycon2, dy4ty1, ws.f, ws, rhs, ty2, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dy4ty1 * (u[3][i][j + 1][k] - 2.0 * u[3][i][j][k] + u[3][i][j - 1][k]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[3][i][j + 1][k] * vp1 - u[3][i][j - 1][k] * vm1);
                    /*READ_S: [yycon5, yycon4, yycon3, qs.f, qs, ty2, u.f, u, rho_i, rho_i.f, square, square.f, dy5ty1, c2, c1, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dy5ty1 * (u[4][i][j + 1][k] - 2.0 * u[4][i][j][k] + u[4][i][j - 1][k]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[4][i][j + 1][k] * rho_i[i][j + 1][k] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j - 1][k] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[4][i][j + 1][k] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[4][i][j - 1][k] - c2 * square[i][j - 1][k]) * vm1);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        j = 1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
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
        j = 2;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
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
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 3 * 1; j <= grid_points[1] - 3 * 1 - 1; j++) {
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k] + u[m][i][j + 2][k]);
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
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        j = grid_points[1] - 3;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j + 1][k]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        j = grid_points[1] - 2;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j - 2][k] - 4.0 * u[m][i][j - 1][k] + 5.0 * u[m][i][j][k]);
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
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [qs.f, ws.f, us.f, vs.f, dz2tz1, grid_points.f, u, rho_i, square.f, zzcon3, c2, zzcon5, dz3tz1, rhs.f, qs, vs, dz4tz1, ws, us, tz2, u.f, grid_points, i, rho_i.f, square, zzcon2, con43, zzcon4, dz5tz1, c1, rhs, dz1tz1]
        WRITE_S: [rhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [qs.f, ws.f, us.f, vs.f, dz2tz1, grid_points.f, u, rho_i, square.f, zzcon3, c2, zzcon5, dz3tz1, rhs.f, qs, vs, dz4tz1, ws, us, tz2, u.f, grid_points, rho_i.f, square, zzcon2, con43, zzcon4, dz5tz1, c1, rhs, dz1tz1]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [qs.f, ws.f, us.f, vs.f, dz2tz1, grid_points.f, u, rho_i, square.f, zzcon3, c2, zzcon5, dz3tz1, rhs.f, qs, vs, dz4tz1, ws, us, tz2, u.f, grid_points, rho_i.f, square, zzcon2, con43, zzcon4, dz5tz1, c1, rhs, dz1tz1]
            WRITE_S: [rhs.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [qs.f, ws.f, us.f, vs.f, dz2tz1, grid_points.f, u, rho_i, square.f, zzcon3, c2, zzcon5, dz3tz1, rhs.f, qs, vs, dz4tz1, ws, us, tz2, u.f, grid_points, rho_i.f, square, zzcon2, con43, zzcon4, dz5tz1, c1, rhs, dz1tz1]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [qs.f, ws.f, us.f, vs.f, dz2tz1, grid_points.f, u, rho_i, square.f, zzcon3, c2, zzcon5, dz3tz1, rhs.f, qs, vs, dz4tz1, ws, us, tz2, u.f, grid_points, rho_i.f, square, zzcon2, con43, zzcon4, dz5tz1, c1, rhs, dz1tz1]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [qs.f, ws.f, us.f, vs.f, dz2tz1, u, rho_i, square.f, zzcon3, c2, zzcon5, dz3tz1, rhs.f, qs, vs, dz4tz1, ws, us, tz2, u.f, rho_i.f, square, zzcon2, con43, zzcon4, dz5tz1, c1, rhs, dz1tz1]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [ws.f, ws]
                    WRITE_S: []*/
                    wijk = ws[i][j][k];
                    /*READ_S: [ws.f, ws]
                    WRITE_S: []*/
                    wp1 = ws[i][j][k + 1];
                    /*READ_S: [ws.f, ws]
                    WRITE_S: []*/
                    wm1 = ws[i][j][k - 1];
                    /*READ_S: [u.f, u, rhs, tz2, rhs.f, dz1tz1]
                    WRITE_S: [rhs.f]*/
                    rhs[0][i][j][k] = rhs[0][i][j][k] + dz1tz1 * (u[0][i][j][k + 1] - 2.0 * u[0][i][j][k] + u[0][i][j][k - 1]) - tz2 * (u[3][i][j][k + 1] - u[3][i][j][k - 1]);
                    /*READ_S: [u.f, u, zzcon2, us.f, us, rhs, tz2, dz2tz1, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[1][i][j][k] = rhs[1][i][j][k] + dz2tz1 * (u[1][i][j][k + 1] - 2.0 * u[1][i][j][k] + u[1][i][j][k - 1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[1][i][j][k + 1] * wp1 - u[1][i][j][k - 1] * wm1);
                    /*READ_S: [u.f, u, zzcon2, vs, vs.f, rhs, tz2, dz3tz1, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[2][i][j][k] = rhs[2][i][j][k] + dz3tz1 * (u[2][i][j][k + 1] - 2.0 * u[2][i][j][k] + u[2][i][j][k - 1]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[2][i][j][k + 1] * wp1 - u[2][i][j][k - 1] * wm1);
                    /*READ_S: [u.f, u, square, square.f, dz4tz1, zzcon2, con43, c2, rhs, tz2, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[3][i][j][k] = rhs[3][i][j][k] + dz4tz1 * (u[3][i][j][k + 1] - 2.0 * u[3][i][j][k] + u[3][i][j][k - 1]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[3][i][j][k + 1] * wp1 - u[3][i][j][k - 1] * wm1 + (u[4][i][j][k + 1] - square[i][j][k + 1] - u[4][i][j][k - 1] + square[i][j][k - 1]) * c2);
                    /*READ_S: [qs.f, qs, tz2, u.f, u, rho_i, rho_i.f, square, square.f, zzcon3, zzcon4, c2, dz5tz1, zzcon5, c1, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[4][i][j][k] = rhs[4][i][j][k] + dz5tz1 * (u[4][i][j][k + 1] - 2.0 * u[4][i][j][k] + u[4][i][j][k - 1]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[4][i][j][k + 1] * rho_i[i][j][k + 1] - 2.0 * u[4][i][j][k] * rho_i[i][j][k] + u[4][i][j][k - 1] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[4][i][j][k + 1] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[4][i][j][k - 1] - c2 * square[i][j][k - 1]) * wm1);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        k = 1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (5.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
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
        k = 2;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (-4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
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
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, u.f, grid_points.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = 3 * 1; k <= grid_points[2] - 3 * 1 - 1; k++) {
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1] + u[m][i][j][k + 2]);
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
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        k = grid_points[2] - 3;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 6.0 * u[m][i][j][k] - 4.0 * u[m][i][j][k + 1]);
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        k = grid_points[2] - 2;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, u.f, grid_points.f, i, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u.f, grid_points, grid_points.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [u.f, dssp, u, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - dssp * (u[m][i][j][k - 2] - 4.0 * u[m][i][j][k - 1] + 5.0 * u[m][i][j][k]);
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
        /*READ_S: [grid_points, grid_points.f, i, dt, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, i, dt, rhs, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f, i, dt, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, dt, rhs, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, dt, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [grid_points, grid_points.f, dt, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, dt, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*READ_S: [dt, rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [dt, rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] * dt;
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
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [c3c4, tz1, tx1, ty3, grid_points.f, dttz1, dttx1, dx5, dz5, dnym1, dy3, dx1, c2, dz1, dssp, c1c5, c3c4tz3, ty2, c3c4tx3, dx4, c5, _imopVarPre2143, dnxm1, dz4, dy2, c1, _imopVarPre2151, ce.f, ty1, tz3, tx3, _imopVarPre2091, c4, dtty1, dt, dy5, dx3, dz3, dy1, _imopVarPre2099, con16, _imopVarPre2095, ce, c3c4ty3, tz2, sqrt, conz1, tx2, grid_points, dtdssp, c3, dy4, con43, dx2, dz2, _imopVarPre2141, dnzm1]
WRITE_S: [yycon4, dxmax, c1c2, c3c4, tz1, dx5tx1, tx1, xxcon2, ty3, dz2tz1, c2dttz1, dttz1, c2dttx1, dttx1, dx5, zzcon1, c4dssp, dz5, dnym1, dymax, dy3, c2, dx1, zzcon5, dz1, dz3tz1, yycon3, dssp, dz4tz1, comz6, c1c5, c3c4tz3, ty2, xxcon3, c3c4tx3, dtty2, c5, dx4, dnxm1, dz4, zzcon4, dy2, dz5tz1, c1, c5dssp, yycon2, dy4ty1, ce.f, dx1tx1, comz5, xxcon4, ty1, tz3, tx3, comz1, c2dtty1, dx2tx1, c4, dtty1, dy5ty1, dy5, bt, dx3, zzcon3, c1345, dz3, dy1, con16, yycon5, xxcon1, dx3tx1, dy1ty1, c2iv, dzmax, c3c4ty3, comz4, yycon1, tz2, xxcon5, tx2, conz1, dtdssp, dx4tx1, c3, dttz2, dy3ty1, dttx2, zzcon2, dy4, dy2ty1, dx2, con43, dz2, dz1tz1, dnzm1]*/
static void set_constants(void ) {
/*READ_S: [c3c4, tz1, tx1, ty3, grid_points.f, dttz1, dttx1, dx5, dz5, dnym1, dy3, dx1, c2, dz1, dssp, c1c5, c3c4tz3, ty2, c3c4tx3, dx4, c5, _imopVarPre2143, dnxm1, dz4, dy2, c1, _imopVarPre2151, ce.f, ty1, tz3, tx3, _imopVarPre2091, c4, dtty1, dt, dy5, dx3, dz3, dy1, _imopVarPre2099, con16, _imopVarPre2095, ce, c3c4ty3, tz2, sqrt, conz1, tx2, grid_points, dtdssp, c3, dy4, con43, dx2, dz2, _imopVarPre2141, dnzm1]
WRITE_S: [yycon4, dxmax, c1c2, c3c4, tz1, dx5tx1, tx1, xxcon2, ty3, dz2tz1, c2dttz1, dttz1, c2dttx1, dttx1, dx5, zzcon1, c4dssp, dz5, dnym1, dymax, dy3, c2, dx1, zzcon5, dz1, dz3tz1, yycon3, dssp, dz4tz1, comz6, c1c5, c3c4tz3, ty2, xxcon3, c3c4tx3, dtty2, c5, dx4, dnxm1, dz4, zzcon4, dy2, dz5tz1, c1, c5dssp, yycon2, dy4ty1, ce.f, dx1tx1, comz5, xxcon4, ty1, tz3, tx3, comz1, c2dtty1, dx2tx1, c4, dtty1, dy5ty1, dy5, bt, dx3, zzcon3, c1345, dz3, dy1, con16, yycon5, xxcon1, dx3tx1, dy1ty1, c2iv, dzmax, c3c4ty3, comz4, yycon1, tz2, xxcon5, tx2, conz1, dtdssp, dx4tx1, c3, dttz2, dy3ty1, dttx2, zzcon2, dy4, dy2ty1, dx2, con43, dz2, dz1tz1, dnzm1]*/
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][0] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][0] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][0] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][0] = 4.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][0] = 5.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[5][0] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[6][0] = 0.5;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[7][0] = 0.02;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[8][0] = 0.01;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[9][0] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[10][0] = 0.5;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[11][0] = 0.4;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[12][0] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][1] = 1.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][1] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][1] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][1] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][1] = 1.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[5][1] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[6][1] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[7][1] = 0.01;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[8][1] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[9][1] = 0.02;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[10][1] = 0.4;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[11][1] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[12][1] = 0.5;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][2] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][2] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][2] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][2] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][2] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[5][2] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[6][2] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[7][2] = 0.04;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[8][2] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[9][2] = 0.05;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[10][2] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[11][2] = 0.5;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[12][2] = 0.4;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][3] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][3] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][3] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][3] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][3] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[5][3] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[6][3] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[7][3] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[8][3] = 0.05;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[9][3] = 0.04;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[10][3] = 0.2;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[11][3] = 0.1;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[12][3] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][4] = 5.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][4] = 4.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][4] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][4] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][4] = 0.1;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[5][4] = 0.4;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[6][4] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[7][4] = 0.05;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[8][4] = 0.04;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[9][4] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[10][4] = 0.1;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[11][4] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[12][4] = 0.2;
    /*READ_S: []
    WRITE_S: [c1]*/
    c1 = 1.4;
    /*READ_S: []
    WRITE_S: [c2]*/
    c2 = 0.4;
    /*READ_S: []
    WRITE_S: [c3]*/
    c3 = 0.1;
    /*READ_S: []
    WRITE_S: [c4]*/
    c4 = 1.0;
    /*READ_S: []
    WRITE_S: [c5]*/
    c5 = 1.4;
    /*READ_S: [sqrt]
    WRITE_S: []*/
    bt = sqrt(0.5);
    /*READ_S: []
    WRITE_S: [bt]*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: [dnxm1]*/
    dnxm1 = 1.0 / (double) (grid_points[0] - 1);
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: [dnym1]*/
    dnym1 = 1.0 / (double) (grid_points[1] - 1);
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: [dnzm1]*/
    dnzm1 = 1.0 / (double) (grid_points[2] - 1);
    /*READ_S: [c2, c1]
    WRITE_S: [c1c2]*/
    c1c2 = c1 * c2;
    /*READ_S: [c5, c1]
    WRITE_S: [c1c5]*/
    c1c5 = c1 * c5;
    /*READ_S: [c4, c3]
    WRITE_S: [c3c4]*/
    c3c4 = c3 * c4;
    /*READ_S: [c3c4, c1c5]
    WRITE_S: [c1345]*/
    c1345 = c1c5 * c3c4;
    /*READ_S: [c1c5]
    WRITE_S: [conz1]*/
    conz1 = (1.0 - c1c5);
    /*READ_S: [dnxm1]
    WRITE_S: [tx1]*/
    tx1 = 1.0 / (dnxm1 * dnxm1);
    /*READ_S: [dnxm1]
    WRITE_S: [tx2]*/
    tx2 = 1.0 / (2.0 * dnxm1);
    /*READ_S: [dnxm1]
    WRITE_S: [tx3]*/
    tx3 = 1.0 / dnxm1;
    /*READ_S: [dnym1]
    WRITE_S: [ty1]*/
    ty1 = 1.0 / (dnym1 * dnym1);
    /*READ_S: [dnym1]
    WRITE_S: [ty2]*/
    ty2 = 1.0 / (2.0 * dnym1);
    /*READ_S: [dnym1]
    WRITE_S: [ty3]*/
    ty3 = 1.0 / dnym1;
    /*READ_S: [dnzm1]
    WRITE_S: [tz1]*/
    tz1 = 1.0 / (dnzm1 * dnzm1);
    /*READ_S: [dnzm1]
    WRITE_S: [tz2]*/
    tz2 = 1.0 / (2.0 * dnzm1);
    /*READ_S: [dnzm1]
    WRITE_S: [tz3]*/
    tz3 = 1.0 / dnzm1;
    /*READ_S: []
    WRITE_S: [dx1]*/
    dx1 = 0.75;
    /*READ_S: []
    WRITE_S: [dx2]*/
    dx2 = 0.75;
    /*READ_S: []
    WRITE_S: [dx3]*/
    dx3 = 0.75;
    /*READ_S: []
    WRITE_S: [dx4]*/
    dx4 = 0.75;
    /*READ_S: []
    WRITE_S: [dx5]*/
    dx5 = 0.75;
    /*READ_S: []
    WRITE_S: [dy1]*/
    dy1 = 0.75;
    /*READ_S: []
    WRITE_S: [dy2]*/
    dy2 = 0.75;
    /*READ_S: []
    WRITE_S: [dy3]*/
    dy3 = 0.75;
    /*READ_S: []
    WRITE_S: [dy4]*/
    dy4 = 0.75;
    /*READ_S: []
    WRITE_S: [dy5]*/
    dy5 = 0.75;
    /*READ_S: []
    WRITE_S: [dz1]*/
    dz1 = 1.0;
    /*READ_S: []
    WRITE_S: [dz2]*/
    dz2 = 1.0;
    /*READ_S: []
    WRITE_S: [dz3]*/
    dz3 = 1.0;
    /*READ_S: []
    WRITE_S: [dz4]*/
    dz4 = 1.0;
    /*READ_S: []
    WRITE_S: [dz5]*/
    dz5 = 1.0;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre2091;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre2092;
    /*READ_S: [dx4, dx3]
    WRITE_S: []*/
    _imopVarPre2091 = (dx3 > dx4);
    /*READ_S: [_imopVarPre2091]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre2091, dx4, dx3]
    WRITE_S: []*/
    if (_imopVarPre2091) {
    /*READ_S: [dx3]
    WRITE_S: []*/
        /*READ_S: [dx3]
        WRITE_S: []*/
        _imopVarPre2092 = dx3;
    } else {
    /*READ_S: [dx4]
    WRITE_S: []*/
        /*READ_S: [dx4]
        WRITE_S: []*/
        _imopVarPre2092 = dx4;
    }
    /*READ_S: []
    WRITE_S: [dxmax]*/
    dxmax = _imopVarPre2092;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre2095;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre2096;
    /*READ_S: [dy4, dy2]
    WRITE_S: []*/
    _imopVarPre2095 = (dy2 > dy4);
    /*READ_S: [_imopVarPre2095]
    WRITE_S: []*/
    /*READ_S: [dy4, dy2, _imopVarPre2095]
    WRITE_S: []*/
    if (_imopVarPre2095) {
    /*READ_S: [dy2]
    WRITE_S: []*/
        /*READ_S: [dy2]
        WRITE_S: []*/
        _imopVarPre2096 = dy2;
    } else {
    /*READ_S: [dy4]
    WRITE_S: []*/
        /*READ_S: [dy4]
        WRITE_S: []*/
        _imopVarPre2096 = dy4;
    }
    /*READ_S: []
    WRITE_S: [dymax]*/
    dymax = _imopVarPre2096;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre2099;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre2100;
    /*READ_S: [dz3, dz2]
    WRITE_S: []*/
    _imopVarPre2099 = (dz2 > dz3);
    /*READ_S: [_imopVarPre2099]
    WRITE_S: []*/
    /*READ_S: [dz3, dz2, _imopVarPre2099]
    WRITE_S: []*/
    if (_imopVarPre2099) {
    /*READ_S: [dz2]
    WRITE_S: []*/
        /*READ_S: [dz2]
        WRITE_S: []*/
        _imopVarPre2100 = dz2;
    } else {
    /*READ_S: [dz3]
    WRITE_S: []*/
        /*READ_S: [dz3]
        WRITE_S: []*/
        _imopVarPre2100 = dz3;
    }
    /*READ_S: []
    WRITE_S: [dzmax]*/
    dzmax = _imopVarPre2100;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre2141;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre2142;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre2143;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre2144;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre2151;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre2152;
    /*READ_S: [dy1, dz1]
    WRITE_S: []*/
    _imopVarPre2141 = (dy1 > dz1);
    /*READ_S: [_imopVarPre2141]
    WRITE_S: []*/
    /*READ_S: [dy1, dz1, _imopVarPre2141]
    WRITE_S: []*/
    if (_imopVarPre2141) {
    /*READ_S: [dy1]
    WRITE_S: []*/
        /*READ_S: [dy1]
        WRITE_S: []*/
        _imopVarPre2142 = dy1;
    } else {
    /*READ_S: [dz1]
    WRITE_S: []*/
        /*READ_S: [dz1]
        WRITE_S: []*/
        _imopVarPre2142 = dz1;
    }
    /*READ_S: [dx1]
    WRITE_S: []*/
    _imopVarPre2143 = (dx1 > _imopVarPre2142);
    /*READ_S: [_imopVarPre2143]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre2143, dx1, dy1, dz1, _imopVarPre2151]
    WRITE_S: []*/
    if (_imopVarPre2143) {
    /*READ_S: [dx1]
    WRITE_S: []*/
        /*READ_S: [dx1]
        WRITE_S: []*/
        _imopVarPre2144 = dx1;
    } else {
    /*READ_S: [dy1, dz1, _imopVarPre2151]
    WRITE_S: []*/
        /*READ_S: [dy1, dz1]
        WRITE_S: []*/
        _imopVarPre2151 = (dy1 > dz1);
        /*READ_S: [_imopVarPre2151]
        WRITE_S: []*/
        /*READ_S: [dy1, dz1, _imopVarPre2151]
        WRITE_S: []*/
        if (_imopVarPre2151) {
        /*READ_S: [dy1]
        WRITE_S: []*/
            /*READ_S: [dy1]
            WRITE_S: []*/
            _imopVarPre2152 = dy1;
        } else {
        /*READ_S: [dz1]
        WRITE_S: []*/
            /*READ_S: [dz1]
            WRITE_S: []*/
            _imopVarPre2152 = dz1;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre2144 = _imopVarPre2152;
    }
    /*READ_S: []
    WRITE_S: [dssp]*/
    dssp = 0.25 * _imopVarPre2144;
    /*READ_S: [dssp]
    WRITE_S: [c4dssp]*/
    c4dssp = 4.0 * dssp;
    /*READ_S: [dssp]
    WRITE_S: [c5dssp]*/
    c5dssp = 5.0 * dssp;
    /*READ_S: [dt, tx1]
    WRITE_S: [dttx1]*/
    dttx1 = dt * tx1;
    /*READ_S: [dt, tx2]
    WRITE_S: [dttx2]*/
    dttx2 = dt * tx2;
    /*READ_S: [dt, ty1]
    WRITE_S: [dtty1]*/
    dtty1 = dt * ty1;
    /*READ_S: [dt, ty2]
    WRITE_S: [dtty2]*/
    dtty2 = dt * ty2;
    /*READ_S: [dt, tz1]
    WRITE_S: [dttz1]*/
    dttz1 = dt * tz1;
    /*READ_S: [dt, tz2]
    WRITE_S: [dttz2]*/
    dttz2 = dt * tz2;
    /*READ_S: [dttx1]
    WRITE_S: [c2dttx1]*/
    c2dttx1 = 2.0 * dttx1;
    /*READ_S: [dtty1]
    WRITE_S: [c2dtty1]*/
    c2dtty1 = 2.0 * dtty1;
    /*READ_S: [dttz1]
    WRITE_S: [c2dttz1]*/
    c2dttz1 = 2.0 * dttz1;
    /*READ_S: [dssp, dt]
    WRITE_S: [dtdssp]*/
    dtdssp = dt * dssp;
    /*READ_S: [dtdssp]
    WRITE_S: [comz1]*/
    comz1 = dtdssp;
    /*READ_S: [dtdssp]
    WRITE_S: [comz4]*/
    comz4 = 4.0 * dtdssp;
    /*READ_S: [dtdssp]
    WRITE_S: [comz5]*/
    comz5 = 5.0 * dtdssp;
    /*READ_S: [dtdssp]
    WRITE_S: [comz6]*/
    comz6 = 6.0 * dtdssp;
    /*READ_S: [c3c4, tx3]
    WRITE_S: [c3c4tx3]*/
    c3c4tx3 = c3c4 * tx3;
    /*READ_S: [c3c4, ty3]
    WRITE_S: [c3c4ty3]*/
    c3c4ty3 = c3c4 * ty3;
    /*READ_S: [c3c4, tz3]
    WRITE_S: [c3c4tz3]*/
    c3c4tz3 = c3c4 * tz3;
    /*READ_S: [dx1, tx1]
    WRITE_S: [dx1tx1]*/
    dx1tx1 = dx1 * tx1;
    /*READ_S: [dx2, tx1]
    WRITE_S: [dx2tx1]*/
    dx2tx1 = dx2 * tx1;
    /*READ_S: [dx3, tx1]
    WRITE_S: [dx3tx1]*/
    dx3tx1 = dx3 * tx1;
    /*READ_S: [dx4, tx1]
    WRITE_S: [dx4tx1]*/
    dx4tx1 = dx4 * tx1;
    /*READ_S: [dx5, tx1]
    WRITE_S: [dx5tx1]*/
    dx5tx1 = dx5 * tx1;
    /*READ_S: [dy1, ty1]
    WRITE_S: [dy1ty1]*/
    dy1ty1 = dy1 * ty1;
    /*READ_S: [dy2, ty1]
    WRITE_S: [dy2ty1]*/
    dy2ty1 = dy2 * ty1;
    /*READ_S: [dy3, ty1]
    WRITE_S: [dy3ty1]*/
    dy3ty1 = dy3 * ty1;
    /*READ_S: [dy4, ty1]
    WRITE_S: [dy4ty1]*/
    dy4ty1 = dy4 * ty1;
    /*READ_S: [dy5, ty1]
    WRITE_S: [dy5ty1]*/
    dy5ty1 = dy5 * ty1;
    /*READ_S: [tz1, dz1]
    WRITE_S: [dz1tz1]*/
    dz1tz1 = dz1 * tz1;
    /*READ_S: [dz2, tz1]
    WRITE_S: [dz2tz1]*/
    dz2tz1 = dz2 * tz1;
    /*READ_S: [dz3, tz1]
    WRITE_S: [dz3tz1]*/
    dz3tz1 = dz3 * tz1;
    /*READ_S: [dz4, tz1]
    WRITE_S: [dz4tz1]*/
    dz4tz1 = dz4 * tz1;
    /*READ_S: [dz5, tz1]
    WRITE_S: [dz5tz1]*/
    dz5tz1 = dz5 * tz1;
    /*READ_S: []
    WRITE_S: [c2iv]*/
    c2iv = 2.5;
    /*READ_S: []
    WRITE_S: [con43]*/
    con43 = 4.0 / 3.0;
    /*READ_S: []
    WRITE_S: [con16]*/
    con16 = 1.0 / 6.0;
    /*READ_S: [con43, c3c4tx3, tx3]
    WRITE_S: [xxcon1]*/
    xxcon1 = c3c4tx3 * con43 * tx3;
    /*READ_S: [c3c4tx3, tx3]
    WRITE_S: [xxcon2]*/
    xxcon2 = c3c4tx3 * tx3;
    /*READ_S: [conz1, c3c4tx3, tx3]
    WRITE_S: [xxcon3]*/
    xxcon3 = c3c4tx3 * conz1 * tx3;
    /*READ_S: [c3c4tx3, con16, tx3]
    WRITE_S: [xxcon4]*/
    xxcon4 = c3c4tx3 * con16 * tx3;
    /*READ_S: [c1c5, c3c4tx3, tx3]
    WRITE_S: [xxcon5]*/
    xxcon5 = c3c4tx3 * c1c5 * tx3;
    /*READ_S: [con43, c3c4ty3, ty3]
    WRITE_S: [yycon1]*/
    yycon1 = c3c4ty3 * con43 * ty3;
    /*READ_S: [c3c4ty3, ty3]
    WRITE_S: [yycon2]*/
    yycon2 = c3c4ty3 * ty3;
    /*READ_S: [c3c4ty3, conz1, ty3]
    WRITE_S: [yycon3]*/
    yycon3 = c3c4ty3 * conz1 * ty3;
    /*READ_S: [c3c4ty3, ty3, con16]
    WRITE_S: [yycon4]*/
    yycon4 = c3c4ty3 * con16 * ty3;
    /*READ_S: [c1c5, c3c4ty3, ty3]
    WRITE_S: [yycon5]*/
    yycon5 = c3c4ty3 * c1c5 * ty3;
    /*READ_S: [con43, c3c4tz3, tz3]
    WRITE_S: [zzcon1]*/
    zzcon1 = c3c4tz3 * con43 * tz3;
    /*READ_S: [c3c4tz3, tz3]
    WRITE_S: [zzcon2]*/
    zzcon2 = c3c4tz3 * tz3;
    /*READ_S: [c3c4tz3, tz3, conz1]
    WRITE_S: [zzcon3]*/
    zzcon3 = c3c4tz3 * conz1 * tz3;
    /*READ_S: [c3c4tz3, tz3, con16]
    WRITE_S: [zzcon4]*/
    zzcon4 = c3c4tz3 * con16 * tz3;
    /*READ_S: [c1c5, c3c4tz3, tz3]
    WRITE_S: [zzcon5]*/
    zzcon5 = c3c4tz3 * c1c5 * tz3;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [i, qs.f, qs, speed.f, ws.f, vs, ws, us.f, vs.f, us, grid_points, grid_points.f, rho_i, rho_i.f, bt, speed, c2, rhs, ainv, rhs.f, ainv.f]
WRITE_S: [rhs.f]*/
static void txinvr(void ) {
/*READ_S: [i, qs.f, qs, speed.f, ws.f, vs, ws, us.f, vs.f, us, grid_points, grid_points.f, rho_i, rho_i.f, bt, speed, c2, rhs, ainv, rhs.f, ainv.f]
WRITE_S: [rhs.f]*/
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
    double t1;
    /*READ_S: []
    WRITE_S: []*/
    double t2;
    /*READ_S: []
    WRITE_S: []*/
    double t3;
    /*READ_S: []
    WRITE_S: []*/
    double ac;
    /*READ_S: []
    WRITE_S: []*/
    double ru1;
    /*READ_S: []
    WRITE_S: []*/
    double uu;
    /*READ_S: []
    WRITE_S: []*/
    double vv;
    /*READ_S: []
    WRITE_S: []*/
    double ww;
    /*READ_S: []
    WRITE_S: []*/
    double r1;
    /*READ_S: []
    WRITE_S: []*/
    double r2;
    /*READ_S: []
    WRITE_S: []*/
    double r3;
    /*READ_S: []
    WRITE_S: []*/
    double r4;
    /*READ_S: []
    WRITE_S: []*/
    double r5;
    /*READ_S: []
    WRITE_S: []*/
    double ac2inv;
    /*READ_S: [i, qs.f, qs, speed.f, ws.f, vs, ws, us.f, vs.f, us, grid_points, grid_points.f, rho_i, rho_i.f, bt, speed, c2, rhs, ainv, rhs.f, ainv.f]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [qs.f, qs, speed.f, ws.f, vs, ws, us.f, vs.f, us, grid_points, grid_points.f, rho_i, rho_i.f, bt, speed, c2, rhs, ainv, rhs.f, ainv.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [qs.f, qs, speed.f, ws.f, vs, ws, us.f, vs.f, us, grid_points, grid_points.f, rho_i, rho_i.f, bt, speed, c2, rhs, ainv, rhs.f, ainv.f]
        WRITE_S: [rhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [qs.f, qs, speed.f, ws.f, vs, ws, us.f, vs.f, us, grid_points, grid_points.f, rho_i, rho_i.f, bt, speed, c2, rhs, ainv, rhs.f, ainv.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [qs.f, qs, speed.f, ws.f, vs, ws, us.f, vs.f, us, grid_points, grid_points.f, rho_i, rho_i.f, bt, speed, c2, rhs, ainv, rhs.f, ainv.f]
            WRITE_S: [rhs.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [qs.f, qs, speed.f, ws.f, vs, ws, us.f, vs.f, us, rho_i, rho_i.f, bt, speed, c2, rhs, ainv, rhs.f, ainv.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rho_i, rho_i.f]
                WRITE_S: []*/
                ru1 = rho_i[i][j][k];
                /*READ_S: [us.f, us]
                WRITE_S: []*/
                uu = us[i][j][k];
                /*READ_S: [vs, vs.f]
                WRITE_S: []*/
                vv = vs[i][j][k];
                /*READ_S: [ws.f, ws]
                WRITE_S: []*/
                ww = ws[i][j][k];
                /*READ_S: [speed.f, speed]
                WRITE_S: []*/
                ac = speed[i][j][k];
                /*READ_S: [ainv, ainv.f]
                WRITE_S: []*/
                ac2inv = ainv[i][j][k] * ainv[i][j][k];
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r1 = rhs[0][i][j][k];
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r2 = rhs[1][i][j][k];
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r3 = rhs[2][i][j][k];
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r4 = rhs[3][i][j][k];
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r5 = rhs[4][i][j][k];
                /*READ_S: [qs.f, qs, c2]
                WRITE_S: []*/
                t1 = c2 * ac2inv * (qs[i][j][k] * r1 - uu * r2 - vv * r3 - ww * r4 + r5);
                /*READ_S: [bt]
                WRITE_S: []*/
                t2 = bt * ru1 * (uu * r1 - r2);
                /*READ_S: [bt]
                WRITE_S: []*/
                t3 = (bt * ru1 * ac) * t1;
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[0][i][j][k] = r1 - t1;
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[1][i][j][k] = -ru1 * (ww * r1 - r4);
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[2][i][j][k] = ru1 * (vv * r1 - r3);
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[3][i][j][k] = -t2 + t3;
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[4][i][j][k] = t2 + t3;
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
/*READ_S: [qs.f, qs, c2iv, speed.f, vs, ws.f, ws, us.f, vs.f, us, i, grid_points, u.f, grid_points.f, u, bt, speed, rhs, ainv, rhs.f, ainv.f]
WRITE_S: [rhs.f]*/
static void tzetar(void ) {
/*READ_S: [qs.f, qs, c2iv, speed.f, vs, ws.f, ws, us.f, vs.f, us, i, grid_points, u.f, grid_points.f, u, bt, speed, rhs, ainv, rhs.f, ainv.f]
WRITE_S: [rhs.f]*/
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
    double t1;
    /*READ_S: []
    WRITE_S: []*/
    double t2;
    /*READ_S: []
    WRITE_S: []*/
    double t3;
    /*READ_S: []
    WRITE_S: []*/
    double ac;
    /*READ_S: []
    WRITE_S: []*/
    double xvel;
    /*READ_S: []
    WRITE_S: []*/
    double yvel;
    /*READ_S: []
    WRITE_S: []*/
    double zvel;
    /*READ_S: []
    WRITE_S: []*/
    double r1;
    /*READ_S: []
    WRITE_S: []*/
    double r2;
    /*READ_S: []
    WRITE_S: []*/
    double r3;
    /*READ_S: []
    WRITE_S: []*/
    double r4;
    /*READ_S: []
    WRITE_S: []*/
    double r5;
    /*READ_S: []
    WRITE_S: []*/
    double btuz;
    /*READ_S: []
    WRITE_S: []*/
    double acinv;
    /*READ_S: []
    WRITE_S: []*/
    double ac2u;
    /*READ_S: []
    WRITE_S: []*/
    double uzik1;
    /*READ_S: [qs.f, qs, c2iv, speed.f, vs, ws.f, ws, us.f, us, vs.f, i, grid_points, u.f, grid_points.f, u, bt, speed, rhs, ainv, rhs.f, ainv.f]
    WRITE_S: [rhs.f]*/
#pragma omp for private(i, j, k, t1, t2, t3, ac, xvel, yvel, zvel, r1, r2, r3, r4, r5, btuz, ac2u, uzik1) nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i <= grid_points[0] - 2; i++) {
    /*READ_S: [qs.f, qs, c2iv, speed.f, vs, ws.f, ws, us.f, us, vs.f, grid_points, u.f, grid_points.f, u, bt, speed, rhs, ainv, rhs.f, ainv.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [qs.f, qs, c2iv, speed.f, vs, ws.f, ws, us.f, us, vs.f, grid_points, u.f, grid_points.f, u, bt, speed, rhs, ainv, rhs.f, ainv.f]
        WRITE_S: [rhs.f]*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [qs.f, qs, c2iv, speed.f, vs, ws.f, ws, us.f, us, vs.f, grid_points, u.f, grid_points.f, u, bt, speed, rhs, ainv, rhs.f, ainv.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [qs.f, qs, c2iv, speed.f, vs, ws.f, ws, us.f, us, vs.f, grid_points, u.f, grid_points.f, u, bt, speed, rhs, ainv, rhs.f, ainv.f]
            WRITE_S: [rhs.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [qs.f, qs, c2iv, speed.f, vs, ws.f, ws, us.f, vs.f, us, u.f, u, bt, speed, rhs, ainv, rhs.f, ainv.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [us.f, us]
                WRITE_S: []*/
                xvel = us[i][j][k];
                /*READ_S: [vs, vs.f]
                WRITE_S: []*/
                yvel = vs[i][j][k];
                /*READ_S: [ws.f, ws]
                WRITE_S: []*/
                zvel = ws[i][j][k];
                /*READ_S: [speed.f, speed]
                WRITE_S: []*/
                ac = speed[i][j][k];
                /*READ_S: [ainv, ainv.f]
                WRITE_S: []*/
                acinv = ainv[i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                ac2u = ac * ac;
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r1 = rhs[0][i][j][k];
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r2 = rhs[1][i][j][k];
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r3 = rhs[2][i][j][k];
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r4 = rhs[3][i][j][k];
                /*READ_S: [rhs, rhs.f]
                WRITE_S: []*/
                r5 = rhs[4][i][j][k];
                /*READ_S: [u.f, u]
                WRITE_S: []*/
                uzik1 = u[0][i][j][k];
                /*READ_S: [bt]
                WRITE_S: []*/
                btuz = bt * uzik1;
                /*READ_S: []
                WRITE_S: []*/
                t1 = btuz * acinv * (r4 + r5);
                /*READ_S: []
                WRITE_S: []*/
                t2 = r3 + t1;
                /*READ_S: []
                WRITE_S: []*/
                t3 = btuz * (r4 - r5);
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[0][i][j][k] = t2;
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[1][i][j][k] = -uzik1 * r2 + xvel * t2;
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[2][i][j][k] = uzik1 * r1 + yvel * t2;
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[3][i][j][k] = zvel * t2 + t3;
                /*READ_S: [qs.f, qs, c2iv, rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                rhs[4][i][j][k] = uzik1 * (-xvel * r2 + yvel * r1) + qs[i][j][k] * t2 + c2iv * ac2u * t1 + zvel * t3;
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
/*READ_S: [_imopVarPre2169, yycon4, _imopVarPre2158, qs.f, c1c2, xce.f, ws.f, rhs_norm, us.f, _imopVarPre2182, dx5tx1, xxcon2, dz2tz1, grid_points.f, u, rho_i, square.f, _imopVarPre2163, dnym1, verified, c2, zzcon5, dz3tz1, _imopVarPre2175, xcr.f, ainv.f, yycon3, dssp, _imopVarPre2157, qs, dz4tz1, ws, _imopVarPre2170, us, ty2, xxcon3, _imopVarPre2162, dnxm1, zzcon4, c1, dz5tz1, _imopVarPre2174, ainv, _imopVarPre2156, yycon2, dy4ty1, ce.f, forcing.f, dx1tx1, vs.f, xxcon4, _imopVarPre2180, printf, j, dx2tx1, dt, fabs, dy5ty1, speed, zzcon3, rhs.f, yycon5, dx3tx1, _imopVarPre2168, dy1ty1, error_norm, forcing, ce, speed.f, vs, compute_rhs, tz2, _imopVarPre2181, xxcon5, sqrt, tx2, grid_points, u.f, exact_solution, i, dx4tx1, rho_i.f, square, _imopVarPre2164, dy3ty1, zzcon2, dy2ty1, con43, rhs, dz1tz1, dnzm1, _imopVarPre2176]
WRITE_S: [u_exact.f, Pface.f, qs.f, speed.f, xce.f, ws.f, us.f, vs.f, temp.f, rho_i.f, square.f, rhs.f, xcr.f, ainv.f]*/
static void verify(int no_time_steps, char *class , boolean *verified) {
/*READ_S: [_imopVarPre2169, yycon4, _imopVarPre2158, qs.f, c1c2, xce.f, ws.f, rhs_norm, us.f, _imopVarPre2182, dx5tx1, xxcon2, dz2tz1, grid_points.f, u, rho_i, square.f, _imopVarPre2163, dnym1, verified, c2, zzcon5, dz3tz1, _imopVarPre2175, xcr.f, ainv.f, yycon3, dssp, _imopVarPre2157, qs, dz4tz1, ws, _imopVarPre2170, us, ty2, xxcon3, _imopVarPre2162, dnxm1, zzcon4, c1, dz5tz1, _imopVarPre2174, ainv, _imopVarPre2156, yycon2, dy4ty1, ce.f, forcing.f, dx1tx1, vs.f, xxcon4, _imopVarPre2180, printf, j, dx2tx1, dt, fabs, dy5ty1, speed, zzcon3, rhs.f, yycon5, dx3tx1, _imopVarPre2168, dy1ty1, error_norm, forcing, ce, speed.f, vs, compute_rhs, tz2, _imopVarPre2181, xxcon5, sqrt, tx2, grid_points, u.f, exact_solution, i, dx4tx1, rho_i.f, square, _imopVarPre2164, dy3ty1, zzcon2, dy2ty1, con43, rhs, dz1tz1, dnzm1, _imopVarPre2176]
WRITE_S: [u_exact.f, Pface.f, qs.f, speed.f, xce.f, ws.f, us.f, vs.f, temp.f, rho_i.f, square.f, rhs.f, xcr.f, ainv.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double xcrref[5];
    /*READ_S: []
    WRITE_S: []*/
    double xceref[5];
    /*READ_S: []
    WRITE_S: []*/
    double xcrdif[5];
    /*READ_S: []
    WRITE_S: []*/
    double xcedif[5];
    /*READ_S: []
    WRITE_S: []*/
    double epsilon;
    /*READ_S: []
    WRITE_S: []*/
    double xce[5];
    /*READ_S: []
    WRITE_S: []*/
    double xcr[5];
    /*READ_S: []
    WRITE_S: []*/
    double dtref;
    /*READ_S: []
    WRITE_S: []*/
    int m;
    /*READ_S: []
    WRITE_S: []*/
    epsilon = 1.0e-08;
    /*READ_S: [error_norm]
    WRITE_S: []*/
    error_norm(xce);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [compute_rhs]
    WRITE_S: []*/
    compute_rhs();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [rhs_norm]
    WRITE_S: []*/
    rhs_norm(xcr);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [dt]
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [dt]
    WRITE_S: []*/
        /*READ_S: [dt]
        WRITE_S: []*/
        xcr[m] = xcr[m] / dt;
    }
    /*READ_S: []
    WRITE_S: []*/
    *class = 'U';
    /*READ_S: []
    WRITE_S: []*/
    *verified = 1;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        xcrref[m] = 1.0;
        /*READ_S: []
        WRITE_S: []*/
        xceref[m] = 1.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre2156;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre2157;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre2158;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre2156 = grid_points[0] == 12;
    /*READ_S: [_imopVarPre2156]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f, _imopVarPre2156, _imopVarPre2157, _imopVarPre2158]
    WRITE_S: []*/
    if (_imopVarPre2156) {
    /*READ_S: [grid_points, grid_points.f, _imopVarPre2157, _imopVarPre2158]
    WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        _imopVarPre2157 = grid_points[1] == 12;
        /*READ_S: [_imopVarPre2157]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, _imopVarPre2157, _imopVarPre2158]
        WRITE_S: []*/
        if (_imopVarPre2157) {
        /*READ_S: [grid_points, grid_points.f, _imopVarPre2158]
        WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            _imopVarPre2158 = grid_points[2] == 12;
            /*READ_S: [_imopVarPre2158]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre2158]
            WRITE_S: []*/
            if (_imopVarPre2158) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2158 = no_time_steps == 100;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre2157 = _imopVarPre2158;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre2156 = _imopVarPre2157;
    }
    /*READ_S: [_imopVarPre2156]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre2169, _imopVarPre2156, _imopVarPre2168, _imopVarPre2170, _imopVarPre2182, _imopVarPre2181, _imopVarPre2180, grid_points, grid_points.f, _imopVarPre2164, _imopVarPre2163, _imopVarPre2162, _imopVarPre2174, _imopVarPre2175, _imopVarPre2176]
    WRITE_S: []*/
    if (_imopVarPre2156) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        *class = 'S';
        /*READ_S: []
        WRITE_S: []*/
        dtref = 1.5e-2;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[0] = 2.7470315451339479e-02;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[1] = 1.0360746705285417e-02;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[2] = 1.6235745065095532e-02;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[3] = 1.5840557224455615e-02;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[4] = 3.4849040609362460e-02;
        /*READ_S: []
        WRITE_S: []*/
        xceref[0] = 2.7289258557377227e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[1] = 1.0364446640837285e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[2] = 1.6154798287166471e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[3] = 1.5750704994480102e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[4] = 3.4177666183390531e-05;
    } else {
    /*READ_S: [_imopVarPre2169, _imopVarPre2168, _imopVarPre2170, _imopVarPre2182, _imopVarPre2181, _imopVarPre2180, grid_points, grid_points.f, _imopVarPre2164, _imopVarPre2163, _imopVarPre2162, _imopVarPre2174, _imopVarPre2175, _imopVarPre2176]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre2162;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre2163;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre2164;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        _imopVarPre2162 = grid_points[0] == 36;
        /*READ_S: [_imopVarPre2162]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, _imopVarPre2164, _imopVarPre2163, _imopVarPre2162]
        WRITE_S: []*/
        if (_imopVarPre2162) {
        /*READ_S: [grid_points, grid_points.f, _imopVarPre2164, _imopVarPre2163]
        WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            _imopVarPre2163 = grid_points[1] == 36;
            /*READ_S: [_imopVarPre2163]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, _imopVarPre2164, _imopVarPre2163]
            WRITE_S: []*/
            if (_imopVarPre2163) {
            /*READ_S: [grid_points, grid_points.f, _imopVarPre2164]
            WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                _imopVarPre2164 = grid_points[2] == 36;
                /*READ_S: [_imopVarPre2164]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre2164]
                WRITE_S: []*/
                if (_imopVarPre2164) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre2164 = no_time_steps == 400;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2163 = _imopVarPre2164;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre2162 = _imopVarPre2163;
        }
        /*READ_S: [_imopVarPre2162]
        WRITE_S: []*/
        /*READ_S: [grid_points, _imopVarPre2169, grid_points.f, _imopVarPre2168, _imopVarPre2162, _imopVarPre2170, _imopVarPre2182, _imopVarPre2181, _imopVarPre2180, _imopVarPre2174, _imopVarPre2175, _imopVarPre2176]
        WRITE_S: []*/
        if (_imopVarPre2162) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            *class = 'W';
            /*READ_S: []
            WRITE_S: []*/
            dtref = 1.5e-3;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[0] = 0.1893253733584e-02;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[1] = 0.1717075447775e-03;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[2] = 0.2778153350936e-03;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[3] = 0.2887475409984e-03;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[4] = 0.3143611161242e-02;
            /*READ_S: []
            WRITE_S: []*/
            xceref[0] = 0.7542088599534e-04;
            /*READ_S: []
            WRITE_S: []*/
            xceref[1] = 0.6512852253086e-05;
            /*READ_S: []
            WRITE_S: []*/
            xceref[2] = 0.1049092285688e-04;
            /*READ_S: []
            WRITE_S: []*/
            xceref[3] = 0.1128838671535e-04;
            /*READ_S: []
            WRITE_S: []*/
            xceref[4] = 0.1212845639773e-03;
        } else {
        /*READ_S: [grid_points, _imopVarPre2169, grid_points.f, _imopVarPre2168, _imopVarPre2170, _imopVarPre2182, _imopVarPre2181, _imopVarPre2180, _imopVarPre2174, _imopVarPre2175, _imopVarPre2176]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre2168;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre2169;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre2170;
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            _imopVarPre2168 = grid_points[0] == 64;
            /*READ_S: [_imopVarPre2168]
            WRITE_S: []*/
            /*READ_S: [grid_points, _imopVarPre2169, grid_points.f, _imopVarPre2168, _imopVarPre2170]
            WRITE_S: []*/
            if (_imopVarPre2168) {
            /*READ_S: [grid_points, _imopVarPre2169, grid_points.f, _imopVarPre2170]
            WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                _imopVarPre2169 = grid_points[1] == 64;
                /*READ_S: [_imopVarPre2169]
                WRITE_S: []*/
                /*READ_S: [grid_points, _imopVarPre2169, grid_points.f, _imopVarPre2170]
                WRITE_S: []*/
                if (_imopVarPre2169) {
                /*READ_S: [grid_points, grid_points.f, _imopVarPre2170]
                WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    _imopVarPre2170 = grid_points[2] == 64;
                    /*READ_S: [_imopVarPre2170]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre2170]
                    WRITE_S: []*/
                    if (_imopVarPre2170) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre2170 = no_time_steps == 400;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre2169 = _imopVarPre2170;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2168 = _imopVarPre2169;
            }
            /*READ_S: [_imopVarPre2168]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, _imopVarPre2168, _imopVarPre2182, _imopVarPre2181, _imopVarPre2180, _imopVarPre2174, _imopVarPre2175, _imopVarPre2176]
            WRITE_S: []*/
            if (_imopVarPre2168) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *class = 'A';
                /*READ_S: []
                WRITE_S: []*/
                dtref = 1.5e-3;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[0] = 2.4799822399300195;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[1] = 1.1276337964368832;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[2] = 1.5028977888770491;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[3] = 1.4217816211695179;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[4] = 2.1292113035138280;
                /*READ_S: []
                WRITE_S: []*/
                xceref[0] = 1.0900140297820550e-04;
                /*READ_S: []
                WRITE_S: []*/
                xceref[1] = 3.7343951769282091e-05;
                /*READ_S: []
                WRITE_S: []*/
                xceref[2] = 5.0092785406541633e-05;
                /*READ_S: []
                WRITE_S: []*/
                xceref[3] = 4.7671093939528255e-05;
                /*READ_S: []
                WRITE_S: []*/
                xceref[4] = 1.3621613399213001e-04;
            } else {
            /*READ_S: [grid_points, grid_points.f, _imopVarPre2182, _imopVarPre2181, _imopVarPre2180, _imopVarPre2174, _imopVarPre2175, _imopVarPre2176]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre2174;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre2175;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre2176;
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                _imopVarPre2174 = grid_points[0] == 102;
                /*READ_S: [_imopVarPre2174]
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, _imopVarPre2174, _imopVarPre2175, _imopVarPre2176]
                WRITE_S: []*/
                if (_imopVarPre2174) {
                /*READ_S: [grid_points, grid_points.f, _imopVarPre2175, _imopVarPre2176]
                WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    _imopVarPre2175 = grid_points[1] == 102;
                    /*READ_S: [_imopVarPre2175]
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, _imopVarPre2175, _imopVarPre2176]
                    WRITE_S: []*/
                    if (_imopVarPre2175) {
                    /*READ_S: [grid_points, grid_points.f, _imopVarPre2176]
                    WRITE_S: []*/
                        /*READ_S: [grid_points, grid_points.f]
                        WRITE_S: []*/
                        _imopVarPre2176 = grid_points[2] == 102;
                        /*READ_S: [_imopVarPre2176]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre2176]
                        WRITE_S: []*/
                        if (_imopVarPre2176) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre2176 = no_time_steps == 400;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre2175 = _imopVarPre2176;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre2174 = _imopVarPre2175;
                }
                /*READ_S: [_imopVarPre2174]
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, _imopVarPre2182, _imopVarPre2181, _imopVarPre2180, _imopVarPre2174]
                WRITE_S: []*/
                if (_imopVarPre2174) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    *class = 'B';
                    /*READ_S: []
                    WRITE_S: []*/
                    dtref = 1.0e-3;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[0] = 0.6903293579998e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[1] = 0.3095134488084e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[2] = 0.4103336647017e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[3] = 0.3864769009604e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[4] = 0.5643482272596e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[0] = 0.9810006190188e-02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[1] = 0.1022827905670e-02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[2] = 0.1720597911692e-02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[3] = 0.1694479428231e-02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[4] = 0.1847456263981e-01;
                } else {
                /*READ_S: [grid_points, grid_points.f, _imopVarPre2182, _imopVarPre2181, _imopVarPre2180]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre2180;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre2181;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre2182;
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    _imopVarPre2180 = grid_points[0] == 162;
                    /*READ_S: [_imopVarPre2180]
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, _imopVarPre2182, _imopVarPre2181, _imopVarPre2180]
                    WRITE_S: []*/
                    if (_imopVarPre2180) {
                    /*READ_S: [grid_points, grid_points.f, _imopVarPre2182, _imopVarPre2181]
                    WRITE_S: []*/
                        /*READ_S: [grid_points, grid_points.f]
                        WRITE_S: []*/
                        _imopVarPre2181 = grid_points[1] == 162;
                        /*READ_S: [_imopVarPre2181]
                        WRITE_S: []*/
                        /*READ_S: [grid_points, grid_points.f, _imopVarPre2182, _imopVarPre2181]
                        WRITE_S: []*/
                        if (_imopVarPre2181) {
                        /*READ_S: [grid_points, grid_points.f, _imopVarPre2182]
                        WRITE_S: []*/
                            /*READ_S: [grid_points, grid_points.f]
                            WRITE_S: []*/
                            _imopVarPre2182 = grid_points[2] == 162;
                            /*READ_S: [_imopVarPre2182]
                            WRITE_S: []*/
                            /*READ_S: [_imopVarPre2182]
                            WRITE_S: []*/
                            if (_imopVarPre2182) {
                            /*READ_S: []
                            WRITE_S: []*/
                                /*READ_S: []
                                WRITE_S: []*/
                                _imopVarPre2182 = no_time_steps == 400;
                            }
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre2181 = _imopVarPre2182;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre2180 = _imopVarPre2181;
                    }
                    /*READ_S: [_imopVarPre2180]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre2180]
                    WRITE_S: []*/
                    if (_imopVarPre2180) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        *class = 'C';
                        /*READ_S: []
                        WRITE_S: []*/
                        dtref = 0.67e-3;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[0] = 0.5881691581829e+03;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[1] = 0.2454417603569e+03;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[2] = 0.3293829191851e+03;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[3] = 0.3081924971891e+03;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[4] = 0.4597223799176e+03;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[0] = 0.2598120500183e+00;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[1] = 0.2590888922315e-01;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[2] = 0.5132886416320e-01;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[3] = 0.4806073419454e-01;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[4] = 0.5483377491301e+00;
                    } else {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        *verified = 0;
                    }
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
    /*READ_S: [fabs]
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre2184;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre2185;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre2184 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre2185 = fabs(_imopVarPre2184);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        xcrdif[m] = _imopVarPre2185;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre2187;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre2188;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre2187 = (xce[m] - xceref[m]) / xceref[m];
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre2188 = fabs(_imopVarPre2187);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        xcedif[m] = _imopVarPre2188;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, dt, fabs]
    WRITE_S: []*/
    if (*class != 'U') {
    /*READ_S: [printf, dt, fabs]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        char _imopVarPre2190;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre2190 = *class;
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Verification being performed for class %1c\n", _imopVarPre2190);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" accuracy setting for epsilon = %20.13e\n", epsilon);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre2193;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre2194;
        /*READ_S: [dt]
        WRITE_S: []*/
        _imopVarPre2193 = dt - dtref;
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre2194 = fabs(_imopVarPre2193);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (_imopVarPre2194 > epsilon) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            *verified = 0;
            /*READ_S: []
            WRITE_S: []*/
            *class = 'U';
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" DT does not match the reference value of %15.8e\n", dtref);
            /*READ_S: []
            WRITE_S: []*/
        }
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Unknown class\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (*class != 'U') {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Comparison of RMS-norms of residual\n");
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" RMS-norms of residual\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (*class == 'U') {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre2196;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre2196 = xcr[m];
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("          %2d%20.13e\n", m, _imopVarPre2196);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            if (xcrdif[m] > epsilon) {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *verified = 0;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2200;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2201;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2202;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2200 = xcrdif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2201 = xcrref[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2202 = xcr[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2202, _imopVarPre2201, _imopVarPre2200);
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2206;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2207;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2208;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2206 = xcrdif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2207 = xcrref[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2208 = xcr[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2208, _imopVarPre2207, _imopVarPre2206);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    if (*class != 'U') {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Comparison of RMS-norms of solution error\n");
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" RMS-norms of solution error\n");
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (*class == 'U') {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre2210;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre2210 = xce[m];
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("          %2d%20.13e\n", m, _imopVarPre2210);
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            if (xcedif[m] > epsilon) {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *verified = 0;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2214;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2215;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2216;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2214 = xcedif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2215 = xceref[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2216 = xce[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2216, _imopVarPre2215, _imopVarPre2214);
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2220;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2221;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre2222;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2220 = xcedif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2221 = xceref[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre2222 = xce[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre2222, _imopVarPre2221, _imopVarPre2220);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf, verified]
    WRITE_S: []*/
    if (*class == 'U') {
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" No reference values provided\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" No verification performed\n");
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf, verified]
    WRITE_S: []*/
        /*READ_S: [verified]
        WRITE_S: []*/
        /*READ_S: [printf, verified]
        WRITE_S: []*/
        if (*verified) {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" Verification Successful\n");
            /*READ_S: []
            WRITE_S: []*/
        } else {
        /*READ_S: [printf]
        WRITE_S: []*/
            /*READ_S: [printf]
            WRITE_S: []*/
            printf(" Verification failed\n");
            /*READ_S: []
            WRITE_S: []*/
        }
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, comz5, comz1, grid_points.f, i, c2dttx1, rho_i, dttx1, dx5, cv, bt, j, speed, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, rhs.f, lhsx, speed.f, ninvr, rhon, comz6, c1c5, us, comz4, grid_points, i, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, m, _imopVarPre725, _imopVarPre715, rhs, j]
WRITE_S: [cv.f, rhon.f, lhs.f, rhs.f]*/
static void x_solve(void ) {
/*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, comz5, comz1, grid_points.f, i, c2dttx1, rho_i, dttx1, dx5, cv, bt, j, speed, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, rhs.f, lhsx, speed.f, ninvr, rhon, comz6, c1c5, us, comz4, grid_points, i, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, m, _imopVarPre725, _imopVarPre715, rhs, j]
WRITE_S: [cv.f, rhon.f, lhs.f, rhs.f]*/
    /*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, comz5, comz1, grid_points.f, i, c2dttx1, rho_i, dttx1, dx5, cv, j, speed, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, rhs.f, lhsx, speed.f, rhon, comz6, c1c5, us, comz4, grid_points, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, m, _imopVarPre725, _imopVarPre715, rhs, j]
    WRITE_S: [cv.f, rhon.f, lhs.f, rhs.f]*/
#pragma omp parallel
    {
    /*READ_S: [lhs, dxmax, rhon.f, us.f, c3c4, comz5, comz1, grid_points.f, i, c2dttx1, rho_i, dttx1, dx5, cv, j, speed, dx1, lhs.f, _imopVarPre821, _imopVarPre831, _imopVarPre823, rhs.f, lhsx, speed.f, rhon, comz6, c1c5, us, comz4, grid_points, cv.f, rho_i.f, dttx2, _imopVarPre727, dx2, con43, _imopVarPre717, m, _imopVarPre725, _imopVarPre715, rhs, j]
    WRITE_S: [cv.f, rhon.f, lhs.f, rhs.f]*/
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
        int n;
        /*READ_S: []
        WRITE_S: []*/
        int i1;
        /*READ_S: []
        WRITE_S: []*/
        int i2;
        /*READ_S: []
        WRITE_S: []*/
        int m;
        /*READ_S: []
        WRITE_S: []*/
        double fac1;
        /*READ_S: []
        WRITE_S: []*/
        double fac2;
        /*READ_S: [lhsx]
        WRITE_S: []*/
        lhsx();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        n = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
        for (i = 0; i <= grid_points[0] - 3; i++) {
        /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            i1 = i + 1;
            /*READ_S: []
            WRITE_S: []*/
            i2 = i + 2;
            /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: []*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (m = 0; m < 3; m++) {
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (m = 0; m < 3; m++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    }
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (m = 0; m < 3; m++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
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
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        i = grid_points[0] - 2;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        i1 = grid_points[0] - 1;
        /*READ_S: [grid_points, grid_points.f, lhs, j, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j <= grid_points[1] - 2; j++) {
        /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: [lhs, lhs.f]
                WRITE_S: []*/
                fac1 = 1.0 / lhs[n + 2][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 3; m++) {
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 3; m++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                }
                /*READ_S: [lhs, lhs.f]
                WRITE_S: []*/
                fac2 = 1. / lhs[n + 2][i1][j][k];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 3; m++) {
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, j, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
        for (m = 3; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, j, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            n = (m - 3 + 1) * 5;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
            for (i = 0; i <= grid_points[0] - 3; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                i1 = i + 1;
                /*READ_S: []
                WRITE_S: []*/
                i2 = i + 2;
                /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
                /*READ_S: [j]
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [lhs.f, rhs.f]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [lhs.f, rhs.f]*/
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: []*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*READ_S: [rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 1][i2][j][k] = lhs[n + 1][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 3][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 2][i2][j][k] = lhs[n + 2][i2][j][k] - lhs[n + 0][i2][j][k] * lhs[n + 4][i][j][k];
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i2][j][k] = rhs[m][i2][j][k] - lhs[n + 0][i2][j][k] * rhs[m][i][j][k];
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush BARRIER_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp barrier
            }
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            i = grid_points[0] - 2;
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            i1 = grid_points[0] - 1;
            /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: []*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 2][i1][j][k] = lhs[n + 2][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i1][j][k] = lhs[n + 3][i1][j][k] - lhs[n + 1][i1][j][k] * lhs[n + 4][i][j][k];
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i1][j][k] = rhs[m][i1][j][k] - lhs[n + 1][i1][j][k] * rhs[m][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: []*/
                    fac2 = 1. / lhs[n + 2][i1][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i1][j][k] = fac2 * rhs[m][i1][j][k];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        i = grid_points[0] - 2;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        i1 = grid_points[0] - 1;
        /*READ_S: []
        WRITE_S: []*/
        n = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 3; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
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
        /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 3; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [j]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    n = (m - 3 + 1) * 5;
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k];
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
        n = 0;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, m, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
        for (i = grid_points[0] - 3; i >= 0; i--) {
        /*READ_S: [grid_points, grid_points.f, lhs, m, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            i1 = i + 1;
            /*READ_S: []
            WRITE_S: []*/
            i2 = i + 2;
            /*READ_S: [grid_points, grid_points.f, lhs, m, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [m]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (m = 0; m < 3; m++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
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
        /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 3; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            n = (m - 3 + 1) * 5;
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
            for (i = grid_points[0] - 3; i >= 0; i--) {
            /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                i1 = i + 1;
                /*READ_S: []
                WRITE_S: []*/
                i2 = i + 2;
                /*READ_S: [grid_points, grid_points.f, lhs, j, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
#pragma omp for nowait
                /*READ_S: [j]
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i1][j][k] - lhs[n + 4][i][j][k] * rhs[m][i2][j][k];
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
    }
    /*READ_S: [ninvr]
    WRITE_S: []*/
    ninvr();
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [j, lhsy, lhs, c3c4, vs.f, comz5, pinvr, comz1, _imopVarPre1459, i, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, bt, speed, _imopVarPre1451, dymax, dy3, dy1, lhs.f, rhs.f, i, i, speed.f, vs, comz6, c1c5, comz4, grid_points, cv.f, dtty2, rho_i.f, rhoq, _imopVarPre1353, _imopVarPre1343, con43, rhs, _imopVarPre1355, _imopVarPre1345]
WRITE_S: [cv.f, rhoq.f, lhs.f, rhs.f]*/
static void y_solve(void ) {
/*READ_S: [j, lhsy, lhs, c3c4, vs.f, comz5, pinvr, comz1, _imopVarPre1459, i, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, bt, speed, _imopVarPre1451, dymax, dy3, dy1, lhs.f, rhs.f, i, i, speed.f, vs, comz6, c1c5, comz4, grid_points, cv.f, dtty2, rho_i.f, rhoq, _imopVarPre1353, _imopVarPre1343, con43, rhs, _imopVarPre1355, _imopVarPre1345]
WRITE_S: [cv.f, rhoq.f, lhs.f, rhs.f]*/
    /*READ_S: [j, lhsy, lhs, c3c4, vs.f, comz5, comz1, _imopVarPre1459, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, speed, _imopVarPre1451, dymax, dy3, dy1, lhs.f, rhs.f, i, i, speed.f, vs, comz6, c1c5, comz4, grid_points, cv.f, dtty2, rho_i.f, rhoq, _imopVarPre1353, _imopVarPre1343, con43, rhs, _imopVarPre1355, _imopVarPre1345]
    WRITE_S: [cv.f, rhoq.f, lhs.f, rhs.f]*/
#pragma omp parallel
    {
    /*READ_S: [j, lhsy, lhs, c3c4, vs.f, comz5, comz1, _imopVarPre1459, c2dtty1, grid_points.f, rho_i, _imopVarPre1449, dtty1, cv, rhoq.f, dy5, speed, _imopVarPre1451, dymax, dy3, dy1, lhs.f, rhs.f, i, i, speed.f, vs, comz6, c1c5, comz4, grid_points, cv.f, dtty2, rho_i.f, rhoq, _imopVarPre1353, _imopVarPre1343, con43, rhs, _imopVarPre1355, _imopVarPre1345]
    WRITE_S: [cv.f, rhoq.f, lhs.f, rhs.f]*/
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
        int n;
        /*READ_S: []
        WRITE_S: []*/
        int j1;
        /*READ_S: []
        WRITE_S: []*/
        int j2;
        /*READ_S: []
        WRITE_S: []*/
        int m;
        /*READ_S: []
        WRITE_S: []*/
        double fac1;
        /*READ_S: []
        WRITE_S: []*/
        double fac2;
        /*READ_S: [lhsy]
        WRITE_S: []*/
        lhsy();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        n = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
        for (j = 0; j <= grid_points[1] - 3; j++) {
        /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            j1 = j + 1;
            /*READ_S: []
            WRITE_S: []*/
            j2 = j + 2;
            /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: []*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (m = 0; m < 3; m++) {
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (m = 0; m < 3; m++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                    }
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (m = 0; m < 3; m++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
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
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        j = grid_points[1] - 2;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        j1 = grid_points[1] - 1;
        /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
            for (k = 1; k <= grid_points[2] - 2; k++) {
            /*READ_S: [lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: [lhs, lhs.f]
                WRITE_S: []*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 3; m++) {
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 3; m++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                }
                /*READ_S: [lhs, lhs.f]
                WRITE_S: []*/
                fac2 = 1. / lhs[n + 2][i][j1][k];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 3; m++) {
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
        for (m = 3; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            n = (m - 3 + 1) * 5;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
            for (j = 0; j <= grid_points[1] - 3; j++) {
            /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                j1 = j + 1;
                /*READ_S: []
                WRITE_S: []*/
                j2 = j + 2;
                /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
                /*READ_S: [i]
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
                    WRITE_S: [lhs.f, rhs.f]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*READ_S: [lhs, lhs.f, rhs, rhs.f]
                    WRITE_S: [lhs.f, rhs.f]*/
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: []*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*READ_S: [rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 1][i][j2][k] = lhs[n + 1][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 3][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 2][i][j2][k] = lhs[n + 2][i][j2][k] - lhs[n + 0][i][j2][k] * lhs[n + 4][i][j][k];
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j2][k] = rhs[m][i][j2][k] - lhs[n + 0][i][j2][k] * rhs[m][i][j][k];
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                // #pragma omp dummyFlush BARRIER_START
                /*READ_S: []
                WRITE_S: []*/
#pragma omp barrier
            }
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            j = grid_points[1] - 2;
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            j1 = grid_points[1] - 1;
            /*READ_S: [grid_points, grid_points.f, lhs, i, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: []*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 2][i][j1][k] = lhs[n + 2][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j1][k] = lhs[n + 3][i][j1][k] - lhs[n + 1][i][j1][k] * lhs[n + 4][i][j][k];
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j1][k] = rhs[m][i][j1][k] - lhs[n + 1][i][j1][k] * rhs[m][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: []*/
                    fac2 = 1. / lhs[n + 2][i][j1][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j1][k] = fac2 * rhs[m][i][j1][k];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        j = grid_points[1] - 2;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        j1 = grid_points[1] - 1;
        /*READ_S: []
        WRITE_S: []*/
        n = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 3; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
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
        /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 3; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (k = 1; k <= grid_points[2] - 2; k++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    n = (m - 3 + 1) * 5;
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k];
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
        n = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 3; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
            for (j = grid_points[1] - 3; j >= 0; j--) {
            /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                j1 = j + 1;
                /*READ_S: []
                WRITE_S: []*/
                j2 = j + 2;
                /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
#pragma omp for nowait
                /*READ_S: [i]
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
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
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 3; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            n = (m - 3 + 1) * 5;
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
            for (j = grid_points[1] - 3; j >= 0; j--) {
            /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                j1 = j + 1;
                /*READ_S: []
                WRITE_S: []*/
                j2 = j1 + 1;
                /*READ_S: [grid_points, grid_points.f, lhs, i, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
#pragma omp for nowait
                /*READ_S: [i]
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                for (i = 1; i <= grid_points[0] - 2; i++) {
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = 1; k <= grid_points[2] - 2; k++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j1][k] - lhs[n + 4][i][j][k] * rhs[m][i][j2][k];
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
    }
    /*READ_S: [pinvr]
    WRITE_S: []*/
    pinvr();
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [lhs, qs.f, ws.f, c3c4, us.f, _imopVarPre2077, i, grid_points.f, c2dttz1, dttz1, u, rho_i, rhos.f, dz5, lhs.f, dz1, ainv.f, lhsz, _imopVarPre1981, _imopVarPre1973, qs, ws, comz6, c1c5, us, cv.f, rhos, dz4, k, ainv, _imopVarPre2079, _imopVarPre2087, vs.f, comz5, comz1, cv, bt, speed, rhs.f, _imopVarPre1971, _imopVarPre1983, speed.f, c2iv, vs, dzmax, tzetar, comz4, grid_points, i, u.f, rho_i.f, dttz2, con43, rhs, i]
WRITE_S: [cv.f, rhos.f, lhs.f, rhs.f]*/
static void z_solve(void ) {
/*READ_S: [lhs, qs.f, ws.f, c3c4, us.f, _imopVarPre2077, i, grid_points.f, c2dttz1, dttz1, u, rho_i, rhos.f, dz5, lhs.f, dz1, ainv.f, lhsz, _imopVarPre1981, _imopVarPre1973, qs, ws, comz6, c1c5, us, cv.f, rhos, dz4, k, ainv, _imopVarPre2079, _imopVarPre2087, vs.f, comz5, comz1, cv, bt, speed, rhs.f, _imopVarPre1971, _imopVarPre1983, speed.f, c2iv, vs, dzmax, tzetar, comz4, grid_points, i, u.f, rho_i.f, dttz2, con43, rhs, i]
WRITE_S: [cv.f, rhos.f, lhs.f, rhs.f]*/
    /*READ_S: [lhs, ws.f, _imopVarPre2079, c3c4, _imopVarPre2087, _imopVarPre2077, comz5, comz1, grid_points.f, c2dttz1, dttz1, rho_i, rhos.f, cv, speed, dz5, lhs.f, dz1, rhs.f, lhsz, _imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, speed.f, dzmax, ws, comz6, c1c5, comz4, grid_points, i, cv.f, rho_i.f, dttz2, rhos, dz4, con43, rhs, k, i]
    WRITE_S: [cv.f, rhos.f, lhs.f, rhs.f]*/
#pragma omp parallel
    {
    /*READ_S: [lhs, ws.f, _imopVarPre2079, c3c4, _imopVarPre2087, _imopVarPre2077, comz5, comz1, grid_points.f, c2dttz1, dttz1, rho_i, rhos.f, cv, speed, dz5, lhs.f, dz1, rhs.f, lhsz, _imopVarPre1981, _imopVarPre1971, _imopVarPre1983, _imopVarPre1973, speed.f, dzmax, ws, comz6, c1c5, comz4, grid_points, i, cv.f, rho_i.f, dttz2, rhos, dz4, con43, rhs, k, i]
    WRITE_S: [cv.f, rhos.f, lhs.f, rhs.f]*/
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
        int n;
        /*READ_S: []
        WRITE_S: []*/
        int k1;
        /*READ_S: []
        WRITE_S: []*/
        int k2;
        /*READ_S: []
        WRITE_S: []*/
        int m;
        /*READ_S: []
        WRITE_S: []*/
        double fac1;
        /*READ_S: []
        WRITE_S: []*/
        double fac2;
        /*READ_S: [lhsz]
        WRITE_S: []*/
        lhsz();
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        n = 0;
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
        WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                for (k = 0; k <= grid_points[2] - 3; k++) {
                /*READ_S: [lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    k1 = k + 1;
                    /*READ_S: []
                    WRITE_S: []*/
                    k2 = k + 2;
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: []*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (m = 0; m < 3; m++) {
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    }
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (m = 0; m < 3; m++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    }
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (m = 0; m < 3; m++) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
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
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        k = grid_points[2] - 2;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        k1 = grid_points[2] - 1;
        /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f, i]
        WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i <= grid_points[0] - 2; i++) {
        /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
        WRITE_S: [lhs.f, rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
            for (j = 1; j <= grid_points[1] - 2; j++) {
            /*READ_S: [lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: [lhs, lhs.f]
                WRITE_S: []*/
                fac1 = 1. / lhs[n + 2][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 3; m++) {
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                }
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                /*READ_S: [lhs, lhs.f]
                WRITE_S: [lhs.f]*/
                lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 3; m++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                }
                /*READ_S: [lhs, lhs.f]
                WRITE_S: []*/
                fac2 = 1. / lhs[n + 2][i][j][k1];
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 3; m++) {
                /*READ_S: [rhs, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f, i]
        WRITE_S: [lhs.f, rhs.f]*/
        for (m = 3; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f, i]
        WRITE_S: [lhs.f, rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            n = (m - 3 + 1) * 5;
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, i, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
                    WRITE_S: [lhs.f, rhs.f]*/
                    for (k = 0; k <= grid_points[2] - 3; k++) {
                    /*READ_S: [lhs, lhs.f, rhs, rhs.f]
                    WRITE_S: [lhs.f, rhs.f]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        k1 = k + 1;
                        /*READ_S: []
                        WRITE_S: []*/
                        k2 = k + 2;
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: []*/
                        fac1 = 1. / lhs[n + 2][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                        /*READ_S: [rhs, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 1][i][j][k2] = lhs[n + 1][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 3][i][j][k];
                        /*READ_S: [lhs, lhs.f]
                        WRITE_S: [lhs.f]*/
                        lhs[n + 2][i][j][k2] = lhs[n + 2][i][j][k2] - lhs[n + 0][i][j][k2] * lhs[n + 4][i][j][k];
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k2] = rhs[m][i][j][k2] - lhs[n + 0][i][j][k2] * rhs[m][i][j][k];
                    }
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            k = grid_points[2] - 2;
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            k1 = grid_points[2] - 1;
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f, i]
            WRITE_S: [lhs.f, rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
            WRITE_S: [lhs.f, rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [lhs, lhs.f, rhs, rhs.f]
                WRITE_S: [lhs.f, rhs.f]*/
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: []*/
                    fac1 = 1. / lhs[n + 2][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j][k] = fac1 * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 4][i][j][k] = fac1 * lhs[n + 4][i][j][k];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = fac1 * rhs[m][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 2][i][j][k1] = lhs[n + 2][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 3][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: [lhs.f]*/
                    lhs[n + 3][i][j][k1] = lhs[n + 3][i][j][k1] - lhs[n + 1][i][j][k1] * lhs[n + 4][i][j][k];
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k1] = rhs[m][i][j][k1] - lhs[n + 1][i][j][k1] * rhs[m][i][j][k];
                    /*READ_S: [lhs, lhs.f]
                    WRITE_S: []*/
                    fac2 = 1. / lhs[n + 2][i][j][k1];
                    /*READ_S: [rhs, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k1] = fac2 * rhs[m][i][j][k1];
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            // #pragma omp dummyFlush BARRIER_START
            /*READ_S: []
            WRITE_S: []*/
#pragma omp barrier
        }
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        k = grid_points[2] - 2;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        k1 = grid_points[2] - 1;
        /*READ_S: []
        WRITE_S: []*/
        n = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 3; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
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
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, i, rhs.f]
        WRITE_S: [rhs.f]*/
        for (m = 3; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, i, rhs.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            n = (m - 3 + 1) * 5;
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, i, rhs.f]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1];
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
        n = 0;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
        WRITE_S: [rhs.f]*/
        for (m = 0; m < 3; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        k1 = k + 1;
                        /*READ_S: []
                        WRITE_S: []*/
                        k2 = k + 2;
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
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
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
        WRITE_S: [rhs.f]*/
        for (m = 3; m < 5; m++) {
        /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            n = (m - 3 + 1) * 5;
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f, i]
            WRITE_S: [rhs.f]*/
#pragma omp for nowait
            /*READ_S: [i]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            for (i = 1; i <= grid_points[0] - 2; i++) {
            /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                for (j = 1; j <= grid_points[1] - 2; j++) {
                /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f, lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                    for (k = grid_points[2] - 3; k >= 0; k--) {
                    /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        k1 = k + 1;
                        /*READ_S: []
                        WRITE_S: []*/
                        k2 = k + 2;
                        /*READ_S: [lhs, rhs, lhs.f, rhs.f]
                        WRITE_S: [rhs.f]*/
                        rhs[m][i][j][k] = rhs[m][i][j][k] - lhs[n + 3][i][j][k] * rhs[m][i][j][k1] - lhs[n + 4][i][j][k] * rhs[m][i][j][k2];
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
    /*READ_S: [tzetar]
    WRITE_S: []*/
    tzetar();
    /*READ_S: []
    WRITE_S: []*/
}
