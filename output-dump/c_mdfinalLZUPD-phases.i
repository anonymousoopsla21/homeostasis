
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
int main(int argc, char **argv);
/*[1, 2, 3]*/
/*[1, 2, 3]*/
double v(double x) {
/*[1, 2, 3]*/
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    if (x < 1.57079632679489661923132169163975144) {
    /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        double _imopVarPre142;
        /*[1, 2, 3]*/
        double _imopVarPre143;
        /*[1, 2, 3]*/
        _imopVarPre142 = sin(x);
        /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        _imopVarPre143 = pow(_imopVarPre142, 2.0);
        /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        return _imopVarPre143;
    } else {
    /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        return 1.0;
    }
}
/*[1, 2, 3]*/
/*[1, 2, 3]*/
double dv(double x) {
/*[1, 2, 3]*/
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    if (x < 1.57079632679489661923132169163975144) {
    /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        double _imopVarPre146;
        /*[1, 2, 3]*/
        double _imopVarPre147;
        /*[1, 2, 3]*/
        _imopVarPre146 = sin(x);
        /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        _imopVarPre147 = cos(x);
        /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        return 2.0 * _imopVarPre146 * _imopVarPre147;
    } else {
    /*[1, 2, 3]*/
        /*[1, 2, 3]*/
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
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr) {
/*[1, 2, 3]*/
    /*[1, 2, 3]*/
    int i;
    /*[1, 2, 3]*/
    double d;
    /*[1, 2, 3]*/
    d = 0.0;
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    for (i = 0; i < nd; i++) {
    /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        dr[i] = r1[i] - r2[i];
        /*[1, 2, 3]*/
        d += dr[i] * dr[i];
    }
    /*[1, 2, 3]*/
    double _imopVarPre150;
    /*[1, 2, 3]*/
    _imopVarPre150 = sqrt(d);
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    return _imopVarPre150;
}
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
/*[1, 2, 3]*/
double dot_prod(int n, vnd_t x , vnd_t y) {
/*[1, 2, 3]*/
    /*[1, 2, 3]*/
    int i;
    /*[1, 2, 3]*/
    double t = 0.0;
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    /*[1, 2, 3]*/
    for (i = 0; i < n; i++) {
    /*[1, 2, 3]*/
        /*[1, 2, 3]*/
        t += x[i] * y[i];
    }
    /*[1, 2, 3]*/
    return t;
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
    int np;
    /*[]*/
    int nd;
    /*[]*/
    double ( *pos )[3];
    /*[]*/
    double ( *vel )[3];
    /*[]*/
    double ( *f )[3];
    /*[]*/
    double *pot_p;
    /*[]*/
    double *kin_p;
    /*[]*/
    np = NPARTS;
    /*[]*/
    nd = 3;
    /*[]*/
    pos = position;
    /*[]*/
    vel = velocity;
    /*[]*/
    f = force;
    /*[]*/
    pot_p = _imopVarPre181;
    /*[]*/
    kin_p = _imopVarPre180;
    /*[]*/
    double pot;
    /*[]*/
    double kin;
    /*[4]*/
#pragma omp parallel default(shared)
    {
    /*[4]*/
        /*[4]*/
        int i;
        /*[4]*/
        int j;
        /*[4]*/
        int k;
        /*[4]*/
        vnd_t rij;
        /*[4]*/
        double d;
        /*[4]*/
#pragma omp master
        {
        /*[4]*/
            /*[4]*/
            pot = 0.0;
            /*[4]*/
            kin = 0.0;
        }
        /*[4]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[4]*/
#pragma omp barrier
        /*[3]*/
#pragma omp for reduction(+:pot, kin) nowait
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
                f[i][j] = 0.0;
            }
            /*[3]*/
            /*[3]*/
            /*[3]*/
            /*[3]*/
            for (j = 0; j < np; j++) {
            /*[3]*/
                /*[3]*/
                /*[3]*/
                if (i != j) {
                /*[3]*/
                    /*[3]*/
                    double *_imopVarPre153;
                    /*[3]*/
                    double *_imopVarPre154;
                    /*[3]*/
                    double _imopVarPre155;
                    /*[3]*/
                    _imopVarPre153 = pos[j];
                    /*[3]*/
                    _imopVarPre154 = pos[i];
                    /*[3]*/
                    _imopVarPre155 = dist(nd, _imopVarPre154, _imopVarPre153, rij);
                    /*[3]*/
                    /*[3]*/
                    d = _imopVarPre155;
                    /*[3]*/
                    double _imopVarPre157;
                    /*[3]*/
                    _imopVarPre157 = v(d);
                    /*[3]*/
                    /*[3]*/
                    pot = pot + 0.5 * _imopVarPre157;
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    /*[3]*/
                    for (k = 0; k < nd; k++) {
                    /*[3]*/
                        /*[3]*/
                        double _imopVarPre159;
                        /*[3]*/
                        _imopVarPre159 = dv(d);
                        /*[3]*/
                        /*[3]*/
                        f[i][k] = f[i][k] - rij[k] * _imopVarPre159 / d;
                    }
                }
            }
            /*[3]*/
            double *_imopVarPre163;
            /*[3]*/
            double *_imopVarPre164;
            /*[3]*/
            double _imopVarPre165;
            /*[3]*/
            _imopVarPre163 = vel[j];
            /*[3]*/
            _imopVarPre164 = vel[i];
            /*[3]*/
            _imopVarPre165 = dot_prod(nd, _imopVarPre164, _imopVarPre163);
            /*[3]*/
            /*[3]*/
            kin = kin + _imopVarPre165;
        }
        /*[3]*/
        // #pragma omp dummyFlush BARRIER_START
        /*[3]*/
#pragma omp barrier
        /*[5]*/
#pragma omp master
        {
        /*[5]*/
            /*[5]*/
            kin = kin * 0.5 * mass;
            /*[5]*/
            *pot_p = pot;
            /*[5]*/
            *kin_p = kin;
        }
    }
    /*[]*/
    E0 = potential + kinetic;
    /*[]*/
    /*[]*/
    /*[]*/
    /*[]*/
    for (i = 0; i < NSTEPS; i++) {
    /*[]*/
        /*[]*/
        double ( *a )[3];
        /*[]*/
        int i_imopVar75;
        /*[]*/
        int np_imopVar76;
        /*[]*/
        int nd_imopVar77;
        /*[]*/
        double ( *pos_imopVar78 )[3];
        /*[]*/
        double ( *vel_imopVar79 )[3];
        /*[]*/
        double ( *f_imopVar80 )[3];
        /*[]*/
        double pot_imopVar83;
        /*[]*/
        double kin_imopVar84;
        /*[]*/
        int np;
        /*[]*/
        int nd;
        /*[]*/
        double ( *pos )[3];
        /*[]*/
        double ( *vel )[3];
        /*[]*/
        double ( *f )[3];
        /*[6]*/
#pragma omp parallel default(shared)
        {
        /*[6]*/
            /*[6]*/
            double *_imopVarPre184;
            /*[6]*/
            double *_imopVarPre185;
            /*[6]*/
#pragma omp master
            {
            /*[6]*/
                /*[6]*/
                _imopVarPre184 = &kinetic;
                /*[6]*/
                _imopVarPre185 = &potential;
            }
            /*[6]*/
            double *pot_p_imopVar81;
            /*[6]*/
            double *kin_p_imopVar82;
            /*[6]*/
#pragma omp master
            {
            /*[6]*/
                /*[6]*/
                np_imopVar76 = NPARTS;
                /*[6]*/
                nd_imopVar77 = 3;
                /*[6]*/
                pos_imopVar78 = position;
                /*[6]*/
                vel_imopVar79 = velocity;
                /*[6]*/
                f_imopVar80 = force;
                /*[6]*/
                pot_p_imopVar81 = _imopVarPre185;
                /*[6]*/
                kin_p_imopVar82 = _imopVarPre184;
            }
            /*[6]*/
            int i;
            /*[6]*/
            int j;
            /*[6]*/
            int k;
            /*[6]*/
            vnd_t rij;
            /*[6]*/
            double d;
            /*[6]*/
#pragma omp master
            {
            /*[6]*/
                /*[6]*/
                pot_imopVar83 = 0.0;
                /*[6]*/
                kin_imopVar84 = 0.0;
            }
            /*[6]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[6]*/
#pragma omp barrier
            /*[2]*/
#pragma omp for reduction(+:pot_imopVar83, kin_imopVar84) nowait
            /*[2]*/
            /*[2]*/
            /*[2]*/
            for (i = 0; i < np_imopVar76; i++) {
            /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                for (j = 0; j < nd_imopVar77; j++) {
                /*[2]*/
                    /*[2]*/
                    f_imopVar80[i][j] = 0.0;
                }
                /*[2]*/
                /*[2]*/
                /*[2]*/
                /*[2]*/
                for (j = 0; j < np_imopVar76; j++) {
                /*[2]*/
                    /*[2]*/
                    /*[2]*/
                    if (i != j) {
                    /*[2]*/
                        /*[2]*/
                        double *_imopVarPre153;
                        /*[2]*/
                        double *_imopVarPre154;
                        /*[2]*/
                        double _imopVarPre155;
                        /*[2]*/
                        _imopVarPre153 = pos_imopVar78[j];
                        /*[2]*/
                        _imopVarPre154 = pos_imopVar78[i];
                        /*[2]*/
                        _imopVarPre155 = dist(nd_imopVar77, _imopVarPre154, _imopVarPre153, rij);
                        /*[2]*/
                        /*[2]*/
                        d = _imopVarPre155;
                        /*[2]*/
                        double _imopVarPre157;
                        /*[2]*/
                        _imopVarPre157 = v(d);
                        /*[2]*/
                        /*[2]*/
                        pot_imopVar83 = pot_imopVar83 + 0.5 * _imopVarPre157;
                        /*[2]*/
                        /*[2]*/
                        /*[2]*/
                        /*[2]*/
                        for (k = 0; k < nd_imopVar77; k++) {
                        /*[2]*/
                            /*[2]*/
                            double _imopVarPre159;
                            /*[2]*/
                            _imopVarPre159 = dv(d);
                            /*[2]*/
                            /*[2]*/
                            f_imopVar80[i][k] = f_imopVar80[i][k] - rij[k] * _imopVarPre159 / d;
                        }
                    }
                }
                /*[2]*/
                double *_imopVarPre163;
                /*[2]*/
                double *_imopVarPre164;
                /*[2]*/
                double _imopVarPre165;
                /*[2]*/
                _imopVarPre163 = vel_imopVar79[j];
                /*[2]*/
                _imopVarPre164 = vel_imopVar79[i];
                /*[2]*/
                _imopVarPre165 = dot_prod(nd_imopVar77, _imopVarPre164, _imopVarPre163);
                /*[2]*/
                /*[2]*/
                kin_imopVar84 = kin_imopVar84 + _imopVarPre165;
            }
            /*[2]*/
            // #pragma omp dummyFlush BARRIER_START
            /*[2]*/
#pragma omp barrier
            /*[7]*/
#pragma omp master
            {
            /*[7]*/
                /*[7]*/
                kin_imopVar84 = kin_imopVar84 * 0.5 * mass;
                /*[7]*/
                *pot_p_imopVar81 = pot_imopVar83;
                /*[7]*/
                *kin_p_imopVar82 = kin_imopVar84;
                /*[7]*/
                np = NPARTS;
                /*[7]*/
                nd = 3;
                /*[7]*/
                pos = position;
                /*[7]*/
                vel = velocity;
                /*[7]*/
                f = force;
                /*[7]*/
                a = accel;
            }
        }
        /*[]*/
        int j;
        /*[]*/
        double rmass;
        /*[]*/
        rmass = 1.0 / mass;
        /*[8]*/
#pragma omp parallel default(shared) private(i_imopVar75, j) firstprivate(rmass, dt)
        {
        /*[8]*/
            /*[8]*/
#pragma omp for nowait
            /*[8]*/
            /*[8]*/
            /*[8]*/
            for (i_imopVar75 = 0; i_imopVar75 < np; i_imopVar75++) {
            /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                /*[8]*/
                for (j = 0; j < nd; j++) {
                /*[8]*/
                    /*[8]*/
                    pos[i_imopVar75][j] = pos[i_imopVar75][j] + vel[i_imopVar75][j] * dt + 0.5 * dt * dt * a[i_imopVar75][j];
                    /*[8]*/
                    vel[i_imopVar75][j] = vel[i_imopVar75][j] + 0.5 * dt * (f[i_imopVar75][j] * rmass + a[i_imopVar75][j]);
                    /*[8]*/
                    a[i_imopVar75][j] = f[i_imopVar75][j] * rmass;
                }
            }
        }
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
