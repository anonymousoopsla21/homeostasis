typedef long unsigned int __darwin_size_t;
typedef __darwin_size_t size_t;
struct __sFILEX ;
int printf(const char *restrict , ...);
int rand(void );
void srand(unsigned );
extern char *suboptarg;
struct fssearchblock ;
struct searchstate ;
extern int omp_get_max_threads(void );
extern void *OSCR_calloc(size_t nmemb, size_t size);
void OSCR_init(int numThreads, char *description , char *usage , int numArgs , char *argNames[] , char *defaultValues[] , int numTimers , int numReportedTimers , char *reportedTimerNames[] , int argc , char *argv[]);
extern int OSCR_getarg_int(int ind);
extern void OSCR_timer_start(int );
extern void OSCR_timer_stop(int );
extern double OSCR_timer_read(int );
extern void OSCR_report();
extern double cos(double );
extern double sin(double );
extern double pow(double , double );
extern double sqrt(double );
int NPARTS;
int NSTEPS;
typedef double vnd_t[3];
double v(double x);
double dv(double x);
void initialize(int np, int nd , vnd_t box , vnd_t *pos , vnd_t *vel , vnd_t *acc);
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr);
double dot_prod(int n, vnd_t x , vnd_t y);
void compute(int np, int nd , vnd_t *pos , vnd_t *vel , double mass , vnd_t *f , double *pot_p , double *kin_p);
void update(int np, int nd , vnd_t *pos , vnd_t *vel , vnd_t *f , vnd_t *a , double mass , double dt);
int main(int argc, char **argv);
/*OUT: {
Reverse<--,>}*/
double v(double x) {
    /*OUT: {
    Reverse<--,>}*/
    if (x < 1.57079632679489661923132169163975144) {
        /*OUT: {
        Reverse<--, 92_0;>}*/
        double _imopVarPre142;
        /*OUT: {
        Reverse<--, 92_0;>}*/
        double _imopVarPre143;
        /*OUT: {
        Reverse<--, 92_0;>}*/
        _imopVarPre142 = sin(x);
        /*OUT: {
        Reverse<--, 92_0;>}*/
        /*OUT: {
        Reverse<--, 92_0;>}*/
        _imopVarPre143 = pow(_imopVarPre142, 2.0);
        /*OUT: {
        Reverse<--, 92_0;>}*/
        /*OUT: {
        Reverse<--, 92_0;>}*/
        return _imopVarPre143;
    } else {
        /*OUT: {
        Reverse<--, 92_1;>}*/
        return 1.0;
    }
}
/*OUT: {
Reverse<--,>}*/
double dv(double x) {
    /*OUT: {
    Reverse<--,>}*/
    if (x < 1.57079632679489661923132169163975144) {
        /*OUT: {
        Reverse<--, 112_0;>}*/
        double _imopVarPre146;
        /*OUT: {
        Reverse<--, 112_0;>}*/
        double _imopVarPre147;
        /*OUT: {
        Reverse<--, 112_0;>}*/
        _imopVarPre146 = sin(x);
        /*OUT: {
        Reverse<--, 112_0;>}*/
        /*OUT: {
        Reverse<--, 112_0;>}*/
        _imopVarPre147 = cos(x);
        /*OUT: {
        Reverse<--, 112_0;>}*/
        /*OUT: {
        Reverse<--, 112_0;>}*/
        return 2.0 * _imopVarPre146 * _imopVarPre147;
    } else {
        /*OUT: {
        Reverse<--, 112_1;>}*/
        return 0.0;
    }
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
void initialize(int np, int nd , vnd_t box , vnd_t *pos , vnd_t *vel , vnd_t *acc) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    double x;
    /*OUT: {
    Reverse<--,>}*/
    srand(4711L);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 149_1; 146_0;>}*/
    for (i = 0; i < np; i++) {
        /*OUT: {
        Reverse<--, 146_0;>}*/
        /*OUT: {
        Reverse<--, 146_0;>}*/
        /*OUT: {
        Reverse<--, 149_0; 146_0;>}*/
        for (j = 0; j < nd; j++) {
            /*OUT: {
            Reverse<--, 149_0; 146_0;>}*/
            int _imopVarPre149;
            /*OUT: {
            Reverse<--, 149_0; 146_0;>}*/
            _imopVarPre149 = rand();
            /*OUT: {
            Reverse<--, 149_0; 146_0;>}*/
            /*OUT: {
            Reverse<--, 149_0; 146_0;>}*/
            x = _imopVarPre149 % 10000 / (double) 10000.0;
            /*OUT: {
            Reverse<--, 149_0; 146_0;>}*/
            pos[i][j] = box[j] * x;
            /*OUT: {
            Reverse<--, 149_0; 146_0;>}*/
            vel[i][j] = 0.0;
            /*OUT: {
            Reverse<--, 149_0; 146_0;>}*/
            acc[i][j] = 0.0;
        }
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    double d;
    /*OUT: {
    Reverse<--,>}*/
    d = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 182_0;>}*/
    for (i = 0; i < nd; i++) {
        /*OUT: {
        Reverse<--, 182_0;>}*/
        dr[i] = r1[i] - r2[i];
        /*OUT: {
        Reverse<--, 182_0;>}*/
        d += dr[i] * dr[i];
    }
    /*OUT: {
    Reverse<--, 182_1;>}*/
    double _imopVarPre150;
    /*OUT: {
    Reverse<--, 182_1;>}*/
    _imopVarPre150 = sqrt(d);
    /*OUT: {
    Reverse<--, 182_1;>}*/
    /*OUT: {
    Reverse<--, 182_1;>}*/
    return _imopVarPre150;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
double dot_prod(int n, vnd_t x , vnd_t y) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    double t = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 208_0;>}*/
    for (i = 0; i < n; i++) {
        /*OUT: {
        Reverse<--, 208_0;>}*/
        t += x[i] * y[i];
    }
    /*OUT: {
    Reverse<--, 208_1;>}*/
    return t;
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
void compute(int np, int nd , vnd_t *pos , vnd_t *vel , double mass , vnd_t *f , double *pot_p , double *kin_p) {
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
    vnd_t rij;
    /*OUT: {
    Reverse<--,>}*/
    double d;
    /*OUT: {
    Reverse<--,>}*/
    double pot;
    /*OUT: {
    Reverse<--,>}*/
    double kin;
    /*OUT: {
    Reverse<--,>}*/
    pot = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    kin = 0.0;
#pragma omp parallel default(shared) private(i, j, k, rij, d)
    {
#pragma omp for reduction(+:pot, kin) nowait
        /*OUT: {
        Reverse<626,>}*/
        /*OUT: {
        Reverse<626,>}*/
        /*OUT: {
        Reverse<626, 248_1; 241_1;>}*/
        for (i = 0; i < np; i++) {
            /*OUT: {
            Reverse<626,>}*/
            /*OUT: {
            Reverse<626,>}*/
            /*OUT: {
            Reverse<626, 241_0;>}*/
            for (j = 0; j < nd; j++) {
                /*OUT: {
                Reverse<626, 241_0;>}*/
                f[i][j] = 0.0;
            }
            /*OUT: {
            Reverse<626, 241_1;>}*/
            /*OUT: {
            Reverse<626, 241_1;>}*/
            /*OUT: {
            Reverse<626, 250_1; 248_0; 241_1;>
            Reverse<626, 278_1; 250_0; 248_0; 241_1;>}*/
            for (j = 0; j < np; j++) {
                /*OUT: {
                Reverse<626, 248_0; 241_1;>}*/
                if (i != j) {
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    double *_imopVarPre153;
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    double *_imopVarPre154;
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    double _imopVarPre155;
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    _imopVarPre153 = pos[j];
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    _imopVarPre154 = pos[i];
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    _imopVarPre155 = dist(nd, _imopVarPre154, _imopVarPre153, rij);
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    d = _imopVarPre155;
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    double _imopVarPre157;
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    _imopVarPre157 = v(d);
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    pot = pot + 0.5 * _imopVarPre157;
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    /*OUT: {
                    Reverse<626, 250_0; 248_0; 241_1;>}*/
                    /*OUT: {
                    Reverse<626, 278_0; 250_0; 248_0; 241_1;>}*/
                    for (k = 0; k < nd; k++) {
                        /*OUT: {
                        Reverse<626, 278_0; 250_0; 248_0; 241_1;>}*/
                        double _imopVarPre159;
                        /*OUT: {
                        Reverse<626, 278_0; 250_0; 248_0; 241_1;>}*/
                        _imopVarPre159 = dv(d);
                        /*OUT: {
                        Reverse<626, 278_0; 250_0; 248_0; 241_1;>}*/
                        /*OUT: {
                        Reverse<626, 278_0; 250_0; 248_0; 241_1;>}*/
                        f[i][k] = f[i][k] - rij[k] * _imopVarPre159 / d;
                    }
                }
            }
            /*OUT: {
            Reverse<626, 248_1; 241_1;>}*/
            double *_imopVarPre163;
            /*OUT: {
            Reverse<626, 248_1; 241_1;>}*/
            double *_imopVarPre164;
            /*OUT: {
            Reverse<626, 248_1; 241_1;>}*/
            double _imopVarPre165;
            /*OUT: {
            Reverse<626, 248_1; 241_1;>}*/
            _imopVarPre163 = vel[j];
            /*OUT: {
            Reverse<626, 248_1; 241_1;>}*/
            _imopVarPre164 = vel[i];
            /*OUT: {
            Reverse<626, 248_1; 241_1;>}*/
            _imopVarPre165 = dot_prod(nd, _imopVarPre164, _imopVarPre163);
            /*OUT: {
            Reverse<626, 248_1; 241_1;>}*/
            /*OUT: {
            Reverse<626, 248_1; 241_1;>}*/
            kin = kin + _imopVarPre165;
        }
        /*OUT: {
        Reverse<626,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<311,>}*/
#pragma omp barrier
    }
    /*OUT: {
    Reverse<--,>}*/
    kin = kin * 0.5 * mass;
    /*OUT: {
    Reverse<--,>}*/
    *pot_p = pot;
    /*OUT: {
    Reverse<--,>}*/
    *kin_p = kin;
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
void update(int np, int nd , vnd_t *pos , vnd_t *vel , vnd_t *f , vnd_t *a , double mass , double dt) {
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
#pragma omp parallel default(shared) private(i, j) firstprivate(rmass, dt)
    {
#pragma omp for nowait
        /*OUT: {
        Reverse<655,>}*/
        /*OUT: {
        Reverse<655,>}*/
        /*OUT: {
        Reverse<655, 337_1;>}*/
        for (i = 0; i < np; i++) {
            /*OUT: {
            Reverse<655,>}*/
            /*OUT: {
            Reverse<655,>}*/
            /*OUT: {
            Reverse<655, 337_0;>}*/
            for (j = 0; j < nd; j++) {
                /*OUT: {
                Reverse<655, 337_0;>}*/
                pos[i][j] = pos[i][j] + vel[i][j] * dt + 0.5 * dt * dt * a[i][j];
                /*OUT: {
                Reverse<655, 337_0;>}*/
                vel[i][j] = vel[i][j] + 0.5 * dt * (f[i][j] * rmass + a[i][j]);
                /*OUT: {
                Reverse<655, 337_0;>}*/
                a[i][j] = f[i][j] * rmass;
            }
        }
        /*OUT: {
        Reverse<655,>}*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: {
        Reverse<366,>}*/
#pragma omp barrier
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    double mass = 1.0;
    /*OUT: {
    Reverse<--,>}*/
    double dt = 1.0e-4;
    /*OUT: {
    Reverse<--,>}*/
    vnd_t box;
    /*OUT: {
    Reverse<--,>}*/
    vnd_t *position;
    /*OUT: {
    Reverse<--,>}*/
    vnd_t *velocity;
    /*OUT: {
    Reverse<--,>}*/
    vnd_t *force;
    /*OUT: {
    Reverse<--,>}*/
    vnd_t *accel;
    /*OUT: {
    Reverse<--,>}*/
    double potential;
    /*OUT: {
    Reverse<--,>}*/
    double kinetic;
    /*OUT: {
    Reverse<--,>}*/
    double E0;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int NUMTHREADS;
    /*OUT: {
    Reverse<--,>}*/
    double total_time;
    /*OUT: {
    Reverse<--,>}*/
    char *PARAM_NAMES[2] = {"Nparts", "Nsteps"};
    /*OUT: {
    Reverse<--,>}*/
    char *TIMERS_NAMES[1] = {"Total_time"};
    /*OUT: {
    Reverse<--,>}*/
    char *DEFAULT_VALUES[2] = {"8192", "10"};
    /*OUT: {
    Reverse<--,>}*/
    NUMTHREADS = omp_get_max_threads();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    OSCR_init(NUMTHREADS, "Molecular dynamic simulation", "Use md <Nparts> <Nsteps>", 2, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    NPARTS = OSCR_getarg_int(1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    NSTEPS = OSCR_getarg_int(2);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre167;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre168;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre167 = sizeof(vnd_t);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre168 = OSCR_calloc(NPARTS, _imopVarPre167);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    position = _imopVarPre168;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre170;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre171;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre170 = sizeof(vnd_t);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre171 = OSCR_calloc(NPARTS, _imopVarPre170);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    velocity = _imopVarPre171;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre173;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre174;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre173 = sizeof(vnd_t);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre174 = OSCR_calloc(NPARTS, _imopVarPre173);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    force = _imopVarPre174;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre176;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre177;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre176 = sizeof(vnd_t);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre177 = OSCR_calloc(NPARTS, _imopVarPre176);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    accel = _imopVarPre177;
    /*OUT: {
    Reverse<--,>}*/
    NUMTHREADS = omp_get_max_threads();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 463_0;>}*/
    for (i = 0; i < 3; i++) {
        /*OUT: {
        Reverse<--, 463_0;>}*/
        box[i] = 10.0;
    }
    /*OUT: {
    Reverse<--, 463_1;>}*/
    initialize(NPARTS, 3, box, position, velocity, accel);
    /*OUT: {
    Reverse<--, 463_1;>}*/
    /*OUT: {
    Reverse<--, 463_1;>}*/
    OSCR_timer_start(0);
    /*OUT: {
    Reverse<--, 463_1;>}*/
    /*OUT: {
    Reverse<--, 463_1;>}*/
    double *_imopVarPre180;
    /*OUT: {
    Reverse<--, 463_1;>}*/
    double *_imopVarPre181;
    /*OUT: {
    Reverse<--, 463_1;>}*/
    _imopVarPre180 = &kinetic;
    /*OUT: {
    Reverse<--, 463_1;>}*/
    _imopVarPre181 = &potential;
    /*OUT: {
    Reverse<--, 463_1;>}*/
    compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre181, _imopVarPre180);
    /*OUT: {
    Reverse<--, 463_1;>}*/
    /*OUT: {
    Reverse<--, 463_1;>}*/
    E0 = potential + kinetic;
    /*OUT: {
    Reverse<--, 463_1;>}*/
    /*OUT: {
    Reverse<--, 463_1;>}*/
    /*OUT: {
    Reverse<--, 492_0; 463_1;>}*/
    for (i = 0; i < NSTEPS; i++) {
        /*OUT: {
        Reverse<--, 492_0; 463_1;>}*/
        double *_imopVarPre184;
        /*OUT: {
        Reverse<--, 492_0; 463_1;>}*/
        double *_imopVarPre185;
        /*OUT: {
        Reverse<--, 492_0; 463_1;>}*/
        _imopVarPre184 = &kinetic;
        /*OUT: {
        Reverse<--, 492_0; 463_1;>}*/
        _imopVarPre185 = &potential;
        /*OUT: {
        Reverse<--, 492_0; 463_1;>}*/
        compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre185, _imopVarPre184);
        /*OUT: {
        Reverse<--, 492_0; 463_1;>}*/
        /*OUT: {
        Reverse<--, 492_0; 463_1;>}*/
        update(NPARTS, 3, position, velocity, force, accel, mass, dt);
        /*OUT: {
        Reverse<--, 492_0; 463_1;>}*/
    }
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    OSCR_timer_stop(0);
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    total_time = OSCR_timer_read(0);
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    OSCR_report(1, TIMERS_NAMES);
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    printf("\n \t# THREADS \tTIME (secs.) \n");
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    printf("\t %d \t\t%14.6lf\n", NUMTHREADS, total_time);
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    /*OUT: {
    Reverse<--, 492_1; 463_1;>}*/
    return 0;
}
