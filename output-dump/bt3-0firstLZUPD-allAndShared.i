
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
static double ce[5][13];
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
WRITE_S: [us.f, us]*/
static double us[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [vs.f, vs]*/
static double vs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [ws.f, ws]*/
static double ws[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [qs.f, qs]*/
static double qs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [rho_i, rho_i.f]*/
static double rho_i[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [square.f, square]*/
static double square[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1];
/*READ_S: []
WRITE_S: [forcing, forcing.f]*/
static double forcing[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5 + 1];
/*READ_S: []
WRITE_S: [u, u.f]*/
static double u[(12 + 1) / 2 * 2 + 1][(12 + 1) / 2 * 2 + 1][(12 + 1) / 2 * 2 + 1][5];
/*READ_S: []
WRITE_S: [rhs.f, rhs]*/
static double rhs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1][5];
/*READ_S: []
WRITE_S: [lhs.f, lhs]*/
static double lhs[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 / 2 * 2 + 1][3][5][5];
/*READ_S: []
WRITE_S: []*/
static double cuf[12];
/*READ_S: []
WRITE_S: []*/
static double q[12];
/*READ_S: []
WRITE_S: []*/
static double ue[12][5];
/*READ_S: []
WRITE_S: []*/
static double buf[12][5];
#pragma omp threadprivate(cuf, q, ue, buf)
/*READ_S: []
WRITE_S: [fjac.f, fjac]*/
static double fjac[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 - 1 + 1][5][5];
/*READ_S: []
WRITE_S: [njac.f, njac]*/
static double njac[12 / 2 * 2 + 1][12 / 2 * 2 + 1][12 - 1 + 1][5][5];
/*READ_S: []
WRITE_S: [tmp1]*/
static double tmp1;
/*READ_S: []
WRITE_S: [tmp2]*/
static double tmp2;
/*READ_S: []
WRITE_S: [tmp3]*/
static double tmp3;
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
WRITE_S: [compute_rhs]*/
static void compute_rhs(void );
/*READ_S: []
WRITE_S: [set_constants]*/
static void set_constants(void );
/*READ_S: []
WRITE_S: [verify]*/
static void verify(int no_time_steps, char *class , boolean *verified);
/*READ_S: []
WRITE_S: [x_solve]*/
static void x_solve(void );
/*READ_S: []
WRITE_S: [x_backsubstitute]*/
static void x_backsubstitute(void );
/*READ_S: []
WRITE_S: [x_solve_cell]*/
static void x_solve_cell(void );
/*READ_S: []
WRITE_S: [matvec_sub]*/
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]);
/*READ_S: []
WRITE_S: [matmul_sub]*/
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]);
/*READ_S: []
WRITE_S: [binvcrhs]*/
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]);
/*READ_S: []
WRITE_S: [binvrhs]*/
static void binvrhs(double lhs[5][5], double r[5]);
/*READ_S: []
WRITE_S: [y_solve]*/
static void y_solve(void );
/*READ_S: []
WRITE_S: [y_backsubstitute]*/
static void y_backsubstitute(void );
/*READ_S: []
WRITE_S: [y_solve_cell]*/
static void y_solve_cell(void );
/*READ_S: []
WRITE_S: [z_solve]*/
static void z_solve(void );
/*READ_S: []
WRITE_S: [z_backsubstitute]*/
static void z_backsubstitute(void );
/*READ_S: []
WRITE_S: [z_solve_cell]*/
static void z_solve_cell(void );
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [_imopVarPre272, _imopVarPre290, fjac, binvcrhs, exact_rhs, dz3, dy1, c5, _imopVarPre251, j, c1345, set_constants, j, vs.f, dz4tz1, x_backsubstitute, _imopVarPre207, c3c4tz3, _imopVarPre259, ty2, i, xxcon5, ce.f, yycon3, fclose, zzcon1, dy1ty1, _imopVarPre271, dtdssp, c3c4, adi, fjac.f, i, j, dz2, c4, dnzm1, zzcon2, vs, dz2tz1, ty1, dx5tx1, tz3, exit, conz1, xcr.f, exact_solution, timer_clear, dy3ty1, lhsx, ce, yycon2, z_backsubstitute, dx5, tmp2, _imopVarPre270, dx4tx1, u.f, rho_i, dz1, _imopVarPre288, _imopVarPre282, us.f, initialize, c3c4ty3, tz2, _imopVarPre168, _imopVarPre249, i, fabs, dy5ty1, dx2tx1, qs.f, i, _imopVarPre276, njac.f, dttx1, yycon5, &dt, dx4, u, tmp3, _imopVarPre289, _imopVarPre283, tz1, us, timer_start, fgetc, fscanf, dnxm1, matvec_sub, qs, _imopVarPre266, njac, yycon4, j, c1, dy5, _imopVarPre284, c1c5, rhs.f, i, _imopVarPre203, xce.f, dz5tz1, dx3, dy2ty1, zzcon5, i, dssp, c3c4tx3, con16, y_backsubstitute, dnym1, xxcon1, printf, _imopVarPre265, compute_rhs, j, _imopVarPre278, dtty1, tmp1, matmul_sub, dz3tz1, rhs, i, z_solve_cell, c_print_results, _imopVarPre199, dy4, rho_i.f, dy4ty1, dt, dx2, z_solve, x_solve, forcing.f, con43, tx3, xxcon2, grid_points, _imopVarPre264, _imopVarPre277, i, square, add, lhs.f, i, sqrt, dx3tx1, dz1tz1, dx1, dz5, dy3, c3, forcing, ws.f, yycon1, zzcon3, error_norm, tx2, binvrhs, dttz1, xxcon3, grid_points.f, square.f, y_solve_cell, timer_read, x_solve_cell, _imopVarPre160, rhs_norm, lhsy, c2, fopen, dx1tx1, i, verify, dy2, i, dz4, y_solve, zzcon4, ws, ty3, timer_stop, lhsinit, tx1, lhs, j, xxcon4, lhsz]
WRITE_S: [dz3, c5, dy1, c1345, vs.f, dz4tz1, ty2, c3c4tz3, xxcon5, c2dttz1, ce.f, yycon3, comz5, zzcon1, dy1ty1, dzmax, dtdssp, c3c4, fjac.f, c1c2, dz2, c4, dnzm1, zzcon2, dz2tz1, ty1, dx5tx1, tz3, conz1, xcr.f, comz4, dy3ty1, dttx2, yycon2, dx5, tmp2, dx4tx1, u.f, dz1, us.f, tz2, c3c4ty3, c4dssp, dy5ty1, dx2tx1, c2dtty1, qs.f, njac.f, yycon5, dttx1, dx4, tmp3, tz1, dnxm1, dxmax, dtty2, yycon4, dy5, c1, rhs.f, c1c5, xce.f, dz5tz1, dx3, dy2ty1, zzcon5, con16, dssp, c3c4tx3, dnym1, xxcon1, comz1, c2dttx1, dtty1, tmp1, dz3tz1, dy4, rho_i.f, dy4ty1, dt, dx2, u_exact.f, forcing.f, con43, tx3, xxcon2, dttz2, lhs.f, dx3tx1, c2iv, dz1tz1, dx1, dz5, dy3, c3, yycon1, ws.f, zzcon3, tx2, dttz1, xxcon3, grid_points.f, square.f, c2, c5dssp, dx1tx1, dy2, dymax, dz4, zzcon4, Pface.f, ty3, temp.f, tx1, xxcon4, comz6]*/
int main(int argc, char **argv) {
/*READ_S: [_imopVarPre272, _imopVarPre290, fjac, binvcrhs, exact_rhs, dz3, dy1, c5, _imopVarPre251, j, c1345, set_constants, j, vs.f, dz4tz1, x_backsubstitute, _imopVarPre207, c3c4tz3, _imopVarPre259, ty2, i, xxcon5, ce.f, yycon3, fclose, zzcon1, dy1ty1, _imopVarPre271, dtdssp, c3c4, adi, fjac.f, i, j, dz2, c4, dnzm1, zzcon2, vs, dz2tz1, ty1, dx5tx1, tz3, exit, conz1, xcr.f, exact_solution, timer_clear, dy3ty1, lhsx, ce, yycon2, z_backsubstitute, dx5, tmp2, _imopVarPre270, dx4tx1, u.f, rho_i, dz1, _imopVarPre288, _imopVarPre282, us.f, initialize, c3c4ty3, tz2, _imopVarPre168, _imopVarPre249, i, fabs, dy5ty1, dx2tx1, qs.f, i, _imopVarPre276, njac.f, dttx1, yycon5, &dt, dx4, u, tmp3, _imopVarPre289, _imopVarPre283, tz1, us, timer_start, fgetc, fscanf, dnxm1, matvec_sub, qs, _imopVarPre266, njac, yycon4, j, c1, dy5, _imopVarPre284, c1c5, rhs.f, i, _imopVarPre203, xce.f, dz5tz1, dx3, dy2ty1, zzcon5, i, dssp, c3c4tx3, con16, y_backsubstitute, dnym1, xxcon1, printf, _imopVarPre265, compute_rhs, j, _imopVarPre278, dtty1, tmp1, matmul_sub, dz3tz1, rhs, i, z_solve_cell, c_print_results, _imopVarPre199, dy4, rho_i.f, dy4ty1, dt, dx2, z_solve, x_solve, forcing.f, con43, tx3, xxcon2, grid_points, _imopVarPre264, _imopVarPre277, i, square, add, lhs.f, i, sqrt, dx3tx1, dz1tz1, dx1, dz5, dy3, c3, forcing, ws.f, yycon1, zzcon3, error_norm, tx2, binvrhs, dttz1, xxcon3, grid_points.f, square.f, y_solve_cell, timer_read, x_solve_cell, _imopVarPre160, rhs_norm, lhsy, c2, fopen, dx1tx1, i, verify, dy2, i, dz4, y_solve, zzcon4, ws, ty3, timer_stop, lhsinit, tx1, lhs, j, xxcon4, lhsz]
WRITE_S: [dz3, c5, dy1, c1345, vs.f, dz4tz1, ty2, c3c4tz3, xxcon5, c2dttz1, ce.f, yycon3, comz5, zzcon1, dy1ty1, dzmax, dtdssp, c3c4, fjac.f, c1c2, dz2, c4, dnzm1, zzcon2, dz2tz1, ty1, dx5tx1, tz3, conz1, xcr.f, comz4, dy3ty1, dttx2, yycon2, dx5, tmp2, dx4tx1, u.f, dz1, us.f, tz2, c3c4ty3, c4dssp, dy5ty1, dx2tx1, c2dtty1, qs.f, njac.f, yycon5, dttx1, dx4, tmp3, tz1, dnxm1, dxmax, dtty2, yycon4, dy5, c1, rhs.f, c1c5, xce.f, dz5tz1, dx3, dy2ty1, zzcon5, con16, dssp, c3c4tx3, dnym1, xxcon1, comz1, c2dttx1, dtty1, tmp1, dz3tz1, dy4, rho_i.f, dy4ty1, dt, dx2, u_exact.f, forcing.f, con43, tx3, xxcon2, dttz2, lhs.f, dx3tx1, c2iv, dz1tz1, dx1, dz5, dy3, c3, yycon1, ws.f, zzcon3, tx2, dttz1, xxcon3, grid_points.f, square.f, c2, c5dssp, dx1tx1, dy2, dymax, dz4, zzcon4, Pface.f, ty3, temp.f, tx1, xxcon4, comz6]*/
    /*READ_S: []
    WRITE_S: []*/
    int niter;
    /*READ_S: []
    WRITE_S: []*/
    int step;
    /*READ_S: []
    WRITE_S: []*/
    int n3;
    /*READ_S: []
    WRITE_S: []*/
    int nthreads = 1;
    /*READ_S: []
    WRITE_S: []*/
    double navg;
    /*READ_S: []
    WRITE_S: []*/
    double mflops;
    /*READ_S: []
    WRITE_S: []*/
    double tmax;
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
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - BT Benchmark\n\n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fopen]
    WRITE_S: []*/
    fp = fopen("inputbt.data", "r");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [&dt, fgetc, fscanf, grid_points, printf, grid_points.f, fclose, dt]
    WRITE_S: [grid_points.f, dt]*/
    if (fp != ((void *) 0)) {
    /*READ_S: [&dt, fgetc, fscanf, grid_points, printf, grid_points.f, fclose, dt]
    WRITE_S: [grid_points.f, dt]*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Reading from input file inputbt.data");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int *_imopVarPre141;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre141 = &niter;
        /*READ_S: [fscanf]
        WRITE_S: []*/
        fscanf(fp, "%d", _imopVarPre141);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre143;
        /*READ_S: [fgetc]
        WRITE_S: []*/
        _imopVarPre143 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fgetc]
        WRITE_S: []*/
        while (_imopVarPre143 != '\n') {
        /*READ_S: [fgetc]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [fgetc]
            WRITE_S: []*/
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
        /*READ_S: [fscanf, dt]
        WRITE_S: [dt]*/
        fscanf(fp, "%lg", _imopVarPre145);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre147;
        /*READ_S: [fgetc]
        WRITE_S: []*/
        _imopVarPre147 = fgetc(fp);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fgetc]
        WRITE_S: []*/
        while (_imopVarPre147 != '\n') {
        /*READ_S: [fgetc]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            ;
            /*READ_S: [fgetc]
            WRITE_S: []*/
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
        /*READ_S: [fscanf, grid_points.f]
        WRITE_S: [grid_points.f]*/
        fscanf(fp, "%d%d%d", _imopVarPre153, _imopVarPre152, _imopVarPre151);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [fclose]
        WRITE_S: []*/
        fclose(fp);
        /*READ_S: []
        WRITE_S: []*/
    } else {
    /*READ_S: [printf, grid_points]
    WRITE_S: [grid_points.f, dt]*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" No input file inputbt.data. Using compiled defaults\n");
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        niter = 60;
        /*READ_S: []
        WRITE_S: [dt]*/
        dt = 0.010;
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
    _imopVarPre160 = grid_points[0] > 12;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    if (!_imopVarPre160) {
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        _imopVarPre161 = grid_points[1] > 12;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        if (!_imopVarPre161) {
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            _imopVarPre161 = grid_points[2] > 12;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre160 = _imopVarPre161;
    }
    /*READ_S: [_imopVarPre160]
    WRITE_S: []*/
    /*READ_S: [exit, printf, grid_points, grid_points.f, _imopVarPre160]
    WRITE_S: []*/
    if (_imopVarPre160) {
    /*READ_S: [exit, printf, grid_points, grid_points.f]
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
        printf(" %dx%dx%d\n", _imopVarPre167, _imopVarPre166, _imopVarPre165);
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
    /*READ_S: [fjac, binvcrhs, dz3, dy1, c1345, j, vs.f, dz4tz1, x_backsubstitute, ty2, xxcon5, yycon3, dy1ty1, c3c4, adi, fjac.f, i, j, dz2, c4, zzcon2, vs, dz2tz1, dx5tx1, ty1, dy3ty1, lhsx, yycon2, z_backsubstitute, dx5, tmp2, dx4tx1, u.f, rho_i, dz1, us.f, tz2, _imopVarPre168, dy5ty1, dx2tx1, i, qs.f, njac.f, yycon5, dx4, u, tmp3, us, tz1, matvec_sub, qs, njac, yycon4, c1, dy5, rhs.f, i, dz5tz1, dx3, dy2ty1, zzcon5, i, dssp, y_backsubstitute, printf, compute_rhs, j, tmp1, matmul_sub, dz3tz1, rhs, i, z_solve_cell, dy4, rho_i.f, dy4ty1, dx2, dt, x_solve, z_solve, forcing.f, con43, xxcon2, grid_points, i, square, add, lhs.f, i, dx3tx1, dz1tz1, dx1, dz5, dy3, c3, forcing, ws.f, zzcon3, tx2, binvrhs, xxcon3, grid_points.f, square.f, y_solve_cell, x_solve_cell, lhsy, c2, dx1tx1, i, dy2, y_solve, dz4, zzcon4, ws, tx1, lhs, j, xxcon4, lhsz]
    WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, u.f, rho_i.f, us.f, vs.f, ws.f, square.f, qs.f, njac.f]*/
    for (step = 1; step <= niter; step++) {
    /*READ_S: [fjac, binvcrhs, dz3, dy1, c1345, j, vs.f, dz4tz1, x_backsubstitute, ty2, xxcon5, yycon3, dy1ty1, c3c4, adi, fjac.f, i, j, dz2, c4, zzcon2, vs, dz2tz1, dx5tx1, ty1, dy3ty1, lhsx, yycon2, z_backsubstitute, dx5, tmp2, dx4tx1, u.f, rho_i, dz1, us.f, tz2, _imopVarPre168, dy5ty1, dx2tx1, i, qs.f, njac.f, yycon5, dx4, u, tmp3, us, tz1, matvec_sub, qs, njac, yycon4, c1, dy5, rhs.f, i, dz5tz1, dx3, dy2ty1, zzcon5, i, dssp, y_backsubstitute, printf, compute_rhs, j, tmp1, matmul_sub, dz3tz1, rhs, i, z_solve_cell, dy4, rho_i.f, dy4ty1, dx2, dt, x_solve, z_solve, forcing.f, con43, xxcon2, grid_points, i, square, add, lhs.f, i, dx3tx1, dz1tz1, dx1, dz5, dy3, c3, forcing, ws.f, zzcon3, tx2, binvrhs, xxcon3, grid_points.f, square.f, y_solve_cell, x_solve_cell, lhsy, c2, dx1tx1, i, dy2, y_solve, dz4, zzcon4, ws, tx1, lhs, j, xxcon4, lhsz]
    WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, u.f, rho_i.f, us.f, vs.f, ws.f, square.f, qs.f, njac.f]*/
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
        /*READ_S: [_imopVarPre168, printf]
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
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    n3 = grid_points[0] * grid_points[1] * grid_points[2];
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    navg = (grid_points[0] + grid_points[1] + grid_points[2]) / 3.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    if (tmax != 0.0) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        mflops = 1.0e-6 * (double) niter * (3478.8 * (double) n3 - 17655.7 * (navg * navg) + 28023.7 * navg) / tmax;
    } else {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        mflops = 0.0;
    }
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre176;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre177;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre178;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre176 = grid_points[2];
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre177 = grid_points[1];
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre178 = grid_points[0];
    /*READ_S: [c_print_results]
    WRITE_S: []*/
    c_print_results("BT", class, _imopVarPre178, _imopVarPre177, _imopVarPre176, niter, nthreads, tmax, mflops, "          floating point", verified, "3.0 structured", "15 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "(none)");
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [u, rhs.f, i, u.f, rhs, grid_points, grid_points.f]
WRITE_S: [u.f]*/
static void add() {
/*READ_S: [u, rhs.f, i, u.f, rhs, grid_points, grid_points.f]
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
    /*READ_S: [u, rhs.f, i, u.f, rhs, grid_points, grid_points.f]
    WRITE_S: [u.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [u, rhs.f, u.f, rhs, grid_points, grid_points.f]
    WRITE_S: [u.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u, rhs.f, u.f, rhs, grid_points, grid_points.f]
        WRITE_S: [u.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [u, rhs.f, u.f, rhs, grid_points, grid_points.f]
        WRITE_S: [u.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, rhs.f, u.f, rhs, grid_points, grid_points.f]
            WRITE_S: [u.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [u, rhs.f, u.f, rhs]
            WRITE_S: [u.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, rhs.f, u.f, rhs]
                WRITE_S: [u.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u, rhs.f, u.f, rhs]
                WRITE_S: [u.f]*/
                    /*READ_S: [u, rhs.f, u.f, rhs]
                    WRITE_S: [u.f]*/
                    u[i][j][k][m] = u[i][j][k][m] + rhs[i][j][k][m];
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
/*READ_S: [fjac, binvcrhs, dz3, dy1, c1345, j, vs.f, dz4tz1, x_backsubstitute, ty2, xxcon5, yycon3, dy1ty1, c3c4, fjac.f, i, j, dz2, c4, zzcon2, vs, dz2tz1, dx5tx1, ty1, dy3ty1, lhsx, yycon2, z_backsubstitute, dx5, tmp2, dx4tx1, u.f, rho_i, dz1, us.f, tz2, dy5ty1, dx2tx1, i, qs.f, njac.f, yycon5, dx4, u, tmp3, us, tz1, matvec_sub, qs, njac, yycon4, c1, dy5, rhs.f, i, dz5tz1, dx3, dy2ty1, zzcon5, i, dssp, y_backsubstitute, compute_rhs, j, tmp1, matmul_sub, dz3tz1, rhs, i, z_solve_cell, dy4, rho_i.f, dy4ty1, dx2, dt, x_solve, z_solve, forcing.f, con43, xxcon2, grid_points, i, square, add, lhs.f, i, dx3tx1, dz1tz1, dx1, dz5, dy3, c3, forcing, ws.f, zzcon3, tx2, binvrhs, xxcon3, grid_points.f, square.f, y_solve_cell, x_solve_cell, lhsy, c2, dx1tx1, i, dy2, y_solve, dz4, zzcon4, ws, tx1, lhs, j, xxcon4, lhsz]
WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, u.f, rho_i.f, us.f, vs.f, ws.f, square.f, qs.f, njac.f]*/
static void adi() {
/*READ_S: [fjac, binvcrhs, dz3, dy1, c1345, j, vs.f, dz4tz1, x_backsubstitute, ty2, xxcon5, yycon3, dy1ty1, c3c4, fjac.f, i, j, dz2, c4, zzcon2, vs, dz2tz1, dx5tx1, ty1, dy3ty1, lhsx, yycon2, z_backsubstitute, dx5, tmp2, dx4tx1, u.f, rho_i, dz1, us.f, tz2, dy5ty1, dx2tx1, i, qs.f, njac.f, yycon5, dx4, u, tmp3, us, tz1, matvec_sub, qs, njac, yycon4, c1, dy5, rhs.f, i, dz5tz1, dx3, dy2ty1, zzcon5, i, dssp, y_backsubstitute, compute_rhs, j, tmp1, matmul_sub, dz3tz1, rhs, i, z_solve_cell, dy4, rho_i.f, dy4ty1, dx2, dt, x_solve, z_solve, forcing.f, con43, xxcon2, grid_points, i, square, add, lhs.f, i, dx3tx1, dz1tz1, dx1, dz5, dy3, c3, forcing, ws.f, zzcon3, tx2, binvrhs, xxcon3, grid_points.f, square.f, y_solve_cell, x_solve_cell, lhsy, c2, dx1tx1, i, dy2, y_solve, dz4, zzcon4, ws, tx1, lhs, j, xxcon4, lhsz]
WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, u.f, rho_i.f, us.f, vs.f, ws.f, square.f, qs.f, njac.f]*/
    /*READ_S: [c1, rhs.f, dz5tz1, dy2ty1, vs.f, zzcon5, dz4tz1, dssp, ty2, xxcon5, yycon3, compute_rhs, j, dy1ty1, dz3tz1, rhs, rho_i.f, dy4ty1, dt, forcing.f, vs, zzcon2, con43, dz2tz1, dx5tx1, xxcon2, grid_points, dy3ty1, yycon2, square, i, dx4tx1, u.f, dx3tx1, rho_i, dz1tz1, us.f, forcing, ws.f, zzcon3, tx2, tz2, xxcon3, dy5ty1, dx2tx1, grid_points.f, square.f, qs.f, yycon5, c2, dx1tx1, u, zzcon4, us, ws, xxcon4, qs, yycon4]
    WRITE_S: [us.f, vs.f, ws.f, rhs.f, qs.f, square.f, rho_i.f]*/
#pragma omp parallel
    {
    /*READ_S: [c1, rhs.f, dz5tz1, dy2ty1, vs.f, zzcon5, dz4tz1, dssp, ty2, xxcon5, yycon3, compute_rhs, j, dy1ty1, dz3tz1, rhs, rho_i.f, dy4ty1, dt, forcing.f, vs, zzcon2, con43, dz2tz1, dx5tx1, xxcon2, grid_points, dy3ty1, yycon2, square, i, dx4tx1, u.f, dx3tx1, rho_i, dz1tz1, us.f, forcing, ws.f, zzcon3, tx2, tz2, xxcon3, dy5ty1, dx2tx1, grid_points.f, square.f, qs.f, yycon5, c2, dx1tx1, u, zzcon4, us, ws, xxcon4, qs, yycon4]
    WRITE_S: [us.f, vs.f, ws.f, rhs.f, qs.f, square.f, rho_i.f]*/
        /*READ_S: [compute_rhs]
        WRITE_S: []*/
        compute_rhs();
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [dx5, tmp2, c1, rhs.f, lhs.f, u.f, fjac, binvcrhs, dx1, dx3, c1345, j, x_backsubstitute, tx2, binvrhs, grid_points.f, njac.f, x_solve_cell, tmp1, matmul_sub, c2, dx4, c3c4, u, rhs, fjac.f, tmp3, j, x_solve, dx2, dt, con43, tx1, lhs, j, grid_points, lhsx, matvec_sub, njac]
    WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, njac.f]*/
#pragma omp parallel
    {
    /*READ_S: [dx5, tmp2, c1, rhs.f, lhs.f, u.f, fjac, binvcrhs, dx1, dx3, c1345, j, x_backsubstitute, tx2, binvrhs, grid_points.f, njac.f, x_solve_cell, tmp1, matmul_sub, c2, dx4, c3c4, u, rhs, fjac.f, tmp3, j, x_solve, dx2, dt, con43, tx1, lhs, j, grid_points, lhsx, matvec_sub, njac]
    WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, njac.f]*/
        /*READ_S: [x_solve]
        WRITE_S: []*/
        x_solve();
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [tmp2, dy5, c1, rhs.f, i, lhs.f, u.f, fjac, binvcrhs, dy1, dy3, c1345, y_backsubstitute, ty2, binvrhs, grid_points.f, y_solve_cell, njac.f, lhsy, tmp1, c2, matmul_sub, c3c4, u, fjac.f, rhs, i, i, tmp3, dy2, dy4, dt, y_solve, con43, ty1, lhs, grid_points, matvec_sub, njac]
    WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, njac.f]*/
#pragma omp parallel
    {
    /*READ_S: [tmp2, dy5, c1, rhs.f, i, lhs.f, u.f, fjac, binvcrhs, dy1, dy3, c1345, y_backsubstitute, ty2, binvrhs, grid_points.f, y_solve_cell, njac.f, lhsy, tmp1, c2, matmul_sub, c3c4, u, fjac.f, rhs, i, i, tmp3, dy2, dy4, dt, y_solve, con43, ty1, lhs, grid_points, matvec_sub, njac]
    WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, njac.f]*/
        /*READ_S: [y_solve]
        WRITE_S: []*/
        y_solve();
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [tmp2, c1, rhs.f, lhs.f, u.f, fjac, binvcrhs, dz1, dz3, dz5, c3, c1345, i, tz2, binvrhs, grid_points.f, i, njac.f, tmp1, matmul_sub, c2, c3c4, u, fjac.f, rhs, tmp3, z_solve_cell, i, dz2, c4, dz4, dt, z_solve, tz1, con43, lhs, grid_points, matvec_sub, z_backsubstitute, lhsz, njac]
    WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, tmp3, fjac.f, njac.f]*/
#pragma omp parallel
    {
    /*READ_S: [tmp2, c1, rhs.f, lhs.f, u.f, fjac, binvcrhs, dz1, dz3, dz5, c3, c1345, i, tz2, binvrhs, grid_points.f, i, njac.f, tmp1, matmul_sub, c2, c3c4, u, fjac.f, rhs, tmp3, z_solve_cell, i, dz2, c4, dz4, dt, z_solve, tz1, con43, lhs, grid_points, matvec_sub, z_backsubstitute, lhsz, njac]
    WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, tmp3, fjac.f, njac.f]*/
        /*READ_S: [z_solve]
        WRITE_S: []*/
        z_solve();
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [add, u, rhs.f, i, u.f, rhs, grid_points, grid_points.f]
    WRITE_S: [u.f]*/
#pragma omp parallel
    {
    /*READ_S: [add, u, rhs.f, i, u.f, rhs, grid_points, grid_points.f]
    WRITE_S: [u.f]*/
        /*READ_S: [add]
        WRITE_S: []*/
        add();
        /*READ_S: []
        WRITE_S: []*/
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [dnzm1, u, dnym1, u.f, dnxm1, sqrt, xce.f, grid_points, exact_solution, grid_points.f, ce.f, ce]
WRITE_S: [u_exact.f, Pface.f, temp.f, xce.f]*/
static void error_norm(double rms[5]) {
/*READ_S: [dnzm1, u, dnym1, u.f, dnxm1, sqrt, xce.f, grid_points, exact_solution, grid_points.f, ce.f, ce]
WRITE_S: [u_exact.f, Pface.f, temp.f, xce.f]*/
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
    /*READ_S: [dnzm1, u, dnym1, u.f, dnxm1, grid_points, xce.f, grid_points.f, exact_solution, ce.f, ce]
    WRITE_S: [u_exact.f, Pface.f, temp.f, xce.f]*/
    for (i = 0; i < grid_points[0]; i++) {
    /*READ_S: [dnzm1, u, dnym1, u.f, dnxm1, grid_points, xce.f, grid_points.f, exact_solution, ce.f, ce]
    WRITE_S: [u_exact.f, Pface.f, temp.f, xce.f]*/
        /*READ_S: [dnxm1]
        WRITE_S: []*/
        xi = (double) i * dnxm1;
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [dnzm1, u, dnym1, u.f, grid_points, xce.f, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, temp.f, xce.f]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*READ_S: [dnzm1, u, dnym1, u.f, grid_points, xce.f, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, temp.f, xce.f]*/
            /*READ_S: [dnym1]
            WRITE_S: []*/
            eta = (double) j * dnym1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dnzm1, u, u.f, grid_points, xce.f, grid_points.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, temp.f, xce.f]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*READ_S: [dnzm1, u, u.f, xce.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, temp.f, xce.f]*/
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
                /*READ_S: [u, u.f, xce.f]
                WRITE_S: [xce.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u, u.f, xce.f]
                WRITE_S: [xce.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: []*/
                    add = u[i][j][k][m] - u_exact[m];
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
    /*READ_S: [sqrt, xce.f, grid_points, grid_points.f]
    WRITE_S: [xce.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [sqrt, xce.f, grid_points, grid_points.f]
    WRITE_S: [xce.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [xce.f, grid_points, grid_points.f]
        WRITE_S: [xce.f]*/
        for (d = 0; d <= 2; d++) {
        /*READ_S: [xce.f, grid_points, grid_points.f]
        WRITE_S: [xce.f]*/
            /*READ_S: [xce.f, grid_points, grid_points.f]
            WRITE_S: [xce.f]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre180;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre181;
        /*READ_S: [xce.f]
        WRITE_S: []*/
        _imopVarPre180 = rms[m];
        /*READ_S: [sqrt]
        WRITE_S: []*/
        _imopVarPre181 = sqrt(_imopVarPre180);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [xce.f]*/
        rms[m] = _imopVarPre181;
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: [rhs.f, rhs, sqrt, xcr.f, grid_points, grid_points.f]
WRITE_S: [xcr.f]*/
static void rhs_norm(double rms[5]) {
/*READ_S: [rhs.f, rhs, sqrt, xcr.f, grid_points, grid_points.f]
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
    /*READ_S: [rhs.f, rhs, xcr.f, grid_points, grid_points.f]
    WRITE_S: [xcr.f]*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, rhs, xcr.f, grid_points, grid_points.f]
    WRITE_S: [xcr.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, rhs, xcr.f, grid_points, grid_points.f]
        WRITE_S: [xcr.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, rhs, xcr.f, grid_points, grid_points.f]
        WRITE_S: [xcr.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, rhs, xcr.f, grid_points, grid_points.f]
            WRITE_S: [xcr.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [rhs.f, rhs, xcr.f]
            WRITE_S: [xcr.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs.f, rhs, xcr.f]
                WRITE_S: [xcr.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rhs.f, rhs, xcr.f]
                WRITE_S: [xcr.f]*/
                    /*READ_S: [rhs.f, rhs]
                    WRITE_S: []*/
                    add = rhs[i][j][k][m];
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
    /*READ_S: [sqrt, xcr.f, grid_points, grid_points.f]
    WRITE_S: [xcr.f]*/
    for (m = 0; m < 5; m++) {
    /*READ_S: [sqrt, xcr.f, grid_points, grid_points.f]
    WRITE_S: [xcr.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [xcr.f, grid_points, grid_points.f]
        WRITE_S: [xcr.f]*/
        for (d = 0; d <= 2; d++) {
        /*READ_S: [xcr.f, grid_points, grid_points.f]
        WRITE_S: [xcr.f]*/
            /*READ_S: [xcr.f, grid_points, grid_points.f]
            WRITE_S: [xcr.f]*/
            rms[m] = rms[m] / (double) (grid_points[d] - 2);
        }
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre183;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre184;
        /*READ_S: [xcr.f]
        WRITE_S: []*/
        _imopVarPre183 = rms[m];
        /*READ_S: [sqrt]
        WRITE_S: []*/
        _imopVarPre184 = sqrt(_imopVarPre183);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: [xcr.f]*/
        rms[m] = _imopVarPre184;
    }
}
/*READ_S: [c1, dx4tx1, dx3tx1, dz1tz1, dz5tz1, dy2ty1, j, forcing, zzcon5, yycon1, dz4tz1, zzcon3, tx2, dssp, tz2, dnym1, ty2, xxcon1, dy5ty1, xxcon3, dx2tx1, grid_points.f, xxcon5, yycon3, ce.f, zzcon1, yycon5, dy1ty1, c2, dx1tx1, dz3tz1, i, dy4ty1, zzcon4, forcing.f, dnzm1, zzcon2, dz2tz1, dx5tx1, dnxm1, xxcon2, grid_points, xxcon4, exact_solution, dy3ty1, yycon2, ce, yycon4]
WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
static void exact_rhs() {
/*READ_S: [c1, dx4tx1, dx3tx1, dz1tz1, dz5tz1, dy2ty1, j, forcing, zzcon5, yycon1, dz4tz1, zzcon3, tx2, dssp, tz2, dnym1, ty2, xxcon1, dy5ty1, xxcon3, dx2tx1, grid_points.f, xxcon5, yycon3, ce.f, zzcon1, yycon5, dy1ty1, c2, dx1tx1, dz3tz1, i, dy4ty1, zzcon4, forcing.f, dnzm1, zzcon2, dz2tz1, dx5tx1, dnxm1, xxcon2, grid_points, xxcon4, exact_solution, dy3ty1, yycon2, ce, yycon4]
WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
    /*READ_S: [c1, dx4tx1, dx3tx1, dz1tz1, dz5tz1, dy2ty1, j, forcing, zzcon5, yycon1, dz4tz1, zzcon3, tx2, dssp, tz2, dnym1, ty2, xxcon1, dy5ty1, xxcon3, dx2tx1, grid_points.f, xxcon5, yycon3, ce.f, zzcon1, yycon5, dy1ty1, c2, dx1tx1, dz3tz1, i, dy4ty1, zzcon4, forcing.f, dnzm1, zzcon2, dz2tz1, dx5tx1, dnxm1, xxcon2, grid_points, xxcon4, exact_solution, dy3ty1, yycon2, ce, yycon4]
    WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
#pragma omp parallel
    {
    /*READ_S: [c1, dx4tx1, dx3tx1, dz1tz1, dz5tz1, dy2ty1, j, forcing, zzcon5, yycon1, dz4tz1, zzcon3, tx2, dssp, tz2, dnym1, ty2, xxcon1, dy5ty1, xxcon3, dx2tx1, grid_points.f, xxcon5, yycon3, ce.f, zzcon1, yycon5, dy1ty1, c2, dx1tx1, dz3tz1, i, dy4ty1, zzcon4, forcing.f, dnzm1, zzcon2, dz2tz1, dx5tx1, dnxm1, xxcon2, grid_points, xxcon4, exact_solution, dy3ty1, yycon2, ce, yycon4]
    WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
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
        /*READ_S: [forcing, forcing.f, grid_points, grid_points.f, i]
        WRITE_S: [forcing.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [forcing, forcing.f, grid_points, grid_points.f]
        WRITE_S: [forcing.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [forcing, forcing.f, grid_points, grid_points.f]
            WRITE_S: [forcing.f]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*READ_S: [forcing, forcing.f, grid_points, grid_points.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*READ_S: [forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [forcing, forcing.f]
                    WRITE_S: [forcing.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [forcing, forcing.f]
                    WRITE_S: [forcing.f]*/
                        /*READ_S: [forcing, forcing.f]
                        WRITE_S: [forcing.f]*/
                        forcing[i][j][k][m] = 0.0;
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
        /*READ_S: [c1, dx4tx1, dx3tx1, j, forcing, tx2, dssp, dnym1, xxcon1, xxcon3, dx2tx1, grid_points.f, xxcon5, ce.f, c2, dx1tx1, forcing.f, dnzm1, dx5tx1, dnxm1, xxcon2, grid_points, xxcon4, exact_solution, ce]
        WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [c2, c1, dx1tx1, dx4tx1, dx3tx1, forcing, forcing.f, dnzm1, tx2, dssp, dnym1, dx5tx1, xxcon1, dnxm1, xxcon2, xxcon3, grid_points, xxcon4, dx2tx1, grid_points.f, xxcon5, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
            /*READ_S: [dnym1]
            WRITE_S: []*/
            eta = (double) j * dnym1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [c2, c1, dx1tx1, dx4tx1, dx3tx1, forcing, forcing.f, dnzm1, tx2, dssp, dx5tx1, xxcon1, dnxm1, xxcon2, xxcon3, grid_points, xxcon4, dx2tx1, grid_points.f, xxcon5, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [c2, c1, dx1tx1, dx4tx1, dx3tx1, forcing, forcing.f, dnzm1, tx2, dssp, dx5tx1, xxcon1, dnxm1, xxcon2, xxcon3, grid_points, xxcon4, dx2tx1, grid_points.f, xxcon5, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
                /*READ_S: [dnzm1]
                WRITE_S: []*/
                zeta = (double) k * dnzm1;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dnxm1, grid_points, grid_points.f, exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
                for (i = 0; i < grid_points[0]; i++) {
                /*READ_S: [dnxm1, exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
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
                    /*READ_S: []
                    WRITE_S: []*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        ue[i][m] = dtemp[m];
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
                    /*READ_S: []
                    WRITE_S: []*/
                    for (m = 1; m <= 4; m++) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        buf[i][m] = dtpp * dtemp[m];
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    cuf[i] = buf[i][1] * buf[i][1];
                    /*READ_S: []
                    WRITE_S: []*/
                    buf[i][0] = cuf[i] + buf[i][2] * buf[i][2] + buf[i][3] * buf[i][3];
                    /*READ_S: []
                    WRITE_S: []*/
                    q[i] = 0.5 * (buf[i][1] * ue[i][1] + buf[i][2] * ue[i][2] + buf[i][3] * ue[i][3]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [c2, c1, dx1tx1, dx4tx1, dx3tx1, forcing, forcing.f, tx2, dx5tx1, xxcon1, xxcon2, xxcon3, dx2tx1, xxcon4, grid_points, xxcon5, grid_points.f]
                WRITE_S: [forcing.f]*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                /*READ_S: [c2, c1, dx1tx1, dx4tx1, dx3tx1, forcing, forcing.f, tx2, dx5tx1, xxcon1, xxcon2, xxcon3, dx2tx1, xxcon4, xxcon5]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    im1 = i - 1;
                    /*READ_S: []
                    WRITE_S: []*/
                    ip1 = i + 1;
                    /*READ_S: [forcing, forcing.f, dx1tx1, tx2]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tx2 * (ue[ip1][1] - ue[im1][1]) + dx1tx1 * (ue[ip1][0] - 2.0 * ue[i][0] + ue[im1][0]);
                    /*READ_S: [forcing, c2, forcing.f, tx2, xxcon1, dx2tx1]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tx2 * ((ue[ip1][1] * buf[ip1][1] + c2 * (ue[ip1][4] - q[ip1])) - (ue[im1][1] * buf[im1][1] + c2 * (ue[im1][4] - q[im1]))) + xxcon1 * (buf[ip1][1] - 2.0 * buf[i][1] + buf[im1][1]) + dx2tx1 * (ue[ip1][1] - 2.0 * ue[i][1] + ue[im1][1]);
                    /*READ_S: [forcing, forcing.f, tx2, xxcon2, dx3tx1]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tx2 * (ue[ip1][2] * buf[ip1][1] - ue[im1][2] * buf[im1][1]) + xxcon2 * (buf[ip1][2] - 2.0 * buf[i][2] + buf[im1][2]) + dx3tx1 * (ue[ip1][2] - 2.0 * ue[i][2] + ue[im1][2]);
                    /*READ_S: [forcing, forcing.f, tx2, dx4tx1, xxcon2]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tx2 * (ue[ip1][3] * buf[ip1][1] - ue[im1][3] * buf[im1][1]) + xxcon2 * (buf[ip1][3] - 2.0 * buf[i][3] + buf[im1][3]) + dx4tx1 * (ue[ip1][3] - 2.0 * ue[i][3] + ue[im1][3]);
                    /*READ_S: [forcing, c2, forcing.f, c1, tx2, dx5tx1, xxcon3, xxcon4, xxcon5]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tx2 * (buf[ip1][1] * (c1 * ue[ip1][4] - c2 * q[ip1]) - buf[im1][1] * (c1 * ue[im1][4] - c2 * q[im1])) + 0.5 * xxcon3 * (buf[ip1][0] - 2.0 * buf[i][0] + buf[im1][0]) + xxcon4 * (cuf[ip1] - 2.0 * cuf[i] + cuf[im1]) + xxcon5 * (buf[ip1][4] - 2.0 * buf[i][4] + buf[im1][4]) + dx5tx1 * (ue[ip1][4] - 2.0 * ue[i][4] + ue[im1][4]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, dssp]
                WRITE_S: [forcing.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, dssp]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    i = 1;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    /*READ_S: []
                    WRITE_S: []*/
                    i = 2;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                    WRITE_S: [forcing.f]*/
                    for (i = 1 * 3; i <= grid_points[0] - 3 * 1 - 1; i++) {
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                        /*READ_S: [forcing, forcing.f, dssp]
                        WRITE_S: [forcing.f]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m] + ue[i + 2][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    i = grid_points[0] - 3;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 6.0 * ue[i][m] - 4.0 * ue[i + 1][m]);
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    i = grid_points[0] - 2;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[i - 2][m] - 4.0 * ue[i - 1][m] + 5.0 * ue[i][m]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [c1, dy2ty1, forcing, yycon1, dssp, dnym1, ty2, dy5ty1, grid_points.f, yycon3, ce.f, yycon5, dy1ty1, c2, i, dy4ty1, forcing.f, dnzm1, dnxm1, grid_points, exact_solution, dy3ty1, yycon2, ce, yycon4]
        WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*READ_S: [c2, c1, dy4ty1, dy2ty1, forcing, forcing.f, dnzm1, yycon1, dssp, dnym1, ty2, dnxm1, dy5ty1, grid_points, grid_points.f, exact_solution, yycon3, dy3ty1, ce.f, yycon2, ce, yycon5, dy1ty1, yycon4]
        WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
            /*READ_S: [dnxm1]
            WRITE_S: []*/
            xi = (double) i * dnxm1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [c2, c1, dy4ty1, dy2ty1, forcing, forcing.f, dnzm1, yycon1, dssp, dnym1, ty2, dy5ty1, grid_points, grid_points.f, exact_solution, yycon3, dy3ty1, ce.f, yycon2, ce, yycon5, dy1ty1, yycon4]
            WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [c2, c1, dy4ty1, dy2ty1, forcing, forcing.f, dnzm1, yycon1, dssp, dnym1, ty2, dy5ty1, grid_points, grid_points.f, exact_solution, yycon3, dy3ty1, ce.f, yycon2, ce, yycon5, dy1ty1, yycon4]
            WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
                /*READ_S: [dnzm1]
                WRITE_S: []*/
                zeta = (double) k * dnzm1;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dnym1, grid_points, exact_solution, grid_points.f, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
                for (j = 0; j < grid_points[1]; j++) {
                /*READ_S: [dnym1, exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
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
                    /*READ_S: []
                    WRITE_S: []*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        ue[j][m] = dtemp[m];
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
                    /*READ_S: []
                    WRITE_S: []*/
                    for (m = 1; m <= 4; m++) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        buf[j][m] = dtpp * dtemp[m];
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    cuf[j] = buf[j][2] * buf[j][2];
                    /*READ_S: []
                    WRITE_S: []*/
                    buf[j][0] = cuf[j] + buf[j][1] * buf[j][1] + buf[j][3] * buf[j][3];
                    /*READ_S: []
                    WRITE_S: []*/
                    q[j] = 0.5 * (buf[j][1] * ue[j][1] + buf[j][2] * ue[j][2] + buf[j][3] * ue[j][3]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [c2, c1, dy4ty1, dy2ty1, forcing, forcing.f, yycon1, ty2, dy5ty1, grid_points, grid_points.f, yycon3, dy3ty1, yycon2, dy1ty1, yycon5, yycon4]
                WRITE_S: [forcing.f]*/
                for (j = 1; j < grid_points[1] - 1; j++) {
                /*READ_S: [c2, c1, dy4ty1, dy2ty1, forcing, forcing.f, yycon1, ty2, dy5ty1, yycon3, dy3ty1, yycon2, dy1ty1, yycon5, yycon4]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    jm1 = j - 1;
                    /*READ_S: []
                    WRITE_S: []*/
                    jp1 = j + 1;
                    /*READ_S: [forcing, forcing.f, ty2, dy1ty1]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - ty2 * (ue[jp1][2] - ue[jm1][2]) + dy1ty1 * (ue[jp1][0] - 2.0 * ue[j][0] + ue[jm1][0]);
                    /*READ_S: [forcing, forcing.f, ty2, yycon2, dy2ty1]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - ty2 * (ue[jp1][1] * buf[jp1][2] - ue[jm1][1] * buf[jm1][2]) + yycon2 * (buf[jp1][1] - 2.0 * buf[j][1] + buf[jm1][1]) + dy2ty1 * (ue[jp1][1] - 2.0 * ue[j][1] + ue[jm1][1]);
                    /*READ_S: [forcing, c2, forcing.f, yycon1, ty2, dy3ty1]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - ty2 * ((ue[jp1][2] * buf[jp1][2] + c2 * (ue[jp1][4] - q[jp1])) - (ue[jm1][2] * buf[jm1][2] + c2 * (ue[jm1][4] - q[jm1]))) + yycon1 * (buf[jp1][2] - 2.0 * buf[j][2] + buf[jm1][2]) + dy3ty1 * (ue[jp1][2] - 2.0 * ue[j][2] + ue[jm1][2]);
                    /*READ_S: [forcing, forcing.f, ty2, yycon2, dy4ty1]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - ty2 * (ue[jp1][3] * buf[jp1][2] - ue[jm1][3] * buf[jm1][2]) + yycon2 * (buf[jp1][3] - 2.0 * buf[j][3] + buf[jm1][3]) + dy4ty1 * (ue[jp1][3] - 2.0 * ue[j][3] + ue[jm1][3]);
                    /*READ_S: [forcing, c2, forcing.f, c1, ty2, dy5ty1, yycon3, yycon5, yycon4]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - ty2 * (buf[jp1][2] * (c1 * ue[jp1][4] - c2 * q[jp1]) - buf[jm1][2] * (c1 * ue[jm1][4] - c2 * q[jm1])) + 0.5 * yycon3 * (buf[jp1][0] - 2.0 * buf[j][0] + buf[jm1][0]) + yycon4 * (cuf[jp1] - 2.0 * cuf[j] + cuf[jm1]) + yycon5 * (buf[jp1][4] - 2.0 * buf[j][4] + buf[jm1][4]) + dy5ty1 * (ue[jp1][4] - 2.0 * ue[j][4] + ue[jm1][4]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, dssp]
                WRITE_S: [forcing.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, dssp]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    j = 1;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    /*READ_S: []
                    WRITE_S: []*/
                    j = 2;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                    WRITE_S: [forcing.f]*/
                    for (j = 1 * 3; j <= grid_points[1] - 3 * 1 - 1; j++) {
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                        /*READ_S: [forcing, forcing.f, dssp]
                        WRITE_S: [forcing.f]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m] + ue[j + 2][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    j = grid_points[1] - 3;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 6.0 * ue[j][m] - 4.0 * ue[j + 1][m]);
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    j = grid_points[1] - 2;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[j - 2][m] - 4.0 * ue[j - 1][m] + 5.0 * ue[j][m]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [c1, dz1tz1, dz5tz1, forcing, zzcon5, dz4tz1, zzcon3, dssp, tz2, dnym1, grid_points.f, ce.f, zzcon1, c2, dz3tz1, i, zzcon4, forcing.f, dnzm1, zzcon2, dz2tz1, dnxm1, grid_points, exact_solution, ce]
        WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*READ_S: [c2, c1, dz3tz1, dz1tz1, dz5tz1, forcing, zzcon4, forcing.f, dnzm1, zzcon5, zzcon2, dz4tz1, zzcon3, dz2tz1, dssp, tz2, dnym1, dnxm1, grid_points, exact_solution, grid_points.f, ce.f, zzcon1, ce]
        WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
            /*READ_S: [dnxm1]
            WRITE_S: []*/
            xi = (double) i * dnxm1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [c2, c1, dz3tz1, dz1tz1, dz5tz1, forcing, zzcon4, forcing.f, dnzm1, zzcon5, zzcon2, dz4tz1, zzcon3, dz2tz1, dssp, tz2, dnym1, grid_points, exact_solution, grid_points.f, ce.f, zzcon1, ce]
            WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*READ_S: [c2, c1, dz3tz1, dz1tz1, dz5tz1, forcing, zzcon4, forcing.f, dnzm1, zzcon5, zzcon2, dz4tz1, zzcon3, dz2tz1, dssp, tz2, dnym1, grid_points, exact_solution, grid_points.f, ce.f, zzcon1, ce]
            WRITE_S: [u_exact.f, forcing.f, Pface.f, temp.f]*/
                /*READ_S: [dnym1]
                WRITE_S: []*/
                eta = (double) j * dnym1;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dnzm1, grid_points, exact_solution, grid_points.f, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*READ_S: [dnzm1, exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, temp.f]*/
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
                    /*READ_S: []
                    WRITE_S: []*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        ue[k][m] = dtemp[m];
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
                    /*READ_S: []
                    WRITE_S: []*/
                    for (m = 1; m <= 4; m++) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        buf[k][m] = dtpp * dtemp[m];
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    cuf[k] = buf[k][3] * buf[k][3];
                    /*READ_S: []
                    WRITE_S: []*/
                    buf[k][0] = cuf[k] + buf[k][1] * buf[k][1] + buf[k][2] * buf[k][2];
                    /*READ_S: []
                    WRITE_S: []*/
                    q[k] = 0.5 * (buf[k][1] * ue[k][1] + buf[k][2] * ue[k][2] + buf[k][3] * ue[k][3]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [c2, c1, dz3tz1, dz1tz1, dz5tz1, forcing, zzcon4, forcing.f, zzcon5, zzcon2, dz4tz1, zzcon3, dz2tz1, tz2, grid_points, grid_points.f, zzcon1]
                WRITE_S: [forcing.f]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*READ_S: [c2, c1, dz3tz1, dz1tz1, dz5tz1, forcing, zzcon4, forcing.f, zzcon5, dz4tz1, zzcon2, zzcon3, dz2tz1, tz2, zzcon1]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    km1 = k - 1;
                    /*READ_S: []
                    WRITE_S: []*/
                    kp1 = k + 1;
                    /*READ_S: [forcing, forcing.f, tz2, dz1tz1]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][0] = forcing[i][j][k][0] - tz2 * (ue[kp1][3] - ue[km1][3]) + dz1tz1 * (ue[kp1][0] - 2.0 * ue[k][0] + ue[km1][0]);
                    /*READ_S: [forcing, forcing.f, zzcon2, dz2tz1, tz2]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][1] = forcing[i][j][k][1] - tz2 * (ue[kp1][1] * buf[kp1][3] - ue[km1][1] * buf[km1][3]) + zzcon2 * (buf[kp1][1] - 2.0 * buf[k][1] + buf[km1][1]) + dz2tz1 * (ue[kp1][1] - 2.0 * ue[k][1] + ue[km1][1]);
                    /*READ_S: [forcing, forcing.f, zzcon2, dz3tz1, tz2]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][2] = forcing[i][j][k][2] - tz2 * (ue[kp1][2] * buf[kp1][3] - ue[km1][2] * buf[km1][3]) + zzcon2 * (buf[kp1][2] - 2.0 * buf[k][2] + buf[km1][2]) + dz3tz1 * (ue[kp1][2] - 2.0 * ue[k][2] + ue[km1][2]);
                    /*READ_S: [forcing, c2, forcing.f, dz4tz1, tz2, zzcon1]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][3] = forcing[i][j][k][3] - tz2 * ((ue[kp1][3] * buf[kp1][3] + c2 * (ue[kp1][4] - q[kp1])) - (ue[km1][3] * buf[km1][3] + c2 * (ue[km1][4] - q[km1]))) + zzcon1 * (buf[kp1][3] - 2.0 * buf[k][3] + buf[km1][3]) + dz4tz1 * (ue[kp1][3] - 2.0 * ue[k][3] + ue[km1][3]);
                    /*READ_S: [forcing, c2, zzcon4, forcing.f, c1, zzcon5, zzcon3, tz2, dz5tz1]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][4] = forcing[i][j][k][4] - tz2 * (buf[kp1][3] * (c1 * ue[kp1][4] - c2 * q[kp1]) - buf[km1][3] * (c1 * ue[km1][4] - c2 * q[km1])) + 0.5 * zzcon3 * (buf[kp1][0] - 2.0 * buf[k][0] + buf[km1][0]) + zzcon4 * (cuf[kp1] - 2.0 * cuf[k] + cuf[km1]) + zzcon5 * (buf[kp1][4] - 2.0 * buf[k][4] + buf[km1][4]) + dz5tz1 * (ue[kp1][4] - 2.0 * ue[k][4] + ue[km1][4]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, dssp]
                WRITE_S: [forcing.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, dssp]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    k = 1;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (5.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    /*READ_S: []
                    WRITE_S: []*/
                    k = 2;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (-4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                    WRITE_S: [forcing.f]*/
                    for (k = 1 * 3; k <= grid_points[2] - 3 * 1 - 1; k++) {
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                        /*READ_S: [forcing, forcing.f, dssp]
                        WRITE_S: [forcing.f]*/
                        forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m] + ue[k + 2][m]);
                    }
                }
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, dssp, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    k = grid_points[2] - 3;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 6.0 * ue[k][m] - 4.0 * ue[k + 1][m]);
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    k = grid_points[2] - 2;
                    /*READ_S: [forcing, forcing.f, dssp]
                    WRITE_S: [forcing.f]*/
                    forcing[i][j][k][m] = forcing[i][j][k][m] - dssp * (ue[k - 2][m] - 4.0 * ue[k - 1][m] + 5.0 * ue[k][m]);
                }
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
        /*READ_S: [forcing, forcing.f, grid_points, grid_points.f, i]
        WRITE_S: [forcing.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*READ_S: [forcing, forcing.f, grid_points, grid_points.f]
        WRITE_S: [forcing.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [forcing, forcing.f, grid_points, grid_points.f]
            WRITE_S: [forcing.f]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*READ_S: [forcing, forcing.f, grid_points, grid_points.f]
            WRITE_S: [forcing.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, grid_points, grid_points.f]
                WRITE_S: [forcing.f]*/
                for (k = 1; k < grid_points[2] - 1; k++) {
                /*READ_S: [forcing, forcing.f]
                WRITE_S: [forcing.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [forcing, forcing.f]
                    WRITE_S: [forcing.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [forcing, forcing.f]
                    WRITE_S: [forcing.f]*/
                        /*READ_S: [forcing, forcing.f]
                        WRITE_S: [forcing.f]*/
                        forcing[i][j][k][m] = -1.0 * forcing[i][j][k][m];
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
        dtemp[m] = ce[m][0] + xi * (ce[m][1] + xi * (ce[m][4] + xi * (ce[m][7] + xi * ce[m][10]))) + eta * (ce[m][2] + eta * (ce[m][5] + eta * (ce[m][8] + eta * ce[m][11]))) + zeta * (ce[m][3] + zeta * (ce[m][6] + zeta * (ce[m][9] + zeta * ce[m][12])));
    }
}
/*READ_S: [dnzm1, u, u.f, dnym1, dnxm1, i, grid_points, grid_points.f, exact_solution, ce.f, ce, j]
WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
static void initialize() {
/*READ_S: [dnzm1, u, u.f, dnym1, dnxm1, i, grid_points, grid_points.f, exact_solution, ce.f, ce, j]
WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
    /*READ_S: [dnzm1, u, u.f, dnym1, dnxm1, i, grid_points, grid_points.f, exact_solution, ce.f, ce, j]
    WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
#pragma omp parallel
    {
    /*READ_S: [dnzm1, u, u.f, dnym1, dnxm1, i, grid_points, grid_points.f, exact_solution, ce.f, ce, j]
    WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
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
        /*READ_S: [u, u.f, i]
        WRITE_S: [u.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < 12; i++) {
        /*READ_S: [u, u.f]
        WRITE_S: [u.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f]
            WRITE_S: [u.f]*/
            for (j = 0; j < 12; j++) {
            /*READ_S: [u, u.f]
            WRITE_S: [u.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                for (k = 0; k < 12; k++) {
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [u, u.f]
                    WRITE_S: [u.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [u, u.f]
                    WRITE_S: [u.f]*/
                        /*READ_S: [u, u.f]
                        WRITE_S: [u.f]*/
                        u[i][j][k][m] = 1.0;
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
        /*READ_S: [dnzm1, u, dnym1, u.f, dnxm1, i, grid_points, exact_solution, grid_points.f, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [dnzm1, u, u.f, dnym1, dnxm1, grid_points, exact_solution, grid_points.f, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            /*READ_S: [dnxm1]
            WRITE_S: []*/
            xi = (double) i * dnxm1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dnzm1, u, u.f, dnym1, grid_points, exact_solution, grid_points.f, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*READ_S: [dnzm1, u, u.f, dnym1, grid_points, exact_solution, grid_points.f, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
                /*READ_S: [dnym1]
                WRITE_S: []*/
                eta = (double) j * dnym1;
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [dnzm1, u, u.f, grid_points, exact_solution, grid_points.f, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*READ_S: [dnzm1, u, u.f, exact_solution, ce.f, ce]
                WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
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
                        double *_imopVarPre187;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre188;
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre187 = &(Pface[ix][0][0]);
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre188 = (double) ix;
                        /*READ_S: [exact_solution]
                        WRITE_S: []*/
                        exact_solution(_imopVarPre188, eta, zeta, _imopVarPre187);
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
                        double *_imopVarPre191;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre192;
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre191 = &Pface[iy][1][0];
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre192 = (double) iy;
                        /*READ_S: [exact_solution]
                        WRITE_S: []*/
                        exact_solution(xi, _imopVarPre192, zeta, _imopVarPre191);
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
                        double *_imopVarPre195;
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre196;
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre195 = &Pface[iz][2][0];
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre196 = (double) iz;
                        /*READ_S: [exact_solution]
                        WRITE_S: []*/
                        exact_solution(xi, eta, _imopVarPre196, _imopVarPre195);
                        /*READ_S: []
                        WRITE_S: []*/
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [u, u.f]
                    WRITE_S: [u.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [u, u.f]
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
                        /*READ_S: [u, u.f]
                        WRITE_S: [u.f]*/
                        u[i][j][k][m] = Pxi + Peta + Pzeta - Pxi * Peta - Pxi * Pzeta - Peta * Pzeta + Pxi * Peta * Pzeta;
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
        i = 0;
        /*READ_S: []
        WRITE_S: []*/
        xi = 0.0;
        /*READ_S: [dnzm1, u, u.f, dnym1, grid_points, grid_points.f, exact_solution, ce.f, ce, j]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < grid_points[1]; j++) {
        /*READ_S: [dnzm1, u, u.f, dnym1, grid_points, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            /*READ_S: [dnym1]
            WRITE_S: []*/
            eta = (double) j * dnym1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dnzm1, u, u.f, grid_points, grid_points.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*READ_S: [dnzm1, u, u.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
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
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: [u.f]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        i = grid_points[0] - 1;
        /*READ_S: []
        WRITE_S: []*/
        xi = 1.0;
        /*READ_S: [dnzm1, u, u.f, dnym1, grid_points, exact_solution, grid_points.f, ce.f, ce, j]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 0; j < grid_points[1]; j++) {
        /*READ_S: [dnzm1, u, u.f, dnym1, grid_points, exact_solution, grid_points.f, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            /*READ_S: [dnym1]
            WRITE_S: []*/
            eta = (double) j * dnym1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dnzm1, u, u.f, grid_points, exact_solution, grid_points.f, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*READ_S: [dnzm1, u, u.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
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
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: [u.f]*/
                    u[i][j][k][m] = temp[m];
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
        j = 0;
        /*READ_S: []
        WRITE_S: []*/
        eta = 0.0;
        /*READ_S: [dnzm1, u, u.f, dnxm1, i, grid_points, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [dnzm1, u, u.f, dnxm1, grid_points, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            /*READ_S: [dnxm1]
            WRITE_S: []*/
            xi = (double) i * dnxm1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dnzm1, u, u.f, grid_points, grid_points.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*READ_S: [dnzm1, u, u.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
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
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: [u.f]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        j = grid_points[1] - 1;
        /*READ_S: []
        WRITE_S: []*/
        eta = 1.0;
        /*READ_S: [dnzm1, u, u.f, dnxm1, i, grid_points, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [dnzm1, u, u.f, dnxm1, grid_points, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            /*READ_S: [dnxm1]
            WRITE_S: []*/
            xi = (double) i * dnxm1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [dnzm1, u, u.f, grid_points, grid_points.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*READ_S: [dnzm1, u, u.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
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
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: [u.f]*/
                    u[i][j][k][m] = temp[m];
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
        k = 0;
        /*READ_S: []
        WRITE_S: []*/
        zeta = 0.0;
        /*READ_S: [u, u.f, dnym1, dnxm1, i, grid_points, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [u, u.f, dnym1, dnxm1, grid_points, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            /*READ_S: [dnxm1]
            WRITE_S: []*/
            xi = (double) i * dnxm1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f, dnym1, grid_points, grid_points.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*READ_S: [u, u.f, dnym1, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
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
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: [u.f]*/
                    u[i][j][k][m] = temp[m];
                }
            }
        }
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        k = grid_points[2] - 1;
        /*READ_S: []
        WRITE_S: []*/
        zeta = 1.0;
        /*READ_S: [u, u.f, dnym1, dnxm1, i, grid_points, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [u, u.f, dnym1, dnxm1, grid_points, grid_points.f, exact_solution, ce.f, ce]
        WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            /*READ_S: [dnxm1]
            WRITE_S: []*/
            xi = (double) i * dnxm1;
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f, dnym1, grid_points, grid_points.f, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*READ_S: [u, u.f, dnym1, exact_solution, ce.f, ce]
            WRITE_S: [u_exact.f, Pface.f, u.f, temp.f]*/
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
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [u, u.f]
                WRITE_S: [u.f]*/
                    /*READ_S: [u, u.f]
                    WRITE_S: [u.f]*/
                    u[i][j][k][m] = temp[m];
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
/*READ_S: [lhs.f, lhs, grid_points, grid_points.f, i]
WRITE_S: [lhs.f]*/
static void lhsinit() {
/*READ_S: [lhs.f, lhs, grid_points, grid_points.f, i]
WRITE_S: [lhs.f]*/
    /*READ_S: [lhs.f, lhs, grid_points, grid_points.f, i]
    WRITE_S: [lhs.f]*/
#pragma omp parallel
    {
    /*READ_S: [lhs.f, lhs, grid_points, grid_points.f, i]
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
        int m;
        /*READ_S: []
        WRITE_S: []*/
        int n;
        /*READ_S: [lhs.f, lhs, grid_points, grid_points.f, i]
        WRITE_S: [lhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [lhs.f, lhs, grid_points, grid_points.f]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [lhs.f, lhs, grid_points, grid_points.f]
            WRITE_S: [lhs.f]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*READ_S: [lhs.f, lhs, grid_points, grid_points.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [lhs.f, lhs, grid_points, grid_points.f]
                WRITE_S: [lhs.f]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*READ_S: [lhs.f, lhs]
                WRITE_S: [lhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [lhs.f, lhs]
                    WRITE_S: [lhs.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [lhs.f, lhs]
                    WRITE_S: [lhs.f]*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [lhs.f, lhs]
                        WRITE_S: [lhs.f]*/
                        for (n = 0; n < 5; n++) {
                        /*READ_S: [lhs.f, lhs]
                        WRITE_S: [lhs.f]*/
                            /*READ_S: [lhs.f, lhs]
                            WRITE_S: [lhs.f]*/
                            lhs[i][j][k][0][m][n] = 0.0;
                            /*READ_S: [lhs.f, lhs]
                            WRITE_S: [lhs.f]*/
                            lhs[i][j][k][1][m][n] = 0.0;
                            /*READ_S: [lhs.f, lhs]
                            WRITE_S: [lhs.f]*/
                            lhs[i][j][k][2][m][n] = 0.0;
                        }
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
        /*READ_S: [lhs.f, lhs, grid_points, i, grid_points.f]
        WRITE_S: [lhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < grid_points[0]; i++) {
        /*READ_S: [lhs.f, lhs, grid_points, grid_points.f]
        WRITE_S: [lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [lhs.f, lhs, grid_points, grid_points.f]
            WRITE_S: [lhs.f]*/
            for (j = 0; j < grid_points[1]; j++) {
            /*READ_S: [lhs.f, lhs, grid_points, grid_points.f]
            WRITE_S: [lhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [lhs.f, lhs, grid_points, grid_points.f]
                WRITE_S: [lhs.f]*/
                for (k = 0; k < grid_points[2]; k++) {
                /*READ_S: [lhs.f, lhs]
                WRITE_S: [lhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [lhs.f, lhs]
                    WRITE_S: [lhs.f]*/
                    for (m = 0; m < 5; m++) {
                    /*READ_S: [lhs.f, lhs]
                    WRITE_S: [lhs.f]*/
                        /*READ_S: [lhs.f, lhs]
                        WRITE_S: [lhs.f]*/
                        lhs[i][j][k][1][m][m] = 1.0;
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
}
/*READ_S: [dx5, tmp2, c1, lhs.f, u.f, fjac, dx1, dx3, c1345, tx2, grid_points.f, njac.f, tmp1, c2, dx4, c3c4, u, fjac.f, tmp3, j, dt, dx2, con43, tx1, lhs, grid_points, njac]
WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
static void lhsx() {
/*READ_S: [dx5, tmp2, c1, lhs.f, u.f, fjac, dx1, dx3, c1345, tx2, grid_points.f, njac.f, tmp1, c2, dx4, c3c4, u, fjac.f, tmp3, j, dt, dx2, con43, tx1, lhs, grid_points, njac]
WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: [dx5, tmp2, c1, lhs.f, u.f, fjac, dx1, dx3, c1345, tx2, grid_points.f, njac.f, tmp1, c2, dx4, c3c4, u, fjac.f, tmp3, j, dt, dx2, con43, tx1, lhs, grid_points, njac]
    WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*READ_S: [dx5, tmp2, c1, lhs.f, u.f, fjac, dx1, dx3, c1345, tx2, grid_points.f, njac.f, tmp1, c2, dx4, c3c4, u, fjac.f, tmp3, dt, dx2, con43, tx1, lhs, grid_points, njac]
    WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [dx5, tmp2, c1, lhs.f, u.f, fjac, dx1, dx3, c1345, tx2, grid_points.f, njac.f, tmp1, c2, dx4, c3c4, u, fjac.f, tmp3, dt, dx2, con43, tx1, lhs, grid_points, njac]
        WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [dx5, tmp2, c1, lhs.f, u.f, fjac, dx1, dx3, c1345, tx2, grid_points.f, njac.f, tmp1, c2, dx4, c3c4, u, fjac.f, tmp3, dt, dx2, con43, tx1, lhs, grid_points, njac]
        WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, fjac.f, u.f, tmp3, fjac, c1345, con43, grid_points, grid_points.f, njac.f, njac]
            WRITE_S: [tmp1, tmp2, fjac.f, tmp3, njac.f]*/
            for (i = 0; i < grid_points[0]; i++) {
            /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, fjac.f, u.f, tmp3, fjac, c1345, con43, njac.f, njac]
            WRITE_S: [tmp1, tmp2, fjac.f, tmp3, njac.f]*/
                /*READ_S: [u, u.f]
                WRITE_S: [tmp1]*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*READ_S: [tmp1]
                WRITE_S: [tmp2]*/
                tmp2 = tmp1 * tmp1;
                /*READ_S: [tmp1, tmp2]
                WRITE_S: [tmp3]*/
                tmp3 = tmp1 * tmp2;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][0] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][1] = 1.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][2] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][3] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][4] = 0.0;
                /*READ_S: [c2, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * tmp2 * u[i][j][k][1]) + c2 * 0.50 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2;
                /*READ_S: [c2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][1] = (2.0 - c2) * (u[i][j][k][1] / u[i][j][k][0]);
                /*READ_S: [c2, tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][2] = -c2 * (u[i][j][k][2] * tmp1);
                /*READ_S: [c2, tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][3] = -c2 * (u[i][j][k][3] * tmp1);
                /*READ_S: [c2, fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][4] = c2;
                /*READ_S: [tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][0] = -(u[i][j][k][1] * u[i][j][k][2]) * tmp2;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][1] = u[i][j][k][2] * tmp1;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][2] = u[i][j][k][1] * tmp1;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][3] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][4] = 0.0;
                /*READ_S: [tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][0] = -(u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][1] = u[i][j][k][3] * tmp1;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][2] = 0.0;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][3] = u[i][j][k][1] * tmp1;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][4] = 0.0;
                /*READ_S: [c2, tmp1, tmp2, c1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * (u[i][j][k][4] * tmp1)) * (u[i][j][k][1] * tmp1);
                /*READ_S: [tmp1, c2, c1, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][1] = c1 * u[i][j][k][4] * tmp1 - 0.50 * c2 * (3.0 * u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2;
                /*READ_S: [c2, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][2] = -c2 * (u[i][j][k][2] * u[i][j][k][1]) * tmp2;
                /*READ_S: [c2, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][3] = -c2 * (u[i][j][k][3] * u[i][j][k][1]) * tmp2;
                /*READ_S: [tmp1, c1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][4] = c1 * (u[i][j][k][1] * tmp1);
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][0] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][1] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][2] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][3] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][4] = 0.0;
                /*READ_S: [tmp2, con43, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][0] = -con43 * c3c4 * tmp2 * u[i][j][k][1];
                /*READ_S: [tmp1, con43, c3c4, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][1] = con43 * c3c4 * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][2] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][3] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][4] = 0.0;
                /*READ_S: [tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][0] = -c3c4 * tmp2 * u[i][j][k][2];
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][1] = 0.0;
                /*READ_S: [tmp1, c3c4, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][2] = c3c4 * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][3] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][4] = 0.0;
                /*READ_S: [tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][0] = -c3c4 * tmp2 * u[i][j][k][3];
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][1] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][2] = 0.0;
                /*READ_S: [tmp1, c3c4, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][3] = c3c4 * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][4] = 0.0;
                /*READ_S: [c1345, tmp2, con43, c3c4, u, tmp3, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][0] = -(con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*READ_S: [c1345, tmp2, con43, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][1] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*READ_S: [c1345, tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][2] = (c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*READ_S: [c1345, tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][3] = (c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*READ_S: [c1345, tmp1, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tmp1, dx5, tmp2, dx4, lhs.f, fjac.f, fjac, dx1, dx3, dx2, dt, tx2, tx1, lhs, grid_points, grid_points.f, njac.f, njac]
            WRITE_S: [tmp1, tmp2, lhs.f]*/
            for (i = 1; i < grid_points[0] - 1; i++) {
            /*READ_S: [tmp1, dx5, tmp2, dx4, lhs.f, fjac.f, fjac, dx1, dx3, dx2, dt, tx2, tx1, lhs, njac.f, njac]
            WRITE_S: [tmp1, tmp2, lhs.f]*/
                /*READ_S: [tx1, dt]
                WRITE_S: [tmp1]*/
                tmp1 = dt * tx1;
                /*READ_S: [tx2, dt]
                WRITE_S: [tmp2]*/
                tmp2 = dt * tx2;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dx1, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i - 1][j][k][0][0] - tmp1 * njac[i - 1][j][k][0][0] - tmp1 * dx1;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i - 1][j][k][0][1] - tmp1 * njac[i - 1][j][k][0][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i - 1][j][k][0][2] - tmp1 * njac[i - 1][j][k][0][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i - 1][j][k][0][3] - tmp1 * njac[i - 1][j][k][0][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i - 1][j][k][0][4] - tmp1 * njac[i - 1][j][k][0][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i - 1][j][k][1][0] - tmp1 * njac[i - 1][j][k][1][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac, dx2]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i - 1][j][k][1][1] - tmp1 * njac[i - 1][j][k][1][1] - tmp1 * dx2;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i - 1][j][k][1][2] - tmp1 * njac[i - 1][j][k][1][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i - 1][j][k][1][3] - tmp1 * njac[i - 1][j][k][1][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i - 1][j][k][1][4] - tmp1 * njac[i - 1][j][k][1][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i - 1][j][k][2][0] - tmp1 * njac[i - 1][j][k][2][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i - 1][j][k][2][1] - tmp1 * njac[i - 1][j][k][2][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, dx3, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i - 1][j][k][2][2] - tmp1 * njac[i - 1][j][k][2][2] - tmp1 * dx3;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i - 1][j][k][2][3] - tmp1 * njac[i - 1][j][k][2][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i - 1][j][k][2][4] - tmp1 * njac[i - 1][j][k][2][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i - 1][j][k][3][0] - tmp1 * njac[i - 1][j][k][3][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i - 1][j][k][3][1] - tmp1 * njac[i - 1][j][k][3][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i - 1][j][k][3][2] - tmp1 * njac[i - 1][j][k][3][2];
                /*READ_S: [tmp1, tmp2, dx4, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i - 1][j][k][3][3] - tmp1 * njac[i - 1][j][k][3][3] - tmp1 * dx4;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i - 1][j][k][3][4] - tmp1 * njac[i - 1][j][k][3][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i - 1][j][k][4][0] - tmp1 * njac[i - 1][j][k][4][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i - 1][j][k][4][1] - tmp1 * njac[i - 1][j][k][4][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i - 1][j][k][4][2] - tmp1 * njac[i - 1][j][k][4][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i - 1][j][k][4][3] - tmp1 * njac[i - 1][j][k][4][3];
                /*READ_S: [tmp1, dx5, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i - 1][j][k][4][4] - tmp1 * njac[i - 1][j][k][4][4] - tmp1 * dx5;
                /*READ_S: [tmp1, lhs.f, lhs, dx1, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dx1;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac, dx2]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dx2;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, dx3, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dx3;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*READ_S: [tmp1, dx4, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dx4;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*READ_S: [tmp1, dx5, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dx5;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dx1, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i + 1][j][k][0][0] - tmp1 * njac[i + 1][j][k][0][0] - tmp1 * dx1;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i + 1][j][k][0][1] - tmp1 * njac[i + 1][j][k][0][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i + 1][j][k][0][2] - tmp1 * njac[i + 1][j][k][0][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i + 1][j][k][0][3] - tmp1 * njac[i + 1][j][k][0][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i + 1][j][k][0][4] - tmp1 * njac[i + 1][j][k][0][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i + 1][j][k][1][0] - tmp1 * njac[i + 1][j][k][1][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac, dx2]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i + 1][j][k][1][1] - tmp1 * njac[i + 1][j][k][1][1] - tmp1 * dx2;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i + 1][j][k][1][2] - tmp1 * njac[i + 1][j][k][1][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i + 1][j][k][1][3] - tmp1 * njac[i + 1][j][k][1][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i + 1][j][k][1][4] - tmp1 * njac[i + 1][j][k][1][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i + 1][j][k][2][0] - tmp1 * njac[i + 1][j][k][2][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i + 1][j][k][2][1] - tmp1 * njac[i + 1][j][k][2][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, dx3, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i + 1][j][k][2][2] - tmp1 * njac[i + 1][j][k][2][2] - tmp1 * dx3;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i + 1][j][k][2][3] - tmp1 * njac[i + 1][j][k][2][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i + 1][j][k][2][4] - tmp1 * njac[i + 1][j][k][2][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i + 1][j][k][3][0] - tmp1 * njac[i + 1][j][k][3][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i + 1][j][k][3][1] - tmp1 * njac[i + 1][j][k][3][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i + 1][j][k][3][2] - tmp1 * njac[i + 1][j][k][3][2];
                /*READ_S: [tmp1, tmp2, dx4, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i + 1][j][k][3][3] - tmp1 * njac[i + 1][j][k][3][3] - tmp1 * dx4;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i + 1][j][k][3][4] - tmp1 * njac[i + 1][j][k][3][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i + 1][j][k][4][0] - tmp1 * njac[i + 1][j][k][4][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i + 1][j][k][4][1] - tmp1 * njac[i + 1][j][k][4][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i + 1][j][k][4][2] - tmp1 * njac[i + 1][j][k][4][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i + 1][j][k][4][3] - tmp1 * njac[i + 1][j][k][4][3];
                /*READ_S: [tmp1, dx5, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i + 1][j][k][4][4] - tmp1 * njac[i + 1][j][k][4][4] - tmp1 * dx5;
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
/*READ_S: [tmp2, dy5, c1, lhs.f, u.f, fjac, dy1, dy3, c1345, ty2, grid_points.f, njac.f, tmp1, c2, c3c4, u, fjac.f, i, tmp3, dy2, dy4, dt, con43, ty1, lhs, grid_points, njac]
WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
static void lhsy() {
/*READ_S: [tmp2, dy5, c1, lhs.f, u.f, fjac, dy1, dy3, c1345, ty2, grid_points.f, njac.f, tmp1, c2, c3c4, u, fjac.f, i, tmp3, dy2, dy4, dt, con43, ty1, lhs, grid_points, njac]
WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, fjac.f, u.f, i, tmp3, fjac, c1345, con43, grid_points, grid_points.f, njac.f, njac]
    WRITE_S: [tmp1, tmp2, tmp3, fjac.f, njac.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, fjac.f, u.f, tmp3, fjac, c1345, con43, grid_points, grid_points.f, njac.f, njac]
    WRITE_S: [tmp1, tmp2, tmp3, fjac.f, njac.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, fjac.f, u.f, tmp3, fjac, c1345, con43, grid_points, grid_points.f, njac.f, njac]
        WRITE_S: [tmp1, tmp2, tmp3, fjac.f, njac.f]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, fjac.f, u.f, tmp3, fjac, c1345, con43, grid_points, grid_points.f, njac.f, njac]
        WRITE_S: [tmp1, tmp2, tmp3, fjac.f, njac.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, fjac.f, u.f, tmp3, fjac, c1345, con43, grid_points, grid_points.f, njac.f, njac]
            WRITE_S: [tmp1, tmp2, tmp3, fjac.f, njac.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, fjac.f, u.f, tmp3, fjac, c1345, con43, njac.f, njac]
            WRITE_S: [tmp1, tmp2, tmp3, fjac.f, njac.f]*/
                /*READ_S: [u, u.f]
                WRITE_S: [tmp1]*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*READ_S: [tmp1]
                WRITE_S: [tmp2]*/
                tmp2 = tmp1 * tmp1;
                /*READ_S: [tmp1, tmp2]
                WRITE_S: [tmp3]*/
                tmp3 = tmp1 * tmp2;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][0] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][1] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][2] = 1.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][3] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][4] = 0.0;
                /*READ_S: [tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * u[i][j][k][2]) * tmp2;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][1] = u[i][j][k][2] * tmp1;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][2] = u[i][j][k][1] * tmp1;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][3] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][4] = 0.0;
                /*READ_S: [c2, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][0] = -(u[i][j][k][2] * u[i][j][k][2] * tmp2) + 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*READ_S: [c2, tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][1] = -c2 * u[i][j][k][1] * tmp1;
                /*READ_S: [c2, tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][2] = (2.0 - c2) * u[i][j][k][2] * tmp1;
                /*READ_S: [c2, tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][3] = -c2 * u[i][j][k][3] * tmp1;
                /*READ_S: [c2, fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][4] = c2;
                /*READ_S: [tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][0] = -(u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][1] = 0.0;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][2] = u[i][j][k][3] * tmp1;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][3] = u[i][j][k][2] * tmp1;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][4] = 0.0;
                /*READ_S: [c2, tmp1, tmp2, c1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * u[i][j][k][4] * tmp1) * u[i][j][k][2] * tmp1;
                /*READ_S: [c2, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][1] = -c2 * u[i][j][k][1] * u[i][j][k][2] * tmp2;
                /*READ_S: [tmp1, c2, c1, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][2] = c1 * u[i][j][k][4] * tmp1 - 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + 3.0 * u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*READ_S: [c2, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][3] = -c2 * (u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*READ_S: [tmp1, c1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][4] = c1 * u[i][j][k][2] * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][0] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][1] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][2] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][3] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][4] = 0.0;
                /*READ_S: [tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][0] = -c3c4 * tmp2 * u[i][j][k][1];
                /*READ_S: [tmp1, c3c4, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][1] = c3c4 * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][2] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][3] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][4] = 0.0;
                /*READ_S: [tmp2, con43, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][0] = -con43 * c3c4 * tmp2 * u[i][j][k][2];
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][1] = 0.0;
                /*READ_S: [tmp1, con43, c3c4, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][2] = con43 * c3c4 * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][3] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][4] = 0.0;
                /*READ_S: [tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][0] = -c3c4 * tmp2 * u[i][j][k][3];
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][1] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][2] = 0.0;
                /*READ_S: [tmp1, c3c4, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][3] = c3c4 * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][4] = 0.0;
                /*READ_S: [c1345, tmp2, con43, c3c4, u, tmp3, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*READ_S: [c1345, tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][1] = (c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*READ_S: [c1345, tmp2, con43, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][2] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*READ_S: [c1345, tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][3] = (c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*READ_S: [c1345, tmp1, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [tmp1, tmp2, dy5, lhs.f, fjac.f, i, fjac, dy2, dy1, dy4, dt, dy3, ty1, ty2, lhs, grid_points, grid_points.f, njac.f, njac]
    WRITE_S: [tmp1, tmp2, lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [tmp1, tmp2, dy5, lhs.f, fjac.f, fjac, dy2, dy1, dy4, dy3, dt, ty1, ty2, lhs, grid_points, grid_points.f, njac.f, njac]
    WRITE_S: [tmp1, tmp2, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [tmp1, tmp2, dy5, lhs.f, fjac.f, fjac, dy2, dy1, dy4, dy3, dt, ty1, ty2, lhs, grid_points, grid_points.f, njac.f, njac]
        WRITE_S: [tmp1, tmp2, lhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [tmp1, tmp2, dy5, lhs.f, fjac.f, fjac, dy2, dy1, dy4, dy3, dt, ty1, ty2, lhs, grid_points, grid_points.f, njac.f, njac]
        WRITE_S: [tmp1, tmp2, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tmp1, tmp2, dy5, lhs.f, fjac.f, fjac, dy2, dy1, dy4, dy3, dt, ty1, ty2, lhs, grid_points, grid_points.f, njac.f, njac]
            WRITE_S: [tmp1, tmp2, lhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [tmp1, tmp2, dy5, lhs.f, fjac.f, fjac, dy2, dy1, dy4, dy3, dt, ty1, ty2, lhs, njac.f, njac]
            WRITE_S: [tmp1, tmp2, lhs.f]*/
                /*READ_S: [ty1, dt]
                WRITE_S: [tmp1]*/
                tmp1 = dt * ty1;
                /*READ_S: [ty2, dt]
                WRITE_S: [tmp2]*/
                tmp2 = dt * ty2;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dy1, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i][j - 1][k][0][0] - tmp1 * njac[i][j - 1][k][0][0] - tmp1 * dy1;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i][j - 1][k][0][1] - tmp1 * njac[i][j - 1][k][0][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i][j - 1][k][0][2] - tmp1 * njac[i][j - 1][k][0][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i][j - 1][k][0][3] - tmp1 * njac[i][j - 1][k][0][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i][j - 1][k][0][4] - tmp1 * njac[i][j - 1][k][0][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i][j - 1][k][1][0] - tmp1 * njac[i][j - 1][k][1][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dy2, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i][j - 1][k][1][1] - tmp1 * njac[i][j - 1][k][1][1] - tmp1 * dy2;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i][j - 1][k][1][2] - tmp1 * njac[i][j - 1][k][1][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i][j - 1][k][1][3] - tmp1 * njac[i][j - 1][k][1][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i][j - 1][k][1][4] - tmp1 * njac[i][j - 1][k][1][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i][j - 1][k][2][0] - tmp1 * njac[i][j - 1][k][2][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i][j - 1][k][2][1] - tmp1 * njac[i][j - 1][k][2][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac, dy3]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i][j - 1][k][2][2] - tmp1 * njac[i][j - 1][k][2][2] - tmp1 * dy3;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i][j - 1][k][2][3] - tmp1 * njac[i][j - 1][k][2][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i][j - 1][k][2][4] - tmp1 * njac[i][j - 1][k][2][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i][j - 1][k][3][0] - tmp1 * njac[i][j - 1][k][3][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i][j - 1][k][3][1] - tmp1 * njac[i][j - 1][k][3][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i][j - 1][k][3][2] - tmp1 * njac[i][j - 1][k][3][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, dy4, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i][j - 1][k][3][3] - tmp1 * njac[i][j - 1][k][3][3] - tmp1 * dy4;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i][j - 1][k][3][4] - tmp1 * njac[i][j - 1][k][3][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i][j - 1][k][4][0] - tmp1 * njac[i][j - 1][k][4][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i][j - 1][k][4][1] - tmp1 * njac[i][j - 1][k][4][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i][j - 1][k][4][2] - tmp1 * njac[i][j - 1][k][4][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i][j - 1][k][4][3] - tmp1 * njac[i][j - 1][k][4][3];
                /*READ_S: [tmp1, tmp2, dy5, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i][j - 1][k][4][4] - tmp1 * njac[i][j - 1][k][4][4] - tmp1 * dy5;
                /*READ_S: [tmp1, lhs.f, lhs, dy1, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dy1;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*READ_S: [tmp1, lhs.f, lhs, dy2, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dy2;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac, dy3]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dy3;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, dy4, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dy4;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*READ_S: [tmp1, dy5, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dy5;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dy1, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i][j + 1][k][0][0] - tmp1 * njac[i][j + 1][k][0][0] - tmp1 * dy1;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i][j + 1][k][0][1] - tmp1 * njac[i][j + 1][k][0][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i][j + 1][k][0][2] - tmp1 * njac[i][j + 1][k][0][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i][j + 1][k][0][3] - tmp1 * njac[i][j + 1][k][0][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i][j + 1][k][0][4] - tmp1 * njac[i][j + 1][k][0][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i][j + 1][k][1][0] - tmp1 * njac[i][j + 1][k][1][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dy2, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i][j + 1][k][1][1] - tmp1 * njac[i][j + 1][k][1][1] - tmp1 * dy2;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i][j + 1][k][1][2] - tmp1 * njac[i][j + 1][k][1][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i][j + 1][k][1][3] - tmp1 * njac[i][j + 1][k][1][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i][j + 1][k][1][4] - tmp1 * njac[i][j + 1][k][1][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i][j + 1][k][2][0] - tmp1 * njac[i][j + 1][k][2][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i][j + 1][k][2][1] - tmp1 * njac[i][j + 1][k][2][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac, dy3]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i][j + 1][k][2][2] - tmp1 * njac[i][j + 1][k][2][2] - tmp1 * dy3;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i][j + 1][k][2][3] - tmp1 * njac[i][j + 1][k][2][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i][j + 1][k][2][4] - tmp1 * njac[i][j + 1][k][2][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i][j + 1][k][3][0] - tmp1 * njac[i][j + 1][k][3][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i][j + 1][k][3][1] - tmp1 * njac[i][j + 1][k][3][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i][j + 1][k][3][2] - tmp1 * njac[i][j + 1][k][3][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, dy4, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i][j + 1][k][3][3] - tmp1 * njac[i][j + 1][k][3][3] - tmp1 * dy4;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i][j + 1][k][3][4] - tmp1 * njac[i][j + 1][k][3][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i][j + 1][k][4][0] - tmp1 * njac[i][j + 1][k][4][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i][j + 1][k][4][1] - tmp1 * njac[i][j + 1][k][4][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i][j + 1][k][4][2] - tmp1 * njac[i][j + 1][k][4][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i][j + 1][k][4][3] - tmp1 * njac[i][j + 1][k][4][3];
                /*READ_S: [tmp1, tmp2, dy5, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i][j + 1][k][4][4] - tmp1 * njac[i][j + 1][k][4][4] - tmp1 * dy5;
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
/*READ_S: [tmp2, c1, lhs.f, u.f, fjac, dz1, dz3, dz5, c3, c1345, tz2, grid_points.f, i, njac.f, tmp1, c2, c3c4, u, fjac.f, tmp3, dz2, c4, dz4, dt, tz1, con43, lhs, grid_points, njac]
WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
static void lhsz() {
/*READ_S: [tmp2, c1, lhs.f, u.f, fjac, dz1, dz3, dz5, c3, c1345, tz2, grid_points.f, i, njac.f, tmp1, c2, c3c4, u, fjac.f, tmp3, dz2, c4, dz4, dt, tz1, con43, lhs, grid_points, njac]
WRITE_S: [tmp1, tmp2, lhs.f, fjac.f, tmp3, njac.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    int k;
    /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, u.f, fjac.f, tmp3, fjac, c4, c3, c1345, con43, grid_points, grid_points.f, i, njac.f, njac]
    WRITE_S: [tmp1, tmp2, fjac.f, tmp3, njac.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, u.f, fjac.f, tmp3, fjac, c4, c3, c1345, con43, grid_points, grid_points.f, njac.f, njac]
    WRITE_S: [tmp1, tmp2, fjac.f, tmp3, njac.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, u.f, fjac.f, tmp3, fjac, c4, c3, c1345, con43, grid_points, grid_points.f, njac.f, njac]
        WRITE_S: [tmp1, tmp2, fjac.f, tmp3, njac.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, u.f, fjac.f, tmp3, fjac, c4, c3, c1345, con43, grid_points, grid_points.f, njac.f, njac]
        WRITE_S: [tmp1, tmp2, fjac.f, tmp3, njac.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, u.f, fjac.f, tmp3, fjac, c4, c3, c1345, con43, grid_points, grid_points.f, njac.f, njac]
            WRITE_S: [tmp1, tmp2, fjac.f, tmp3, njac.f]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*READ_S: [tmp1, c2, tmp2, c1, c3c4, u, u.f, fjac.f, tmp3, fjac, c4, c3, c1345, con43, njac.f, njac]
            WRITE_S: [tmp1, tmp2, fjac.f, tmp3, njac.f]*/
                /*READ_S: [u, u.f]
                WRITE_S: [tmp1]*/
                tmp1 = 1.0 / u[i][j][k][0];
                /*READ_S: [tmp1]
                WRITE_S: [tmp2]*/
                tmp2 = tmp1 * tmp1;
                /*READ_S: [tmp1, tmp2]
                WRITE_S: [tmp3]*/
                tmp3 = tmp1 * tmp2;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][0] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][1] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][2] = 0.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][3] = 1.0;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][0][4] = 0.0;
                /*READ_S: [tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][0] = -(u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][1] = u[i][j][k][3] * tmp1;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][2] = 0.0;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][3] = u[i][j][k][1] * tmp1;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][1][4] = 0.0;
                /*READ_S: [tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][0] = -(u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][1] = 0.0;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][2] = u[i][j][k][3] * tmp1;
                /*READ_S: [tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][3] = u[i][j][k][2] * tmp1;
                /*READ_S: [fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][2][4] = 0.0;
                /*READ_S: [c2, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][0] = -(u[i][j][k][3] * u[i][j][k][3] * tmp2) + 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*READ_S: [c2, tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][1] = -c2 * u[i][j][k][1] * tmp1;
                /*READ_S: [c2, tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][2] = -c2 * u[i][j][k][2] * tmp1;
                /*READ_S: [c2, tmp1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][3] = (2.0 - c2) * u[i][j][k][3] * tmp1;
                /*READ_S: [c2, fjac.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][3][4] = c2;
                /*READ_S: [c2, tmp1, tmp2, c1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][0] = (c2 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * tmp2 - c1 * (u[i][j][k][4] * tmp1)) * (u[i][j][k][3] * tmp1);
                /*READ_S: [c2, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][1] = -c2 * (u[i][j][k][1] * u[i][j][k][3]) * tmp2;
                /*READ_S: [c2, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][2] = -c2 * (u[i][j][k][2] * u[i][j][k][3]) * tmp2;
                /*READ_S: [tmp1, c2, c1, tmp2, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][3] = c1 * (u[i][j][k][4] * tmp1) - 0.50 * c2 * ((u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + 3.0 * u[i][j][k][3] * u[i][j][k][3]) * tmp2);
                /*READ_S: [tmp1, c1, u, fjac.f, u.f, fjac]
                WRITE_S: [fjac.f]*/
                fjac[i][j][k][4][4] = c1 * u[i][j][k][3] * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][0] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][1] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][2] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][3] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][0][4] = 0.0;
                /*READ_S: [tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][0] = -c3c4 * tmp2 * u[i][j][k][1];
                /*READ_S: [tmp1, c3c4, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][1] = c3c4 * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][2] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][3] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][1][4] = 0.0;
                /*READ_S: [tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][0] = -c3c4 * tmp2 * u[i][j][k][2];
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][1] = 0.0;
                /*READ_S: [tmp1, c3c4, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][2] = c3c4 * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][3] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][2][4] = 0.0;
                /*READ_S: [tmp2, con43, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][0] = -con43 * c3c4 * tmp2 * u[i][j][k][3];
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][1] = 0.0;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][2] = 0.0;
                /*READ_S: [tmp1, con43, njac.f, c4, njac, c3]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][3] = con43 * c3 * c4 * tmp1;
                /*READ_S: [njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][3][4] = 0.0;
                /*READ_S: [c1345, tmp2, con43, c3c4, u, tmp3, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][0] = -(c3c4 - c1345) * tmp3 * (((u[i][j][k][1]) * (u[i][j][k][1]))) - (c3c4 - c1345) * tmp3 * (((u[i][j][k][2]) * (u[i][j][k][2]))) - (con43 * c3c4 - c1345) * tmp3 * (((u[i][j][k][3]) * (u[i][j][k][3]))) - c1345 * tmp2 * u[i][j][k][4];
                /*READ_S: [c1345, tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][1] = (c3c4 - c1345) * tmp2 * u[i][j][k][1];
                /*READ_S: [c1345, tmp2, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][2] = (c3c4 - c1345) * tmp2 * u[i][j][k][2];
                /*READ_S: [c1345, tmp2, con43, c3c4, u, u.f, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][3] = (con43 * c3c4 - c1345) * tmp2 * u[i][j][k][3];
                /*READ_S: [c1345, tmp1, njac.f, njac]
                WRITE_S: [njac.f]*/
                njac[i][j][k][4][4] = c1345 * tmp1;
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, dz1, dz3, dz2, dz5, dz4, dt, tz1, tz2, lhs, grid_points, grid_points.f, i, njac.f, njac]
    WRITE_S: [tmp1, tmp2, lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, dz1, dz3, dz2, dz5, dz4, dt, tz1, tz2, lhs, grid_points, grid_points.f, njac.f, njac]
    WRITE_S: [tmp1, tmp2, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, dz1, dz3, dz2, dz5, dz4, dt, tz1, tz2, lhs, grid_points, grid_points.f, njac.f, njac]
        WRITE_S: [tmp1, tmp2, lhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, dz1, dz3, dz2, dz5, dz4, dt, tz1, tz2, lhs, grid_points, grid_points.f, njac.f, njac]
        WRITE_S: [tmp1, tmp2, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, dz1, dz3, dz2, dz5, dz4, dt, tz1, tz2, lhs, grid_points, grid_points.f, njac.f, njac]
            WRITE_S: [tmp1, tmp2, lhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, dz1, dz3, dz2, dz5, dz4, dt, tz1, tz2, lhs, njac.f, njac]
            WRITE_S: [tmp1, tmp2, lhs.f]*/
                /*READ_S: [tz1, dt]
                WRITE_S: [tmp1]*/
                tmp1 = dt * tz1;
                /*READ_S: [tz2, dt]
                WRITE_S: [tmp2]*/
                tmp2 = dt * tz2;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dz1, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][0] = -tmp2 * fjac[i][j][k - 1][0][0] - tmp1 * njac[i][j][k - 1][0][0] - tmp1 * dz1;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][1] = -tmp2 * fjac[i][j][k - 1][0][1] - tmp1 * njac[i][j][k - 1][0][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][2] = -tmp2 * fjac[i][j][k - 1][0][2] - tmp1 * njac[i][j][k - 1][0][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][3] = -tmp2 * fjac[i][j][k - 1][0][3] - tmp1 * njac[i][j][k - 1][0][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][0][4] = -tmp2 * fjac[i][j][k - 1][0][4] - tmp1 * njac[i][j][k - 1][0][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][0] = -tmp2 * fjac[i][j][k - 1][1][0] - tmp1 * njac[i][j][k - 1][1][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dz2, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][1] = -tmp2 * fjac[i][j][k - 1][1][1] - tmp1 * njac[i][j][k - 1][1][1] - tmp1 * dz2;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][2] = -tmp2 * fjac[i][j][k - 1][1][2] - tmp1 * njac[i][j][k - 1][1][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][3] = -tmp2 * fjac[i][j][k - 1][1][3] - tmp1 * njac[i][j][k - 1][1][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][1][4] = -tmp2 * fjac[i][j][k - 1][1][4] - tmp1 * njac[i][j][k - 1][1][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][0] = -tmp2 * fjac[i][j][k - 1][2][0] - tmp1 * njac[i][j][k - 1][2][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][1] = -tmp2 * fjac[i][j][k - 1][2][1] - tmp1 * njac[i][j][k - 1][2][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dz3, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][2] = -tmp2 * fjac[i][j][k - 1][2][2] - tmp1 * njac[i][j][k - 1][2][2] - tmp1 * dz3;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][3] = -tmp2 * fjac[i][j][k - 1][2][3] - tmp1 * njac[i][j][k - 1][2][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][2][4] = -tmp2 * fjac[i][j][k - 1][2][4] - tmp1 * njac[i][j][k - 1][2][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][0] = -tmp2 * fjac[i][j][k - 1][3][0] - tmp1 * njac[i][j][k - 1][3][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][1] = -tmp2 * fjac[i][j][k - 1][3][1] - tmp1 * njac[i][j][k - 1][3][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][2] = -tmp2 * fjac[i][j][k - 1][3][2] - tmp1 * njac[i][j][k - 1][3][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac, dz4]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][3] = -tmp2 * fjac[i][j][k - 1][3][3] - tmp1 * njac[i][j][k - 1][3][3] - tmp1 * dz4;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][3][4] = -tmp2 * fjac[i][j][k - 1][3][4] - tmp1 * njac[i][j][k - 1][3][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][0] = -tmp2 * fjac[i][j][k - 1][4][0] - tmp1 * njac[i][j][k - 1][4][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][1] = -tmp2 * fjac[i][j][k - 1][4][1] - tmp1 * njac[i][j][k - 1][4][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][2] = -tmp2 * fjac[i][j][k - 1][4][2] - tmp1 * njac[i][j][k - 1][4][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][3] = -tmp2 * fjac[i][j][k - 1][4][3] - tmp1 * njac[i][j][k - 1][4][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, dz5, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][0][4][4] = -tmp2 * fjac[i][j][k - 1][4][4] - tmp1 * njac[i][j][k - 1][4][4] - tmp1 * dz5;
                /*READ_S: [tmp1, lhs.f, lhs, dz1, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][0] = 1.0 + tmp1 * 2.0 * njac[i][j][k][0][0] + tmp1 * 2.0 * dz1;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][1] = tmp1 * 2.0 * njac[i][j][k][0][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][2] = tmp1 * 2.0 * njac[i][j][k][0][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][3] = tmp1 * 2.0 * njac[i][j][k][0][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][0][4] = tmp1 * 2.0 * njac[i][j][k][0][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][0] = tmp1 * 2.0 * njac[i][j][k][1][0];
                /*READ_S: [tmp1, lhs.f, lhs, dz2, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][1] = 1.0 + tmp1 * 2.0 * njac[i][j][k][1][1] + tmp1 * 2.0 * dz2;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][2] = tmp1 * 2.0 * njac[i][j][k][1][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][3] = tmp1 * 2.0 * njac[i][j][k][1][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][1][4] = tmp1 * 2.0 * njac[i][j][k][1][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][0] = tmp1 * 2.0 * njac[i][j][k][2][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][1] = tmp1 * 2.0 * njac[i][j][k][2][1];
                /*READ_S: [tmp1, lhs.f, lhs, dz3, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][2] = 1.0 + tmp1 * 2.0 * njac[i][j][k][2][2] + tmp1 * 2.0 * dz3;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][3] = tmp1 * 2.0 * njac[i][j][k][2][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][2][4] = tmp1 * 2.0 * njac[i][j][k][2][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][0] = tmp1 * 2.0 * njac[i][j][k][3][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][1] = tmp1 * 2.0 * njac[i][j][k][3][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][2] = tmp1 * 2.0 * njac[i][j][k][3][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac, dz4]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][3] = 1.0 + tmp1 * 2.0 * njac[i][j][k][3][3] + tmp1 * 2.0 * dz4;
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][3][4] = tmp1 * 2.0 * njac[i][j][k][3][4];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][0] = tmp1 * 2.0 * njac[i][j][k][4][0];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][1] = tmp1 * 2.0 * njac[i][j][k][4][1];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][2] = tmp1 * 2.0 * njac[i][j][k][4][2];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][3] = tmp1 * 2.0 * njac[i][j][k][4][3];
                /*READ_S: [tmp1, lhs.f, lhs, njac.f, dz5, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][1][4][4] = 1.0 + tmp1 * 2.0 * njac[i][j][k][4][4] + tmp1 * 2.0 * dz5;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dz1, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][0] = tmp2 * fjac[i][j][k + 1][0][0] - tmp1 * njac[i][j][k + 1][0][0] - tmp1 * dz1;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][1] = tmp2 * fjac[i][j][k + 1][0][1] - tmp1 * njac[i][j][k + 1][0][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][2] = tmp2 * fjac[i][j][k + 1][0][2] - tmp1 * njac[i][j][k + 1][0][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][3] = tmp2 * fjac[i][j][k + 1][0][3] - tmp1 * njac[i][j][k + 1][0][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][0][4] = tmp2 * fjac[i][j][k + 1][0][4] - tmp1 * njac[i][j][k + 1][0][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][0] = tmp2 * fjac[i][j][k + 1][1][0] - tmp1 * njac[i][j][k + 1][1][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dz2, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][1] = tmp2 * fjac[i][j][k + 1][1][1] - tmp1 * njac[i][j][k + 1][1][1] - tmp1 * dz2;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][2] = tmp2 * fjac[i][j][k + 1][1][2] - tmp1 * njac[i][j][k + 1][1][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][3] = tmp2 * fjac[i][j][k + 1][1][3] - tmp1 * njac[i][j][k + 1][1][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][1][4] = tmp2 * fjac[i][j][k + 1][1][4] - tmp1 * njac[i][j][k + 1][1][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][0] = tmp2 * fjac[i][j][k + 1][2][0] - tmp1 * njac[i][j][k + 1][2][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][1] = tmp2 * fjac[i][j][k + 1][2][1] - tmp1 * njac[i][j][k + 1][2][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, dz3, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][2] = tmp2 * fjac[i][j][k + 1][2][2] - tmp1 * njac[i][j][k + 1][2][2] - tmp1 * dz3;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][3] = tmp2 * fjac[i][j][k + 1][2][3] - tmp1 * njac[i][j][k + 1][2][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][2][4] = tmp2 * fjac[i][j][k + 1][2][4] - tmp1 * njac[i][j][k + 1][2][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][0] = tmp2 * fjac[i][j][k + 1][3][0] - tmp1 * njac[i][j][k + 1][3][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][1] = tmp2 * fjac[i][j][k + 1][3][1] - tmp1 * njac[i][j][k + 1][3][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][2] = tmp2 * fjac[i][j][k + 1][3][2] - tmp1 * njac[i][j][k + 1][3][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac, dz4]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][3] = tmp2 * fjac[i][j][k + 1][3][3] - tmp1 * njac[i][j][k + 1][3][3] - tmp1 * dz4;
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][3][4] = tmp2 * fjac[i][j][k + 1][3][4] - tmp1 * njac[i][j][k + 1][3][4];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][0] = tmp2 * fjac[i][j][k + 1][4][0] - tmp1 * njac[i][j][k + 1][4][0];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][1] = tmp2 * fjac[i][j][k + 1][4][1] - tmp1 * njac[i][j][k + 1][4][1];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][2] = tmp2 * fjac[i][j][k + 1][4][2] - tmp1 * njac[i][j][k + 1][4][2];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][3] = tmp2 * fjac[i][j][k + 1][4][3] - tmp1 * njac[i][j][k + 1][4][3];
                /*READ_S: [tmp1, tmp2, lhs.f, fjac.f, fjac, lhs, njac.f, dz5, njac]
                WRITE_S: [lhs.f]*/
                lhs[i][j][k][2][4][4] = tmp2 * fjac[i][j][k + 1][4][4] - tmp1 * njac[i][j][k + 1][4][4] - tmp1 * dz5;
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
/*READ_S: [c1, rhs.f, dz5tz1, dy2ty1, vs.f, zzcon5, dz4tz1, dssp, ty2, xxcon5, yycon3, j, dy1ty1, dz3tz1, rhs, rho_i.f, dy4ty1, dt, forcing.f, vs, zzcon2, con43, dz2tz1, dx5tx1, xxcon2, grid_points, dy3ty1, yycon2, square, i, dx4tx1, u.f, dx3tx1, rho_i, dz1tz1, us.f, forcing, ws.f, zzcon3, tx2, tz2, xxcon3, dy5ty1, dx2tx1, grid_points.f, square.f, qs.f, yycon5, c2, dx1tx1, u, zzcon4, us, ws, xxcon4, qs, yycon4]
WRITE_S: [us.f, vs.f, ws.f, rhs.f, qs.f, square.f, rho_i.f]*/
static void compute_rhs() {
/*READ_S: [c1, rhs.f, dz5tz1, dy2ty1, vs.f, zzcon5, dz4tz1, dssp, ty2, xxcon5, yycon3, j, dy1ty1, dz3tz1, rhs, rho_i.f, dy4ty1, dt, forcing.f, vs, zzcon2, con43, dz2tz1, dx5tx1, xxcon2, grid_points, dy3ty1, yycon2, square, i, dx4tx1, u.f, dx3tx1, rho_i, dz1tz1, us.f, forcing, ws.f, zzcon3, tx2, tz2, xxcon3, dy5ty1, dx2tx1, grid_points.f, square.f, qs.f, yycon5, c2, dx1tx1, u, zzcon4, us, ws, xxcon4, qs, yycon4]
WRITE_S: [us.f, vs.f, ws.f, rhs.f, qs.f, square.f, rho_i.f]*/
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
    /*READ_S: [u, u.f, rho_i, rho_i.f, us.f, vs.f, us, vs, ws.f, ws, grid_points, grid_points.f, qs.f, square.f, qs, square, i]
    WRITE_S: [us.f, vs.f, ws.f, qs.f, square.f, rho_i.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < grid_points[0]; i++) {
    /*READ_S: [u, u.f, rho_i, rho_i.f, us.f, us, vs.f, vs, ws.f, ws, grid_points, grid_points.f, square.f, qs.f, qs, square]
    WRITE_S: [us.f, vs.f, ws.f, square.f, qs.f, rho_i.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [u, u.f, rho_i, rho_i.f, us.f, us, vs.f, vs, ws.f, ws, grid_points, grid_points.f, square.f, qs.f, qs, square]
        WRITE_S: [us.f, vs.f, ws.f, square.f, qs.f, rho_i.f]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*READ_S: [u, u.f, rho_i, rho_i.f, us.f, us, vs.f, vs, ws.f, ws, grid_points, grid_points.f, square.f, qs.f, qs, square]
        WRITE_S: [us.f, vs.f, ws.f, square.f, qs.f, rho_i.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [u, u.f, rho_i, rho_i.f, us.f, us, vs.f, vs, ws.f, ws, grid_points, grid_points.f, square.f, qs.f, qs, square]
            WRITE_S: [us.f, vs.f, ws.f, square.f, qs.f, rho_i.f]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*READ_S: [u, u.f, rho_i, rho_i.f, us.f, us, vs.f, vs, ws.f, ws, qs.f, square.f, qs, square]
            WRITE_S: [us.f, vs.f, ws.f, qs.f, square.f, rho_i.f]*/
                /*READ_S: [u, u.f]
                WRITE_S: []*/
                rho_inv = 1.0 / u[i][j][k][0];
                /*READ_S: [rho_i, rho_i.f]
                WRITE_S: [rho_i.f]*/
                rho_i[i][j][k] = rho_inv;
                /*READ_S: [us.f, us, u, u.f]
                WRITE_S: [us.f]*/
                us[i][j][k] = u[i][j][k][1] * rho_inv;
                /*READ_S: [vs.f, vs, u, u.f]
                WRITE_S: [vs.f]*/
                vs[i][j][k] = u[i][j][k][2] * rho_inv;
                /*READ_S: [ws.f, ws, u, u.f]
                WRITE_S: [ws.f]*/
                ws[i][j][k] = u[i][j][k][3] * rho_inv;
                /*READ_S: [u, u.f, square.f, square]
                WRITE_S: [square.f]*/
                square[i][j][k] = 0.5 * (u[i][j][k][1] * u[i][j][k][1] + u[i][j][k][2] * u[i][j][k][2] + u[i][j][k][3] * u[i][j][k][3]) * rho_inv;
                /*READ_S: [qs.f, square.f, qs, square]
                WRITE_S: [qs.f]*/
                qs[i][j][k] = square[i][j][k] * rho_inv;
            }
        }
    }
    /*READ_S: [forcing, forcing.f, rhs.f, rhs, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < grid_points[0]; i++) {
    /*READ_S: [forcing, forcing.f, rhs.f, rhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [forcing, forcing.f, rhs.f, rhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (j = 0; j < grid_points[1]; j++) {
        /*READ_S: [forcing, forcing.f, rhs.f, rhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [forcing, forcing.f, rhs.f, rhs, grid_points, grid_points.f]
            WRITE_S: [rhs.f]*/
            for (k = 0; k < grid_points[2]; k++) {
            /*READ_S: [forcing, forcing.f, rhs.f, rhs]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [forcing, forcing.f, rhs.f, rhs]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [forcing, forcing.f, rhs.f, rhs]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [forcing, forcing.f, rhs.f, rhs]
                    WRITE_S: [rhs.f]*/
                    rhs[i][j][k][m] = forcing[i][j][k][m];
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
    /*READ_S: [c1, rhs.f, dx4tx1, u.f, dx3tx1, rho_i, us.f, vs.f, ws.f, tx2, xxcon3, dx2tx1, grid_points.f, xxcon5, qs.f, square.f, c2, dx1tx1, u, rhs, rho_i.f, us, vs, ws, con43, dx5tx1, xxcon2, grid_points, xxcon4, qs, square, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [c1, rhs.f, dx4tx1, u.f, dx3tx1, rho_i, us.f, vs.f, ws.f, tx2, xxcon3, dx2tx1, grid_points.f, xxcon5, qs.f, square.f, c2, dx1tx1, u, rhs, rho_i.f, us, vs, ws, con43, dx5tx1, xxcon2, grid_points, xxcon4, qs, square]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [c1, rhs.f, dx4tx1, u.f, dx3tx1, rho_i, us.f, vs.f, ws.f, tx2, xxcon3, dx2tx1, grid_points.f, xxcon5, qs.f, square.f, c2, dx1tx1, u, rhs, rho_i.f, us, vs, ws, con43, dx5tx1, xxcon2, grid_points, xxcon4, qs, square]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [c1, rhs.f, dx4tx1, u.f, dx3tx1, rho_i, us.f, vs.f, ws.f, tx2, xxcon3, dx2tx1, grid_points.f, xxcon5, qs.f, square.f, c2, dx1tx1, u, rhs, rho_i.f, us, vs, con43, ws, dx5tx1, xxcon2, grid_points, xxcon4, qs, square]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [c1, rhs.f, dx4tx1, u.f, dx3tx1, rho_i, us.f, vs.f, ws.f, tx2, xxcon3, dx2tx1, grid_points.f, xxcon5, qs.f, square.f, c2, dx1tx1, u, rhs, rho_i.f, us, vs, con43, ws, dx5tx1, xxcon2, grid_points, xxcon4, qs, square]
            WRITE_S: [rhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [c1, rhs.f, dx4tx1, u.f, dx3tx1, rho_i, us.f, vs.f, ws.f, tx2, xxcon3, dx2tx1, xxcon5, qs.f, square.f, c2, dx1tx1, u, rhs, rho_i.f, us, vs, con43, ws, dx5tx1, xxcon2, xxcon4, qs, square]
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
                /*READ_S: [dx1tx1, tx2, rhs.f, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dx1tx1 * (u[i + 1][j][k][0] - 2.0 * u[i][j][k][0] + u[i - 1][j][k][0]) - tx2 * (u[i + 1][j][k][1] - u[i - 1][j][k][1]);
                /*READ_S: [c2, con43, tx2, rhs.f, u, rhs, u.f, xxcon2, dx2tx1, square.f, square]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dx2tx1 * (u[i + 1][j][k][1] - 2.0 * u[i][j][k][1] + u[i - 1][j][k][1]) + xxcon2 * con43 * (up1 - 2.0 * uijk + um1) - tx2 * (u[i + 1][j][k][1] * up1 - u[i - 1][j][k][1] * um1 + (u[i + 1][j][k][4] - square[i + 1][j][k] - u[i - 1][j][k][4] + square[i - 1][j][k]) * c2);
                /*READ_S: [vs.f, vs, tx2, rhs.f, u, rhs, u.f, dx3tx1, xxcon2]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dx3tx1 * (u[i + 1][j][k][2] - 2.0 * u[i][j][k][2] + u[i - 1][j][k][2]) + xxcon2 * (vs[i + 1][j][k] - 2.0 * vs[i][j][k] + vs[i - 1][j][k]) - tx2 * (u[i + 1][j][k][2] * up1 - u[i - 1][j][k][2] * um1);
                /*READ_S: [ws.f, ws, tx2, rhs.f, dx4tx1, u, rhs, u.f, xxcon2]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dx4tx1 * (u[i + 1][j][k][3] - 2.0 * u[i][j][k][3] + u[i - 1][j][k][3]) + xxcon2 * (ws[i + 1][j][k] - 2.0 * ws[i][j][k] + ws[i - 1][j][k]) - tx2 * (u[i + 1][j][k][3] * up1 - u[i - 1][j][k][3] * um1);
                /*READ_S: [c2, c1, rhs.f, u, rhs, u.f, rho_i, rho_i.f, tx2, dx5tx1, xxcon3, xxcon4, xxcon5, qs.f, square.f, qs, square]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dx5tx1 * (u[i + 1][j][k][4] - 2.0 * u[i][j][k][4] + u[i - 1][j][k][4]) + xxcon3 * (qs[i + 1][j][k] - 2.0 * qs[i][j][k] + qs[i - 1][j][k]) + xxcon4 * (up1 * up1 - 2.0 * uijk * uijk + um1 * um1) + xxcon5 * (u[i + 1][j][k][4] * rho_i[i + 1][j][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i - 1][j][k][4] * rho_i[i - 1][j][k]) - tx2 * ((c1 * u[i + 1][j][k][4] - c2 * square[i + 1][j][k]) * up1 - (c1 * u[i - 1][j][k][4] - c2 * square[i - 1][j][k]) * um1);
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
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, j]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    i = 2;
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, j]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
            }
        }
    }
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 3; i < grid_points[0] - 3; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
            WRITE_S: [rhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                    WRITE_S: [rhs.f]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m] + u[i + 2][j][k][m]);
                }
            }
        }
    }
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    i = grid_points[0] - 3;
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, j]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4.0 * u[i - 1][j][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i + 1][j][k][m]);
            }
        }
    }
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    i = grid_points[0] - 2;
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, j]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i - 2][j][k][m] - 4. * u[i - 1][j][k][m] + 5.0 * u[i][j][k][m]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [c1, rhs.f, u.f, rho_i, dy2ty1, us.f, vs.f, ws.f, ty2, dy5ty1, grid_points.f, yycon3, qs.f, square.f, yycon5, dy1ty1, c2, u, rhs, dy4ty1, rho_i.f, us, vs, ws, con43, grid_points, dy3ty1, yycon2, qs, yycon4, square, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [c1, rhs.f, u.f, rho_i, dy2ty1, us.f, vs.f, ws.f, ty2, dy5ty1, grid_points.f, yycon3, qs.f, square.f, yycon5, dy1ty1, c2, u, rhs, dy4ty1, rho_i.f, us, vs, ws, con43, grid_points, dy3ty1, yycon2, qs, yycon4, square]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [c1, rhs.f, u.f, rho_i, dy2ty1, us.f, vs.f, ws.f, ty2, dy5ty1, grid_points.f, yycon3, qs.f, square.f, yycon5, dy1ty1, c2, u, rhs, dy4ty1, rho_i.f, us, vs, ws, con43, grid_points, dy3ty1, yycon2, qs, yycon4, square]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [c1, rhs.f, u.f, rho_i, dy2ty1, us.f, vs.f, ws.f, ty2, dy5ty1, grid_points.f, yycon3, qs.f, square.f, yycon5, dy1ty1, c2, u, rhs, dy4ty1, rho_i.f, us, vs, ws, con43, grid_points, dy3ty1, yycon2, qs, yycon4, square]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [c1, rhs.f, u.f, rho_i, dy2ty1, us.f, vs.f, ws.f, ty2, dy5ty1, grid_points.f, yycon3, qs.f, square.f, yycon5, dy1ty1, c2, u, rhs, dy4ty1, rho_i.f, us, vs, ws, con43, grid_points, dy3ty1, yycon2, qs, yycon4, square]
            WRITE_S: [rhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [c1, rhs.f, u.f, rho_i, dy2ty1, us.f, vs.f, ws.f, ty2, dy5ty1, yycon3, qs.f, square.f, yycon5, dy1ty1, c2, u, rhs, dy4ty1, rho_i.f, us, vs, ws, con43, dy3ty1, yycon2, qs, yycon4, square]
            WRITE_S: [rhs.f]*/
                /*READ_S: [vs.f, vs]
                WRITE_S: []*/
                vijk = vs[i][j][k];
                /*READ_S: [vs.f, vs]
                WRITE_S: []*/
                vp1 = vs[i][j + 1][k];
                /*READ_S: [vs.f, vs]
                WRITE_S: []*/
                vm1 = vs[i][j - 1][k];
                /*READ_S: [rhs.f, u, rhs, u.f, ty2, dy1ty1]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dy1ty1 * (u[i][j + 1][k][0] - 2.0 * u[i][j][k][0] + u[i][j - 1][k][0]) - ty2 * (u[i][j + 1][k][2] - u[i][j - 1][k][2]);
                /*READ_S: [us.f, us, rhs.f, u, rhs, u.f, ty2, yycon2, dy2ty1]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dy2ty1 * (u[i][j + 1][k][1] - 2.0 * u[i][j][k][1] + u[i][j - 1][k][1]) + yycon2 * (us[i][j + 1][k] - 2.0 * us[i][j][k] + us[i][j - 1][k]) - ty2 * (u[i][j + 1][k][1] * vp1 - u[i][j - 1][k][1] * vm1);
                /*READ_S: [c2, con43, rhs.f, u, rhs, u.f, ty2, dy3ty1, square.f, yycon2, square]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dy3ty1 * (u[i][j + 1][k][2] - 2.0 * u[i][j][k][2] + u[i][j - 1][k][2]) + yycon2 * con43 * (vp1 - 2.0 * vijk + vm1) - ty2 * (u[i][j + 1][k][2] * vp1 - u[i][j - 1][k][2] * vm1 + (u[i][j + 1][k][4] - square[i][j + 1][k] - u[i][j - 1][k][4] + square[i][j - 1][k]) * c2);
                /*READ_S: [ws.f, ws, rhs.f, u, rhs, u.f, ty2, yycon2, dy4ty1]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dy4ty1 * (u[i][j + 1][k][3] - 2.0 * u[i][j][k][3] + u[i][j - 1][k][3]) + yycon2 * (ws[i][j + 1][k] - 2.0 * ws[i][j][k] + ws[i][j - 1][k]) - ty2 * (u[i][j + 1][k][3] * vp1 - u[i][j - 1][k][3] * vm1);
                /*READ_S: [c2, c1, rhs.f, u, rhs, u.f, rho_i, rho_i.f, ty2, dy5ty1, yycon3, qs.f, square.f, qs, yycon5, yycon4, square]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dy5ty1 * (u[i][j + 1][k][4] - 2.0 * u[i][j][k][4] + u[i][j - 1][k][4]) + yycon3 * (qs[i][j + 1][k] - 2.0 * qs[i][j][k] + qs[i][j - 1][k]) + yycon4 * (vp1 * vp1 - 2.0 * vijk * vijk + vm1 * vm1) + yycon5 * (u[i][j + 1][k][4] * rho_i[i][j + 1][k] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j - 1][k][4] * rho_i[i][j - 1][k]) - ty2 * ((c1 * u[i][j + 1][k][4] - c2 * square[i][j + 1][k]) * vp1 - (c1 * u[i][j - 1][k][4] - c2 * square[i][j - 1][k]) * vm1);
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
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    j = 2;
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
            }
        }
    }
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (j = 3; j < grid_points[1] - 3; j++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
            WRITE_S: [rhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                    WRITE_S: [rhs.f]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m] + u[i][j + 2][k][m]);
                }
            }
        }
    }
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    j = grid_points[1] - 3;
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4.0 * u[i][j - 1][k][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j + 1][k][m]);
            }
        }
    }
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    j = grid_points[1] - 2;
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j - 2][k][m] - 4. * u[i][j - 1][k][m] + 5. * u[i][j][k][m]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [c1, rhs.f, u.f, dz1tz1, rho_i, dz5tz1, us.f, vs.f, zzcon5, ws.f, dz4tz1, zzcon3, tz2, grid_points.f, square.f, qs.f, c2, dz3tz1, u, rhs, rho_i.f, zzcon4, us, zzcon2, vs, ws, con43, dz2tz1, grid_points, qs, square, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [c1, rhs.f, u.f, dz1tz1, rho_i, dz5tz1, us.f, zzcon5, vs.f, dz4tz1, ws.f, zzcon3, tz2, grid_points.f, square.f, qs.f, c2, dz3tz1, u, rhs, rho_i.f, zzcon4, us, zzcon2, vs, con43, ws, dz2tz1, grid_points, qs, square]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [c1, rhs.f, u.f, dz1tz1, rho_i, dz5tz1, us.f, zzcon5, vs.f, dz4tz1, ws.f, zzcon3, tz2, grid_points.f, square.f, qs.f, c2, dz3tz1, u, rhs, rho_i.f, zzcon4, us, zzcon2, vs, con43, ws, dz2tz1, grid_points, qs, square]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [c1, rhs.f, u.f, dz1tz1, rho_i, dz5tz1, us.f, zzcon5, vs.f, dz4tz1, ws.f, zzcon3, tz2, grid_points.f, square.f, qs.f, c2, dz3tz1, u, rhs, rho_i.f, zzcon4, us, zzcon2, vs, con43, ws, dz2tz1, grid_points, qs, square]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [c1, rhs.f, u.f, dz1tz1, rho_i, dz5tz1, us.f, zzcon5, vs.f, dz4tz1, ws.f, zzcon3, tz2, grid_points.f, square.f, qs.f, c2, dz3tz1, u, rhs, rho_i.f, zzcon4, us, zzcon2, vs, con43, ws, dz2tz1, grid_points, qs, square]
            WRITE_S: [rhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [c1, rhs.f, u.f, dz1tz1, rho_i, dz5tz1, us.f, zzcon5, vs.f, dz4tz1, ws.f, zzcon3, tz2, square.f, qs.f, c2, dz3tz1, u, rhs, rho_i.f, zzcon4, us, zzcon2, vs, con43, ws, dz2tz1, qs, square]
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
                /*READ_S: [rhs.f, u, rhs, u.f, tz2, dz1tz1]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][0] = rhs[i][j][k][0] + dz1tz1 * (u[i][j][k + 1][0] - 2.0 * u[i][j][k][0] + u[i][j][k - 1][0]) - tz2 * (u[i][j][k + 1][3] - u[i][j][k - 1][3]);
                /*READ_S: [us.f, us, zzcon2, dz2tz1, rhs.f, u, rhs, u.f, tz2]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][1] = rhs[i][j][k][1] + dz2tz1 * (u[i][j][k + 1][1] - 2.0 * u[i][j][k][1] + u[i][j][k - 1][1]) + zzcon2 * (us[i][j][k + 1] - 2.0 * us[i][j][k] + us[i][j][k - 1]) - tz2 * (u[i][j][k + 1][1] * wp1 - u[i][j][k - 1][1] * wm1);
                /*READ_S: [vs.f, zzcon2, vs, dz3tz1, rhs.f, u, rhs, u.f, tz2]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][2] = rhs[i][j][k][2] + dz3tz1 * (u[i][j][k + 1][2] - 2.0 * u[i][j][k][2] + u[i][j][k - 1][2]) + zzcon2 * (vs[i][j][k + 1] - 2.0 * vs[i][j][k] + vs[i][j][k - 1]) - tz2 * (u[i][j][k + 1][2] * wp1 - u[i][j][k - 1][2] * wm1);
                /*READ_S: [c2, dz4tz1, zzcon2, con43, rhs.f, u, rhs, u.f, tz2, square.f, square]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][3] = rhs[i][j][k][3] + dz4tz1 * (u[i][j][k + 1][3] - 2.0 * u[i][j][k][3] + u[i][j][k - 1][3]) + zzcon2 * con43 * (wp1 - 2.0 * wijk + wm1) - tz2 * (u[i][j][k + 1][3] * wp1 - u[i][j][k - 1][3] * wm1 + (u[i][j][k + 1][4] - square[i][j][k + 1] - u[i][j][k - 1][4] + square[i][j][k - 1]) * c2);
                /*READ_S: [c2, c1, rhs.f, u, rhs, u.f, rho_i, dz5tz1, rho_i.f, zzcon4, zzcon5, zzcon3, tz2, qs.f, square.f, qs, square]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][4] = rhs[i][j][k][4] + dz5tz1 * (u[i][j][k + 1][4] - 2.0 * u[i][j][k][4] + u[i][j][k - 1][4]) + zzcon3 * (qs[i][j][k + 1] - 2.0 * qs[i][j][k] + qs[i][j][k - 1]) + zzcon4 * (wp1 * wp1 - 2.0 * wijk * wijk + wm1 * wm1) + zzcon5 * (u[i][j][k + 1][4] * rho_i[i][j][k + 1] - 2.0 * u[i][j][k][4] * rho_i[i][j][k] + u[i][j][k - 1][4] * rho_i[i][j][k - 1]) - tz2 * ((c1 * u[i][j][k + 1][4] - c2 * square[i][j][k + 1]) * wp1 - (c1 * u[i][j][k - 1][4] - c2 * square[i][j][k - 1]) * wm1);
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
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (5.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    k = 2;
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (-4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
            }
        }
    }
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
            WRITE_S: [rhs.f]*/
            for (k = 3; k < grid_points[2] - 3; k++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                    WRITE_S: [rhs.f]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m] + u[i][j][k + 2][m]);
                }
            }
        }
    }
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    k = grid_points[2] - 3;
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 6.0 * u[i][j][k][m] - 4.0 * u[i][j][k + 1][m]);
            }
        }
    }
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    k = grid_points[2] - 2;
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f, i]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, dssp, u, rhs, u.f, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, dssp, u, rhs, u.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, dssp, u, rhs, u.f]
            WRITE_S: [rhs.f]*/
                /*READ_S: [rhs.f, dssp, u, rhs, u.f]
                WRITE_S: [rhs.f]*/
                rhs[i][j][k][m] = rhs[i][j][k][m] - dssp * (u[i][j][k - 2][m] - 4.0 * u[i][j][k - 1][m] + 5.0 * u[i][j][k][m]);
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
    /*READ_S: [rhs.f, rhs, grid_points, grid_points.f, j, dt]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*READ_S: [rhs.f, rhs, grid_points, grid_points.f, dt]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, rhs, grid_points, grid_points.f, dt]
        WRITE_S: [rhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, rhs, grid_points, grid_points.f, dt]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, rhs, grid_points, grid_points.f, dt]
            WRITE_S: [rhs.f]*/
            for (m = 0; m < 5; m++) {
            /*READ_S: [rhs.f, rhs, grid_points, grid_points.f, dt]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs.f, rhs, grid_points, grid_points.f, dt]
                WRITE_S: [rhs.f]*/
                for (i = 1; i < grid_points[0] - 1; i++) {
                /*READ_S: [rhs.f, rhs, dt]
                WRITE_S: [rhs.f]*/
                    /*READ_S: [rhs.f, rhs, dt]
                    WRITE_S: [rhs.f]*/
                    rhs[i][j][k][m] = rhs[i][j][k][m] * dt;
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
/*READ_S: [c1, dy5, c1c5, _imopVarPre203, dz3, dy1, c5, dx3, _imopVarPre251, _imopVarPre207, con16, c3c4tx3, dssp, dnym1, c3c4tz3, _imopVarPre259, ty2, ce.f, dtty1, c3c4, dtdssp, _imopVarPre199, dz2, dy4, c4, dt, dx2, dnzm1, con43, tx3, ty1, tz3, conz1, grid_points, ce, dx5, dz1, dx1, dz5, dy3, c3, tx2, tz2, c3c4ty3, _imopVarPre249, dttz1, grid_points.f, dttx1, c2, dx4, dy2, dz4, tz1, ty3, dnxm1, tx1]
WRITE_S: [dy5, c1, c1c5, dz3, dy1, c5, dz5tz1, dx3, dy2ty1, c1345, zzcon5, dz4tz1, con16, dssp, c3c4tx3, dnym1, c3c4tz3, xxcon1, ty2, c2dttx1, comz1, xxcon5, c2dttz1, ce.f, yycon3, comz5, zzcon1, dy1ty1, dzmax, dtty1, dz3tz1, dtdssp, c3c4, c1c2, dz2, dy4, c4, dy4ty1, dx2, dnzm1, zzcon2, con43, dz2tz1, tx3, dx5tx1, ty1, tz3, conz1, xxcon2, comz4, dy3ty1, yycon2, dttx2, dttz2, dx5, dx4tx1, dx3tx1, dz1tz1, c2iv, dz1, dx1, dz5, c3, dy3, yycon1, zzcon3, tx2, tz2, c3c4ty3, dttz1, c4dssp, xxcon3, dy5ty1, dx2tx1, c2dtty1, yycon5, dttx1, c2, c5dssp, dx4, dx1tx1, dy2, dz4, dymax, zzcon4, tz1, ty3, dnxm1, tx1, xxcon4, comz6, dxmax, dtty2, yycon4]*/
static void set_constants() {
/*READ_S: [c1, dy5, c1c5, _imopVarPre203, dz3, dy1, c5, dx3, _imopVarPre251, _imopVarPre207, con16, c3c4tx3, dssp, dnym1, c3c4tz3, _imopVarPre259, ty2, ce.f, dtty1, c3c4, dtdssp, _imopVarPre199, dz2, dy4, c4, dt, dx2, dnzm1, con43, tx3, ty1, tz3, conz1, grid_points, ce, dx5, dz1, dx1, dz5, dy3, c3, tx2, tz2, c3c4ty3, _imopVarPre249, dttz1, grid_points.f, dttx1, c2, dx4, dy2, dz4, tz1, ty3, dnxm1, tx1]
WRITE_S: [dy5, c1, c1c5, dz3, dy1, c5, dz5tz1, dx3, dy2ty1, c1345, zzcon5, dz4tz1, con16, dssp, c3c4tx3, dnym1, c3c4tz3, xxcon1, ty2, c2dttx1, comz1, xxcon5, c2dttz1, ce.f, yycon3, comz5, zzcon1, dy1ty1, dzmax, dtty1, dz3tz1, dtdssp, c3c4, c1c2, dz2, dy4, c4, dy4ty1, dx2, dnzm1, zzcon2, con43, dz2tz1, tx3, dx5tx1, ty1, tz3, conz1, xxcon2, comz4, dy3ty1, yycon2, dttx2, dttz2, dx5, dx4tx1, dx3tx1, dz1tz1, c2iv, dz1, dx1, dz5, c3, dy3, yycon1, zzcon3, tx2, tz2, c3c4ty3, dttz1, c4dssp, xxcon3, dy5ty1, dx2tx1, c2dtty1, yycon5, dttx1, c2, c5dssp, dx4, dx1tx1, dy2, dz4, dymax, zzcon4, tz1, ty3, dnxm1, tx1, xxcon4, comz6, dxmax, dtty2, yycon4]*/
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][0] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][1] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][2] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][3] = 4.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][4] = 5.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][5] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][6] = 0.5;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][7] = 0.02;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][8] = 0.01;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][9] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][10] = 0.5;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][11] = 0.4;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[0][12] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][0] = 1.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][1] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][2] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][3] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][4] = 1.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][5] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][6] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][7] = 0.01;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][8] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][9] = 0.02;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][10] = 0.4;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][11] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[1][12] = 0.5;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][0] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][1] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][2] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][3] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][4] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][5] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][6] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][7] = 0.04;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][8] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][9] = 0.05;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][10] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][11] = 0.5;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[2][12] = 0.4;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][0] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][1] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][2] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][3] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][4] = 0.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][5] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][6] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][7] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][8] = 0.05;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][9] = 0.04;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][10] = 0.2;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][11] = 0.1;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[3][12] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][0] = 5.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][1] = 4.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][2] = 3.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][3] = 2.0;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][4] = 0.1;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][5] = 0.4;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][6] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][7] = 0.05;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][8] = 0.04;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][9] = 0.03;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][10] = 0.1;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][11] = 0.3;
    /*READ_S: [ce.f, ce]
    WRITE_S: [ce.f]*/
    ce[4][12] = 0.2;
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
    /*READ_S: [c1, c5]
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
    int _imopVarPre199;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre200;
    /*READ_S: [dx4, dx3]
    WRITE_S: []*/
    _imopVarPre199 = (dx3 > dx4);
    /*READ_S: [_imopVarPre199]
    WRITE_S: []*/
    /*READ_S: [dx4, _imopVarPre199, dx3]
    WRITE_S: []*/
    if (_imopVarPre199) {
    /*READ_S: [dx3]
    WRITE_S: []*/
        /*READ_S: [dx3]
        WRITE_S: []*/
        _imopVarPre200 = dx3;
    } else {
    /*READ_S: [dx4]
    WRITE_S: []*/
        /*READ_S: [dx4]
        WRITE_S: []*/
        _imopVarPre200 = dx4;
    }
    /*READ_S: []
    WRITE_S: [dxmax]*/
    dxmax = _imopVarPre200;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre203;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre204;
    /*READ_S: [dy2, dy4]
    WRITE_S: []*/
    _imopVarPre203 = (dy2 > dy4);
    /*READ_S: [_imopVarPre203]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre203, dy2, dy4]
    WRITE_S: []*/
    if (_imopVarPre203) {
    /*READ_S: [dy2]
    WRITE_S: []*/
        /*READ_S: [dy2]
        WRITE_S: []*/
        _imopVarPre204 = dy2;
    } else {
    /*READ_S: [dy4]
    WRITE_S: []*/
        /*READ_S: [dy4]
        WRITE_S: []*/
        _imopVarPre204 = dy4;
    }
    /*READ_S: []
    WRITE_S: [dymax]*/
    dymax = _imopVarPre204;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre207;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre208;
    /*READ_S: [dz3, dz2]
    WRITE_S: []*/
    _imopVarPre207 = (dz2 > dz3);
    /*READ_S: [_imopVarPre207]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre207, dz3, dz2]
    WRITE_S: []*/
    if (_imopVarPre207) {
    /*READ_S: [dz2]
    WRITE_S: []*/
        /*READ_S: [dz2]
        WRITE_S: []*/
        _imopVarPre208 = dz2;
    } else {
    /*READ_S: [dz3]
    WRITE_S: []*/
        /*READ_S: [dz3]
        WRITE_S: []*/
        _imopVarPre208 = dz3;
    }
    /*READ_S: []
    WRITE_S: [dzmax]*/
    dzmax = _imopVarPre208;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre249;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre250;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre251;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre252;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre259;
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre260;
    /*READ_S: [dz1, dy1]
    WRITE_S: []*/
    _imopVarPre249 = (dy1 > dz1);
    /*READ_S: [_imopVarPre249]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre249, dz1, dy1]
    WRITE_S: []*/
    if (_imopVarPre249) {
    /*READ_S: [dy1]
    WRITE_S: []*/
        /*READ_S: [dy1]
        WRITE_S: []*/
        _imopVarPre250 = dy1;
    } else {
    /*READ_S: [dz1]
    WRITE_S: []*/
        /*READ_S: [dz1]
        WRITE_S: []*/
        _imopVarPre250 = dz1;
    }
    /*READ_S: [dx1]
    WRITE_S: []*/
    _imopVarPre251 = (dx1 > _imopVarPre250);
    /*READ_S: [_imopVarPre251]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre259, dz1, dx1, dy1, _imopVarPre251]
    WRITE_S: []*/
    if (_imopVarPre251) {
    /*READ_S: [dx1]
    WRITE_S: []*/
        /*READ_S: [dx1]
        WRITE_S: []*/
        _imopVarPre252 = dx1;
    } else {
    /*READ_S: [_imopVarPre259, dz1, dy1]
    WRITE_S: []*/
        /*READ_S: [dz1, dy1]
        WRITE_S: []*/
        _imopVarPre259 = (dy1 > dz1);
        /*READ_S: [_imopVarPre259]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre259, dz1, dy1]
        WRITE_S: []*/
        if (_imopVarPre259) {
        /*READ_S: [dy1]
        WRITE_S: []*/
            /*READ_S: [dy1]
            WRITE_S: []*/
            _imopVarPre260 = dy1;
        } else {
        /*READ_S: [dz1]
        WRITE_S: []*/
            /*READ_S: [dz1]
            WRITE_S: []*/
            _imopVarPre260 = dz1;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre252 = _imopVarPre260;
    }
    /*READ_S: []
    WRITE_S: [dssp]*/
    dssp = 0.25 * _imopVarPre252;
    /*READ_S: [dssp]
    WRITE_S: [c4dssp]*/
    c4dssp = 4.0 * dssp;
    /*READ_S: [dssp]
    WRITE_S: [c5dssp]*/
    c5dssp = 5.0 * dssp;
    /*READ_S: [tx1, dt]
    WRITE_S: [dttx1]*/
    dttx1 = dt * tx1;
    /*READ_S: [tx2, dt]
    WRITE_S: [dttx2]*/
    dttx2 = dt * tx2;
    /*READ_S: [ty1, dt]
    WRITE_S: [dtty1]*/
    dtty1 = dt * ty1;
    /*READ_S: [ty2, dt]
    WRITE_S: [dtty2]*/
    dtty2 = dt * ty2;
    /*READ_S: [tz1, dt]
    WRITE_S: [dttz1]*/
    dttz1 = dt * tz1;
    /*READ_S: [tz2, dt]
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
    /*READ_S: [tx1, dx1]
    WRITE_S: [dx1tx1]*/
    dx1tx1 = dx1 * tx1;
    /*READ_S: [tx1, dx2]
    WRITE_S: [dx2tx1]*/
    dx2tx1 = dx2 * tx1;
    /*READ_S: [tx1, dx3]
    WRITE_S: [dx3tx1]*/
    dx3tx1 = dx3 * tx1;
    /*READ_S: [dx4, tx1]
    WRITE_S: [dx4tx1]*/
    dx4tx1 = dx4 * tx1;
    /*READ_S: [dx5, tx1]
    WRITE_S: [dx5tx1]*/
    dx5tx1 = dx5 * tx1;
    /*READ_S: [ty1, dy1]
    WRITE_S: [dy1ty1]*/
    dy1ty1 = dy1 * ty1;
    /*READ_S: [ty1, dy2]
    WRITE_S: [dy2ty1]*/
    dy2ty1 = dy2 * ty1;
    /*READ_S: [ty1, dy3]
    WRITE_S: [dy3ty1]*/
    dy3ty1 = dy3 * ty1;
    /*READ_S: [ty1, dy4]
    WRITE_S: [dy4ty1]*/
    dy4ty1 = dy4 * ty1;
    /*READ_S: [dy5, ty1]
    WRITE_S: [dy5ty1]*/
    dy5ty1 = dy5 * ty1;
    /*READ_S: [tz1, dz1]
    WRITE_S: [dz1tz1]*/
    dz1tz1 = dz1 * tz1;
    /*READ_S: [tz1, dz2]
    WRITE_S: [dz2tz1]*/
    dz2tz1 = dz2 * tz1;
    /*READ_S: [tz1, dz3]
    WRITE_S: [dz3tz1]*/
    dz3tz1 = dz3 * tz1;
    /*READ_S: [tz1, dz4]
    WRITE_S: [dz4tz1]*/
    dz4tz1 = dz4 * tz1;
    /*READ_S: [tz1, dz5]
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
    /*READ_S: [c3c4tx3, tx3, conz1]
    WRITE_S: [xxcon3]*/
    xxcon3 = c3c4tx3 * conz1 * tx3;
    /*READ_S: [c3c4tx3, con16, tx3]
    WRITE_S: [xxcon4]*/
    xxcon4 = c3c4tx3 * con16 * tx3;
    /*READ_S: [c3c4tx3, c1c5, tx3]
    WRITE_S: [xxcon5]*/
    xxcon5 = c3c4tx3 * c1c5 * tx3;
    /*READ_S: [con43, ty3, c3c4ty3]
    WRITE_S: [yycon1]*/
    yycon1 = c3c4ty3 * con43 * ty3;
    /*READ_S: [ty3, c3c4ty3]
    WRITE_S: [yycon2]*/
    yycon2 = c3c4ty3 * ty3;
    /*READ_S: [ty3, c3c4ty3, conz1]
    WRITE_S: [yycon3]*/
    yycon3 = c3c4ty3 * conz1 * ty3;
    /*READ_S: [ty3, con16, c3c4ty3]
    WRITE_S: [yycon4]*/
    yycon4 = c3c4ty3 * con16 * ty3;
    /*READ_S: [ty3, c1c5, c3c4ty3]
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
    /*READ_S: [con16, c3c4tz3, tz3]
    WRITE_S: [zzcon4]*/
    zzcon4 = c3c4tz3 * con16 * tz3;
    /*READ_S: [c1c5, c3c4tz3, tz3]
    WRITE_S: [zzcon5]*/
    zzcon5 = c3c4tz3 * c1c5 * tz3;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [c1, _imopVarPre284, _imopVarPre290, _imopVarPre272, rhs.f, xce.f, dz5tz1, dy2ty1, vs.f, zzcon5, dz4tz1, dssp, dnym1, ty2, printf, xxcon5, ce.f, yycon3, compute_rhs, _imopVarPre265, j, dy1ty1, _imopVarPre278, _imopVarPre271, dz3tz1, rhs, rho_i.f, dy4ty1, dt, dnzm1, forcing.f, vs, zzcon2, con43, dz2tz1, dx5tx1, xxcon2, xcr.f, grid_points, exact_solution, _imopVarPre264, dy3ty1, _imopVarPre277, yycon2, ce, i, square, _imopVarPre270, dx4tx1, u.f, sqrt, dx3tx1, rho_i, dz1tz1, _imopVarPre288, _imopVarPre282, us.f, forcing, ws.f, error_norm, zzcon3, tx2, tz2, fabs, xxcon3, dy5ty1, dx2tx1, grid_points.f, square.f, qs.f, _imopVarPre276, yycon5, rhs_norm, c2, dx1tx1, u, _imopVarPre289, _imopVarPre283, zzcon4, us, ws, dnxm1, xxcon4, qs, _imopVarPre266, yycon4]
WRITE_S: [us.f, u_exact.f, vs.f, ws.f, Pface.f, rhs.f, temp.f, xcr.f, xce.f, qs.f, square.f, rho_i.f]*/
static void verify(int no_time_steps, char *class , boolean *verified) {
/*READ_S: [c1, _imopVarPre284, _imopVarPre290, _imopVarPre272, rhs.f, xce.f, dz5tz1, dy2ty1, vs.f, zzcon5, dz4tz1, dssp, dnym1, ty2, printf, xxcon5, ce.f, yycon3, compute_rhs, _imopVarPre265, j, dy1ty1, _imopVarPre278, _imopVarPre271, dz3tz1, rhs, rho_i.f, dy4ty1, dt, dnzm1, forcing.f, vs, zzcon2, con43, dz2tz1, dx5tx1, xxcon2, xcr.f, grid_points, exact_solution, _imopVarPre264, dy3ty1, _imopVarPre277, yycon2, ce, i, square, _imopVarPre270, dx4tx1, u.f, sqrt, dx3tx1, rho_i, dz1tz1, _imopVarPre288, _imopVarPre282, us.f, forcing, ws.f, error_norm, zzcon3, tx2, tz2, fabs, xxcon3, dy5ty1, dx2tx1, grid_points.f, square.f, qs.f, _imopVarPre276, yycon5, rhs_norm, c2, dx1tx1, u, _imopVarPre289, _imopVarPre283, zzcon4, us, ws, dnxm1, xxcon4, qs, _imopVarPre266, yycon4]
WRITE_S: [us.f, u_exact.f, vs.f, ws.f, Pface.f, rhs.f, temp.f, xcr.f, xce.f, qs.f, square.f, rho_i.f]*/
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
    int _imopVarPre264;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre265;
    /*READ_S: []
    WRITE_S: []*/
    int _imopVarPre266;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    _imopVarPre264 = grid_points[0] == 12;
    /*READ_S: [_imopVarPre264]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f, _imopVarPre264, _imopVarPre265, _imopVarPre266]
    WRITE_S: []*/
    if (_imopVarPre264) {
    /*READ_S: [grid_points, grid_points.f, _imopVarPre265, _imopVarPre266]
    WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        _imopVarPre265 = grid_points[1] == 12;
        /*READ_S: [_imopVarPre265]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f, _imopVarPre265, _imopVarPre266]
        WRITE_S: []*/
        if (_imopVarPre265) {
        /*READ_S: [grid_points, grid_points.f, _imopVarPre266]
        WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            _imopVarPre266 = grid_points[2] == 12;
            /*READ_S: [_imopVarPre266]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre266]
            WRITE_S: []*/
            if (_imopVarPre266) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre266 = no_time_steps == 60;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre265 = _imopVarPre266;
        }
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre264 = _imopVarPre265;
    }
    /*READ_S: [_imopVarPre264]
    WRITE_S: []*/
    /*READ_S: [_imopVarPre284, _imopVarPre271, _imopVarPre290, _imopVarPre272, _imopVarPre270, _imopVarPre289, _imopVarPre288, _imopVarPre282, _imopVarPre283, grid_points, grid_points.f, _imopVarPre264, _imopVarPre277, _imopVarPre276, _imopVarPre278]
    WRITE_S: []*/
    if (_imopVarPre264) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        *class = 'S';
        /*READ_S: []
        WRITE_S: []*/
        dtref = 1.0e-2;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[0] = 1.7034283709541311e-01;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[1] = 1.2975252070034097e-02;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[2] = 3.2527926989486055e-02;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[3] = 2.6436421275166801e-02;
        /*READ_S: []
        WRITE_S: []*/
        xcrref[4] = 1.9211784131744430e-01;
        /*READ_S: []
        WRITE_S: []*/
        xceref[0] = 4.9976913345811579e-04;
        /*READ_S: []
        WRITE_S: []*/
        xceref[1] = 4.5195666782961927e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[2] = 7.3973765172921357e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[3] = 7.3821238632439731e-05;
        /*READ_S: []
        WRITE_S: []*/
        xceref[4] = 8.9269630987491446e-04;
    } else {
    /*READ_S: [_imopVarPre284, _imopVarPre271, _imopVarPre290, _imopVarPre272, _imopVarPre270, _imopVarPre289, _imopVarPre288, _imopVarPre282, _imopVarPre283, grid_points, grid_points.f, _imopVarPre277, _imopVarPre276, _imopVarPre278]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre270;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre271;
        /*READ_S: []
        WRITE_S: []*/
        int _imopVarPre272;
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        _imopVarPre270 = grid_points[0] == 24;
        /*READ_S: [_imopVarPre270]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre271, _imopVarPre272, _imopVarPre270, grid_points, grid_points.f]
        WRITE_S: []*/
        if (_imopVarPre270) {
        /*READ_S: [_imopVarPre271, _imopVarPre272, grid_points, grid_points.f]
        WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            _imopVarPre271 = grid_points[1] == 24;
            /*READ_S: [_imopVarPre271]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre271, _imopVarPre272, grid_points, grid_points.f]
            WRITE_S: []*/
            if (_imopVarPre271) {
            /*READ_S: [_imopVarPre272, grid_points, grid_points.f]
            WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                _imopVarPre272 = grid_points[2] == 24;
                /*READ_S: [_imopVarPre272]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre272]
                WRITE_S: []*/
                if (_imopVarPre272) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre272 = no_time_steps == 200;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre271 = _imopVarPre272;
            }
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre270 = _imopVarPre271;
        }
        /*READ_S: [_imopVarPre270]
        WRITE_S: []*/
        /*READ_S: [_imopVarPre284, _imopVarPre290, _imopVarPre270, _imopVarPre289, grid_points, _imopVarPre288, grid_points.f, _imopVarPre282, _imopVarPre277, _imopVarPre283, _imopVarPre276, _imopVarPre278]
        WRITE_S: []*/
        if (_imopVarPre270) {
        /*READ_S: []
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            *class = 'W';
            /*READ_S: []
            WRITE_S: []*/
            dtref = 0.8e-3;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[0] = 0.1125590409344e+03;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[1] = 0.1180007595731e+02;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[2] = 0.2710329767846e+02;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[3] = 0.2469174937669e+02;
            /*READ_S: []
            WRITE_S: []*/
            xcrref[4] = 0.2638427874317e+03;
            /*READ_S: []
            WRITE_S: []*/
            xceref[0] = 0.4419655736008e+01;
            /*READ_S: []
            WRITE_S: []*/
            xceref[1] = 0.4638531260002e+00;
            /*READ_S: []
            WRITE_S: []*/
            xceref[2] = 0.1011551749967e+01;
            /*READ_S: []
            WRITE_S: []*/
            xceref[3] = 0.9235878729944e+00;
            /*READ_S: []
            WRITE_S: []*/
            xceref[4] = 0.1018045837718e+02;
        } else {
        /*READ_S: [_imopVarPre284, _imopVarPre290, _imopVarPre289, grid_points, _imopVarPre288, grid_points.f, _imopVarPre282, _imopVarPre277, _imopVarPre283, _imopVarPre276, _imopVarPre278]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre276;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre277;
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre278;
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            _imopVarPre276 = grid_points[0] == 64;
            /*READ_S: [_imopVarPre276]
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f, _imopVarPre277, _imopVarPre276, _imopVarPre278]
            WRITE_S: []*/
            if (_imopVarPre276) {
            /*READ_S: [grid_points, grid_points.f, _imopVarPre277, _imopVarPre278]
            WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                _imopVarPre277 = grid_points[1] == 64;
                /*READ_S: [_imopVarPre277]
                WRITE_S: []*/
                /*READ_S: [grid_points, grid_points.f, _imopVarPre277, _imopVarPre278]
                WRITE_S: []*/
                if (_imopVarPre277) {
                /*READ_S: [grid_points, grid_points.f, _imopVarPre278]
                WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    _imopVarPre278 = grid_points[2] == 64;
                    /*READ_S: [_imopVarPre278]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre278]
                    WRITE_S: []*/
                    if (_imopVarPre278) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre278 = no_time_steps == 200;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre277 = _imopVarPre278;
                }
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre276 = _imopVarPre277;
            }
            /*READ_S: [_imopVarPre276]
            WRITE_S: []*/
            /*READ_S: [_imopVarPre284, _imopVarPre290, _imopVarPre289, grid_points, _imopVarPre288, grid_points.f, _imopVarPre282, _imopVarPre283, _imopVarPre276]
            WRITE_S: []*/
            if (_imopVarPre276) {
            /*READ_S: []
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                *class = 'A';
                /*READ_S: []
                WRITE_S: []*/
                dtref = 0.8e-3;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[0] = 1.0806346714637264e+02;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[1] = 1.1319730901220813e+01;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[2] = 2.5974354511582465e+01;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[3] = 2.3665622544678910e+01;
                /*READ_S: []
                WRITE_S: []*/
                xcrref[4] = 2.5278963211748344e+02;
                /*READ_S: []
                WRITE_S: []*/
                xceref[0] = 4.2348416040525025e+00;
                /*READ_S: []
                WRITE_S: []*/
                xceref[1] = 4.4390282496995698e-01;
                /*READ_S: []
                WRITE_S: []*/
                xceref[2] = 9.6692480136345650e-01;
                /*READ_S: []
                WRITE_S: []*/
                xceref[3] = 8.8302063039765474e-01;
                /*READ_S: []
                WRITE_S: []*/
                xceref[4] = 9.7379901770829278e+00;
            } else {
            /*READ_S: [_imopVarPre284, _imopVarPre290, _imopVarPre289, grid_points, _imopVarPre288, grid_points.f, _imopVarPre282, _imopVarPre283]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre282;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre283;
                /*READ_S: []
                WRITE_S: []*/
                int _imopVarPre284;
                /*READ_S: [grid_points, grid_points.f]
                WRITE_S: []*/
                _imopVarPre282 = grid_points[0] == 102;
                /*READ_S: [_imopVarPre282]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre284, grid_points, grid_points.f, _imopVarPre282, _imopVarPre283]
                WRITE_S: []*/
                if (_imopVarPre282) {
                /*READ_S: [_imopVarPre284, grid_points, grid_points.f, _imopVarPre283]
                WRITE_S: []*/
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    _imopVarPre283 = grid_points[1] == 102;
                    /*READ_S: [_imopVarPre283]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre284, grid_points, grid_points.f, _imopVarPre283]
                    WRITE_S: []*/
                    if (_imopVarPre283) {
                    /*READ_S: [_imopVarPre284, grid_points, grid_points.f]
                    WRITE_S: []*/
                        /*READ_S: [grid_points, grid_points.f]
                        WRITE_S: []*/
                        _imopVarPre284 = grid_points[2] == 102;
                        /*READ_S: [_imopVarPre284]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre284]
                        WRITE_S: []*/
                        if (_imopVarPre284) {
                        /*READ_S: []
                        WRITE_S: []*/
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre284 = no_time_steps == 200;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre283 = _imopVarPre284;
                    }
                    /*READ_S: []
                    WRITE_S: []*/
                    _imopVarPre282 = _imopVarPre283;
                }
                /*READ_S: [_imopVarPre282]
                WRITE_S: []*/
                /*READ_S: [_imopVarPre290, _imopVarPre289, grid_points, _imopVarPre288, grid_points.f, _imopVarPre282]
                WRITE_S: []*/
                if (_imopVarPre282) {
                /*READ_S: []
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    *class = 'B';
                    /*READ_S: []
                    WRITE_S: []*/
                    dtref = 3.0e-4;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[0] = 1.4233597229287254e+03;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[1] = 9.9330522590150238e+01;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[2] = 3.5646025644535285e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[3] = 3.2485447959084092e+02;
                    /*READ_S: []
                    WRITE_S: []*/
                    xcrref[4] = 3.2707541254659363e+03;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[0] = 5.2969847140936856e+01;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[1] = 4.4632896115670668e+00;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[2] = 1.3122573342210174e+01;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[3] = 1.2006925323559144e+01;
                    /*READ_S: []
                    WRITE_S: []*/
                    xceref[4] = 1.2459576151035986e+02;
                } else {
                /*READ_S: [_imopVarPre290, _imopVarPre289, grid_points, _imopVarPre288, grid_points.f]
                WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre288;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre289;
                    /*READ_S: []
                    WRITE_S: []*/
                    int _imopVarPre290;
                    /*READ_S: [grid_points, grid_points.f]
                    WRITE_S: []*/
                    _imopVarPre288 = grid_points[0] == 162;
                    /*READ_S: [_imopVarPre288]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre290, _imopVarPre289, grid_points, _imopVarPre288, grid_points.f]
                    WRITE_S: []*/
                    if (_imopVarPre288) {
                    /*READ_S: [_imopVarPre290, _imopVarPre289, grid_points, grid_points.f]
                    WRITE_S: []*/
                        /*READ_S: [grid_points, grid_points.f]
                        WRITE_S: []*/
                        _imopVarPre289 = grid_points[1] == 162;
                        /*READ_S: [_imopVarPre289]
                        WRITE_S: []*/
                        /*READ_S: [_imopVarPre290, _imopVarPre289, grid_points, grid_points.f]
                        WRITE_S: []*/
                        if (_imopVarPre289) {
                        /*READ_S: [_imopVarPre290, grid_points, grid_points.f]
                        WRITE_S: []*/
                            /*READ_S: [grid_points, grid_points.f]
                            WRITE_S: []*/
                            _imopVarPre290 = grid_points[2] == 162;
                            /*READ_S: [_imopVarPre290]
                            WRITE_S: []*/
                            /*READ_S: [_imopVarPre290]
                            WRITE_S: []*/
                            if (_imopVarPre290) {
                            /*READ_S: []
                            WRITE_S: []*/
                                /*READ_S: []
                                WRITE_S: []*/
                                _imopVarPre290 = no_time_steps == 200;
                            }
                            /*READ_S: []
                            WRITE_S: []*/
                            _imopVarPre289 = _imopVarPre290;
                        }
                        /*READ_S: []
                        WRITE_S: []*/
                        _imopVarPre288 = _imopVarPre289;
                    }
                    /*READ_S: [_imopVarPre288]
                    WRITE_S: []*/
                    /*READ_S: [_imopVarPre288]
                    WRITE_S: []*/
                    if (_imopVarPre288) {
                    /*READ_S: []
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        *class = 'C';
                        /*READ_S: []
                        WRITE_S: []*/
                        dtref = 1.0e-4;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[0] = 0.62398116551764615e+04;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[1] = 0.50793239190423964e+03;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[2] = 0.15423530093013596e+04;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[3] = 0.13302387929291190e+04;
                        /*READ_S: []
                        WRITE_S: []*/
                        xcrref[4] = 0.11604087428436455e+05;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[0] = 0.16462008369091265e+03;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[1] = 0.11497107903824313e+02;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[2] = 0.41207446207461508e+02;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[3] = 0.37087651059694167e+02;
                        /*READ_S: []
                        WRITE_S: []*/
                        xceref[4] = 0.36211053051841265e+03;
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
        double _imopVarPre292;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre293;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre292 = (xcr[m] - xcrref[m]) / xcrref[m];
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre293 = fabs(_imopVarPre292);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        xcrdif[m] = _imopVarPre293;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre295;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre296;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre295 = (xce[m] - xceref[m]) / xceref[m];
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre296 = fabs(_imopVarPre295);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        xcedif[m] = _imopVarPre296;
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [fabs, printf, dt]
    WRITE_S: []*/
    if (*class != 'U') {
    /*READ_S: [fabs, printf, dt]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        char _imopVarPre298;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre298 = *class;
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" Verification being performed for class %1c\n", _imopVarPre298);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        printf(" accuracy setting for epsilon = %20.13e\n", epsilon);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre301;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre302;
        /*READ_S: [dt]
        WRITE_S: []*/
        _imopVarPre301 = dt - dtref;
        /*READ_S: [fabs]
        WRITE_S: []*/
        _imopVarPre302 = fabs(_imopVarPre301);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (_imopVarPre302 > epsilon) {
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
            double _imopVarPre304;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre304 = xcr[m];
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("          %2d%20.13e\n", m, _imopVarPre304);
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
                double _imopVarPre308;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre309;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre310;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre308 = xcrdif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre309 = xcrref[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre310 = xcr[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre310, _imopVarPre309, _imopVarPre308);
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre314;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre315;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre316;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre314 = xcrdif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre315 = xcrref[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre316 = xcr[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre316, _imopVarPre315, _imopVarPre314);
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
            double _imopVarPre318;
            /*READ_S: []
            WRITE_S: []*/
            _imopVarPre318 = xce[m];
            /*READ_S: [printf]
            WRITE_S: []*/
            printf("          %2d%20.13e\n", m, _imopVarPre318);
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
                double _imopVarPre322;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre323;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre324;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre322 = xcedif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre323 = xceref[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre324 = xce[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf(" FAILURE: %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre324, _imopVarPre323, _imopVarPre322);
                /*READ_S: []
                WRITE_S: []*/
            } else {
            /*READ_S: [printf]
            WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre328;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre329;
                /*READ_S: []
                WRITE_S: []*/
                double _imopVarPre330;
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre328 = xcedif[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre329 = xceref[m];
                /*READ_S: []
                WRITE_S: []*/
                _imopVarPre330 = xce[m];
                /*READ_S: [printf]
                WRITE_S: []*/
                printf("          %2d%20.13e%20.13e%20.13e\n", m, _imopVarPre330, _imopVarPre329, _imopVarPre328);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
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
    /*READ_S: [printf]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [printf]
        WRITE_S: []*/
        if (*verified == 1) {
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
/*READ_S: [dx5, tmp2, c1, rhs.f, lhs.f, u.f, fjac, binvcrhs, dx1, dx3, c1345, j, x_backsubstitute, tx2, binvrhs, grid_points.f, njac.f, x_solve_cell, tmp1, matmul_sub, c2, dx4, c3c4, u, rhs, fjac.f, tmp3, j, dx2, dt, con43, tx1, lhs, j, grid_points, lhsx, matvec_sub, njac]
WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, njac.f]*/
static void x_solve() {
/*READ_S: [dx5, tmp2, c1, rhs.f, lhs.f, u.f, fjac, binvcrhs, dx1, dx3, c1345, j, x_backsubstitute, tx2, binvrhs, grid_points.f, njac.f, x_solve_cell, tmp1, matmul_sub, c2, dx4, c3c4, u, rhs, fjac.f, tmp3, j, dx2, dt, con43, tx1, lhs, j, grid_points, lhsx, matvec_sub, njac]
WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, njac.f]*/
    /*READ_S: [lhsx]
    WRITE_S: []*/
    lhsx();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [x_solve_cell]
    WRITE_S: []*/
    x_solve_cell();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [x_backsubstitute]
    WRITE_S: []*/
    x_backsubstitute();
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [j, rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
WRITE_S: [rhs.f]*/
static void x_backsubstitute() {
/*READ_S: [j, rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
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
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int n;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [j, rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
    for (i = grid_points[0] - 2; i >= 0; i--) {
    /*READ_S: [j, rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: [j, rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
            WRITE_S: [rhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [rhs.f, rhs, lhs.f, lhs]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                    WRITE_S: [rhs.f]*/
                    for (n = 0; n < 5; n++) {
                    /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                        WRITE_S: [rhs.f]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i + 1][j][k][n];
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
}
/*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, binvrhs, j, lhs, grid_points, grid_points.f, matvec_sub]
WRITE_S: [rhs.f, lhs.f]*/
static void x_solve_cell() {
/*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, binvrhs, j, lhs, grid_points, grid_points.f, matvec_sub]
WRITE_S: [rhs.f, lhs.f]*/
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
    int isize;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    isize = grid_points[0] - 1;
    /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs, j, grid_points, grid_points.f]
    WRITE_S: [rhs.f, lhs.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f, lhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs]
        WRITE_S: [rhs.f, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre334;
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre335 )[5];
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre336 )[5];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre334 = rhs[0][j][k];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre335 = lhs[0][j][k][2];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre336 = lhs[0][j][k][1];
            /*READ_S: [binvcrhs]
            WRITE_S: []*/
            binvcrhs(_imopVarPre336, _imopVarPre335, _imopVarPre334);
            /*READ_S: []
            WRITE_S: []*/
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
    /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, j, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
    for (i = 1; i < isize; i++) {
    /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, j, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, j, grid_points, grid_points.f, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
#pragma omp for nowait
        /*READ_S: [j]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
            WRITE_S: [rhs.f, lhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, matvec_sub]
            WRITE_S: [rhs.f, lhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre340;
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre341;
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre342 )[5];
                /*READ_S: [rhs.f, rhs]
                WRITE_S: []*/
                _imopVarPre340 = rhs[i][j][k];
                /*READ_S: [rhs.f, rhs]
                WRITE_S: []*/
                _imopVarPre341 = rhs[i - 1][j][k];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre342 = lhs[i][j][k][0];
                /*READ_S: [matvec_sub]
                WRITE_S: []*/
                matvec_sub(_imopVarPre342, _imopVarPre341, _imopVarPre340);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre346 )[5];
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre347 )[5];
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre348 )[5];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre346 = lhs[i][j][k][1];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre347 = lhs[i - 1][j][k][2];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre348 = lhs[i][j][k][0];
                /*READ_S: [matmul_sub]
                WRITE_S: []*/
                matmul_sub(_imopVarPre348, _imopVarPre347, _imopVarPre346);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre352;
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre353 )[5];
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre354 )[5];
                /*READ_S: [rhs.f, rhs]
                WRITE_S: []*/
                _imopVarPre352 = rhs[i][j][k];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre353 = lhs[i][j][k][2];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre354 = lhs[i][j][k][1];
                /*READ_S: [binvcrhs]
                WRITE_S: []*/
                binvcrhs(_imopVarPre354, _imopVarPre353, _imopVarPre352);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, j, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
#pragma omp for nowait
    /*READ_S: [j]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (j = 1; j < grid_points[1] - 1; j++) {
    /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre358;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre359;
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre360 )[5];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre358 = rhs[isize][j][k];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre359 = rhs[isize - 1][j][k];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre360 = lhs[isize][j][k][0];
            /*READ_S: [matvec_sub]
            WRITE_S: []*/
            matvec_sub(_imopVarPre360, _imopVarPre359, _imopVarPre358);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre364 )[5];
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre365 )[5];
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre366 )[5];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre364 = lhs[isize][j][k][1];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre365 = lhs[isize - 1][j][k][2];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre366 = lhs[isize][j][k][0];
            /*READ_S: [matmul_sub]
            WRITE_S: []*/
            matmul_sub(_imopVarPre366, _imopVarPre365, _imopVarPre364);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre369;
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre370 )[5];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre369 = rhs[i][j][k];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre370 = lhs[i][j][k][1];
            /*READ_S: [binvrhs]
            WRITE_S: []*/
            binvrhs(_imopVarPre370, _imopVarPre369);
            /*READ_S: []
            WRITE_S: []*/
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
/*READ_S: [rhs.f, lhs.f]
WRITE_S: [rhs.f]*/
static void matvec_sub(double ablock[5][5], double avec[5] , double bvec[5]) {
/*READ_S: [rhs.f, lhs.f]
WRITE_S: [rhs.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [rhs.f, lhs.f]
    WRITE_S: [rhs.f]*/
    for (i = 0; i < 5; i++) {
    /*READ_S: [rhs.f, lhs.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: [rhs.f, lhs.f]
        WRITE_S: [rhs.f]*/
        bvec[i] = bvec[i] - ablock[i][0] * avec[0] - ablock[i][1] * avec[1] - ablock[i][2] * avec[2] - ablock[i][3] * avec[3] - ablock[i][4] * avec[4];
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [lhs.f]
WRITE_S: [lhs.f]*/
static void matmul_sub(double ablock[5][5], double bblock[5][5] , double cblock[5][5]) {
/*READ_S: [lhs.f]
WRITE_S: [lhs.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    for (j = 0; j < 5; j++) {
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
        /*READ_S: [lhs.f]
        WRITE_S: [lhs.f]*/
        cblock[0][j] = cblock[0][j] - ablock[0][0] * bblock[0][j] - ablock[0][1] * bblock[1][j] - ablock[0][2] * bblock[2][j] - ablock[0][3] * bblock[3][j] - ablock[0][4] * bblock[4][j];
        /*READ_S: [lhs.f]
        WRITE_S: [lhs.f]*/
        cblock[1][j] = cblock[1][j] - ablock[1][0] * bblock[0][j] - ablock[1][1] * bblock[1][j] - ablock[1][2] * bblock[2][j] - ablock[1][3] * bblock[3][j] - ablock[1][4] * bblock[4][j];
        /*READ_S: [lhs.f]
        WRITE_S: [lhs.f]*/
        cblock[2][j] = cblock[2][j] - ablock[2][0] * bblock[0][j] - ablock[2][1] * bblock[1][j] - ablock[2][2] * bblock[2][j] - ablock[2][3] * bblock[3][j] - ablock[2][4] * bblock[4][j];
        /*READ_S: [lhs.f]
        WRITE_S: [lhs.f]*/
        cblock[3][j] = cblock[3][j] - ablock[3][0] * bblock[0][j] - ablock[3][1] * bblock[1][j] - ablock[3][2] * bblock[2][j] - ablock[3][3] * bblock[3][j] - ablock[3][4] * bblock[4][j];
        /*READ_S: [lhs.f]
        WRITE_S: [lhs.f]*/
        cblock[4][j] = cblock[4][j] - ablock[4][0] * bblock[0][j] - ablock[4][1] * bblock[1][j] - ablock[4][2] * bblock[2][j] - ablock[4][3] * bblock[3][j] - ablock[4][4] * bblock[4][j];
    }
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [rhs.f, lhs.f]
WRITE_S: [rhs.f, lhs.f]*/
static void binvcrhs(double lhs[5][5], double c[5][5] , double r[5]) {
/*READ_S: [rhs.f, lhs.f]
WRITE_S: [rhs.f, lhs.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double pivot;
    /*READ_S: []
    WRITE_S: []*/
    double coeff;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[0][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][0] = c[0][0] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][1] = c[0][1] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][2] = c[0][2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][3] = c[0][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][4] = c[0][4] * pivot;
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[1][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][0] = c[1][0] - coeff * c[0][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][1] = c[1][1] - coeff * c[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][2] = c[1][2] - coeff * c[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][3] = c[1][3] - coeff * c[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][4] = c[1][4] - coeff * c[0][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] - coeff * r[0];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[2][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][0] = c[2][0] - coeff * c[0][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][1] = c[2][1] - coeff * c[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][2] = c[2][2] - coeff * c[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][3] = c[2][3] - coeff * c[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][4] = c[2][4] - coeff * c[0][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] - coeff * r[0];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[3][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][0] = c[3][0] - coeff * c[0][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][1] = c[3][1] - coeff * c[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][2] = c[3][2] - coeff * c[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][3] = c[3][3] - coeff * c[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][4] = c[3][4] - coeff * c[0][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] - coeff * r[0];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[4][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][0] = c[4][0] - coeff * c[0][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][1] = c[4][1] - coeff * c[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][2] = c[4][2] - coeff * c[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][3] = c[4][3] - coeff * c[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][4] = c[4][4] - coeff * c[0][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] - coeff * r[0];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[1][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][0] = c[1][0] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][1] = c[1][1] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][2] = c[1][2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][3] = c[1][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][4] = c[1][4] * pivot;
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][0] = c[0][0] - coeff * c[1][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][1] = c[0][1] - coeff * c[1][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][2] = c[0][2] - coeff * c[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][3] = c[0][3] - coeff * c[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][4] = c[0][4] - coeff * c[1][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] - coeff * r[1];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[2][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][0] = c[2][0] - coeff * c[1][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][1] = c[2][1] - coeff * c[1][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][2] = c[2][2] - coeff * c[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][3] = c[2][3] - coeff * c[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][4] = c[2][4] - coeff * c[1][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] - coeff * r[1];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[3][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][0] = c[3][0] - coeff * c[1][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][1] = c[3][1] - coeff * c[1][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][2] = c[3][2] - coeff * c[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][3] = c[3][3] - coeff * c[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][4] = c[3][4] - coeff * c[1][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] - coeff * r[1];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[4][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][0] = c[4][0] - coeff * c[1][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][1] = c[4][1] - coeff * c[1][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][2] = c[4][2] - coeff * c[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][3] = c[4][3] - coeff * c[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][4] = c[4][4] - coeff * c[1][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] - coeff * r[1];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[2][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][0] = c[2][0] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][1] = c[2][1] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][2] = c[2][2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][3] = c[2][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][4] = c[2][4] * pivot;
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][0] = c[0][0] - coeff * c[2][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][1] = c[0][1] - coeff * c[2][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][2] = c[0][2] - coeff * c[2][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][3] = c[0][3] - coeff * c[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][4] = c[0][4] - coeff * c[2][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] - coeff * r[2];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][0] = c[1][0] - coeff * c[2][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][1] = c[1][1] - coeff * c[2][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][2] = c[1][2] - coeff * c[2][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][3] = c[1][3] - coeff * c[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][4] = c[1][4] - coeff * c[2][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] - coeff * r[2];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[3][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][0] = c[3][0] - coeff * c[2][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][1] = c[3][1] - coeff * c[2][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][2] = c[3][2] - coeff * c[2][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][3] = c[3][3] - coeff * c[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][4] = c[3][4] - coeff * c[2][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] - coeff * r[2];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[4][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][0] = c[4][0] - coeff * c[2][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][1] = c[4][1] - coeff * c[2][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][2] = c[4][2] - coeff * c[2][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][3] = c[4][3] - coeff * c[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][4] = c[4][4] - coeff * c[2][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] - coeff * r[2];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[3][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][0] = c[3][0] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][1] = c[3][1] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][2] = c[3][2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][3] = c[3][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][4] = c[3][4] * pivot;
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][0] = c[0][0] - coeff * c[3][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][1] = c[0][1] - coeff * c[3][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][2] = c[0][2] - coeff * c[3][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][3] = c[0][3] - coeff * c[3][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][4] = c[0][4] - coeff * c[3][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] - coeff * r[3];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][0] = c[1][0] - coeff * c[3][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][1] = c[1][1] - coeff * c[3][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][2] = c[1][2] - coeff * c[3][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][3] = c[1][3] - coeff * c[3][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][4] = c[1][4] - coeff * c[3][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] - coeff * r[3];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][0] = c[2][0] - coeff * c[3][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][1] = c[2][1] - coeff * c[3][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][2] = c[2][2] - coeff * c[3][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][3] = c[2][3] - coeff * c[3][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][4] = c[2][4] - coeff * c[3][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] - coeff * r[3];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[4][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][0] = c[4][0] - coeff * c[3][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][1] = c[4][1] - coeff * c[3][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][2] = c[4][2] - coeff * c[3][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][3] = c[4][3] - coeff * c[3][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][4] = c[4][4] - coeff * c[3][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] - coeff * r[3];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[4][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][0] = c[4][0] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][1] = c[4][1] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][2] = c[4][2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][3] = c[4][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[4][4] = c[4][4] * pivot;
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[0][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][0] = c[0][0] - coeff * c[4][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][1] = c[0][1] - coeff * c[4][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][2] = c[0][2] - coeff * c[4][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][3] = c[0][3] - coeff * c[4][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[0][4] = c[0][4] - coeff * c[4][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] - coeff * r[4];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[1][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][0] = c[1][0] - coeff * c[4][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][1] = c[1][1] - coeff * c[4][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][2] = c[1][2] - coeff * c[4][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][3] = c[1][3] - coeff * c[4][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[1][4] = c[1][4] - coeff * c[4][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] - coeff * r[4];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[2][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][0] = c[2][0] - coeff * c[4][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][1] = c[2][1] - coeff * c[4][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][2] = c[2][2] - coeff * c[4][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][3] = c[2][3] - coeff * c[4][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[2][4] = c[2][4] - coeff * c[4][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] - coeff * r[4];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[3][4];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][0] = c[3][0] - coeff * c[4][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][1] = c[3][1] - coeff * c[4][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][2] = c[3][2] - coeff * c[4][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][3] = c[3][3] - coeff * c[4][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    c[3][4] = c[3][4] - coeff * c[4][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] - coeff * r[4];
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [rhs.f, lhs.f]
WRITE_S: [rhs.f, lhs.f]*/
static void binvrhs(double lhs[5][5], double r[5]) {
/*READ_S: [rhs.f, lhs.f]
WRITE_S: [rhs.f, lhs.f]*/
    /*READ_S: []
    WRITE_S: []*/
    double pivot;
    /*READ_S: []
    WRITE_S: []*/
    double coeff;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[0][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][1] = lhs[0][1] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][2] = lhs[0][2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][3] = lhs[0][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][4] = lhs[0][4] * pivot;
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[1][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][1] = lhs[1][1] - coeff * lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][2] = lhs[1][2] - coeff * lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[0][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] - coeff * r[0];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[2][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][1] = lhs[2][1] - coeff * lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[0][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] - coeff * r[0];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[3][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][1] = lhs[3][1] - coeff * lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[0][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] - coeff * r[0];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[4][0];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][1] = lhs[4][1] - coeff * lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[0][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] - coeff * r[0];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[1][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][2] = lhs[1][2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][3] = lhs[1][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][4] = lhs[1][4] * pivot;
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[0][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][2] = lhs[0][2] - coeff * lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[1][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] - coeff * r[1];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[2][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][2] = lhs[2][2] - coeff * lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][3] = lhs[2][3] - coeff * lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[1][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] - coeff * r[1];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[3][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][2] = lhs[3][2] - coeff * lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[1][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] - coeff * r[1];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[4][1];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][2] = lhs[4][2] - coeff * lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[1][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] - coeff * r[1];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[2][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][3] = lhs[2][3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][4] = lhs[2][4] * pivot;
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[0][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][3] = lhs[0][3] - coeff * lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[2][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] - coeff * r[2];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[1][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][3] = lhs[1][3] - coeff * lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[2][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] - coeff * r[2];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[3][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][3] = lhs[3][3] - coeff * lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][4] = lhs[3][4] - coeff * lhs[2][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] - coeff * r[2];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[4][2];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][3] = lhs[4][3] - coeff * lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[2][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] - coeff * r[2];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[3][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[3][4] = lhs[3][4] * pivot;
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[0][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[0][4] = lhs[0][4] - coeff * lhs[3][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] - coeff * r[3];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[1][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[1][4] = lhs[1][4] - coeff * lhs[3][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] - coeff * r[3];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[2][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[2][4] = lhs[2][4] - coeff * lhs[3][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] - coeff * r[3];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[4][3];
    /*READ_S: [lhs.f]
    WRITE_S: [lhs.f]*/
    lhs[4][4] = lhs[4][4] - coeff * lhs[3][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] - coeff * r[3];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    pivot = 1.00 / lhs[4][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[4] = r[4] * pivot;
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[0][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[0] = r[0] - coeff * r[4];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[1][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[1] = r[1] - coeff * r[4];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[2][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[2] = r[2] - coeff * r[4];
    /*READ_S: [lhs.f]
    WRITE_S: []*/
    coeff = lhs[3][4];
    /*READ_S: [rhs.f]
    WRITE_S: [rhs.f]*/
    r[3] = r[3] - coeff * r[4];
}
/*READ_S: [tmp2, dy5, c1, rhs.f, i, lhs.f, u.f, fjac, binvcrhs, dy1, dy3, c1345, y_backsubstitute, ty2, binvrhs, grid_points.f, y_solve_cell, njac.f, lhsy, tmp1, c2, matmul_sub, c3c4, u, fjac.f, rhs, i, i, tmp3, dy2, dy4, dt, con43, ty1, lhs, grid_points, matvec_sub, njac]
WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, njac.f]*/
static void y_solve() {
/*READ_S: [tmp2, dy5, c1, rhs.f, i, lhs.f, u.f, fjac, binvcrhs, dy1, dy3, c1345, y_backsubstitute, ty2, binvrhs, grid_points.f, y_solve_cell, njac.f, lhsy, tmp1, c2, matmul_sub, c3c4, u, fjac.f, rhs, i, i, tmp3, dy2, dy4, dt, con43, ty1, lhs, grid_points, matvec_sub, njac]
WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, fjac.f, tmp3, njac.f]*/
    /*READ_S: [lhsy]
    WRITE_S: []*/
    lhsy();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [y_solve_cell]
    WRITE_S: []*/
    y_solve_cell();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [y_backsubstitute]
    WRITE_S: []*/
    y_backsubstitute();
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [rhs.f, i, rhs, lhs.f, lhs, grid_points, grid_points.f]
WRITE_S: [rhs.f]*/
static void y_backsubstitute() {
/*READ_S: [rhs.f, i, rhs, lhs.f, lhs, grid_points, grid_points.f]
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
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int n;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [rhs.f, i, rhs, lhs.f, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
    for (j = grid_points[1] - 2; j >= 0; j--) {
    /*READ_S: [rhs.f, i, rhs, lhs.f, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: [rhs.f, i, rhs, lhs.f, lhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*READ_S: [rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
            WRITE_S: [rhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [rhs.f, rhs, lhs.f, lhs]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                    WRITE_S: [rhs.f]*/
                    for (n = 0; n < 5; n++) {
                    /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                        WRITE_S: [rhs.f]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i][j + 1][k][n];
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
}
/*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, i, binvcrhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
WRITE_S: [rhs.f, lhs.f]*/
static void y_solve_cell() {
/*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, i, binvcrhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
WRITE_S: [rhs.f, lhs.f]*/
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
    int jsize;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    jsize = grid_points[1] - 1;
    /*READ_S: [rhs.f, lhs.f, rhs, i, binvcrhs, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f, lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f, lhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs]
        WRITE_S: [rhs.f, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre374;
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre375 )[5];
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre376 )[5];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre374 = rhs[i][0][k];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre375 = lhs[i][0][k][2];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre376 = lhs[i][0][k][1];
            /*READ_S: [binvcrhs]
            WRITE_S: []*/
            binvcrhs(_imopVarPre376, _imopVarPre375, _imopVarPre374);
            /*READ_S: []
            WRITE_S: []*/
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
    /*READ_S: [matmul_sub, rhs.f, lhs.f, i, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
    for (j = 1; j < jsize; j++) {
    /*READ_S: [matmul_sub, rhs.f, lhs.f, i, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
        /*READ_S: [matmul_sub, rhs.f, lhs.f, i, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
            WRITE_S: [rhs.f, lhs.f]*/
            for (k = 1; k < grid_points[2] - 1; k++) {
            /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, matvec_sub]
            WRITE_S: [rhs.f, lhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre380;
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre381;
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre382 )[5];
                /*READ_S: [rhs.f, rhs]
                WRITE_S: []*/
                _imopVarPre380 = rhs[i][j][k];
                /*READ_S: [rhs.f, rhs]
                WRITE_S: []*/
                _imopVarPre381 = rhs[i][j - 1][k];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre382 = lhs[i][j][k][0];
                /*READ_S: [matvec_sub]
                WRITE_S: []*/
                matvec_sub(_imopVarPre382, _imopVarPre381, _imopVarPre380);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre386 )[5];
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre387 )[5];
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre388 )[5];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre386 = lhs[i][j][k][1];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre387 = lhs[i][j - 1][k][2];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre388 = lhs[i][j][k][0];
                /*READ_S: [matmul_sub]
                WRITE_S: []*/
                matmul_sub(_imopVarPre388, _imopVarPre387, _imopVarPre386);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre392;
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre393 )[5];
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre394 )[5];
                /*READ_S: [rhs.f, rhs]
                WRITE_S: []*/
                _imopVarPre392 = rhs[i][j][k];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre393 = lhs[i][j][k][2];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre394 = lhs[i][j][k][1];
                /*READ_S: [binvcrhs]
                WRITE_S: []*/
                binvcrhs(_imopVarPre394, _imopVarPre393, _imopVarPre392);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, i, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
        for (k = 1; k < grid_points[2] - 1; k++) {
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre398;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre399;
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre400 )[5];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre398 = rhs[i][jsize][k];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre399 = rhs[i][jsize - 1][k];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre400 = lhs[i][jsize][k][0];
            /*READ_S: [matvec_sub]
            WRITE_S: []*/
            matvec_sub(_imopVarPre400, _imopVarPre399, _imopVarPre398);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre404 )[5];
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre405 )[5];
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre406 )[5];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre404 = lhs[i][jsize][k][1];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre405 = lhs[i][jsize - 1][k][2];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre406 = lhs[i][jsize][k][0];
            /*READ_S: [matmul_sub]
            WRITE_S: []*/
            matmul_sub(_imopVarPre406, _imopVarPre405, _imopVarPre404);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre409;
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre410 )[5];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre409 = rhs[i][jsize][k];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre410 = lhs[i][jsize][k][1];
            /*READ_S: [binvrhs]
            WRITE_S: []*/
            binvrhs(_imopVarPre410, _imopVarPre409);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
}
/*READ_S: [tmp2, c1, rhs.f, lhs.f, u.f, fjac, binvcrhs, dz1, dz3, dz5, c3, c1345, i, tz2, binvrhs, grid_points.f, i, njac.f, tmp1, matmul_sub, c2, c3c4, u, fjac.f, rhs, tmp3, z_solve_cell, i, dz2, c4, dz4, dt, tz1, con43, lhs, grid_points, matvec_sub, z_backsubstitute, lhsz, njac]
WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, tmp3, fjac.f, njac.f]*/
static void z_solve() {
/*READ_S: [tmp2, c1, rhs.f, lhs.f, u.f, fjac, binvcrhs, dz1, dz3, dz5, c3, c1345, i, tz2, binvrhs, grid_points.f, i, njac.f, tmp1, matmul_sub, c2, c3c4, u, fjac.f, rhs, tmp3, z_solve_cell, i, dz2, c4, dz4, dt, tz1, con43, lhs, grid_points, matvec_sub, z_backsubstitute, lhsz, njac]
WRITE_S: [tmp1, tmp2, rhs.f, lhs.f, tmp3, fjac.f, njac.f]*/
    /*READ_S: [lhsz]
    WRITE_S: []*/
    lhsz();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [z_solve_cell]
    WRITE_S: []*/
    z_solve_cell();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [z_backsubstitute]
    WRITE_S: []*/
    z_backsubstitute();
    /*READ_S: []
    WRITE_S: []*/
}
/*READ_S: [rhs.f, rhs, lhs.f, i, lhs, grid_points, grid_points.f]
WRITE_S: [rhs.f]*/
static void z_backsubstitute() {
/*READ_S: [rhs.f, rhs, lhs.f, i, lhs, grid_points, grid_points.f]
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
    int m;
    /*READ_S: []
    WRITE_S: []*/
    int n;
    /*READ_S: [rhs.f, rhs, lhs.f, i, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f]*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [rhs.f, rhs, lhs.f, lhs, grid_points, grid_points.f]
            WRITE_S: [rhs.f]*/
            for (k = grid_points[2] - 2; k >= 0; k--) {
            /*READ_S: [rhs.f, rhs, lhs.f, lhs]
            WRITE_S: [rhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                WRITE_S: [rhs.f]*/
                for (m = 0; m < 5; m++) {
                /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                WRITE_S: [rhs.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                    WRITE_S: [rhs.f]*/
                    for (n = 0; n < 5; n++) {
                    /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                    WRITE_S: [rhs.f]*/
                        /*READ_S: [rhs.f, rhs, lhs.f, lhs]
                        WRITE_S: [rhs.f]*/
                        rhs[i][j][k][m] = rhs[i][j][k][m] - lhs[i][j][k][2][m][n] * rhs[i][j][k + 1][n];
                    }
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
/*READ_S: [matmul_sub, i, rhs.f, lhs.f, rhs, binvcrhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
WRITE_S: [rhs.f, lhs.f]*/
static void z_solve_cell() {
/*READ_S: [matmul_sub, i, rhs.f, lhs.f, rhs, binvcrhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
WRITE_S: [rhs.f, lhs.f]*/
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
    int ksize;
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    ksize = grid_points[2] - 1;
    /*READ_S: [i, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f, lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f]
    WRITE_S: [rhs.f, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f]
        WRITE_S: [rhs.f, lhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [rhs.f, lhs.f, rhs, binvcrhs, lhs]
        WRITE_S: [rhs.f, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre414;
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre415 )[5];
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre416 )[5];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre414 = rhs[i][j][0];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre415 = lhs[i][j][0][2];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre416 = lhs[i][j][0][1];
            /*READ_S: [binvcrhs]
            WRITE_S: []*/
            binvcrhs(_imopVarPre416, _imopVarPre415, _imopVarPre414);
            /*READ_S: []
            WRITE_S: []*/
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
    /*READ_S: [matmul_sub, i, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
    for (k = 1; k < ksize; k++) {
    /*READ_S: [matmul_sub, i, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
        /*READ_S: [matmul_sub, i, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 1; i < grid_points[0] - 1; i++) {
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [grid_points, grid_points.f]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, grid_points, grid_points.f, matvec_sub]
            WRITE_S: [rhs.f, lhs.f]*/
            for (j = 1; j < grid_points[1] - 1; j++) {
            /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvcrhs, lhs, matvec_sub]
            WRITE_S: [rhs.f, lhs.f]*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre420;
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre421;
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre422 )[5];
                /*READ_S: [rhs.f, rhs]
                WRITE_S: []*/
                _imopVarPre420 = rhs[i][j][k];
                /*READ_S: [rhs.f, rhs]
                WRITE_S: []*/
                _imopVarPre421 = rhs[i][j][k - 1];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre422 = lhs[i][j][k][0];
                /*READ_S: [matvec_sub]
                WRITE_S: []*/
                matvec_sub(_imopVarPre422, _imopVarPre421, _imopVarPre420);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre426 )[5];
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre427 )[5];
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre428 )[5];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre426 = lhs[i][j][k][1];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre427 = lhs[i][j][k - 1][2];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre428 = lhs[i][j][k][0];
                /*READ_S: [matmul_sub]
                WRITE_S: []*/
                matmul_sub(_imopVarPre428, _imopVarPre427, _imopVarPre426);
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: []
                WRITE_S: []*/
                double *_imopVarPre432;
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre433 )[5];
                /*READ_S: []
                WRITE_S: []*/
                double ( *_imopVarPre434 )[5];
                /*READ_S: [rhs.f, rhs]
                WRITE_S: []*/
                _imopVarPre432 = rhs[i][j][k];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre433 = lhs[i][j][k][2];
                /*READ_S: [lhs.f, lhs]
                WRITE_S: []*/
                _imopVarPre434 = lhs[i][j][k][1];
                /*READ_S: [binvcrhs]
                WRITE_S: []*/
                binvcrhs(_imopVarPre434, _imopVarPre433, _imopVarPre432);
                /*READ_S: []
                WRITE_S: []*/
            }
        }
        /*READ_S: []
        WRITE_S: []*/
        // #pragma omp dummyFlush BARRIER_START
        /*READ_S: []
        WRITE_S: []*/
#pragma omp barrier
    }
    /*READ_S: [matmul_sub, i, rhs.f, lhs.f, rhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
#pragma omp for nowait
    /*READ_S: [i]
    WRITE_S: []*/
    /*READ_S: [grid_points, grid_points.f]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 1; i < grid_points[0] - 1; i++) {
    /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
    WRITE_S: [rhs.f, lhs.f]*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [grid_points, grid_points.f]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, grid_points, grid_points.f, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
        for (j = 1; j < grid_points[1] - 1; j++) {
        /*READ_S: [matmul_sub, rhs.f, lhs.f, rhs, binvrhs, lhs, matvec_sub]
        WRITE_S: [rhs.f, lhs.f]*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre438;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre439;
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre440 )[5];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre438 = rhs[i][j][ksize];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre439 = rhs[i][j][ksize - 1];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre440 = lhs[i][j][ksize][0];
            /*READ_S: [matvec_sub]
            WRITE_S: []*/
            matvec_sub(_imopVarPre440, _imopVarPre439, _imopVarPre438);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre444 )[5];
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre445 )[5];
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre446 )[5];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre444 = lhs[i][j][ksize][1];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre445 = lhs[i][j][ksize - 1][2];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre446 = lhs[i][j][ksize][0];
            /*READ_S: [matmul_sub]
            WRITE_S: []*/
            matmul_sub(_imopVarPre446, _imopVarPre445, _imopVarPre444);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre449;
            /*READ_S: []
            WRITE_S: []*/
            double ( *_imopVarPre450 )[5];
            /*READ_S: [rhs.f, rhs]
            WRITE_S: []*/
            _imopVarPre449 = rhs[i][j][ksize];
            /*READ_S: [lhs.f, lhs]
            WRITE_S: []*/
            _imopVarPre450 = lhs[i][j][ksize][1];
            /*READ_S: [binvrhs]
            WRITE_S: []*/
            binvrhs(_imopVarPre450, _imopVarPre449);
            /*READ_S: []
            WRITE_S: []*/
        }
    }
    /*READ_S: []
    WRITE_S: []*/
    // #pragma omp dummyFlush BARRIER_START
    /*READ_S: []
    WRITE_S: []*/
#pragma omp barrier
}
