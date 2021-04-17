struct __sFILEX ;
int printf(const char *restrict , ...);
void exit(int );
extern double fabs(double );
extern double pow(double , double );
extern double sqrt(double );
typedef int boolean;
extern double randlc(double *, double );
extern void timer_clear(int );
extern void timer_start(int );
extern void timer_stop(int );
extern double timer_read(int );
extern void c_print_results(char *name, char class , int n1 , int n2 , int n3 , int niter , int nthreads , double t , double mops , char *optype , int passed_verification , char *npbversion , char *compiletime , char *cc , char *clink , char *c_lib , char *c_inc , char *cflags , char *clinkflags , char *rand);
static int naa;
static int nzz;
static int firstrow;
static int lastrow;
static int firstcol;
static int lastcol;
static int colidx[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static int rowstr[1400 + 1 + 1];
static int iv[2 * 1400 + 1 + 1];
static int arow[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static int acol[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static double v[1400 + 1 + 1];
static double aelt[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static double a[1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2) + 1];
static double x[1400 + 2 + 1];
static double z[1400 + 2 + 1];
static double p[1400 + 2 + 1];
static double q[1400 + 2 + 1];
static double r[1400 + 2 + 1];
static double amult;
static double tran;
static void sprnvc(int n, int nz , double v[] , int iv[] , int nzloc[] , int mark[]);
static int icnvrt(double x, int ipwr2);
static void vecset(int n, double v[] , int iv[] , int *nzv , int i , double val);
static int callcount = 0;
int main(int argc, char **argv) {
    int i;
    int j;
    int k;
    int it;
    int nthreads = 1;
    double zeta;
    double rnorm;
    double norm_temp11;
    double norm_temp12;
    double t;
    double mflops;
    char class;
    boolean verified;
    double zeta_verify_value;
    double epsilon;
    firstrow = 1;
    lastrow = 1400;
    firstcol = 1;
    lastcol = 1400;
    int _imopVarPre143;
    int _imopVarPre144;
    int _imopVarPre145;
    _imopVarPre143 = 1400 == 1400;
    if (_imopVarPre143) {
        _imopVarPre144 = 7 == 7;
        if (_imopVarPre144) {
            _imopVarPre145 = 15 == 15;
            if (_imopVarPre145) {
                _imopVarPre145 = 10.0 == 10.0;
            }
            _imopVarPre144 = _imopVarPre145;
        }
        _imopVarPre143 = _imopVarPre144;
    }
    if (_imopVarPre143) {
        class = 'S';
        zeta_verify_value = 8.5971775078648;
    } else {
        int _imopVarPre149;
        int _imopVarPre150;
        int _imopVarPre151;
        _imopVarPre149 = 1400 == 7000;
        if (_imopVarPre149) {
            _imopVarPre150 = 7 == 8;
            if (_imopVarPre150) {
                _imopVarPre151 = 15 == 15;
                if (_imopVarPre151) {
                    _imopVarPre151 = 10.0 == 12.0;
                }
                _imopVarPre150 = _imopVarPre151;
            }
            _imopVarPre149 = _imopVarPre150;
        }
        if (_imopVarPre149) {
            class = 'W';
            zeta_verify_value = 10.362595087124;
        } else {
            int _imopVarPre155;
            int _imopVarPre156;
            int _imopVarPre157;
            _imopVarPre155 = 1400 == 14000;
            if (_imopVarPre155) {
                _imopVarPre156 = 7 == 11;
                if (_imopVarPre156) {
                    _imopVarPre157 = 15 == 15;
                    if (_imopVarPre157) {
                        _imopVarPre157 = 10.0 == 20.0;
                    }
                    _imopVarPre156 = _imopVarPre157;
                }
                _imopVarPre155 = _imopVarPre156;
            }
            if (_imopVarPre155) {
                class = 'A';
                zeta_verify_value = 17.130235054029;
            } else {
                int _imopVarPre161;
                int _imopVarPre162;
                int _imopVarPre163;
                _imopVarPre161 = 1400 == 75000;
                if (_imopVarPre161) {
                    _imopVarPre162 = 7 == 13;
                    if (_imopVarPre162) {
                        _imopVarPre163 = 15 == 75;
                        if (_imopVarPre163) {
                            _imopVarPre163 = 10.0 == 60.0;
                        }
                        _imopVarPre162 = _imopVarPre163;
                    }
                    _imopVarPre161 = _imopVarPre162;
                }
                if (_imopVarPre161) {
                    class = 'B';
                    zeta_verify_value = 22.712745482631;
                } else {
                    int _imopVarPre167;
                    int _imopVarPre168;
                    int _imopVarPre169;
                    _imopVarPre167 = 1400 == 150000;
                    if (_imopVarPre167) {
                        _imopVarPre168 = 7 == 15;
                        if (_imopVarPre168) {
                            _imopVarPre169 = 15 == 75;
                            if (_imopVarPre169) {
                                _imopVarPre169 = 10.0 == 110.0;
                            }
                            _imopVarPre168 = _imopVarPre169;
                        }
                        _imopVarPre167 = _imopVarPre168;
                    }
                    if (_imopVarPre167) {
                        class = 'C';
                        zeta_verify_value = 28.973605592845;
                    } else {
                        class = 'U';
                    }
                }
            }
        }
    }
    printf("\n\n NAS Parallel Benchmarks 3.0 structured OpenMP C version" " - CG Benchmark\n");
    printf(" Size: %10d\n", 1400);
    printf(" Iterations: %5d\n", 15);
    naa = 1400;
    nzz = 1400 * (7 + 1) * (7 + 1) + 1400 * (7 + 2);
    tran = 314159265.0;
    amult = 1220703125.0;
    double *_imopVarPre171;
    double _imopVarPre172;
    _imopVarPre171 = &tran;
    _imopVarPre172 = randlc(_imopVarPre171, amult);
    zeta = _imopVarPre172;
    int n;
    int nz;
    int nonzer;
    double rcond;
    double shift;
    n = naa;
    nz = nzz;
    nonzer = 7;
    rcond = 1.0e-1;
    shift = 10.0;
    int i_imopVar80;
    int nnza;
    int iouter;
    int ivelt;
    int ivelt1;
    int irow;
    int nzv;
    double size;
    double ratio;
    double scale;
    int jcol;
    size = 1.0;
    double _imopVarPre189;
    double _imopVarPre190;
    _imopVarPre189 = (1.0 / (double) n);
    _imopVarPre190 = pow(rcond, _imopVarPre189);
    ratio = _imopVarPre190;
    nnza = 0;
#pragma omp parallel default(shared) private(i_imopVar80)
    {
#pragma omp for nowait
        for (i_imopVar80 = 1; i_imopVar80 <= n; i_imopVar80++) {
            colidx[n + i_imopVar80] = 0;
        }
    }
    for (iouter = 1; iouter <= n; iouter++) {
        nzv = nonzer;
        int *_imopVarPre193;
        int *_imopVarPre194;
        _imopVarPre193 = &(colidx[n]);
        _imopVarPre194 = &(colidx[0]);
        sprnvc(n, nzv, v, iv, _imopVarPre194, _imopVarPre193);
        int *_imopVarPre196;
        _imopVarPre196 = &nzv;
        vecset(n, v, iv, _imopVarPre196, iouter, 0.5);
        for (ivelt = 1; ivelt <= nzv; ivelt++) {
            jcol = iv[ivelt];
            int _imopVarPre198;
            _imopVarPre198 = jcol >= firstcol;
            if (_imopVarPre198) {
                _imopVarPre198 = jcol <= lastcol;
            }
            if (_imopVarPre198) {
                scale = size * v[ivelt];
                for (ivelt1 = 1; ivelt1 <= nzv; ivelt1++) {
                    irow = iv[ivelt1];
                    int _imopVarPre200;
                    _imopVarPre200 = irow >= firstrow;
                    if (_imopVarPre200) {
                        _imopVarPre200 = irow <= lastrow;
                    }
                    if (_imopVarPre200) {
                        nnza = nnza + 1;
                        if (nnza > nz) {
                            printf("Space for matrix elements exceeded in" " makea\n");
                            printf("nnza, nzmax = %d, %d\n", nnza, nz);
                            printf("iouter = %d\n", iouter);
                            exit(1);
                        }
                        acol[nnza] = jcol;
                        arow[nnza] = irow;
                        aelt[nnza] = v[ivelt1] * scale;
                    }
                }
            }
        }
        size = size * ratio;
    }
    for (i_imopVar80 = firstrow; i_imopVar80 <= lastrow; i_imopVar80++) {
        int _imopVarPre202;
        _imopVarPre202 = i_imopVar80 >= firstcol;
        if (_imopVarPre202) {
            _imopVarPre202 = i_imopVar80 <= lastcol;
        }
        if (_imopVarPre202) {
            iouter = n + i_imopVar80;
            nnza = nnza + 1;
            if (nnza > nz) {
                printf("Space for matrix elements exceeded in makea\n");
                printf("nnza, nzmax = %d, %d\n", nnza, nz);
                printf("iouter = %d\n", iouter);
                exit(1);
            }
            acol[nnza] = i_imopVar80;
            arow[nnza] = i_imopVar80;
            aelt[nnza] = rcond - shift;
        }
    }
    int *_imopVarPre205;
    int *_imopVarPre206;
    _imopVarPre205 = &(iv[n]);
    _imopVarPre206 = &(iv[0]);
    double *x_imopVar78;
    int *mark;
    int *nzloc;
    x_imopVar78 = v;
    mark = _imopVarPre206;
    nzloc = _imopVarPre205;
    int nrows;
    int i_imopVar79;
    int j_imopVar81;
    int jajp1;
    int nza;
    int k_imopVar82;
    int nzrow;
    double xi;
    nrows = lastrow - firstrow + 1;
#pragma omp parallel default(shared) private(j_imopVar81)
    {
#pragma omp for nowait
        for (j_imopVar81 = 1; j_imopVar81 <= n; j_imopVar81++) {
            rowstr[j_imopVar81] = 0;
            mark[j_imopVar81] = 0;
        }
    }
    rowstr[n + 1] = 0;
    for (nza = 1; nza <= nnza; nza++) {
        j_imopVar81 = (arow[nza] - firstrow + 1) + 1;
        rowstr[j_imopVar81] = rowstr[j_imopVar81] + 1;
    }
    rowstr[1] = 1;
    for (j_imopVar81 = 2; j_imopVar81 <= nrows + 1; j_imopVar81++) {
        rowstr[j_imopVar81] = rowstr[j_imopVar81] + rowstr[j_imopVar81 - 1];
    }
#pragma omp parallel default(shared) private(k_imopVar82, j_imopVar81)
    {
#pragma omp for nowait
        for (j_imopVar81 = 0; j_imopVar81 <= nrows - 1; j_imopVar81++) {
            for (k_imopVar82 = rowstr[j_imopVar81]; k_imopVar82 <= rowstr[j_imopVar81 + 1] - 1; k_imopVar82++) {
                a[k_imopVar82] = 0.0;
            }
        }
    }
    for (nza = 1; nza <= nnza; nza++) {
        j_imopVar81 = arow[nza] - firstrow + 1;
        k_imopVar82 = rowstr[j_imopVar81];
        a[k_imopVar82] = aelt[nza];
        colidx[k_imopVar82] = acol[nza];
        rowstr[j_imopVar81] = rowstr[j_imopVar81] + 1;
    }
    for (j_imopVar81 = nrows; j_imopVar81 >= 1; j_imopVar81--) {
        rowstr[j_imopVar81 + 1] = rowstr[j_imopVar81];
    }
    rowstr[1] = 1;
    nza = 0;
#pragma omp parallel default(shared) private(i_imopVar79)
    {
#pragma omp for nowait
        for (i_imopVar79 = 1; i_imopVar79 <= n; i_imopVar79++) {
            x_imopVar78[i_imopVar79] = 0.0;
            mark[i_imopVar79] = 0;
        }
    }
    jajp1 = rowstr[1];
    for (j_imopVar81 = 1; j_imopVar81 <= nrows; j_imopVar81++) {
        nzrow = 0;
        for (k_imopVar82 = jajp1; k_imopVar82 < rowstr[j_imopVar81 + 1]; k_imopVar82++) {
            i_imopVar79 = colidx[k_imopVar82];
            x_imopVar78[i_imopVar79] = x_imopVar78[i_imopVar79] + a[k_imopVar82];
            int _imopVarPre208;
            _imopVarPre208 = mark[i_imopVar79] == 0;
            if (_imopVarPre208) {
                _imopVarPre208 = x_imopVar78[i_imopVar79] != 0.0;
            }
            if (_imopVarPre208) {
                mark[i_imopVar79] = 1;
                nzrow = nzrow + 1;
                nzloc[nzrow] = i_imopVar79;
            }
        }
        for (k_imopVar82 = 1; k_imopVar82 <= nzrow; k_imopVar82++) {
            i_imopVar79 = nzloc[k_imopVar82];
            mark[i_imopVar79] = 0;
            xi = x_imopVar78[i_imopVar79];
            x_imopVar78[i_imopVar79] = 0.0;
            if (xi != 0.0) {
                nza = nza + 1;
                a[nza] = xi;
                colidx[nza] = i_imopVar79;
            }
        }
        jajp1 = rowstr[j_imopVar81 + 1];
        rowstr[j_imopVar81 + 1] = nza + rowstr[1];
    }
#pragma omp parallel default(shared) private(i, j, k)
    {
#pragma omp for nowait
        for (j = 1; j <= lastrow - firstrow + 1; j++) {
            for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
                colidx[k] = colidx[k] - firstcol + 1;
            }
        }
#pragma omp for nowait
        for (i = 1; i <= 1400 + 1; i++) {
            x[i] = 1.0;
        }
#pragma omp for nowait
        for (j = 1; j <= lastcol - firstcol + 1; j++) {
            q[j] = 0.0;
            z[j] = 0.0;
            r[j] = 0.0;
            p[j] = 0.0;
        }
    }
    zeta = 0.0;
    for (it = 1; it <= 1; it++) {
        double sum;
        double rho;
        double rho0;
        double alpha;
        double beta;
        double *rnorm_imopVar83;
        int j_imopVar84;
        int k_imopVar85;
        int cgit;
        int cgitmax = 25;
        double d;
#pragma omp parallel default(shared) private(j_imopVar84, sum) shared(rho, naa)
        {
            double *_imopVarPre174;
#pragma omp master
            {
                _imopVarPre174 = &rnorm;
                rnorm_imopVar83 = _imopVarPre174;
                rho = 0.0;
            }
#pragma omp for nowait
            for (j_imopVar84 = 1; j_imopVar84 <= naa + 1; j_imopVar84++) {
                q[j_imopVar84] = 0.0;
                z[j_imopVar84] = 0.0;
                r[j_imopVar84] = x[j_imopVar84];
                p[j_imopVar84] = r[j_imopVar84];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:rho) nowait
            for (j_imopVar84 = 1; j_imopVar84 <= lastcol - firstcol + 1; j_imopVar84++) {
                rho = rho + r[j_imopVar84] * r[j_imopVar84];
            }
        }
        for (cgit = 1; cgit <= cgitmax; cgit++) {
#pragma omp parallel default(shared) private(j_imopVar84, k_imopVar85, sum, alpha, beta) shared(d, rho0, rho)
            {
#pragma omp master
                {
                    rho0 = rho;
                    d = 0.0;
                    rho = 0.0;
                }
#pragma omp for nowait
                for (j_imopVar84 = 1; j_imopVar84 <= lastrow - firstrow + 1; j_imopVar84++) {
                    sum = 0.0;
                    for (k_imopVar85 = rowstr[j_imopVar84]; k_imopVar85 < rowstr[j_imopVar84 + 1]; k_imopVar85++) {
                        sum = sum + a[k_imopVar85] * p[colidx[k_imopVar85]];
                    }
                    q[j_imopVar84] = sum;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:d) nowait
                for (j_imopVar84 = 1; j_imopVar84 <= lastcol - firstcol + 1; j_imopVar84++) {
                    d = d + p[j_imopVar84] * q[j_imopVar84];
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                alpha = rho0 / d;
#pragma omp for reduction(+:rho) nowait
                for (j_imopVar84 = 1; j_imopVar84 <= lastcol - firstcol + 1; j_imopVar84++) {
                    z[j_imopVar84] = z[j_imopVar84] + alpha * p[j_imopVar84];
                    r[j_imopVar84] = r[j_imopVar84] - alpha * q[j_imopVar84];
                    rho = rho + r[j_imopVar84] * r[j_imopVar84];
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                beta = rho / rho0;
#pragma omp for nowait
                for (j_imopVar84 = 1; j_imopVar84 <= lastcol - firstcol + 1; j_imopVar84++) {
                    p[j_imopVar84] = r[j_imopVar84] + beta * p[j_imopVar84];
                }
                callcount++;
            }
        }
#pragma omp parallel default(shared) private(j_imopVar84, d, j) shared(sum)
        {
#pragma omp master
            {
                sum = 0.0;
            }
            double _imopVarPre187;
#pragma omp for nowait
            for (j_imopVar84 = 1; j_imopVar84 <= lastrow - firstrow + 1; j_imopVar84++) {
                d = 0.0;
                for (k_imopVar85 = rowstr[j_imopVar84]; k_imopVar85 <= rowstr[j_imopVar84 + 1] - 1; k_imopVar85++) {
                    d = d + a[k_imopVar85] * z[colidx[k_imopVar85]];
                }
                r[j_imopVar84] = d;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:sum) nowait
            for (j_imopVar84 = 1; j_imopVar84 <= lastcol - firstcol + 1; j_imopVar84++) {
                d = x[j_imopVar84] - r[j_imopVar84];
                sum = sum + d * d;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                _imopVarPre187 = sqrt(sum);
                (*rnorm_imopVar83) = _imopVarPre187;
            }
#pragma omp master
            {
                norm_temp11 = 0.0;
                norm_temp12 = 0.0;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            double _imopVarPre176;
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                norm_temp11 = norm_temp11 + x[j] * z[j];
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                _imopVarPre176 = sqrt(norm_temp12);
                norm_temp12 = 1.0 / _imopVarPre176;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                x[j] = norm_temp12 * z[j];
            }
        }
    }
#pragma omp parallel default(shared) private(i)
    {
#pragma omp for nowait
        for (i = 1; i <= 1400 + 1; i++) {
            x[i] = 1.0;
        }
    }
    zeta = 0.0;
    timer_clear(1);
    timer_start(1);
    for (it = 1; it <= 15; it++) {
        double rho0;
        double alpha;
        double beta;
        double *rnorm_imopVar75;
        int j_imopVar76;
        int k_imopVar77;
        int cgit;
        int cgitmax = 25;
        double d;
        double sum;
        double rho;
#pragma omp parallel default(shared) private(j_imopVar76, sum) shared(rho, naa)
        {
            double *_imopVarPre178;
#pragma omp master
            {
                _imopVarPre178 = &rnorm;
                rnorm_imopVar75 = _imopVarPre178;
                rho = 0.0;
            }
#pragma omp for nowait
            for (j_imopVar76 = 1; j_imopVar76 <= naa + 1; j_imopVar76++) {
                q[j_imopVar76] = 0.0;
                z[j_imopVar76] = 0.0;
                r[j_imopVar76] = x[j_imopVar76];
                p[j_imopVar76] = r[j_imopVar76];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:rho) nowait
            for (j_imopVar76 = 1; j_imopVar76 <= lastcol - firstcol + 1; j_imopVar76++) {
                rho = rho + r[j_imopVar76] * r[j_imopVar76];
            }
        }
        for (cgit = 1; cgit <= cgitmax; cgit++) {
#pragma omp parallel default(shared) private(j_imopVar76, k_imopVar77, sum, alpha, beta) shared(d, rho0, rho)
            {
#pragma omp master
                {
                    rho0 = rho;
                    d = 0.0;
                    rho = 0.0;
                }
#pragma omp for nowait
                for (j_imopVar76 = 1; j_imopVar76 <= lastrow - firstrow + 1; j_imopVar76++) {
                    sum = 0.0;
                    for (k_imopVar77 = rowstr[j_imopVar76]; k_imopVar77 < rowstr[j_imopVar76 + 1]; k_imopVar77++) {
                        sum = sum + a[k_imopVar77] * p[colidx[k_imopVar77]];
                    }
                    q[j_imopVar76] = sum;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:d) nowait
                for (j_imopVar76 = 1; j_imopVar76 <= lastcol - firstcol + 1; j_imopVar76++) {
                    d = d + p[j_imopVar76] * q[j_imopVar76];
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                alpha = rho0 / d;
#pragma omp for reduction(+:rho) nowait
                for (j_imopVar76 = 1; j_imopVar76 <= lastcol - firstcol + 1; j_imopVar76++) {
                    z[j_imopVar76] = z[j_imopVar76] + alpha * p[j_imopVar76];
                    r[j_imopVar76] = r[j_imopVar76] - alpha * q[j_imopVar76];
                    rho = rho + r[j_imopVar76] * r[j_imopVar76];
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
                beta = rho / rho0;
#pragma omp for nowait
                for (j_imopVar76 = 1; j_imopVar76 <= lastcol - firstcol + 1; j_imopVar76++) {
                    p[j_imopVar76] = r[j_imopVar76] + beta * p[j_imopVar76];
                }
                callcount++;
            }
        }
#pragma omp parallel default(shared) private(j_imopVar76, d, j) shared(sum)
        {
#pragma omp master
            {
                sum = 0.0;
            }
            double _imopVarPre187;
#pragma omp for nowait
            for (j_imopVar76 = 1; j_imopVar76 <= lastrow - firstrow + 1; j_imopVar76++) {
                d = 0.0;
                for (k_imopVar77 = rowstr[j_imopVar76]; k_imopVar77 <= rowstr[j_imopVar76 + 1] - 1; k_imopVar77++) {
                    d = d + a[k_imopVar77] * z[colidx[k_imopVar77]];
                }
                r[j_imopVar76] = d;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:sum) nowait
            for (j_imopVar76 = 1; j_imopVar76 <= lastcol - firstcol + 1; j_imopVar76++) {
                d = x[j_imopVar76] - r[j_imopVar76];
                sum = sum + d * d;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                _imopVarPre187 = sqrt(sum);
                (*rnorm_imopVar75) = _imopVarPre187;
            }
#pragma omp master
            {
                norm_temp11 = 0.0;
                norm_temp12 = 0.0;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
            double _imopVarPre180;
#pragma omp for reduction(+:norm_temp11, norm_temp12) nowait
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                norm_temp11 = norm_temp11 + x[j] * z[j];
                norm_temp12 = norm_temp12 + z[j] * z[j];
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                _imopVarPre180 = sqrt(norm_temp12);
                norm_temp12 = 1.0 / _imopVarPre180;
                zeta = 10.0 + 1.0 / norm_temp11;
                if (it == 1) {
                    printf("   iteration           ||r||                 zeta\n");
                }
                printf("    %5d       %20.14e%20.13e\n", it, rnorm, zeta);
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (j = 1; j <= lastcol - firstcol + 1; j++) {
                x[j] = norm_temp12 * z[j];
            }
        }
    }
#pragma omp parallel
    {
    }
    timer_stop(1);
    t = timer_read(1);
    printf(" Benchmark completed\n");
    epsilon = 1.0e-10;
    if (class != 'U') {
        double _imopVarPre183;
        double _imopVarPre184;
        _imopVarPre183 = zeta - zeta_verify_value;
        _imopVarPre184 = fabs(_imopVarPre183);
        if (_imopVarPre184 <= epsilon) {
            verified = 1;
            printf(" VERIFICATION SUCCESSFUL\n");
            printf(" Zeta is    %20.12e\n", zeta);
            double _imopVarPre186;
            _imopVarPre186 = zeta - zeta_verify_value;
            printf(" Error is   %20.12e\n", _imopVarPre186);
        } else {
            verified = 0;
            printf(" VERIFICATION FAILED\n");
            printf(" Zeta                %20.12e\n", zeta);
            printf(" The correct zeta is %20.12e\n", zeta_verify_value);
        }
    } else {
        verified = 0;
        printf(" Problem size unknown\n");
        printf(" NO VERIFICATION PERFORMED\n");
    }
    if (t != 0.0) {
        mflops = (2.0 * 15 * 1400) * (3.0 + (7 * (7 + 1)) + 25.0 * (5.0 + (7 * (7 + 1))) + 3.0) / t / 1000000.0;
    } else {
        mflops = 0.0;
    }
    c_print_results("CG", class, 1400, 0, 0, 15, nthreads, t, mflops, "          floating point", verified, "3.0 structured", "21 Jul 2017", "gcc", "gcc", "(none)", "-I../common", "-O3 -fopenmp", "-O3 -fopenmp", "randdp");
}
static void sprnvc(int n, int nz , double v[] , int iv[] , int nzloc[] , int mark[]) {
    int nn1;
    int nzrow;
    int nzv;
    int ii;
    int i;
    double vecelt;
    double vecloc;
    nzv = 0;
    nzrow = 0;
    nn1 = 1;
    do {
        nn1 = 2 * nn1;
    } while (nn1 < n);
    while (nzv < nz) {
        double *_imopVarPre210;
        double _imopVarPre211;
        _imopVarPre210 = &tran;
        _imopVarPre211 = randlc(_imopVarPre210, amult);
        vecelt = _imopVarPre211;
        double *_imopVarPre213;
        double _imopVarPre214;
        _imopVarPre213 = &tran;
        _imopVarPre214 = randlc(_imopVarPre213, amult);
        vecloc = _imopVarPre214;
        int _imopVarPre216;
        _imopVarPre216 = icnvrt(vecloc, nn1);
        i = _imopVarPre216 + 1;
        if (i > n) {
            continue;
        }
        if (mark[i] == 0) {
            mark[i] = 1;
            nzrow = nzrow + 1;
            nzloc[nzrow] = i;
            nzv = nzv + 1;
            v[nzv] = vecelt;
            iv[nzv] = i;
        }
    }
    for (ii = 1; ii <= nzrow; ii++) {
        i = nzloc[ii];
        mark[i] = 0;
    }
}
static int icnvrt(double x, int ipwr2) {
    return ((int) (ipwr2 * x));
}
static void vecset(int n, double v[] , int iv[] , int *nzv , int i , double val) {
    int k;
    boolean set;
    set = 0;
    for (k = 1; k <= *nzv; k++) {
        if (iv[k] == i) {
            v[k] = val;
            set = 1;
        }
    }
    if (set == 0) {
        *nzv = *nzv + 1;
        v[*nzv] = val;
        iv[*nzv] = i;
    }
}
