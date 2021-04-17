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
void compute(int np, int nd , double pos[] , double vel[] , double mass , double f[] , double *pot , double *kin);
double dist(int nd, double r1[] , double r2[] , double dr[]);
void initialize(int np, int nd , double box[] , int *seed , double pos[] , double vel[] , double acc[]);
double r8_uniform_01(int *seed);
void timestamp(void );
void update(int np, int nd , double pos[] , double vel[] , double f[] , double acc[] , double mass , double dt);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char *argv[]) {
    /*OUT: {
    Reverse<--,>}*/
    double *acc;
    /*OUT: {
    Reverse<--,>}*/
    double *box;
    /*OUT: {
    Reverse<--,>}*/
    double dt = 0.0001;
    /*OUT: {
    Reverse<--,>}*/
    double e0;
    /*OUT: {
    Reverse<--,>}*/
    double *force;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    double kinetic;
    /*OUT: {
    Reverse<--,>}*/
    double mass = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    int nd = 3;
    /*OUT: {
    Reverse<--,>}*/
    int np = 1000;
    /*OUT: {
    Reverse<--,>}*/
    double *pos;
    /*OUT: {
    Reverse<--,>}*/
    double potential;
    /*OUT: {
    Reverse<--,>}*/
    int proc_num;
    /*OUT: {
    Reverse<--,>}*/
    int seed = 123456789;
    /*OUT: {
    Reverse<--,>}*/
    int step;
    /*OUT: {
    Reverse<--,>}*/
    int step_num = 400;
    /*OUT: {
    Reverse<--,>}*/
    int step_print;
    /*OUT: {
    Reverse<--,>}*/
    int step_print_index;
    /*OUT: {
    Reverse<--,>}*/
    int step_print_num;
    /*OUT: {
    Reverse<--,>}*/
    double *vel;
    /*OUT: {
    Reverse<--,>}*/
    double wtime;
    /*OUT: {
    Reverse<--,>}*/
    timestamp();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    proc_num = omp_get_num_procs();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre144;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre144 = nd * np * sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre145 = malloc(_imopVarPre144);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    acc = (double *) _imopVarPre145;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre148;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre149;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre148 = nd * sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre149 = malloc(_imopVarPre148);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    box = (double *) _imopVarPre149;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre152;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre153;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre152 = nd * np * sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre153 = malloc(_imopVarPre152);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    force = (double *) _imopVarPre153;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre156;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre157;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre156 = nd * np * sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre157 = malloc(_imopVarPre156);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    pos = (double *) _imopVarPre157;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre160;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre161;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre160 = nd * np * sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre161 = malloc(_imopVarPre160);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    vel = (double *) _imopVarPre161;
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("MD_OPENMP\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  C/OpenMP version\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  A molecular dynamics program.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  NP, the number of particles in the simulation is %d\n", np);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  STEP_NUM, the number of time steps, is %d\n", step_num);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  DT, the size of each time step, is %f\n", dt);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre163;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre163 = omp_get_num_procs();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Number of processors available = %d\n", _imopVarPre163);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre165;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre165 = omp_get_max_threads();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("  Number of threads =              %d\n", _imopVarPre165);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 240_0;>}*/
    for (i = 0; i < nd; i++) {
        /*OUT: {
        Reverse<--, 240_0;>}*/
        box[i] = 10.0;
    }
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("  Initializing positions, velocities, and accelerations.\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    int *_imopVarPre167;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    _imopVarPre167 = &seed;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    initialize(np, nd, box, _imopVarPre167, pos, vel, acc);
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("  Computing initial forces and energies.\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    double *_imopVarPre170;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    double *_imopVarPre171;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    _imopVarPre170 = &kinetic;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    _imopVarPre171 = &potential;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    compute(np, nd, pos, vel, mass, force, _imopVarPre171, _imopVarPre170);
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    e0 = potential + kinetic;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("  At each step, we report the potential and kinetic energies.\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("  The sum of these energies should be a constant.\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("  As an accuracy check, we also print the relative error\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("  in the total energy.\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("      Step      Potential       Kinetic        (P+K-E0)/E0\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("                Energy P        Energy K       Relative Energy Error\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    step_print = 0;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    step_print_index = 0;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    step_print_num = 10;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    step = 0;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    double _imopVarPre173;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    _imopVarPre173 = (potential + kinetic - e0) / e0;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    printf("  %8d  %14f  %14f  %14e\n", step, potential, kinetic, _imopVarPre173);
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    step_print_index = step_print_index + 1;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    step_print = (step_print_index * step_num) / step_print_num;
    /*OUT: {
    Reverse<--, 240_1;>}*/
    wtime = omp_get_wtime();
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_0; 240_1;>}*/
    for (step = 1; step <= step_num; step++) {
        /*OUT: {
        Reverse<--, 360_0; 240_1;>}*/
        double *_imopVarPre176;
        /*OUT: {
        Reverse<--, 360_0; 240_1;>}*/
        double *_imopVarPre177;
        /*OUT: {
        Reverse<--, 360_0; 240_1;>}*/
        _imopVarPre176 = &kinetic;
        /*OUT: {
        Reverse<--, 360_0; 240_1;>}*/
        _imopVarPre177 = &potential;
        /*OUT: {
        Reverse<--, 360_0; 240_1;>}*/
        compute(np, nd, pos, vel, mass, force, _imopVarPre177, _imopVarPre176);
        /*OUT: {
        Reverse<--, 360_0; 240_1;>}*/
        /*OUT: {
        Reverse<--, 360_0; 240_1;>}*/
        if (step == step_print) {
            /*OUT: {
            Reverse<--, 373_0; 360_0; 240_1;>}*/
            double _imopVarPre179;
            /*OUT: {
            Reverse<--, 373_0; 360_0; 240_1;>}*/
            _imopVarPre179 = (potential + kinetic - e0) / e0;
            /*OUT: {
            Reverse<--, 373_0; 360_0; 240_1;>}*/
            printf("  %8d  %14f  %14f  %14e\n", step, potential, kinetic, _imopVarPre179);
            /*OUT: {
            Reverse<--, 373_0; 360_0; 240_1;>}*/
            /*OUT: {
            Reverse<--, 373_0; 360_0; 240_1;>}*/
            step_print_index = step_print_index + 1;
            /*OUT: {
            Reverse<--, 373_0; 360_0; 240_1;>}*/
            step_print = (step_print_index * step_num) / step_print_num;
        }
        /*OUT: {
        Reverse<--, 360_0; 240_1;>}*/
        update(np, nd, pos, vel, force, acc, mass, dt);
        /*OUT: {
        Reverse<--, 360_0; 240_1;>}*/
    }
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    double _imopVarPre181;
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    _imopVarPre181 = omp_get_wtime();
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    wtime = _imopVarPre181 - wtime;
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    printf("  Elapsed time for main computation:\n");
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    printf("  %f seconds.\n", wtime);
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    free(acc);
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    free(box);
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    free(force);
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    free(pos);
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    free(vel);
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    printf("MD_OPENMP\n");
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    printf("  Normal end of execution.\n");
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    timestamp();
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    /*OUT: {
    Reverse<--, 360_1; 240_1;>}*/
    return 0;
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
void compute(int np, int nd , double pos[] , double vel[] , double mass , double f[] , double *pot , double *kin) {
    /*OUT: {
    Reverse<--,>}*/
    double d;
    /*OUT: {
    Reverse<--,>}*/
    double d2;
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
    double ke;
    /*OUT: {
    Reverse<--,>}*/
    double pe;
    /*OUT: {
    Reverse<--,>}*/
    double PI2 = 3.141592653589793 / 2.0;
    /*OUT: {
    Reverse<--,>}*/
    double rij[3];
    /*OUT: {
    Reverse<--,>}*/
    pe = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    ke = 0.0;
#pragma omp parallel shared(f, nd, np, pos, vel) private(i, j, k, rij, d, d2)
    {
#pragma omp for reduction(+:pe, ke) nowait
        /*OUT: {
        Reverse<766,>}*/
        /*OUT: {
        Reverse<766,>}*/
        /*OUT: {
        Reverse<766, 560_1; 502_1; 496_1;>}*/
        for (k = 0; k < np; k++) {
            /*OUT: {
            Reverse<766,>}*/
            /*OUT: {
            Reverse<766,>}*/
            /*OUT: {
            Reverse<766, 496_0;>}*/
            for (i = 0; i < nd; i++) {
                /*OUT: {
                Reverse<766, 496_0;>}*/
                f[i + k * nd] = 0.0;
            }
            /*OUT: {
            Reverse<766, 496_1;>}*/
            /*OUT: {
            Reverse<766, 496_1;>}*/
            /*OUT: {
            Reverse<766, 504_1; 502_0; 496_1;>
            Reverse<766, 542_1; 504_0; 502_0; 496_1;>}*/
            for (j = 0; j < np; j++) {
                /*OUT: {
                Reverse<766, 502_0; 496_1;>}*/
                if (k != j) {
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    double *_imopVarPre184;
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    double *_imopVarPre185;
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    double _imopVarPre186;
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    _imopVarPre184 = pos + j * nd;
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    _imopVarPre185 = pos + k * nd;
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    _imopVarPre186 = dist(nd, _imopVarPre185, _imopVarPre184, rij);
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    d = _imopVarPre186;
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    if (d < PI2) {
                        /*OUT: {
                        Reverse<766, 520_0; 504_0; 502_0; 496_1;>}*/
                        d2 = d;
                    } else {
                        /*OUT: {
                        Reverse<766, 520_1; 504_0; 502_0; 496_1;>}*/
                        d2 = PI2;
                    }
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    double _imopVarPre189;
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    double _imopVarPre190;
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    _imopVarPre189 = sin(d2);
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    _imopVarPre190 = pow(_imopVarPre189, 2);
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    pe = pe + 0.5 * _imopVarPre190;
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    /*OUT: {
                    Reverse<766, 504_0; 502_0; 496_1;>}*/
                    /*OUT: {
                    Reverse<766, 542_0; 504_0; 502_0; 496_1;>}*/
                    for (i = 0; i < nd; i++) {
                        /*OUT: {
                        Reverse<766, 542_0; 504_0; 502_0; 496_1;>}*/
                        double _imopVarPre193;
                        /*OUT: {
                        Reverse<766, 542_0; 504_0; 502_0; 496_1;>}*/
                        double _imopVarPre194;
                        /*OUT: {
                        Reverse<766, 542_0; 504_0; 502_0; 496_1;>}*/
                        _imopVarPre193 = 2.0 * d2;
                        /*OUT: {
                        Reverse<766, 542_0; 504_0; 502_0; 496_1;>}*/
                        _imopVarPre194 = sin(_imopVarPre193);
                        /*OUT: {
                        Reverse<766, 542_0; 504_0; 502_0; 496_1;>}*/
                        /*OUT: {
                        Reverse<766, 542_0; 504_0; 502_0; 496_1;>}*/
                        f[i + k * nd] = f[i + k * nd] - rij[i] * _imopVarPre194 / d;
                    }
                }
            }
            /*OUT: {
            Reverse<766, 502_1; 496_1;>}*/
            /*OUT: {
            Reverse<766, 502_1; 496_1;>}*/
            /*OUT: {
            Reverse<766, 560_0; 502_1; 496_1;>}*/
            for (i = 0; i < nd; i++) {
                /*OUT: {
                Reverse<766, 560_0; 502_1; 496_1;>}*/
                ke = ke + vel[i + k * nd] * vel[i + k * nd];
            }
        }
        /*OUT: {
        Reverse<766,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<566,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    ke = ke * 0.5 * mass;
    /*OUT: {
    Reverse<--,>}*/
    *pot = pe;
    /*OUT: {
    Reverse<--,>}*/
    *kin = ke;
    /*OUT: {
    Reverse<--,>}*/
    return;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
double dist(int nd, double r1[] , double r2[] , double dr[]) {
    /*OUT: {
    Reverse<--,>}*/
    double d;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    d = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 583_0;>}*/
    for (i = 0; i < nd; i++) {
        /*OUT: {
        Reverse<--, 583_0;>}*/
        dr[i] = r1[i] - r2[i];
        /*OUT: {
        Reverse<--, 583_0;>}*/
        d = d + dr[i] * dr[i];
    }
    /*OUT: {
    Reverse<--, 583_1;>}*/
    d = sqrt(d);
    /*OUT: {
    Reverse<--, 583_1;>}*/
    /*OUT: {
    Reverse<--, 583_1;>}*/
    return d;
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
void initialize(int np, int nd , double box[] , int *seed , double pos[] , double vel[] , double acc[]) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 615_1; 612_0;>}*/
    for (i = 0; i < nd; i++) {
        /*OUT: {
        Reverse<--, 612_0;>}*/
        /*OUT: {
        Reverse<--, 612_0;>}*/
        /*OUT: {
        Reverse<--, 615_0; 612_0;>}*/
        for (j = 0; j < np; j++) {
            /*OUT: {
            Reverse<--, 615_0; 612_0;>}*/
            double _imopVarPre196;
            /*OUT: {
            Reverse<--, 615_0; 612_0;>}*/
            _imopVarPre196 = r8_uniform_01(seed);
            /*OUT: {
            Reverse<--, 615_0; 612_0;>}*/
            /*OUT: {
            Reverse<--, 615_0; 612_0;>}*/
            pos[i + j * nd] = box[i] * _imopVarPre196;
        }
    }
    /*OUT: {
    Reverse<--, 612_1;>}*/
    /*OUT: {
    Reverse<--, 612_1;>}*/
    /*OUT: {
    Reverse<--, 632_1; 629_0; 612_1;>}*/
    for (j = 0; j < np; j++) {
        /*OUT: {
        Reverse<--, 629_0; 612_1;>}*/
        /*OUT: {
        Reverse<--, 629_0; 612_1;>}*/
        /*OUT: {
        Reverse<--, 632_0; 629_0; 612_1;>}*/
        for (i = 0; i < nd; i++) {
            /*OUT: {
            Reverse<--, 632_0; 629_0; 612_1;>}*/
            vel[i + j * nd] = 0.0;
        }
    }
    /*OUT: {
    Reverse<--, 629_1; 612_1;>}*/
    /*OUT: {
    Reverse<--, 629_1; 612_1;>}*/
    /*OUT: {
    Reverse<--, 641_1; 638_0; 629_1; 612_1;>}*/
    for (j = 0; j < np; j++) {
        /*OUT: {
        Reverse<--, 638_0; 629_1; 612_1;>}*/
        /*OUT: {
        Reverse<--, 638_0; 629_1; 612_1;>}*/
        /*OUT: {
        Reverse<--, 641_0; 638_0; 629_1; 612_1;>}*/
        for (i = 0; i < nd; i++) {
            /*OUT: {
            Reverse<--, 641_0; 638_0; 629_1; 612_1;>}*/
            acc[i + j * nd] = 0.0;
        }
    }
    /*OUT: {
    Reverse<--, 638_1; 629_1; 612_1;>}*/
    return;
}
/*OUT: {
Reverse<--,>}*/
double r8_uniform_01(int *seed) {
    /*OUT: {
    Reverse<--,>}*/
    int k;
    /*OUT: {
    Reverse<--,>}*/
    double r;
    /*OUT: {
    Reverse<--,>}*/
    k = *seed / 127773;
    /*OUT: {
    Reverse<--,>}*/
    *seed = 16807 * (*seed - k * 127773) - k * 2836;
    /*OUT: {
    Reverse<--,>}*/
    if (*seed < 0) {
        /*OUT: {
        Reverse<--, 655_0;>}*/
        *seed = *seed + 2147483647;
    }
    /*OUT: {
    Reverse<--,>}*/
    r = (double) (*seed) * 4.656612875E-10;
    /*OUT: {
    Reverse<--,>}*/
    return r;
}
void timestamp() {
    /*OUT: {
    Reverse<--,>}*/
    static char time_buffer[40];
    /*OUT: {
    Reverse<--,>}*/
    const struct tm *tm;
    /*OUT: {
    Reverse<--,>}*/
    size_t len;
    /*OUT: {
    Reverse<--,>}*/
    time_t now;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre198;
    /*OUT: {
    Reverse<--,>}*/
    signed long int _imopVarPre199;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre198 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre199 = time(_imopVarPre198);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    now = _imopVarPre199;
    /*OUT: {
    Reverse<--,>}*/
    signed long int *_imopVarPre201;
    /*OUT: {
    Reverse<--,>}*/
    struct tm *_imopVarPre202;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre201 = &now;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre202 = localtime(_imopVarPre201);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    tm = _imopVarPre202;
    /*OUT: {
    Reverse<--,>}*/
    len = strftime(time_buffer, 40, "%d %B %Y %I:%M:%S %p", tm);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("%s\n", time_buffer);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return;
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
void update(int np, int nd , double pos[] , double vel[] , double f[] , double acc[] , double mass , double dt) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double rmass;
    /*OUT: {
    Reverse<--,>}*/
    rmass = 1.0 / mass;
#pragma omp parallel shared(acc, dt, f, nd, np, pos, rmass, vel) private(i, j)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<882,>}*/
        /*OUT: {
        Reverse<882,>}*/
        /*OUT: {
        Reverse<882, 723_1;>}*/
        for (j = 0; j < np; j++) {
            /*OUT: {
            Reverse<882,>}*/
            /*OUT: {
            Reverse<882,>}*/
            /*OUT: {
            Reverse<882, 723_0;>}*/
            for (i = 0; i < nd; i++) {
                /*OUT: {
                Reverse<882, 723_0;>}*/
                pos[i + j * nd] = pos[i + j * nd] + vel[i + j * nd] * dt + 0.5 * acc[i + j * nd] * dt * dt;
                /*OUT: {
                Reverse<882, 723_0;>}*/
                vel[i + j * nd] = vel[i + j * nd] + 0.5 * dt * (f[i + j * nd] * rmass + acc[i + j * nd]);
                /*OUT: {
                Reverse<882, 723_0;>}*/
                acc[i + j * nd] = f[i + j * nd] * rmass;
            }
        }
        /*OUT: {
        Reverse<882,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<742,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    return;
}
