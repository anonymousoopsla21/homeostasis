
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef long __darwin_time_t;
/*[]*/
typedef __darwin_size_t size_t;
/*[]*/
void free(void *);
/*[]*/
void *malloc(size_t __size);
/*[]*/
struct __sFILEX ;
/*[]*/
int printf(const char *, ...);
/*[]*/
typedef __darwin_time_t time_t;
/*[]*/
struct tm *localtime(const time_t *);
/*[]*/
size_t strftime(char *, size_t  , const char * , const struct tm *);
/*[]*/
time_t time(time_t *);
/*[]*/
extern double sin(double );
/*[]*/
extern double pow(double , double );
/*[]*/
extern double sqrt(double );
/*[]*/
extern int omp_get_max_threads(void );
/*[]*/
extern int omp_get_num_procs(void );
/*[]*/
extern double omp_get_wtime(void );
/*[]*/
int main(int argc, char *argv[]);
/*[]*/
void compute(int np, int nd , double pos[] , double vel[] , double mass , double f[] , double *pot , double *kin);
/*[]*/
double dist(int nd, double r1[] , double r2[] , double dr[]);
/*[]*/
void initialize(int np, int nd , double box[] , int *seed , double pos[] , double vel[] , double acc[]);
/*[]*/
double r8_uniform_01(int *seed);
/*[]*/
void timestamp(void );
/*[]*/
void update(int np, int nd , double pos[] , double vel[] , double f[] , double acc[] , double mass , double dt);
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char *argv[]) {
/*[]*/
    /*[]*/
    double *acc;
    /*[]*/
    double *box;
    /*[]*/
    double dt = 0.0001;
    /*[]*/
    double e0;
    /*[]*/
    double *force;
    /*[]*/
    int i;
    /*[]*/
    double kinetic;
    /*[]*/
    double mass = 1.0;
    /*[]*/
    int nd = 3;
    /*[]*/
    int np = 1000;
    /*[]*/
    double *pos;
    /*[]*/
    double potential;
    /*[]*/
    int proc_num;
    /*[]*/
    int seed = 123456789;
    /*[]*/
    int step;
    /*[]*/
    int step_num = 400;
    /*[]*/
    int step_print;
    /*[]*/
    int step_print_index;
    /*[]*/
    int step_print_num;
    /*[]*/
    double *vel;
    /*[]*/
    double wtime;
    /*[]*/
    timestamp();
    /*[]*/
    /*[]*/
    proc_num = omp_get_num_procs();
    /*[]*/
    /*[]*/
    unsigned long int _imopVarPre144;
    /*[]*/
    void *_imopVarPre145;
    /*[]*/
    _imopVarPre144 = nd * np * sizeof(double);
    /*[]*/
    _imopVarPre145 = malloc(_imopVarPre144);
    /*[]*/
    /*[]*/
    acc = (double *) _imopVarPre145;
    /*[]*/
    unsigned long int _imopVarPre148;
    /*[]*/
    void *_imopVarPre149;
    /*[]*/
    _imopVarPre148 = nd * sizeof(double);
    /*[]*/
    _imopVarPre149 = malloc(_imopVarPre148);
    /*[]*/
    /*[]*/
    box = (double *) _imopVarPre149;
    /*[]*/
    unsigned long int _imopVarPre152;
    /*[]*/
    void *_imopVarPre153;
    /*[]*/
    _imopVarPre152 = nd * np * sizeof(double);
    /*[]*/
    _imopVarPre153 = malloc(_imopVarPre152);
    /*[]*/
    /*[]*/
    force = (double *) _imopVarPre153;
    /*[]*/
    unsigned long int _imopVarPre156;
    /*[]*/
    void *_imopVarPre157;
    /*[]*/
    _imopVarPre156 = nd * np * sizeof(double);
    /*[]*/
    _imopVarPre157 = malloc(_imopVarPre156);
    /*[]*/
    /*[]*/
    pos = (double *) _imopVarPre157;
    /*[]*/
    unsigned long int _imopVarPre160;
    /*[]*/
    void *_imopVarPre161;
    /*[]*/
    _imopVarPre160 = nd * np * sizeof(double);
    /*[]*/
    _imopVarPre161 = malloc(_imopVarPre160);
    /*[]*/
    /*[]*/
    vel = (double *) _imopVarPre161;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("MD_OPENMP\n");
    /*[]*/
    /*[]*/
    printf("  C/OpenMP version\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  A molecular dynamics program.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  NP, the number of particles in the simulation is %d\n", np);
    /*[]*/
    /*[]*/
    printf("  STEP_NUM, the number of time steps, is %d\n", step_num);
    /*[]*/
    /*[]*/
    printf("  DT, the size of each time step, is %f\n", dt);
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    int _imopVarPre163;
    /*[]*/
    _imopVarPre163 = omp_get_num_procs();
    /*[]*/
    /*[]*/
    printf("  Number of processors available = %d\n", _imopVarPre163);
    /*[]*/
    /*[]*/
    int _imopVarPre165;
    /*[]*/
    _imopVarPre165 = omp_get_max_threads();
    /*[]*/
    /*[]*/
    printf("  Number of threads =              %d\n", _imopVarPre165);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < nd; i++) {
    /*[]*/
        /*[]*/
        box[i] = 10.0;
    }
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Initializing positions, velocities, and accelerations.\n");
    /*[]*/
    /*[]*/
    int *_imopVarPre167;
    /*[]*/
    _imopVarPre167 = &seed;
    /*[]*/
    initialize(np, nd, box, _imopVarPre167, pos, vel, acc);
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Computing initial forces and energies.\n");
    /*[]*/
    /*[]*/
    double *_imopVarPre170;
    /*[]*/
    double *_imopVarPre171;
    /*[]*/
    _imopVarPre170 = &kinetic;
    /*[]*/
    _imopVarPre171 = &potential;
    /*[]*/
    compute(np, nd, pos, vel, mass, force, _imopVarPre171, _imopVarPre170);
    /*[]*/
    /*[]*/
    e0 = potential + kinetic;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  At each step, we report the potential and kinetic energies.\n");
    /*[]*/
    /*[]*/
    printf("  The sum of these energies should be a constant.\n");
    /*[]*/
    /*[]*/
    printf("  As an accuracy check, we also print the relative error\n");
    /*[]*/
    /*[]*/
    printf("  in the total energy.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("      Step      Potential       Kinetic        (P+K-E0)/E0\n");
    /*[]*/
    /*[]*/
    printf("                Energy P        Energy K       Relative Energy Error\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    step_print = 0;
    /*[]*/
    step_print_index = 0;
    /*[]*/
    step_print_num = 10;
    /*[]*/
    step = 0;
    /*[]*/
    double _imopVarPre173;
    /*[]*/
    _imopVarPre173 = (potential + kinetic - e0) / e0;
    /*[]*/
    printf("  %8d  %14f  %14f  %14e\n", step, potential, kinetic, _imopVarPre173);
    /*[]*/
    /*[]*/
    step_print_index = step_print_index + 1;
    /*[]*/
    step_print = (step_print_index * step_num) / step_print_num;
    /*[]*/
    wtime = omp_get_wtime();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (step = 1; step <= step_num; step++) {
    /*[]*/
        /*[]*/
        double *_imopVarPre176;
        /*[]*/
        double *_imopVarPre177;
        /*[]*/
        _imopVarPre176 = &kinetic;
        /*[]*/
        _imopVarPre177 = &potential;
        /*[]*/
        compute(np, nd, pos, vel, mass, force, _imopVarPre177, _imopVarPre176);
        /*[]*/
        /*[]*/
        /*[]*/
        if (step == step_print) {
        /*[]*/
            /*[]*/
            double _imopVarPre179;
            /*[]*/
            _imopVarPre179 = (potential + kinetic - e0) / e0;
            /*[]*/
            printf("  %8d  %14f  %14f  %14e\n", step, potential, kinetic, _imopVarPre179);
            /*[]*/
            /*[]*/
            step_print_index = step_print_index + 1;
            /*[]*/
            step_print = (step_print_index * step_num) / step_print_num;
        }
        /*[]*/
        update(np, nd, pos, vel, force, acc, mass, dt);
        /*[]*/
    }
    /*[]*/
    double _imopVarPre181;
    /*[]*/
    _imopVarPre181 = omp_get_wtime();
    /*[]*/
    /*[]*/
    wtime = _imopVarPre181 - wtime;
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("  Elapsed time for main computation:\n");
    /*[]*/
    /*[]*/
    printf("  %f seconds.\n", wtime);
    /*[]*/
    /*[]*/
    free(acc);
    /*[]*/
    /*[]*/
    free(box);
    /*[]*/
    /*[]*/
    free(force);
    /*[]*/
    /*[]*/
    free(pos);
    /*[]*/
    /*[]*/
    free(vel);
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    printf("MD_OPENMP\n");
    /*[]*/
    /*[]*/
    printf("  Normal end of execution.\n");
    /*[]*/
    /*[]*/
    printf("\n");
    /*[]*/
    /*[]*/
    timestamp();
    /*[]*/
    /*[]*/
    return 0;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void compute(int np, int nd , double pos[] , double vel[] , double mass , double f[] , double *pot , double *kin) {
/*[]*/
    /*[]*/
    double d;
    /*[]*/
    double d2;
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    double ke;
    /*[]*/
    double pe;
    /*[]*/
    double PI2 = 3.141592653589793 / 2.0;
    /*[]*/
    double rij[3];
    /*[]*/
    pe = 0.0;
    /*[]*/
    ke = 0.0;
    /*[1]*/
#pragma omp parallel shared(f, nd, np, pos, vel) private(i, j, k, rij, d, d2)
    {
    /*[1]*/
        /*[1]*/
#pragma omp for reduction(+:pe, ke) nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (k = 0; k < np; k++) {
        /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (i = 0; i < nd; i++) {
            /*[1]*/
                /*[1]*/
                f[i + k * nd] = 0.0;
            }
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (j = 0; j < np; j++) {
            /*[1]*/
                /*[1]*/
                /*[1]*/
                if (k != j) {
                /*[1]*/
                    /*[1]*/
                    double *_imopVarPre184;
                    /*[1]*/
                    double *_imopVarPre185;
                    /*[1]*/
                    double _imopVarPre186;
                    /*[1]*/
                    _imopVarPre184 = pos + j * nd;
                    /*[1]*/
                    _imopVarPre185 = pos + k * nd;
                    /*[1]*/
                    _imopVarPre186 = dist(nd, _imopVarPre185, _imopVarPre184, rij);
                    /*[1]*/
                    /*[1]*/
                    d = _imopVarPre186;
                    /*[1]*/
                    /*[1]*/
                    if (d < PI2) {
                    /*[1]*/
                        /*[1]*/
                        d2 = d;
                    } else {
                    /*[1]*/
                        /*[1]*/
                        d2 = PI2;
                    }
                    /*[1]*/
                    double _imopVarPre189;
                    /*[1]*/
                    double _imopVarPre190;
                    /*[1]*/
                    _imopVarPre189 = sin(d2);
                    /*[1]*/
                    /*[1]*/
                    _imopVarPre190 = pow(_imopVarPre189, 2);
                    /*[1]*/
                    /*[1]*/
                    pe = pe + 0.5 * _imopVarPre190;
                    /*[1]*/
                    /*[1]*/
                    /*[1]*/
                    /*[1]*/
                    for (i = 0; i < nd; i++) {
                    /*[1]*/
                        /*[1]*/
                        double _imopVarPre193;
                        /*[1]*/
                        double _imopVarPre194;
                        /*[1]*/
                        _imopVarPre193 = 2.0 * d2;
                        /*[1]*/
                        _imopVarPre194 = sin(_imopVarPre193);
                        /*[1]*/
                        /*[1]*/
                        f[i + k * nd] = f[i + k * nd] - rij[i] * _imopVarPre194 / d;
                    }
                }
            }
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (i = 0; i < nd; i++) {
            /*[1]*/
                /*[1]*/
                ke = ke + vel[i + k * nd] * vel[i + k * nd];
            }
        }
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
    }
    /*[]*/
    ke = ke * 0.5 * mass;
    /*[]*/
    *pot = pe;
    /*[]*/
    *kin = ke;
    /*[]*/
    return;
}
/*[1]*/
/*[1]*/
/*[1]*/
/*[1]*/
/*[1]*/
double dist(int nd, double r1[] , double r2[] , double dr[]) {
/*[1]*/
    /*[1]*/
    double d;
    /*[1]*/
    int i;
    /*[1]*/
    d = 0.0;
    /*[1]*/
    /*[1]*/
    /*[1]*/
    /*[1]*/
    for (i = 0; i < nd; i++) {
    /*[1]*/
        /*[1]*/
        dr[i] = r1[i] - r2[i];
        /*[1]*/
        d = d + dr[i] * dr[i];
    }
    /*[1]*/
    d = sqrt(d);
    /*[1]*/
    /*[1]*/
    return d;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void initialize(int np, int nd , double box[] , int *seed , double pos[] , double vel[] , double acc[]) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < nd; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < np; j++) {
        /*[]*/
            /*[]*/
            double _imopVarPre196;
            /*[]*/
            _imopVarPre196 = r8_uniform_01(seed);
            /*[]*/
            /*[]*/
            pos[i + j * nd] = box[i] * _imopVarPre196;
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j < np; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < nd; i++) {
        /*[]*/
            /*[]*/
            vel[i + j * nd] = 0.0;
        }
    }
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (j = 0; j < np; j++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (i = 0; i < nd; i++) {
        /*[]*/
            /*[]*/
            acc[i + j * nd] = 0.0;
        }
    }
    /*[]*/
    return;
}
/*[]*/
/*[]*/
double r8_uniform_01(int *seed) {
/*[]*/
    /*[]*/
    int k;
    /*[]*/
    double r;
    /*[]*/
    k = *seed / 127773;
    /*[]*/
    *seed = 16807 * (*seed - k * 127773) - k * 2836;
    /*[]*/
    /*[]*/
    if (*seed < 0) {
    /*[]*/
        /*[]*/
        *seed = *seed + 2147483647;
    }
    /*[]*/
    r = (double) (*seed) * 4.656612875E-10;
    /*[]*/
    return r;
}
/*[]*/
void timestamp() {
/*[]*/
    /*[]*/
    static char time_buffer[40];
    /*[]*/
    const struct tm *tm;
    /*[]*/
    size_t len;
    /*[]*/
    time_t now;
    /*[]*/
    void *_imopVarPre198;
    /*[]*/
    signed long int _imopVarPre199;
    /*[]*/
    _imopVarPre198 = ((void *) 0);
    /*[]*/
    _imopVarPre199 = time(_imopVarPre198);
    /*[]*/
    /*[]*/
    now = _imopVarPre199;
    /*[]*/
    signed long int *_imopVarPre201;
    /*[]*/
    struct tm *_imopVarPre202;
    /*[]*/
    _imopVarPre201 = &now;
    /*[]*/
    _imopVarPre202 = localtime(_imopVarPre201);
    /*[]*/
    /*[]*/
    tm = _imopVarPre202;
    /*[]*/
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*[]*/
    /*[]*/
    printf("%s\n", time_buffer);
    /*[]*/
    /*[]*/
    return;
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void update(int np, int nd , double pos[] , double vel[] , double f[] , double acc[] , double mass , double dt) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    double rmass;
    /*[]*/
    rmass = 1.0 / mass;
    /*[3]*/
#pragma omp parallel shared(acc, dt, f, nd, np, pos, rmass, vel) private(i, j)
    {
    /*[3]*/
        /*[3]*/
#pragma omp for nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (j = 0; j < np; j++) {
        /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (i = 0; i < nd; i++) {
            /*[3]*/
                /*[3]*/
                pos[i + j * nd] = pos[i + j * nd] + vel[i + j * nd] * dt + 0.5 * acc[i + j * nd] * dt * dt;
                /*[3]*/
                vel[i + j * nd] = vel[i + j * nd] + 0.5 * dt * (f[i + j * nd] * rmass + acc[i + j * nd]);
                /*[3]*/
                acc[i + j * nd] = f[i + j * nd] * rmass;
            }
        }
        /*[3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3]*/
#pragma omp barrier
    }
    /*[]*/
    return;
}
