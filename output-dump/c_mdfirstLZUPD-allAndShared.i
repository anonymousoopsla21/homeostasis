
/*READ_S: []
WRITE_S: []*/
typedef long unsigned int __darwin_size_t;
/*READ_S: []
WRITE_S: []*/
typedef __darwin_size_t size_t;
/*READ_S: []
WRITE_S: []*/
struct __sFILEX ;
/*READ_S: []
WRITE_S: [printf]*/
int printf(const char *restrict , ...);
/*READ_S: []
WRITE_S: [rand]*/
int rand(void );
/*READ_S: []
WRITE_S: [srand]*/
void srand(unsigned );
/*READ_S: []
WRITE_S: [suboptarg]*/
extern char *suboptarg;
/*READ_S: []
WRITE_S: []*/
struct fssearchblock ;
/*READ_S: []
WRITE_S: []*/
struct searchstate ;
/*READ_S: []
WRITE_S: [omp_get_max_threads]*/
extern int omp_get_max_threads(void );
/*READ_S: []
WRITE_S: [OSCR_calloc]*/
extern void *OSCR_calloc(size_t nmemb, size_t size);
/*READ_S: []
WRITE_S: [OSCR_init]*/
void OSCR_init(int numThreads, char *description , char *usage , int numArgs , char *argNames[] , char *defaultValues[] , int numTimers , int numReportedTimers , char *reportedTimerNames[] , int argc , char *argv[]);
/*READ_S: []
WRITE_S: [OSCR_getarg_int]*/
extern int OSCR_getarg_int(int ind);
/*READ_S: []
WRITE_S: [OSCR_timer_start]*/
extern void OSCR_timer_start(int );
/*READ_S: []
WRITE_S: [OSCR_timer_stop]*/
extern void OSCR_timer_stop(int );
/*READ_S: []
WRITE_S: [OSCR_timer_read]*/
extern double OSCR_timer_read(int );
/*READ_S: []
WRITE_S: [OSCR_report]*/
extern void OSCR_report();
/*READ_S: []
WRITE_S: [cos]*/
extern double cos(double );
/*READ_S: []
WRITE_S: [sin]*/
extern double sin(double );
/*READ_S: []
WRITE_S: [pow]*/
extern double pow(double , double );
/*READ_S: []
WRITE_S: [sqrt]*/
extern double sqrt(double );
/*READ_S: []
WRITE_S: [NPARTS]*/
int NPARTS;
/*READ_S: []
WRITE_S: [NSTEPS]*/
int NSTEPS;
/*READ_S: []
WRITE_S: []*/
typedef double vnd_t[3];
/*READ_S: []
WRITE_S: [v]*/
double v(double x);
/*READ_S: []
WRITE_S: [dv]*/
double dv(double x);
/*READ_S: []
WRITE_S: [initialize]*/
void initialize(int np, int nd , vnd_t box , vnd_t *pos , vnd_t *vel , vnd_t *acc);
/*READ_S: []
WRITE_S: [dist]*/
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr);
/*READ_S: []
WRITE_S: [dot_prod]*/
double dot_prod(int n, vnd_t x , vnd_t y);
/*READ_S: []
WRITE_S: [compute]*/
void compute(int np, int nd , vnd_t *pos , vnd_t *vel , double mass , vnd_t *f , double *pot_p , double *kin_p);
/*READ_S: []
WRITE_S: [update]*/
void update(int np, int nd , vnd_t *pos , vnd_t *vel , vnd_t *f , vnd_t *a , double mass , double dt);
/*READ_S: []
WRITE_S: [main]*/
int main(int argc, char **argv);
/*READ_S: []
WRITE_S: []*/
/*READ_S: [pow, sin]
WRITE_S: []*/
double v(double x) {
/*READ_S: [pow, sin]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [pow, sin]
    WRITE_S: []*/
    if (x < 1.57079632679489661923132169163975144) {
    /*READ_S: [pow, sin]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre142;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre143;
        /*READ_S: [sin]
        WRITE_S: []*/
        _imopVarPre142 = sin(x);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [pow]
        WRITE_S: []*/
        _imopVarPre143 = pow(_imopVarPre142, 2.0);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        return _imopVarPre143;
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
/*READ_S: [cos, sin]
WRITE_S: []*/
double dv(double x) {
/*READ_S: [cos, sin]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [cos, sin]
    WRITE_S: []*/
    if (x < 1.57079632679489661923132169163975144) {
    /*READ_S: [cos, sin]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre146;
        /*READ_S: []
        WRITE_S: []*/
        double _imopVarPre147;
        /*READ_S: [sin]
        WRITE_S: []*/
        _imopVarPre146 = sin(x);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [cos]
        WRITE_S: []*/
        _imopVarPre147 = cos(x);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        return 2.0 * _imopVarPre146 * _imopVarPre147;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [srand, rand]
WRITE_S: []*/
void initialize(int np, int nd , vnd_t box , vnd_t *pos , vnd_t *vel , vnd_t *acc) {
/*READ_S: [srand, rand]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    double x;
    /*READ_S: [srand]
    WRITE_S: []*/
    srand(4711L);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [rand]
    WRITE_S: []*/
    for (i = 0; i < np; i++) {
    /*READ_S: [rand]
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [rand]
        WRITE_S: []*/
        for (j = 0; j < nd; j++) {
        /*READ_S: [rand]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            int _imopVarPre149;
            /*READ_S: [rand]
            WRITE_S: []*/
            _imopVarPre149 = rand();
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            x = _imopVarPre149 % 10000 / (double) 10000.0;
            /*READ_S: []
            WRITE_S: []*/
            pos[i][j] = box[j] * x;
            /*READ_S: []
            WRITE_S: []*/
            vel[i][j] = 0.0;
            /*READ_S: []
            WRITE_S: []*/
            acc[i][j] = 0.0;
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
/*READ_S: [rij.f, sqrt]
WRITE_S: [rij.f]*/
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr) {
/*READ_S: [rij.f, sqrt]
WRITE_S: [rij.f]*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    double d;
    /*READ_S: []
    WRITE_S: []*/
    d = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [rij.f]
    WRITE_S: [rij.f]*/
    for (i = 0; i < nd; i++) {
    /*READ_S: [rij.f]
    WRITE_S: [rij.f]*/
        /*READ_S: []
        WRITE_S: [rij.f]*/
        dr[i] = r1[i] - r2[i];
        /*READ_S: [rij.f]
        WRITE_S: []*/
        d += dr[i] * dr[i];
    }
    /*READ_S: []
    WRITE_S: []*/
    double _imopVarPre150;
    /*READ_S: [sqrt]
    WRITE_S: []*/
    _imopVarPre150 = sqrt(d);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return _imopVarPre150;
}
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
double dot_prod(int n, vnd_t x , vnd_t y) {
/*READ_S: []
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    double t = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    for (i = 0; i < n; i++) {
    /*READ_S: []
    WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        t += x[i] * y[i];
    }
    /*READ_S: []
    WRITE_S: []*/
    return t;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [vel, nd, np, sqrt, dist, pos, dv, pot, v, i, f, cos, rij.f, kin, dot_prod, pow, sin]
WRITE_S: [pot, rij.f, kinetic, kin, potential]*/
void compute(int np, int nd , vnd_t *pos , vnd_t *vel , double mass , vnd_t *f , double *pot_p , double *kin_p) {
/*READ_S: [vel, nd, np, sqrt, dist, pos, dv, pot, v, i, f, cos, rij.f, kin, dot_prod, pow, sin]
WRITE_S: [pot, rij.f, kinetic, kin, potential]*/
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
    vnd_t rij;
    /*READ_S: []
    WRITE_S: []*/
    double d;
    /*READ_S: []
    WRITE_S: []*/
    double pot;
    /*READ_S: []
    WRITE_S: []*/
    double kin;
    /*READ_S: []
    WRITE_S: []*/
    pot = 0.0;
    /*READ_S: []
    WRITE_S: []*/
    kin = 0.0;
    /*READ_S: [vel, nd, np, sqrt, dist, pos, dv, pot, v, i, f, cos, rij.f, kin, dot_prod, pow, sin]
    WRITE_S: [pot, rij.f, kin]*/
#pragma omp parallel default(shared) private(i, j, k, rij, d)
    {
    /*READ_S: [vel, nd, np, sqrt, dist, pos, dv, pot, v, i, f, cos, rij.f, kin, dot_prod, pow, sin]
    WRITE_S: [pot, rij.f, kin]*/
        /*READ_S: [vel, nd, np, sqrt, dist, pos, dv, pot, v, i, f, cos, rij.f, kin, dot_prod, pow, sin]
        WRITE_S: [pot, rij.f, kin]*/
#pragma omp for reduction(+:pot, kin) nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [np]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < np; i++) {
        /*READ_S: [vel, nd, np, sqrt, dist, pos, dv, pot, v, f, cos, rij.f, kin, dot_prod, pow, sin]
        WRITE_S: [pot, rij.f, kin]*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nd]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [f, nd]
            WRITE_S: []*/
            for (j = 0; j < nd; j++) {
            /*READ_S: [f]
            WRITE_S: []*/
                /*READ_S: [f]
                WRITE_S: []*/
                f[i][j] = 0.0;
            }
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [np]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nd, np, sqrt, dist, pos, dv, pot, v, f, cos, rij.f, pow, sin]
            WRITE_S: [pot, rij.f]*/
            for (j = 0; j < np; j++) {
            /*READ_S: [pos, dv, pot, v, f, cos, nd, rij.f, sqrt, pow, dist, sin]
            WRITE_S: [pot, rij.f]*/
                /*READ_S: []
                WRITE_S: []*/
                /*READ_S: [pos, dv, pot, v, f, cos, nd, rij.f, sqrt, pow, dist, sin]
                WRITE_S: [pot, rij.f]*/
                if (i != j) {
                /*READ_S: [pos, dv, pot, v, f, cos, nd, rij.f, sqrt, pow, dist, sin]
                WRITE_S: [pot, rij.f]*/
                    /*READ_S: []
                    WRITE_S: []*/
                    double *_imopVarPre153;
                    /*READ_S: []
                    WRITE_S: []*/
                    double *_imopVarPre154;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre155;
                    /*READ_S: [pos]
                    WRITE_S: []*/
                    _imopVarPre153 = pos[j];
                    /*READ_S: [pos]
                    WRITE_S: []*/
                    _imopVarPre154 = pos[i];
                    /*READ_S: [nd, dist]
                    WRITE_S: []*/
                    _imopVarPre155 = dist(nd, _imopVarPre154, _imopVarPre153, rij);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    d = _imopVarPre155;
                    /*READ_S: []
                    WRITE_S: []*/
                    double _imopVarPre157;
                    /*READ_S: [v]
                    WRITE_S: []*/
                    _imopVarPre157 = v(d);
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [pot]
                    WRITE_S: [pot]*/
                    pot = pot + 0.5 * _imopVarPre157;
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [nd]
                    WRITE_S: []*/
                    /*READ_S: []
                    WRITE_S: []*/
                    /*READ_S: [dv, f, cos, nd, sin]
                    WRITE_S: []*/
                    for (k = 0; k < nd; k++) {
                    /*READ_S: [dv, f, cos, sin]
                    WRITE_S: []*/
                        /*READ_S: []
                        WRITE_S: []*/
                        double _imopVarPre159;
                        /*READ_S: [dv]
                        WRITE_S: []*/
                        _imopVarPre159 = dv(d);
                        /*READ_S: []
                        WRITE_S: []*/
                        /*READ_S: [f]
                        WRITE_S: []*/
                        f[i][k] = f[i][k] - rij[k] * _imopVarPre159 / d;
                    }
                }
            }
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre163;
            /*READ_S: []
            WRITE_S: []*/
            double *_imopVarPre164;
            /*READ_S: []
            WRITE_S: []*/
            double _imopVarPre165;
            /*READ_S: [vel]
            WRITE_S: []*/
            _imopVarPre163 = vel[j];
            /*READ_S: [vel]
            WRITE_S: []*/
            _imopVarPre164 = vel[i];
            /*READ_S: [nd, dot_prod]
            WRITE_S: []*/
            _imopVarPre165 = dot_prod(nd, _imopVarPre164, _imopVarPre163);
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [kin]
            WRITE_S: [kin]*/
            kin = kin + _imopVarPre165;
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
    kin = kin * 0.5 * mass;
    /*READ_S: []
    WRITE_S: [potential]*/
    *pot_p = pot;
    /*READ_S: []
    WRITE_S: [kinetic]*/
    *kin_p = kin;
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
/*READ_S: []
WRITE_S: []*/
/*READ_S: []
WRITE_S: []*/
/*READ_S: [pos, nd, f, i, a, vel, np]
WRITE_S: []*/
void update(int np, int nd , vnd_t *pos , vnd_t *vel , vnd_t *f , vnd_t *a , double mass , double dt) {
/*READ_S: [pos, nd, f, i, a, vel, np]
WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int j;
    /*READ_S: []
    WRITE_S: []*/
    double rmass;
    /*READ_S: []
    WRITE_S: []*/
    rmass = 1.0 / mass;
    /*READ_S: [pos, nd, f, i, a, vel, np]
    WRITE_S: []*/
#pragma omp parallel default(shared) private(i, j) firstprivate(rmass, dt)
    {
    /*READ_S: [pos, nd, f, i, a, vel, np]
    WRITE_S: []*/
        /*READ_S: [pos, nd, f, i, a, vel, np]
        WRITE_S: []*/
#pragma omp for nowait
        /*READ_S: [i]
        WRITE_S: []*/
        /*READ_S: [np]
        WRITE_S: []*/
        /*READ_S: []
        WRITE_S: []*/
        for (i = 0; i < np; i++) {
        /*READ_S: [pos, nd, f, a, vel]
        WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [nd]
            WRITE_S: []*/
            /*READ_S: []
            WRITE_S: []*/
            /*READ_S: [pos, nd, f, a, vel]
            WRITE_S: []*/
            for (j = 0; j < nd; j++) {
            /*READ_S: [pos, f, a, vel]
            WRITE_S: []*/
                /*READ_S: [pos, a, vel]
                WRITE_S: []*/
                pos[i][j] = pos[i][j] + vel[i][j] * dt + 0.5 * dt * dt * a[i][j];
                /*READ_S: [f, a, vel]
                WRITE_S: []*/
                vel[i][j] = vel[i][j] + 0.5 * dt * (f[i][j] * rmass + a[i][j]);
                /*READ_S: [f, a]
                WRITE_S: []*/
                a[i][j] = f[i][j] * rmass;
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
/*READ_S: [NSTEPS, compute, f, OSCR_timer_stop, nd, vel, OSCR_timer_start, np, sqrt, omp_get_max_threads, dist, OSCR_timer_read, pos, nd, i, f, kin, rij.f, i, a, OSCR_init, vel, srand, np, pow, sin, update, pos, OSCR_report, rand, heapCell#0, dv, pot, NPARTS, v, printf, cos, OSCR_getarg_int, dot_prod, OSCR_calloc, initialize]
WRITE_S: [NSTEPS, pot, NPARTS, kin, kinetic, rij.f, potential, heapCell#0]*/
int main(int argc, char **argv) {
/*READ_S: [NSTEPS, compute, f, OSCR_timer_stop, nd, vel, OSCR_timer_start, np, sqrt, omp_get_max_threads, dist, OSCR_timer_read, pos, nd, i, f, kin, rij.f, i, a, OSCR_init, vel, srand, np, pow, sin, update, pos, OSCR_report, rand, heapCell#0, dv, pot, NPARTS, v, printf, cos, OSCR_getarg_int, dot_prod, OSCR_calloc, initialize]
WRITE_S: [NSTEPS, pot, NPARTS, kin, kinetic, rij.f, potential, heapCell#0]*/
    /*READ_S: []
    WRITE_S: []*/
    double mass = 1.0;
    /*READ_S: []
    WRITE_S: []*/
    double dt = 1.0e-4;
    /*READ_S: []
    WRITE_S: []*/
    vnd_t box;
    /*READ_S: []
    WRITE_S: []*/
    vnd_t *position;
    /*READ_S: []
    WRITE_S: []*/
    vnd_t *velocity;
    /*READ_S: []
    WRITE_S: []*/
    vnd_t *force;
    /*READ_S: []
    WRITE_S: []*/
    vnd_t *accel;
    /*READ_S: []
    WRITE_S: []*/
    double potential;
    /*READ_S: []
    WRITE_S: []*/
    double kinetic;
    /*READ_S: []
    WRITE_S: []*/
    double E0;
    /*READ_S: []
    WRITE_S: []*/
    int i;
    /*READ_S: []
    WRITE_S: []*/
    int NUMTHREADS;
    /*READ_S: []
    WRITE_S: []*/
    double total_time;
    /*READ_S: []
    WRITE_S: []*/
    char *PARAM_NAMES[2] = {"Nparts", "Nsteps"};
    /*READ_S: []
    WRITE_S: []*/
    char *TIMERS_NAMES[1] = {"Total_time"};
    /*READ_S: []
    WRITE_S: []*/
    char *DEFAULT_VALUES[2] = {"8192", "10"};
    /*READ_S: [omp_get_max_threads]
    WRITE_S: []*/
    NUMTHREADS = omp_get_max_threads();
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_init, heapCell#0]
    WRITE_S: [heapCell#0]*/
    OSCR_init(NUMTHREADS, "Molecular dynamic simulation", "Use md <Nparts> <Nsteps>", 2, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_getarg_int]
    WRITE_S: []*/
    NPARTS = OSCR_getarg_int(1);
    /*READ_S: []
    WRITE_S: [NPARTS]*/
    /*READ_S: [OSCR_getarg_int]
    WRITE_S: []*/
    NSTEPS = OSCR_getarg_int(2);
    /*READ_S: []
    WRITE_S: [NSTEPS]*/
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre167;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre168;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre167 = sizeof(vnd_t);
    /*READ_S: [NPARTS, OSCR_calloc]
    WRITE_S: []*/
    _imopVarPre168 = OSCR_calloc(NPARTS, _imopVarPre167);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    position = _imopVarPre168;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre170;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre171;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre170 = sizeof(vnd_t);
    /*READ_S: [NPARTS, OSCR_calloc]
    WRITE_S: []*/
    _imopVarPre171 = OSCR_calloc(NPARTS, _imopVarPre170);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    velocity = _imopVarPre171;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre173;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre174;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre173 = sizeof(vnd_t);
    /*READ_S: [NPARTS, OSCR_calloc]
    WRITE_S: []*/
    _imopVarPre174 = OSCR_calloc(NPARTS, _imopVarPre173);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    force = _imopVarPre174;
    /*READ_S: []
    WRITE_S: []*/
    unsigned long int _imopVarPre176;
    /*READ_S: []
    WRITE_S: []*/
    void *_imopVarPre177;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre176 = sizeof(vnd_t);
    /*READ_S: [NPARTS, OSCR_calloc]
    WRITE_S: []*/
    _imopVarPre177 = OSCR_calloc(NPARTS, _imopVarPre176);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    accel = _imopVarPre177;
    /*READ_S: [omp_get_max_threads]
    WRITE_S: []*/
    NUMTHREADS = omp_get_max_threads();
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
        box[i] = 10.0;
    }
    /*READ_S: [NPARTS, initialize]
    WRITE_S: []*/
    initialize(NPARTS, 3, box, position, velocity, accel);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_timer_start]
    WRITE_S: []*/
    OSCR_timer_start(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre180;
    /*READ_S: []
    WRITE_S: []*/
    double *_imopVarPre181;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre180 = &kinetic;
    /*READ_S: []
    WRITE_S: []*/
    _imopVarPre181 = &potential;
    /*READ_S: [compute, NPARTS]
    WRITE_S: []*/
    compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre181, _imopVarPre180);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    E0 = potential + kinetic;
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [NSTEPS]
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [NSTEPS, compute, f, vel, nd, np, sqrt, dist, pos, nd, i, f, kin, rij.f, i, a, vel, np, pow, update, sin, pos, dv, pot, v, NPARTS, cos, dot_prod]
    WRITE_S: [pot, kin, rij.f, kinetic, potential]*/
    for (i = 0; i < NSTEPS; i++) {
    /*READ_S: [compute, f, vel, nd, np, sqrt, dist, pos, nd, i, f, kin, rij.f, i, a, vel, np, pow, update, sin, pos, dv, pot, v, NPARTS, cos, dot_prod]
    WRITE_S: [pot, kin, rij.f, kinetic, potential]*/
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre184;
        /*READ_S: []
        WRITE_S: []*/
        double *_imopVarPre185;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre184 = &kinetic;
        /*READ_S: []
        WRITE_S: []*/
        _imopVarPre185 = &potential;
        /*READ_S: [compute, NPARTS]
        WRITE_S: []*/
        compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre185, _imopVarPre184);
        /*READ_S: []
        WRITE_S: []*/
        /*READ_S: [NPARTS, update]
        WRITE_S: []*/
        update(NPARTS, 3, position, velocity, force, accel, mass, dt);
        /*READ_S: []
        WRITE_S: []*/
    }
    /*READ_S: [OSCR_timer_stop]
    WRITE_S: []*/
    OSCR_timer_stop(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_timer_read]
    WRITE_S: []*/
    total_time = OSCR_timer_read(0);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [OSCR_report]
    WRITE_S: []*/
    OSCR_report(1, TIMERS_NAMES);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\n \t# THREADS \tTIME (secs.) \n");
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: [printf]
    WRITE_S: []*/
    printf("\t %d \t\t%14.6lf\n", NUMTHREADS, total_time);
    /*READ_S: []
    WRITE_S: []*/
    /*READ_S: []
    WRITE_S: []*/
    return 0;
}
