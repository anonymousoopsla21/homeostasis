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
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
double v(double x) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ]*/
    if (x < 1.57079632679489661923132169163975144) {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        double _imopVarPre142;
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        double _imopVarPre143;
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        _imopVarPre142 = sin(x);
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        _imopVarPre143 = pow(_imopVarPre142, 2.0);
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        return _imopVarPre143;
    } else {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        return 1.0;
    }
}
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
double dv(double x) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ]*/
    if (x < 1.57079632679489661923132169163975144) {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        double _imopVarPre146;
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        double _imopVarPre147;
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        _imopVarPre146 = sin(x);
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        _imopVarPre147 = cos(x);
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        return 2.0 * _imopVarPre146 * _imopVarPre147;
    } else {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ]*/
        return 0.0;
    }
}
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(box) := [box.f];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(box) := [box.f];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
ptsTo(box) := [box.f];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
ptsTo(box) := [box.f];
ptsTo(acc) := [nullCell];
]*/
void initialize(int np, int nd , vnd_t box , vnd_t *pos , vnd_t *vel , vnd_t *acc) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ptsTo(box) := [box.f];
    ptsTo(acc) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ptsTo(box) := [box.f];
    ptsTo(acc) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ptsTo(box) := [box.f];
    ptsTo(acc) := [nullCell];
    ]*/
    double x;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ptsTo(box) := [box.f];
    ptsTo(acc) := [nullCell];
    ]*/
    srand(4711L);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ptsTo(box) := [box.f];
    ptsTo(acc) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ptsTo(box) := [box.f];
    ptsTo(acc) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ptsTo(box) := [box.f];
    ptsTo(acc) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ptsTo(box) := [box.f];
    ptsTo(acc) := [nullCell];
    ]*/
    for (i = 0; i < np; i++) {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(vel) := [nullCell];
        ptsTo(box) := [box.f];
        ptsTo(acc) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(vel) := [nullCell];
        ptsTo(box) := [box.f];
        ptsTo(acc) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(vel) := [nullCell];
        ptsTo(box) := [box.f];
        ptsTo(acc) := [nullCell];
        ]*/
        for (j = 0; j < nd; j++) {
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ptsTo(box) := [box.f];
            ptsTo(acc) := [nullCell];
            ]*/
            int _imopVarPre149;
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ptsTo(box) := [box.f];
            ptsTo(acc) := [nullCell];
            ]*/
            _imopVarPre149 = rand();
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ptsTo(box) := [box.f];
            ptsTo(acc) := [nullCell];
            ]*/
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ptsTo(box) := [box.f];
            ptsTo(acc) := [nullCell];
            ]*/
            x = _imopVarPre149 % 10000 / (double) 10000.0;
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ptsTo(box) := [box.f];
            ptsTo(acc) := [nullCell];
            ]*/
            pos[i][j] = box[j] * x;
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ptsTo(box) := [box.f];
            ptsTo(acc) := [nullCell];
            ]*/
            vel[i][j] = 0.0;
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ptsTo(box) := [box.f];
            ptsTo(acc) := [nullCell];
            ]*/
            acc[i][j] = 0.0;
        }
    }
}
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(r1) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(r2) := [nullCell];
ptsTo(r1) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(r2) := [nullCell];
ptsTo(r1) := [nullCell];
ptsTo(dr) := [rij.f];
]*/
double dist(int nd, vnd_t r1 , vnd_t r2 , vnd_t dr) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    int i;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    double d;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    d = 0.0;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    for (i = 0; i < nd; i++) {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(r2) := [nullCell];
        ptsTo(r1) := [nullCell];
        ptsTo(dr) := [rij.f];
        ]*/
        dr[i] = r1[i] - r2[i];
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(r2) := [nullCell];
        ptsTo(r1) := [nullCell];
        ptsTo(dr) := [rij.f];
        ]*/
        d += dr[i] * dr[i];
    }
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    double _imopVarPre150;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    _imopVarPre150 = sqrt(d);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(r2) := [nullCell];
    ptsTo(r1) := [nullCell];
    ptsTo(dr) := [rij.f];
    ]*/
    return _imopVarPre150;
}
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(x) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(y) := [nullCell];
ptsTo(x) := [nullCell];
]*/
double dot_prod(int n, vnd_t x , vnd_t y) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(y) := [nullCell];
    ptsTo(x) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(y) := [nullCell];
    ptsTo(x) := [nullCell];
    ]*/
    double t = 0.0;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(y) := [nullCell];
    ptsTo(x) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(y) := [nullCell];
    ptsTo(x) := [nullCell];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(y) := [nullCell];
    ptsTo(x) := [nullCell];
    ]*/
    for (i = 0; i < n; i++) {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(y) := [nullCell];
        ptsTo(x) := [nullCell];
        ]*/
        t += x[i] * y[i];
    }
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(y) := [nullCell];
    ptsTo(x) := [nullCell];
    ]*/
    return t;
}
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(pos) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(f) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(f) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(pot_p) := [potential];
ptsTo(vel) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(kin_p) := [kinetic];
ptsTo(f) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(pot_p) := [potential];
ptsTo(vel) := [nullCell];
]*/
void compute(int np, int nd , vnd_t *pos , vnd_t *vel , double mass , vnd_t *f , double *pot_p , double *kin_p) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    int k;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    vnd_t rij;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    double d;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    double pot;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    double kin;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    pot = 0.0;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    kin = 0.0;
#pragma omp parallel default(shared) private(i, j, k, rij, d)
    {
#pragma omp for reduction(+:pot, kin) nowait
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(kin_p) := [kinetic];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(pot_p) := [potential];
        ptsTo(vel) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(kin_p) := [kinetic];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(pot_p) := [potential];
        ptsTo(vel) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(kin_p) := [kinetic];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(pot_p) := [potential];
        ptsTo(vel) := [nullCell];
        ]*/
        for (i = 0; i < np; i++) {
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            for (j = 0; j < nd; j++) {
                /*OUT: [ptsTo(suboptarg) := [nullCell];
                ptsTo(kin_p) := [kinetic];
                ptsTo(f) := [nullCell];
                ptsTo(pos) := [nullCell];
                ptsTo(pot_p) := [potential];
                ptsTo(vel) := [nullCell];
                ]*/
                f[i][j] = 0.0;
            }
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            for (j = 0; j < np; j++) {
                /*OUT: [ptsTo(suboptarg) := [nullCell];
                ptsTo(kin_p) := [kinetic];
                ptsTo(f) := [nullCell];
                ptsTo(pos) := [nullCell];
                ptsTo(pot_p) := [potential];
                ptsTo(vel) := [nullCell];
                ]*/
                if (i != j) {
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    double *_imopVarPre153;
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    double *_imopVarPre154;
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    double _imopVarPre155;
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    _imopVarPre153 = pos[j];
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    _imopVarPre154 = pos[i];
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    _imopVarPre155 = dist(nd, _imopVarPre154, _imopVarPre153, rij);
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    d = _imopVarPre155;
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    double _imopVarPre157;
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    _imopVarPre157 = v(d);
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    pot = pot + 0.5 * _imopVarPre157;
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    /*OUT: [ptsTo(suboptarg) := [nullCell];
                    ptsTo(_imopVarPre153) := [nullCell];
                    ptsTo(_imopVarPre154) := [nullCell];
                    ptsTo(kin_p) := [kinetic];
                    ptsTo(f) := [nullCell];
                    ptsTo(pos) := [nullCell];
                    ptsTo(pot_p) := [potential];
                    ptsTo(vel) := [nullCell];
                    ]*/
                    for (k = 0; k < nd; k++) {
                        /*OUT: [ptsTo(suboptarg) := [nullCell];
                        ptsTo(_imopVarPre153) := [nullCell];
                        ptsTo(_imopVarPre154) := [nullCell];
                        ptsTo(kin_p) := [kinetic];
                        ptsTo(f) := [nullCell];
                        ptsTo(pos) := [nullCell];
                        ptsTo(pot_p) := [potential];
                        ptsTo(vel) := [nullCell];
                        ]*/
                        double _imopVarPre159;
                        /*OUT: [ptsTo(suboptarg) := [nullCell];
                        ptsTo(_imopVarPre153) := [nullCell];
                        ptsTo(_imopVarPre154) := [nullCell];
                        ptsTo(kin_p) := [kinetic];
                        ptsTo(f) := [nullCell];
                        ptsTo(pos) := [nullCell];
                        ptsTo(pot_p) := [potential];
                        ptsTo(vel) := [nullCell];
                        ]*/
                        _imopVarPre159 = dv(d);
                        /*OUT: [ptsTo(suboptarg) := [nullCell];
                        ptsTo(_imopVarPre153) := [nullCell];
                        ptsTo(_imopVarPre154) := [nullCell];
                        ptsTo(kin_p) := [kinetic];
                        ptsTo(f) := [nullCell];
                        ptsTo(pos) := [nullCell];
                        ptsTo(pot_p) := [potential];
                        ptsTo(vel) := [nullCell];
                        ]*/
                        /*OUT: [ptsTo(suboptarg) := [nullCell];
                        ptsTo(_imopVarPre153) := [nullCell];
                        ptsTo(_imopVarPre154) := [nullCell];
                        ptsTo(kin_p) := [kinetic];
                        ptsTo(f) := [nullCell];
                        ptsTo(pos) := [nullCell];
                        ptsTo(pot_p) := [potential];
                        ptsTo(vel) := [nullCell];
                        ]*/
                        f[i][k] = f[i][k] - rij[k] * _imopVarPre159 / d;
                    }
                }
            }
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(_imopVarPre163) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            double *_imopVarPre163;
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(_imopVarPre163) := [nullCell];
            ptsTo(_imopVarPre164) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            double *_imopVarPre164;
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(_imopVarPre163) := [nullCell];
            ptsTo(_imopVarPre164) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            double _imopVarPre165;
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(_imopVarPre163) := [nullCell];
            ptsTo(_imopVarPre164) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            _imopVarPre163 = vel[j];
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(_imopVarPre163) := [nullCell];
            ptsTo(_imopVarPre164) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            _imopVarPre164 = vel[i];
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(_imopVarPre163) := [nullCell];
            ptsTo(_imopVarPre164) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            _imopVarPre165 = dot_prod(nd, _imopVarPre164, _imopVarPre163);
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(_imopVarPre163) := [nullCell];
            ptsTo(_imopVarPre164) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(_imopVarPre163) := [nullCell];
            ptsTo(_imopVarPre164) := [nullCell];
            ptsTo(kin_p) := [kinetic];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(pot_p) := [potential];
            ptsTo(vel) := [nullCell];
            ]*/
            kin = kin + _imopVarPre165;
        }
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(kin_p) := [kinetic];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(pot_p) := [potential];
        ptsTo(vel) := [nullCell];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(kin_p) := [kinetic];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(pot_p) := [potential];
        ptsTo(vel) := [nullCell];
        ]*/
#pragma omp barrier
    }
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    kin = kin * 0.5 * mass;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    *pot_p = pot;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(kin_p) := [kinetic];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(pot_p) := [potential];
    ptsTo(vel) := [nullCell];
    ]*/
    *kin_p = kin;
}
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(pos) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(f) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(a) := [nullCell];
ptsTo(f) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(a) := [nullCell];
ptsTo(f) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(a) := [nullCell];
ptsTo(f) := [nullCell];
ptsTo(pos) := [nullCell];
ptsTo(vel) := [nullCell];
]*/
void update(int np, int nd , vnd_t *pos , vnd_t *vel , vnd_t *f , vnd_t *a , double mass , double dt) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(a) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ]*/
    int i;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(a) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ]*/
    int j;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(a) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ]*/
    double rmass;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(a) := [nullCell];
    ptsTo(f) := [nullCell];
    ptsTo(pos) := [nullCell];
    ptsTo(vel) := [nullCell];
    ]*/
    rmass = 1.0 / mass;
#pragma omp parallel default(shared) private(i, j) firstprivate(rmass, dt)
    {
#pragma omp for nowait
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(a) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(vel) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(a) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(vel) := [nullCell];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(a) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(vel) := [nullCell];
        ]*/
        for (i = 0; i < np; i++) {
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(a) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ]*/
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(a) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ]*/
            /*OUT: [ptsTo(suboptarg) := [nullCell];
            ptsTo(a) := [nullCell];
            ptsTo(f) := [nullCell];
            ptsTo(pos) := [nullCell];
            ptsTo(vel) := [nullCell];
            ]*/
            for (j = 0; j < nd; j++) {
                /*OUT: [ptsTo(suboptarg) := [nullCell];
                ptsTo(a) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(pos) := [nullCell];
                ptsTo(vel) := [nullCell];
                ]*/
                pos[i][j] = pos[i][j] + vel[i][j] * dt + 0.5 * dt * dt * a[i][j];
                /*OUT: [ptsTo(suboptarg) := [nullCell];
                ptsTo(a) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(pos) := [nullCell];
                ptsTo(vel) := [nullCell];
                ]*/
                vel[i][j] = vel[i][j] + 0.5 * dt * (f[i][j] * rmass + a[i][j]);
                /*OUT: [ptsTo(suboptarg) := [nullCell];
                ptsTo(a) := [nullCell];
                ptsTo(f) := [nullCell];
                ptsTo(pos) := [nullCell];
                ptsTo(vel) := [nullCell];
                ]*/
                a[i][j] = f[i][j] * rmass;
            }
        }
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(a) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(vel) := [nullCell];
        ]*/
        // #pragma omp dummyFlush BARRIER_START
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(a) := [nullCell];
        ptsTo(f) := [nullCell];
        ptsTo(pos) := [nullCell];
        ptsTo(vel) := [nullCell];
        ]*/
#pragma omp barrier
    }
}
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
/*OUT: [ptsTo(suboptarg) := [nullCell];
ptsTo(argv) := [heapCell#0];
]*/
int main(int argc, char **argv) {
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double mass = 1.0;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double dt = 1.0e-4;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    vnd_t box;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    vnd_t *position;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    vnd_t *velocity;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    vnd_t *force;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    vnd_t *accel;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double potential;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double kinetic;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double E0;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int i;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    int NUMTHREADS;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double total_time;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    char *PARAM_NAMES[2] = {"Nparts", "Nsteps"};
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    char *TIMERS_NAMES[1] = {"Total_time"};
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    char *DEFAULT_VALUES[2] = {"8192", "10"};
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    NUMTHREADS = omp_get_max_threads();
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    OSCR_init(NUMTHREADS, "Molecular dynamic simulation", "Use md <Nparts> <Nsteps>", 2, PARAM_NAMES, DEFAULT_VALUES, 1, 1, TIMERS_NAMES, argc, argv);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    NPARTS = OSCR_getarg_int(1);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    NSTEPS = OSCR_getarg_int(2);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre167;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre168;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre167 = sizeof(vnd_t);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre168 = OSCR_calloc(NPARTS, _imopVarPre167);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    position = _imopVarPre168;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre170;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre171;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre170 = sizeof(vnd_t);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre171 = OSCR_calloc(NPARTS, _imopVarPre170);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    velocity = _imopVarPre171;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre173;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre174;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre173 = sizeof(vnd_t);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre174 = OSCR_calloc(NPARTS, _imopVarPre173);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    force = _imopVarPre174;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    unsigned long int _imopVarPre176;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    void *_imopVarPre177;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre176 = sizeof(vnd_t);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre177 = OSCR_calloc(NPARTS, _imopVarPre176);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    accel = _imopVarPre177;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    NUMTHREADS = omp_get_max_threads();
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    for (i = 0; i < 3; i++) {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(position) := [nullCell];
        ptsTo(velocity) := [nullCell];
        ptsTo(force) := [nullCell];
        ptsTo(accel) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre171) := [nullCell];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(_imopVarPre177) := [nullCell];
        ptsTo(argv) := [heapCell#0];
        ]*/
        box[i] = 10.0;
    }
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    initialize(NPARTS, 3, box, position, velocity, accel);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    OSCR_timer_start(0);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *_imopVarPre180;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [nullCell];
    ptsTo(_imopVarPre181) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    double *_imopVarPre181;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [nullCell];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre180 = &kinetic;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    _imopVarPre181 = &potential;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre181, _imopVarPre180);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    E0 = potential + kinetic;
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    for (i = 0; i < NSTEPS; i++) {
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(position) := [nullCell];
        ptsTo(velocity) := [nullCell];
        ptsTo(force) := [nullCell];
        ptsTo(accel) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre171) := [nullCell];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(_imopVarPre177) := [nullCell];
        ptsTo(_imopVarPre180) := [kinetic];
        ptsTo(_imopVarPre181) := [potential];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre184) := [nullCell];
        ]*/
        double *_imopVarPre184;
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(position) := [nullCell];
        ptsTo(velocity) := [nullCell];
        ptsTo(force) := [nullCell];
        ptsTo(accel) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre171) := [nullCell];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(_imopVarPre177) := [nullCell];
        ptsTo(_imopVarPre180) := [kinetic];
        ptsTo(_imopVarPre181) := [potential];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre184) := [nullCell];
        ptsTo(_imopVarPre185) := [nullCell];
        ]*/
        double *_imopVarPre185;
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(position) := [nullCell];
        ptsTo(velocity) := [nullCell];
        ptsTo(force) := [nullCell];
        ptsTo(accel) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre171) := [nullCell];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(_imopVarPre177) := [nullCell];
        ptsTo(_imopVarPre180) := [kinetic];
        ptsTo(_imopVarPre181) := [potential];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre184) := [kinetic];
        ptsTo(_imopVarPre185) := [nullCell];
        ]*/
        _imopVarPre184 = &kinetic;
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(position) := [nullCell];
        ptsTo(velocity) := [nullCell];
        ptsTo(force) := [nullCell];
        ptsTo(accel) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre171) := [nullCell];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(_imopVarPre177) := [nullCell];
        ptsTo(_imopVarPre180) := [kinetic];
        ptsTo(_imopVarPre181) := [potential];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre184) := [kinetic];
        ptsTo(_imopVarPre185) := [potential];
        ]*/
        _imopVarPre185 = &potential;
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(position) := [nullCell];
        ptsTo(velocity) := [nullCell];
        ptsTo(force) := [nullCell];
        ptsTo(accel) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre171) := [nullCell];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(_imopVarPre177) := [nullCell];
        ptsTo(_imopVarPre180) := [kinetic];
        ptsTo(_imopVarPre181) := [potential];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre184) := [kinetic];
        ptsTo(_imopVarPre185) := [potential];
        ]*/
        compute(NPARTS, 3, position, velocity, mass, force, _imopVarPre185, _imopVarPre184);
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(position) := [nullCell];
        ptsTo(velocity) := [nullCell];
        ptsTo(force) := [nullCell];
        ptsTo(accel) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre171) := [nullCell];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(_imopVarPre177) := [nullCell];
        ptsTo(_imopVarPre180) := [kinetic];
        ptsTo(_imopVarPre181) := [potential];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre184) := [kinetic];
        ptsTo(_imopVarPre185) := [potential];
        ]*/
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(position) := [nullCell];
        ptsTo(velocity) := [nullCell];
        ptsTo(force) := [nullCell];
        ptsTo(accel) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre171) := [nullCell];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(_imopVarPre177) := [nullCell];
        ptsTo(_imopVarPre180) := [kinetic];
        ptsTo(_imopVarPre181) := [potential];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre184) := [kinetic];
        ptsTo(_imopVarPre185) := [potential];
        ]*/
        update(NPARTS, 3, position, velocity, force, accel, mass, dt);
        /*OUT: [ptsTo(suboptarg) := [nullCell];
        ptsTo(position) := [nullCell];
        ptsTo(velocity) := [nullCell];
        ptsTo(force) := [nullCell];
        ptsTo(accel) := [nullCell];
        ptsTo(_imopVarPre168) := [nullCell];
        ptsTo(_imopVarPre171) := [nullCell];
        ptsTo(_imopVarPre174) := [nullCell];
        ptsTo(_imopVarPre177) := [nullCell];
        ptsTo(_imopVarPre180) := [kinetic];
        ptsTo(_imopVarPre181) := [potential];
        ptsTo(argv) := [heapCell#0];
        ptsTo(_imopVarPre184) := [kinetic];
        ptsTo(_imopVarPre185) := [potential];
        ]*/
    }
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    OSCR_timer_stop(0);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    total_time = OSCR_timer_read(0);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    OSCR_report(1, TIMERS_NAMES);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\n \t# THREADS \tTIME (secs.) \n");
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    printf("\t %d \t\t%14.6lf\n", NUMTHREADS, total_time);
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    /*OUT: [ptsTo(suboptarg) := [nullCell];
    ptsTo(position) := [nullCell];
    ptsTo(velocity) := [nullCell];
    ptsTo(force) := [nullCell];
    ptsTo(accel) := [nullCell];
    ptsTo(_imopVarPre168) := [nullCell];
    ptsTo(_imopVarPre171) := [nullCell];
    ptsTo(_imopVarPre174) := [nullCell];
    ptsTo(_imopVarPre177) := [nullCell];
    ptsTo(_imopVarPre180) := [kinetic];
    ptsTo(_imopVarPre181) := [potential];
    ptsTo(argv) := [heapCell#0];
    ]*/
    return 0;
}
