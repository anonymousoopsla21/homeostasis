
/*[]*/
typedef long unsigned int __darwin_size_t;
/*[]*/
typedef __darwin_size_t size_t;
/*[]*/
struct __sFILEX ;
/*[]*/
int printf(const char *restrict , ...);
/*[]*/
int rand(void );
/*[]*/
void srand(unsigned );
/*[]*/
extern char *suboptarg;
/*[]*/
struct fssearchblock ;
/*[]*/
struct searchstate ;
/*[]*/
extern int omp_get_max_threads(void );
/*[]*/
extern void *OSCR_calloc(size_t nmemb, size_t size);
/*[]*/
void OSCR_init(int numThreads, char *description , char *usage , int numArgs , char *argNames[] , char *defaultValues[] , int numTimers , int numReportedTimers , char *reportedTimerNames[] , int argc , char *argv[]);
/*[]*/
extern int OSCR_getarg_int(int ind);
/*[]*/
extern void OSCR_timer_start(int );
/*[]*/
extern void OSCR_timer_stop(int );
/*[]*/
extern double OSCR_timer_read(int );
/*[]*/
extern void OSCR_report();
/*[]*/
extern double cos(double );
/*[]*/
extern double sin(double );
/*[]*/
extern double pow(double , double );
/*[]*/
extern double sqrt(double );
/*[]*/
int NPARTS;
/*[]*/
int NSTEPS;
/*[]*/
typedef double vnd_t[3];
/*[]*/
double v(double x);
/*[]*/
double dv(double x);
/*[]*/
void initialize(int np, int nd , vnd_t box , vnd_t *pos , vnd_t *vel , vnd_t *acc);
/*[]*/
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr);
/*[]*/
double dot_prod(int n, vnd_t x , vnd_t y);
/*[]*/
void compute(int np, int nd , vnd_t *pos , vnd_t *vel , double mass , vnd_t *f , double *pot_p , double *kin_p);
/*[]*/
void update(int np, int nd , vnd_t *pos , vnd_t *vel , vnd_t *f , vnd_t *a , double mass , double dt);
/*[]*/
int main(int argc, char **argv);
/*[1]*/
/*[1]*/
double v(double x) {
/*[1]*/
    /*[1]*/
    /*[1]*/
    if (x < 1.57079632679489661923132169163975144) {
    /*[1]*/
        /*[1]*/
        double _imopVarPre142;
        /*[1]*/
        double _imopVarPre143;
        /*[1]*/
        _imopVarPre142 = sin(x);
        /*[1]*/
        /*[1]*/
        _imopVarPre143 = pow(_imopVarPre142, 2.0);
        /*[1]*/
        /*[1]*/
        return _imopVarPre143;
    } else {
    /*[1]*/
        /*[1]*/
        return 1.0;
    }
}
/*[1]*/
/*[1]*/
double dv(double x) {
/*[1]*/
    /*[1]*/
    /*[1]*/
    if (x < 1.57079632679489661923132169163975144) {
    /*[1]*/
        /*[1]*/
        double _imopVarPre146;
        /*[1]*/
        double _imopVarPre147;
        /*[1]*/
        _imopVarPre146 = sin(x);
        /*[1]*/
        /*[1]*/
        _imopVarPre147 = cos(x);
        /*[1]*/
        /*[1]*/
        return 2.0 * _imopVarPre146 * _imopVarPre147;
    } else {
    /*[1]*/
        /*[1]*/
        return 0.0;
    }
}
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
/*[]*/
void initialize(int np, int nd , vnd_t box , vnd_t *pos , vnd_t *vel , vnd_t *acc) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    double x;
    /*[]*/
    srand(4711L);
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < np; i++) {
    /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        /*[]*/
        for (j = 0; j < nd; j++) {
        /*[]*/
            /*[]*/
            int _imopVarPre149;
            /*[]*/
            _imopVarPre149 = rand();
            /*[]*/
            /*[]*/
            x = _imopVarPre149 % 10000 / (double) 10000.0;
            /*[]*/
            pos[i][j] = box[j] * x;
            /*[]*/
            vel[i][j] = 0.0;
            /*[]*/
            acc[i][j] = 0.0;
        }
    }
}
/*[1]*/
/*[1]*/
/*[1]*/
/*[1]*/
/*[1]*/
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr) {
/*[1]*/
    /*[1]*/
    int i;
    /*[1]*/
    double d;
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
        d += dr[i] * dr[i];
    }
    /*[1]*/
    double _imopVarPre150;
    /*[1]*/
    _imopVarPre150 = sqrt(d);
    /*[1]*/
    /*[1]*/
    return _imopVarPre150;
}
/*[1]*/
/*[1]*/
/*[1]*/
/*[1]*/
double dot_prod(int n, vnd_t x , vnd_t y) {
/*[1]*/
    /*[1]*/
    int i;
    /*[1]*/
    double t = 0.0;
    /*[1]*/
    /*[1]*/
    /*[1]*/
    /*[1]*/
    for (i = 0; i < n; i++) {
    /*[1]*/
        /*[1]*/
        t += x[i] * y[i];
    }
    /*[1]*/
    return t;
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
void compute(int np, int nd , vnd_t *pos , vnd_t *vel , double mass , vnd_t *f , double *pot_p , double *kin_p) {
/*[]*/
    /*[]*/
    int i;
    /*[]*/
    int j;
    /*[]*/
    int k;
    /*[]*/
    vnd_t rij;
    /*[]*/
    double d;
    /*[]*/
    double pot;
    /*[]*/
    double kin;
    /*[]*/
    pot = 0.0;
    /*[]*/
    kin = 0.0;
    /*[1]*/
#pragma omp parallel default(shared) private(i, j, k, rij, d)
    {
    /*[1]*/
        /*[1]*/
#pragma omp for reduction(+:pot, kin) nowait
        /*[1]*/
        /*[1]*/
        /*[1]*/
        for (i = 0; i < np; i++) {
        /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (j = 0; j < nd; j++) {
            /*[1]*/
                /*[1]*/
                f[i][j] = 0.0;
            }
            /*[1]*/
            /*[1]*/
            /*[1]*/
            /*[1]*/
            for (j = 0; j < np; j++) {
            /*[1]*/
                /*[1]*/
                /*[1]*/
                if (i != j) {
                /*[1]*/
                    /*[1]*/
                    double *_imopVarPre153;
                    /*[1]*/
                    double *_imopVarPre154;
                    /*[1]*/
                    double _imopVarPre155;
                    /*[1]*/
                    _imopVarPre153 = pos[j];
                    /*[1]*/
                    _imopVarPre154 = pos[i];
                    /*[1]*/
                    _imopVarPre155 = dist(nd, _imopVarPre154, _imopVarPre153, rij);
                    /*[1]*/
                    /*[1]*/
                    d = _imopVarPre155;
                    /*[1]*/
                    double _imopVarPre157;
                    /*[1]*/
                    _imopVarPre157 = v(d);
                    /*[1]*/
                    /*[1]*/
                    pot = pot + 0.5 * _imopVarPre157;
                    /*[1]*/
                    /*[1]*/
                    /*[1]*/
                    /*[1]*/
                    for (k = 0; k < nd; k++) {
                    /*[1]*/
                        /*[1]*/
                        double _imopVarPre159;
                        /*[1]*/
                        _imopVarPre159 = dv(d);
                        /*[1]*/
                        /*[1]*/
                        f[i][k] = f[i][k] - rij[k] * _imopVarPre159 / d;
                    }
                }
            }
            /*[1]*/
            double *_imopVarPre163;
            /*[1]*/
            double *_imopVarPre164;
            /*[1]*/
            double _imopVarPre165;
            /*[1]*/
            _imopVarPre163 = vel[j];
            /*[1]*/
            _imopVarPre164 = vel[i];
            /*[1]*/
            _imopVarPre165 = dot_prod(nd, _imopVarPre164, _imopVarPre163);
            /*[1]*/
            /*[1]*/
            kin = kin + _imopVarPre165;
        }
        /*[1]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[1]*/
#pragma omp barrier
    }
    /*[]*/
    kin = kin * 0.5 * mass;
    /*[]*/
    *pot_p = pot;
    /*[]*/
    *kin_p = kin;
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
void update(int np, int nd , vnd_t *pos , vnd_t *vel , vnd_t *f , vnd_t *a , double mass , double dt) {
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
#pragma omp parallel default(shared) private(i, j) firstprivate(rmass, dt)
    {
    /*[3]*/
        /*[3]*/
#pragma omp for nowait
        /*[3]*/
        /*[3]*/
        /*[3]*/
        for (i = 0; i < np; i++) {
        /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (j = 0; j < nd; j++) {
            /*[3]*/
                /*[3]*/
                pos[i][j] = pos[i][j] + vel[i][j] * dt + 0.5 * dt * dt * a[i][j];
                /*[3]*/
                vel[i][j] = vel[i][j] + 0.5 * dt * (f[i][j] * rmass + a[i][j]);
                /*[3]*/
                a[i][j] = f[i][j] * rmass;
            }
        }
        /*[3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3]*/
#pragma omp barrier
    }
}
/*[]*/
/*[]*/
/*[]*/
int main(int argc, char **argv) {
/*[]*/
    /*[]*/
    double mass = 1.0;
    /*[]*/
    double dt = 1.0e-4;
    /*[]*/
    vnd_t box;
    /*[]*/
    vnd_t *position;
    /*[]*/
    vnd_t *velocity;
    /*[]*/
    vnd_t *force;
    /*[]*/
    vnd_t *accel;
    /*[]*/
    double potential;
    /*[]*/
    double kinetic;
    /*[]*/
    double E0;
    /*[]*/
    int i;
    /*[]*/
    int NUMTHREADS;
    /*[]*/
    double total_time;
    /*[]*/
    char *PARAM_NAMES[2] = {"Nparts", "Nsteps"};
    /*[]*/
    char *TIMERS_NAMES[1] = {"Total_time"};
    /*[]*/
    char *DEFAULT_VALUES[2] = {"8192", "10"};
    /*[]*/
    NUMTHREADS = omp_get_max_threads();
    /*[]*/
    /*[]*/
    OSCR_init(NUMTHREADS, "Molecular dynamic simulation", "Use md <Nparts> <Nsteps>", 2, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
    /*[]*/
    /*[]*/
    NPARTS = OSCR_getarg_int(1);
    /*[]*/
    /*[]*/
    NSTEPS = OSCR_getarg_int(2);
    /*[]*/
    /*[]*/
    unsigned long int _imopVarPre167;
    /*[]*/
    void *_imopVarPre168;
    /*[]*/
    _imopVarPre167 = sizeof(vnd_t);
    /*[]*/
    _imopVarPre168 = OSCR_calloc(NPARTS, _imopVarPre167);
    /*[]*/
    /*[]*/
    position = _imopVarPre168;
    /*[]*/
    unsigned long int _imopVarPre170;
    /*[]*/
    void *_imopVarPre171;
    /*[]*/
    _imopVarPre170 = sizeof(vnd_t);
    /*[]*/
    _imopVarPre171 = OSCR_calloc(NPARTS, _imopVarPre170);
    /*[]*/
    /*[]*/
    velocity = _imopVarPre171;
    /*[]*/
    unsigned long int _imopVarPre173;
    /*[]*/
    void *_imopVarPre174;
    /*[]*/
    _imopVarPre173 = sizeof(vnd_t);
    /*[]*/
    _imopVarPre174 = OSCR_calloc(NPARTS, _imopVarPre173);
    /*[]*/
    /*[]*/
    force = _imopVarPre174;
    /*[]*/
    unsigned long int _imopVarPre176;
    /*[]*/
    void *_imopVarPre177;
    /*[]*/
    _imopVarPre176 = sizeof(vnd_t);
    /*[]*/
    _imopVarPre177 = OSCR_calloc(NPARTS, _imopVarPre176);
    /*[]*/
    /*[]*/
    accel = _imopVarPre177;
    /*[]*/
    NUMTHREADS = omp_get_max_threads();
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < 3; i++) {
    /*[]*/
        /*[]*/
        box[i] = 10.0;
    }
    /*[]*/
    initialize(NPARTS, 3, box, position, velocity, accel);
    /*[]*/
    /*[]*/
    OSCR_timer_start(0);
    /*[]*/
    /*[]*/
    double *_imopVarPre180;
    /*[]*/
    double *_imopVarPre181;
    /*[]*/
    _imopVarPre180 = &kinetic;
    /*[]*/
    _imopVarPre181 = &potential;
    /*[]*/
    compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre181, _imopVarPre180);
    /*[]*/
    /*[]*/
    E0 = potential + kinetic;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < NSTEPS; i++) {
    /*[]*/
        /*[]*/
        double *_imopVarPre184;
        /*[]*/
        double *_imopVarPre185;
        /*[]*/
        _imopVarPre184 = &kinetic;
        /*[]*/
        _imopVarPre185 = &potential;
        /*[]*/
        compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre185, _imopVarPre184);
        /*[]*/
        /*[]*/
        update(NPARTS, 3, position, velocity, force, accel, mass, dt);
        /*[]*/
    }
    /*[]*/
    OSCR_timer_stop(0);
    /*[]*/
    /*[]*/
    total_time = OSCR_timer_read(0);
    /*[]*/
    /*[]*/
    OSCR_report(1, TIMERS_NAMES);
    /*[]*/
    /*[]*/
    printf("\n \t# THREADS \tTIME (secs.) \n");
    /*[]*/
    /*[]*/
    printf("\t %d \t\t%14.6lf\n", NUMTHREADS, total_time);
    /*[]*/
    /*[]*/
    return 0;
}
