typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __darwin_size_t size_t;
void free(void *);
void *malloc(size_t __size);
struct __sFILEX ;
int printf(const char *, ...);
typedef __darwin_time_t time_t;
struct tm *localtime(const time_t *);
size_t strftime(char *, size_t  , const char * , const struct tm *);
time_t time(time_t *);
extern double sin(double );
extern double pow(double , double );
extern double sqrt(double );
extern int omp_get_max_threads(void );
extern int omp_get_num_procs(void );
extern double omp_get_wtime(void );
int main(int argc, char *argv[]);
double dist(int nd, double r1[] , double r2[] , double dr[]);
void initialize(int np, int nd , double box[] , int *seed , double pos[] , double vel[] , double acc[]);
double r8_uniform_01(int *seed);
void timestamp(void );
int main(int argc, char *argv[]) {
    double *acc;
    double *box;
    double dt = 0.0001;
    double e0;
    double *force;
    int i;
    double kinetic;
    double mass = 1.0;
    int nd = 3;
    int np = 1000;
    double *pos;
    double potential;
    int proc_num;
    int seed = 123456789;
    int step;
    int step_num = 400;
    int step_print;
    int step_print_index;
    int step_print_num;
    double *vel;
    double wtime;
    timestamp();
    proc_num = omp_get_num_procs();
    unsigned long int _imopVarPre144;
    void *_imopVarPre145;
    _imopVarPre144 = nd * np * sizeof(double);
    _imopVarPre145 = malloc(_imopVarPre144);
    acc = (double *) _imopVarPre145;
    unsigned long int _imopVarPre148;
    void *_imopVarPre149;
    _imopVarPre148 = nd * sizeof(double);
    _imopVarPre149 = malloc(_imopVarPre148);
    box = (double *) _imopVarPre149;
    unsigned long int _imopVarPre152;
    void *_imopVarPre153;
    _imopVarPre152 = nd * np * sizeof(double);
    _imopVarPre153 = malloc(_imopVarPre152);
    force = (double *) _imopVarPre153;
    unsigned long int _imopVarPre156;
    void *_imopVarPre157;
    _imopVarPre156 = nd * np * sizeof(double);
    _imopVarPre157 = malloc(_imopVarPre156);
    pos = (double *) _imopVarPre157;
    unsigned long int _imopVarPre160;
    void *_imopVarPre161;
    _imopVarPre160 = nd * np * sizeof(double);
    _imopVarPre161 = malloc(_imopVarPre160);
    vel = (double *) _imopVarPre161;
    printf("\n");
    printf("MD_OPENMP\n");
    printf("  C/OpenMP version\n");
    printf("\n");
    printf("  A molecular dynamics program.\n");
    printf("\n");
    printf("  NP, the number of particles in the simulation is %d\n", np);
    printf("  STEP_NUM, the number of time steps, is %d\n", step_num);
    printf("  DT, the size of each time step, is %f\n", dt);
    printf("\n");
    int _imopVarPre163;
    _imopVarPre163 = omp_get_num_procs();
    printf("  Number of processors available = %d\n", _imopVarPre163);
    int _imopVarPre165;
    _imopVarPre165 = omp_get_max_threads();
    printf("  Number of threads =              %d\n", _imopVarPre165);
    for (i = 0; i < nd; i++) {
        box[i] = 10.0;
    }
    printf("\n");
    printf("  Initializing positions, velocities, and accelerations.\n");
    int *_imopVarPre167;
    _imopVarPre167 = &seed;
    initialize(np, nd, box, _imopVarPre167, pos, vel, acc);
    printf("\n");
    printf("  Computing initial forces and energies.\n");
    double *_imopVarPre170;
    double *_imopVarPre171;
    _imopVarPre170 = &kinetic;
    _imopVarPre171 = &potential;
    double *f;
    double *pot;
    double *kin;
    f = force;
    pot = _imopVarPre171;
    kin = _imopVarPre170;
    double pe;
    double ke;
#pragma omp parallel shared(f, nd, np, pos, vel)
    {
        double d;
        double d2;
        int i;
        int j;
        int k;
        double PI2 = 3.141592653589793 / 2.0;
        double rij[3];
#pragma omp master
        {
            pe = 0.0;
            ke = 0.0;
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:pe, ke) nowait
        for (k = 0; k < np; k++) {
            for (i = 0; i < nd; i++) {
                f[i + k * nd] = 0.0;
            }
            for (j = 0; j < np; j++) {
                if (k != j) {
                    double *_imopVarPre184;
                    double *_imopVarPre185;
                    double _imopVarPre186;
                    _imopVarPre184 = pos + j * nd;
                    _imopVarPre185 = pos + k * nd;
                    _imopVarPre186 = dist(nd, _imopVarPre185, _imopVarPre184, rij);
                    d = _imopVarPre186;
                    if (d < PI2) {
                        d2 = d;
                    } else {
                        d2 = PI2;
                    }
                    double _imopVarPre189;
                    double _imopVarPre190;
                    _imopVarPre189 = sin(d2);
                    _imopVarPre190 = pow(_imopVarPre189, 2);
                    pe = pe + 0.5 * _imopVarPre190;
                    for (i = 0; i < nd; i++) {
                        double _imopVarPre193;
                        double _imopVarPre194;
                        _imopVarPre193 = 2.0 * d2;
                        _imopVarPre194 = sin(_imopVarPre193);
                        f[i + k * nd] = f[i + k * nd] - rij[i] * _imopVarPre194 / d;
                    }
                }
            }
            for (i = 0; i < nd; i++) {
                ke = ke + vel[i + k * nd] * vel[i + k * nd];
            }
        }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
        {
            ke = ke * 0.5 * mass;
            *pot = pe;
            *kin = ke;
        }
    }
    e0 = potential + kinetic;
    printf("\n");
    printf("  At each step, we report the potential and kinetic energies.\n");
    printf("  The sum of these energies should be a constant.\n");
    printf("  As an accuracy check, we also print the relative error\n");
    printf("  in the total energy.\n");
    printf("\n");
    printf("      Step      Potential       Kinetic        (P+K-E0)/E0\n");
    printf("                Energy P        Energy K       Relative Energy Error\n");
    printf("\n");
    step_print = 0;
    step_print_index = 0;
    step_print_num = 10;
    step = 0;
    double _imopVarPre173;
    _imopVarPre173 = (potential + kinetic - e0) / e0;
    printf("  %8d  %14f  %14f  %14e\n", step, potential, kinetic, _imopVarPre173);
    step_print_index = step_print_index + 1;
    step_print = (step_print_index * step_num) / step_print_num;
    wtime = omp_get_wtime();
    for (step = 1; step <= step_num; step++) {
        double *f;
        double rmass;
        double *f_imopVar75;
        double pe_imopVar78;
        double ke_imopVar79;
#pragma omp parallel shared(f_imopVar75, nd, np, pos, vel, acc, dt, f, rmass)
        {
            double *_imopVarPre176;
            double *_imopVarPre177;
#pragma omp master
            {
                _imopVarPre176 = &kinetic;
                _imopVarPre177 = &potential;
            }
            double *pot_imopVar76;
            double *kin_imopVar77;
#pragma omp master
            {
                f_imopVar75 = force;
                pot_imopVar76 = _imopVarPre177;
                kin_imopVar77 = _imopVarPre176;
            }
            double d;
            double d2;
            int i;
            int j;
            int k;
            double PI2 = 3.141592653589793 / 2.0;
            double rij[3];
#pragma omp master
            {
                pe_imopVar78 = 0.0;
                ke_imopVar79 = 0.0;
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for reduction(+:pe_imopVar78, ke_imopVar79) nowait
            for (k = 0; k < np; k++) {
                for (i = 0; i < nd; i++) {
                    f_imopVar75[i + k * nd] = 0.0;
                }
                for (j = 0; j < np; j++) {
                    if (k != j) {
                        double *_imopVarPre184;
                        double *_imopVarPre185;
                        double _imopVarPre186;
                        _imopVarPre184 = pos + j * nd;
                        _imopVarPre185 = pos + k * nd;
                        _imopVarPre186 = dist(nd, _imopVarPre185, _imopVarPre184, rij);
                        d = _imopVarPre186;
                        if (d < PI2) {
                            d2 = d;
                        } else {
                            d2 = PI2;
                        }
                        double _imopVarPre189;
                        double _imopVarPre190;
                        _imopVarPre189 = sin(d2);
                        _imopVarPre190 = pow(_imopVarPre189, 2);
                        pe_imopVar78 = pe_imopVar78 + 0.5 * _imopVarPre190;
                        for (i = 0; i < nd; i++) {
                            double _imopVarPre193;
                            double _imopVarPre194;
                            _imopVarPre193 = 2.0 * d2;
                            _imopVarPre194 = sin(_imopVarPre193);
                            f_imopVar75[i + k * nd] = f_imopVar75[i + k * nd] - rij[i] * _imopVarPre194 / d;
                        }
                    }
                }
                for (i = 0; i < nd; i++) {
                    ke_imopVar79 = ke_imopVar79 + vel[i + k * nd] * vel[i + k * nd];
                }
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp master
            {
                ke_imopVar79 = ke_imopVar79 * 0.5 * mass;
                *pot_imopVar76 = pe_imopVar78;
                *kin_imopVar77 = ke_imopVar79;
                if (step == step_print) {
                    double _imopVarPre179;
                    _imopVarPre179 = (potential + kinetic - e0) / e0;
                    printf("  %8d  %14f  %14f  %14e\n", step, potential, kinetic, _imopVarPre179);
                    step_print_index = step_print_index + 1;
                    step_print = (step_print_index * step_num) / step_print_num;
                }
                f = force;
            }
            {
                int i;
                int j;
#pragma omp master
                {
                    rmass = 1.0 / mass;
                }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
                for (j = 0; j < np; j++) {
                    for (i = 0; i < nd; i++) {
                        pos[i + j * nd] = pos[i + j * nd] + vel[i + j * nd] * dt + 0.5 * acc[i + j * nd] * dt * dt;
                        vel[i + j * nd] = vel[i + j * nd] + 0.5 * dt * (f[i + j * nd] * rmass + acc[i + j * nd]);
                        acc[i + j * nd] = f[i + j * nd] * rmass;
                    }
                }
            }
        }
    }
    double _imopVarPre181;
    _imopVarPre181 = omp_get_wtime();
    wtime = _imopVarPre181 - wtime;
    printf("\n");
    printf("  Elapsed time for main computation:\n");
    printf("  %f seconds.\n", wtime);
    free(acc);
    free(box);
    free(force);
    free(pos);
    free(vel);
    printf("\n");
    printf("MD_OPENMP\n");
    printf("  Normal end of execution.\n");
    printf("\n");
    timestamp();
    return 0;
}
double dist(int nd, double r1[] , double r2[] , double dr[]) {
    double d;
    int i;
    d = 0.0;
    for (i = 0; i < nd; i++) {
        dr[i] = r1[i] - r2[i];
        d = d + dr[i] * dr[i];
    }
    d = sqrt(d);
    return d;
}
void initialize(int np, int nd , double box[] , int *seed , double pos[] , double vel[] , double acc[]) {
    int i;
    int j;
    for (i = 0; i < nd; i++) {
        for (j = 0; j < np; j++) {
            double _imopVarPre196;
            _imopVarPre196 = r8_uniform_01(seed);
            pos[i + j * nd] = box[i] * _imopVarPre196;
        }
    }
    for (j = 0; j < np; j++) {
        for (i = 0; i < nd; i++) {
            vel[i + j * nd] = 0.0;
        }
    }
    for (j = 0; j < np; j++) {
        for (i = 0; i < nd; i++) {
            acc[i + j * nd] = 0.0;
        }
    }
    return;
}
double r8_uniform_01(int *seed) {
    int k;
    double r;
    k = *seed / 127773;
    *seed = 16807 * (*seed - k * 127773) - k * 2836;
    if (*seed < 0) {
        *seed = *seed + 2147483647;
    }
    r = (double) (*seed) * 4.656612875E-10;
    return r;
}
void timestamp() {
    static char time_buffer[40];
    const struct tm *tm;
    size_t len;
    time_t now;
    void *_imopVarPre198;
    signed long int _imopVarPre199;
    _imopVarPre198 = ((void *) 0);
    _imopVarPre199 = time(_imopVarPre198);
    now = _imopVarPre199;
    signed long int *_imopVarPre201;
    struct tm *_imopVarPre202;
    _imopVarPre201 = &now;
    _imopVarPre202 = localtime(_imopVarPre201);
    tm = _imopVarPre202;
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    printf("%s\n", time_buffer);
    return;
}
