typedef int __int32_t;
typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_suseconds_t;
typedef __darwin_size_t size_t;
typedef __darwin_off_t fpos_t;
struct __sbuf {
    unsigned char *_base;
    int _size;
} ;
struct __sFILEX ;
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
typedef struct __sFILE FILE;
extern FILE *__stderrp;
int fclose(FILE *);
FILE *fopen(const char *restrict __filename, const char *restrict __mode);
int fprintf(FILE *restrict , const char *restrict , ...);
int fputs(const char *restrict , FILE *restrict );
size_t fread(void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
size_t fwrite(const void *restrict __ptr, size_t __size , size_t __nitems , FILE *restrict __stream);
int printf(const char *restrict , ...);
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
int atoi(const char *);
void *calloc(size_t __count, size_t __size);
void free(void *);
void *malloc(size_t __size);
int strcmp(const char *__s1, const char *__s2);
size_t strlen(const char *__s);
char *strdup(const char *__s1);
int gettimeofday(struct timeval *restrict , void *restrict );
extern char *suboptarg;
struct fssearchblock ;
struct searchstate ;
extern double cbrt(double );
extern double floor(double );
struct pb_Parameters {
    char *outFile;
    char **inpFiles;
} ;
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv);
void pb_FreeParameters(struct pb_Parameters *p);
typedef unsigned long long pb_Timestamp;
enum pb_TimerState {
    pb_Timer_STOPPED, pb_Timer_RUNNING
} ;
struct pb_Timer {
    enum pb_TimerState state;
    pb_Timestamp elapsed;
    pb_Timestamp init;
} ;
void pb_ResetTimer(struct pb_Timer *timer);
void pb_StartTimer(struct pb_Timer *timer);
void pb_StopTimer(struct pb_Timer *timer);
double pb_GetElapsedTime(struct pb_Timer *timer);
enum pb_TimerID {
    pb_TimerID_NONE = 0, pb_TimerID_IO , pb_TimerID_KERNEL , pb_TimerID_COPY , pb_TimerID_DRIVER , pb_TimerID_COPY_ASYNC , pb_TimerID_COMPUTE , pb_TimerID_OVERLAP , pb_TimerID_LAST
} ;
struct pb_async_time_marker_list {
    char *label;
    enum pb_TimerID timerID;
    void *marker;
    struct pb_async_time_marker_list *next;
} ;
struct pb_SubTimer {
    char *label;
    struct pb_Timer timer;
    struct pb_SubTimer *next;
} ;
struct pb_SubTimerList {
    struct pb_SubTimer *current;
    struct pb_SubTimer *subtimer_list;
} ;
struct pb_TimerSet {
    enum pb_TimerID current;
    struct pb_async_time_marker_list *async_markers;
    pb_Timestamp async_begin;
    pb_Timestamp wall_begin;
    struct pb_Timer timers[pb_TimerID_LAST];
    struct pb_SubTimerList *sub_timer_list[pb_TimerID_LAST];
} ;
void pb_InitializeTimerSet(struct pb_TimerSet *timers);
void pb_AddSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID pb_Category);
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer);
void pb_SwitchToSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID category);
void pb_PrintTimerSet(struct pb_TimerSet *timers);
/*OUT: {
Reverse<--,>}*/
static void free_string_array(char **string_array) {
    /*OUT: {
    Reverse<--,>}*/
    char **p;
    /*OUT: {
    Reverse<--,>}*/
    if (!string_array) {
        /*OUT: {
        Reverse<--, 112_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 112_1;>}*/
    /*OUT: {
    Reverse<--, 112_1;>}*/
    /*OUT: {
    Reverse<--, 115_0; 112_1;>}*/
    for (p = string_array; *p; p++) {
        /*OUT: {
        Reverse<--, 115_0; 112_1;>}*/
        char *_imopVarPre146;
        /*OUT: {
        Reverse<--, 115_0; 112_1;>}*/
        _imopVarPre146 = *p;
        /*OUT: {
        Reverse<--, 115_0; 112_1;>}*/
        free(_imopVarPre146);
        /*OUT: {
        Reverse<--, 115_0; 112_1;>}*/
    }
    /*OUT: {
    Reverse<--, 115_1; 112_1;>}*/
    free(string_array);
    /*OUT: {
    Reverse<--, 115_1; 112_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
static char **read_string_array(char *in) {
    /*OUT: {
    Reverse<--,>}*/
    char **ret;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int count;
    /*OUT: {
    Reverse<--,>}*/
    char *substring;
    /*OUT: {
    Reverse<--,>}*/
    count = 1;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 139_0;>}*/
    for (i = 0; in[i]; i++) {
        /*OUT: {
        Reverse<--, 139_0;>}*/
        if (in[i] == ',') {
            /*OUT: {
            Reverse<--, 142_0; 139_0;>}*/
            count++;
        }
    }
    /*OUT: {
    Reverse<--, 139_1;>}*/
    unsigned long int _imopVarPre149;
    /*OUT: {
    Reverse<--, 139_1;>}*/
    void *_imopVarPre150;
    /*OUT: {
    Reverse<--, 139_1;>}*/
    _imopVarPre149 = (count + 1) * sizeof(char *);
    /*OUT: {
    Reverse<--, 139_1;>}*/
    _imopVarPre150 = malloc(_imopVarPre149);
    /*OUT: {
    Reverse<--, 139_1;>}*/
    /*OUT: {
    Reverse<--, 139_1;>}*/
    ret = (char **) _imopVarPre150;
    /*OUT: {
    Reverse<--, 139_1;>}*/
    substring = in;
    /*OUT: {
    Reverse<--, 139_1;>}*/
    /*OUT: {
    Reverse<--, 139_1;>}*/
    /*OUT: {
    Reverse<--, 175_1; 161_0; 139_1;>}*/
    for (i = 0; i < count; i++) {
        /*OUT: {
        Reverse<--, 161_0; 139_1;>}*/
        char *substring_end;
        /*OUT: {
        Reverse<--, 161_0; 139_1;>}*/
        int substring_length;
        /*OUT: {
        Reverse<--, 161_0; 139_1;>}*/
        int _imopVarPre152;
        /*OUT: {
        Reverse<--, 161_0; 139_1;>}*/
        substring_end = substring;
        /*OUT: {
        Reverse<--, 161_0; 139_1;>}*/
        _imopVarPre152 = (*substring_end != ',');
        /*OUT: {
        Reverse<--, 161_0; 139_1;>}*/
        if (_imopVarPre152) {
            /*OUT: {
            Reverse<--, 171_0; 161_0; 139_1;>}*/
            _imopVarPre152 = (*substring_end != 0);
        }
        /*OUT: {
        Reverse<--, 161_0; 139_1;>}*/
        for (; _imopVarPre152; ) {
            /*OUT: {
            Reverse<--, 175_0; 161_0; 139_1;>}*/
            ;
            /*OUT: {
            Reverse<--, 175_0; 161_0; 139_1;>}*/
            substring_end++;
            /*OUT: {
            Reverse<--, 175_0; 161_0; 139_1;>}*/
            _imopVarPre152 = (*substring_end != ',');
            /*OUT: {
            Reverse<--, 175_0; 161_0; 139_1;>}*/
            if (_imopVarPre152) {
                /*OUT: {
                Reverse<--, 182_0; 175_0; 161_0; 139_1;>}*/
                _imopVarPre152 = (*substring_end != 0);
            }
        }
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        substring_length = substring_end - substring;
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        int _imopVarPre155;
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        void *_imopVarPre156;
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        _imopVarPre155 = substring_length + 1;
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        _imopVarPre156 = malloc(_imopVarPre155);
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        ret[i] = (char *) _imopVarPre156;
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        char *_imopVarPre162;
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        unsigned int _imopVarPre163;
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        char *_imopVarPre164;
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        _imopVarPre162 = ret[i];
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        _imopVarPre163 = __builtin_object_size(_imopVarPre162, 0);
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        _imopVarPre164 = ret[i];
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        __builtin___memcpy_chk(_imopVarPre164, substring, substring_length, _imopVarPre163);
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        ret[i][substring_length] = 0;
        /*OUT: {
        Reverse<--, 175_1; 161_0; 139_1;>}*/
        substring = substring_end + 1;
    }
    /*OUT: {
    Reverse<--, 161_1; 139_1;>}*/
    ret[i] = ((void *) 0);
    /*OUT: {
    Reverse<--, 161_1; 139_1;>}*/
    return ret;
}
struct argparse {
    int argc;
    char **argv;
    int argn;
    char **argv_get;
    char **argv_put;
} ;
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void initialize_argparse(struct argparse *ap, int argc , char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    ap->argc = argc;
    /*OUT: {
    Reverse<--,>}*/
    ap->argn = 0;
    /*OUT: {
    Reverse<--,>}*/
    ap->argv_get = ap->argv_put = ap->argv = argv;
}
/*OUT: {
Reverse<--,>}*/
static void finalize_argparse(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 244_0;>}*/
    for (; ap->argn < ap->argc; ap->argn++) {
        /*OUT: {
        Reverse<--, 244_0;>}*/
        *ap->argv_put++ = *ap->argv_get++;
    }
}
/*OUT: {
Reverse<--,>}*/
static void delete_argument(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    if (ap->argn >= ap->argc) {
        /*OUT: {
        Reverse<--, 249_0;>}*/
        fprintf(__stderrp, "delete_argument\n");
        /*OUT: {
        Reverse<--, 249_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    ap->argc--;
    /*OUT: {
    Reverse<--,>}*/
    ap->argv_get++;
}
/*OUT: {
Reverse<--,>}*/
static void next_argument(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    if (ap->argn >= ap->argc) {
        /*OUT: {
        Reverse<--, 260_0;>}*/
        fprintf(__stderrp, "next_argument\n");
        /*OUT: {
        Reverse<--, 260_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    *ap->argv_put++ = *ap->argv_get++;
    /*OUT: {
    Reverse<--,>}*/
    ap->argn++;
}
/*OUT: {
Reverse<--,>}*/
static int is_end_of_arguments(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    return ap->argn == ap->argc;
}
/*OUT: {
Reverse<--,>}*/
static char *get_argument(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    return *ap->argv_get;
}
/*OUT: {
Reverse<--,>}*/
static char *consume_argument(struct argparse *ap) {
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre165;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre165 = get_argument(ap);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char *ret = _imopVarPre165;
    /*OUT: {
    Reverse<--,>}*/
    delete_argument(ap);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return ret;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv) {
    /*OUT: {
    Reverse<--,>}*/
    char *err_message;
    /*OUT: {
    Reverse<--,>}*/
    struct argparse ap;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre168;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre169;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre168 = sizeof(struct pb_Parameters);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre169 = malloc(_imopVarPre168);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre169;
    /*OUT: {
    Reverse<--,>}*/
    ret->outFile = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre172;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre173;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre172 = sizeof(char *);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre173 = malloc(_imopVarPre172);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    ret->inpFiles = (char **) _imopVarPre173;
    /*OUT: {
    Reverse<--,>}*/
    ret->inpFiles[0] = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre176;
    /*OUT: {
    Reverse<--,>}*/
    struct argparse *_imopVarPre177;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre176 = *_argc;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre177 = &ap;
    /*OUT: {
    Reverse<--,>}*/
    initialize_argparse(_imopVarPre177, _imopVarPre176, argv);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct argparse *_imopVarPre180;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre181;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre180 = &ap;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre181 = is_end_of_arguments(_imopVarPre180);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    while (!_imopVarPre181) {
        /*OUT: {
        Reverse<--, 347_0;>}*/
        struct argparse *_imopVarPre183;
        /*OUT: {
        Reverse<--, 347_0;>}*/
        char *_imopVarPre184;
        /*OUT: {
        Reverse<--, 347_0;>}*/
        _imopVarPre183 = &ap;
        /*OUT: {
        Reverse<--, 347_0;>}*/
        _imopVarPre184 = get_argument(_imopVarPre183);
        /*OUT: {
        Reverse<--, 347_0;>}*/
        /*OUT: {
        Reverse<--, 347_0;>}*/
        char *arg = _imopVarPre184;
        /*OUT: {
        Reverse<--, 347_0;>}*/
        int _imopVarPre187;
        /*OUT: {
        Reverse<--, 347_0;>}*/
        int _imopVarPre188;
        /*OUT: {
        Reverse<--, 347_0;>}*/
        _imopVarPre187 = (arg[0] == '-');
        /*OUT: {
        Reverse<--, 347_0;>}*/
        if (_imopVarPre187) {
            /*OUT: {
            Reverse<--, 365_0; 347_0;>}*/
            _imopVarPre188 = (arg[1] != 0);
            /*OUT: {
            Reverse<--, 365_0; 347_0;>}*/
            if (_imopVarPre188) {
                /*OUT: {
                Reverse<--, 370_0; 365_0; 347_0;>}*/
                _imopVarPre188 = (arg[2] == 0);
            }
            /*OUT: {
            Reverse<--, 365_0; 347_0;>}*/
            _imopVarPre187 = _imopVarPre188;
        }
        /*OUT: {
        Reverse<--, 347_0;>}*/
        if (_imopVarPre187) {
            /*OUT: {
            Reverse<--, 377_0; 347_0;>}*/
            struct argparse *_imopVarPre190;
            /*OUT: {
            Reverse<--, 377_0; 347_0;>}*/
            _imopVarPre190 = &ap;
            /*OUT: {
            Reverse<--, 377_0; 347_0;>}*/
            delete_argument(_imopVarPre190);
            /*OUT: {
            Reverse<--, 377_0; 347_0;>}*/
            /*OUT: {
            Reverse<--, 377_0; 347_0;>}*/
            switch (arg[1]) {
                /*OUT: {
                Reverse<--, 387_3; 377_0; 347_0;>}*/
                case 'o': ;
                /*OUT: {
                Reverse<--, 387_3; 377_0; 347_0;>}*/
                struct argparse *_imopVarPre192;
                /*OUT: {
                Reverse<--, 387_3; 377_0; 347_0;>}*/
                int _imopVarPre193;
                /*OUT: {
                Reverse<--, 387_3; 377_0; 347_0;>}*/
                _imopVarPre192 = &ap;
                /*OUT: {
                Reverse<--, 387_3; 377_0; 347_0;>}*/
                _imopVarPre193 = is_end_of_arguments(_imopVarPre192);
                /*OUT: {
                Reverse<--, 387_3; 377_0; 347_0;>}*/
                /*OUT: {
                Reverse<--, 387_3; 377_0; 347_0;>}*/
                if (_imopVarPre193) {
                    /*OUT: {
                    Reverse<--, 399_0; 387_3; 377_0; 347_0;>}*/
                    err_message = "Expecting file name after '-o'\n";
                    /*OUT: {
                    Reverse<--, 399_0; 387_3; 377_0; 347_0;>}*/
                    goto error;
                }
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                char *_imopVarPre195;
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                _imopVarPre195 = ret->outFile;
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                free(_imopVarPre195);
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                struct argparse *_imopVarPre200;
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                char *_imopVarPre201;
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                char *_imopVarPre202;
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                _imopVarPre200 = &ap;
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                _imopVarPre201 = consume_argument(_imopVarPre200);
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                _imopVarPre202 = strdup(_imopVarPre201);
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                ret->outFile = _imopVarPre202;
                /*OUT: {
                Reverse<--, 399_1; 387_3; 377_0; 347_0;>}*/
                break;
                /*OUT: {
                Reverse<--, 387_2; 377_0; 347_0;>}*/
                case 'i': ;
                /*OUT: {
                Reverse<--, 387_2; 377_0; 347_0;>}*/
                struct argparse *_imopVarPre204;
                /*OUT: {
                Reverse<--, 387_2; 377_0; 347_0;>}*/
                int _imopVarPre205;
                /*OUT: {
                Reverse<--, 387_2; 377_0; 347_0;>}*/
                _imopVarPre204 = &ap;
                /*OUT: {
                Reverse<--, 387_2; 377_0; 347_0;>}*/
                _imopVarPre205 = is_end_of_arguments(_imopVarPre204);
                /*OUT: {
                Reverse<--, 387_2; 377_0; 347_0;>}*/
                /*OUT: {
                Reverse<--, 387_2; 377_0; 347_0;>}*/
                if (_imopVarPre205) {
                    /*OUT: {
                    Reverse<--, 442_0; 387_2; 377_0; 347_0;>}*/
                    err_message = "Expecting file name after '-i'\n";
                    /*OUT: {
                    Reverse<--, 442_0; 387_2; 377_0; 347_0;>}*/
                    goto error;
                }
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                struct argparse *_imopVarPre210;
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                char *_imopVarPre211;
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                char **_imopVarPre212;
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                _imopVarPre210 = &ap;
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                _imopVarPre211 = consume_argument(_imopVarPre210);
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                _imopVarPre212 = read_string_array(_imopVarPre211);
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                ret->inpFiles = _imopVarPre212;
                /*OUT: {
                Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
                break;
                /*OUT: {
                Reverse<--, 387_1; 377_0; 347_0;>}*/
                case '-': goto end_of_options;
                /*OUT: {
                Reverse<--, 387_0; 377_0; 347_0;>}*/
                default: err_message = "Unexpected command-line parameter\n";
                /*OUT: {
                Reverse<--, 387_0; 377_0; 347_0;>}*/
                goto error;
            }
        } else {
            /*OUT: {
            Reverse<--, 377_1; 347_0;>}*/
            struct argparse *_imopVarPre214;
            /*OUT: {
            Reverse<--, 377_1; 347_0;>}*/
            _imopVarPre214 = &ap;
            /*OUT: {
            Reverse<--, 377_1; 347_0;>}*/
            next_argument(_imopVarPre214);
            /*OUT: {
            Reverse<--, 377_1; 347_0;>}*/
        }
        /*OUT: {
        Reverse<--, 399_1; 387_3; 377_0; 347_0;>
        Reverse<--, 377_1; 347_0;>
        Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
        _imopVarPre180 = &ap;
        /*OUT: {
        Reverse<--, 399_1; 387_3; 377_0; 347_0;>
        Reverse<--, 377_1; 347_0;>
        Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
        _imopVarPre181 = is_end_of_arguments(_imopVarPre180);
        /*OUT: {
        Reverse<--, 399_1; 387_3; 377_0; 347_0;>
        Reverse<--, 377_1; 347_0;>
        Reverse<--, 442_1; 387_2; 377_0; 347_0;>}*/
    }
    /*OUT: {
    Reverse<--, 347_1;>
    Reverse<--, 387_1; 377_0; 347_0;>}*/
    end_of_options: *_argc = ap.argc;
    /*OUT: {
    Reverse<--, 347_1;>
    Reverse<--, 387_1; 377_0; 347_0;>}*/
    struct argparse *_imopVarPre216;
    /*OUT: {
    Reverse<--, 347_1;>
    Reverse<--, 387_1; 377_0; 347_0;>}*/
    _imopVarPre216 = &ap;
    /*OUT: {
    Reverse<--, 347_1;>
    Reverse<--, 387_1; 377_0; 347_0;>}*/
    finalize_argparse(_imopVarPre216);
    /*OUT: {
    Reverse<--, 347_1;>
    Reverse<--, 387_1; 377_0; 347_0;>}*/
    /*OUT: {
    Reverse<--, 347_1;>
    Reverse<--, 387_1; 377_0; 347_0;>}*/
    return ret;
    /*OUT: {
    Reverse<--, 399_0; 387_3; 377_0; 347_0;>
    Reverse<--, 387_0; 377_0; 347_0;>
    Reverse<--, 442_0; 387_2; 377_0; 347_0;>}*/
    error: fputs(err_message, __stderrp);
    /*OUT: {
    Reverse<--, 399_0; 387_3; 377_0; 347_0;>
    Reverse<--, 387_0; 377_0; 347_0;>
    Reverse<--, 442_0; 387_2; 377_0; 347_0;>}*/
    /*OUT: {
    Reverse<--, 399_0; 387_3; 377_0; 347_0;>
    Reverse<--, 387_0; 377_0; 347_0;>
    Reverse<--, 442_0; 387_2; 377_0; 347_0;>}*/
    pb_FreeParameters(ret);
    /*OUT: {
    Reverse<--, 399_0; 387_3; 377_0; 347_0;>
    Reverse<--, 387_0; 377_0; 347_0;>
    Reverse<--, 442_0; 387_2; 377_0; 347_0;>}*/
    /*OUT: {
    Reverse<--, 399_0; 387_3; 377_0; 347_0;>
    Reverse<--, 387_0; 377_0; 347_0;>
    Reverse<--, 442_0; 387_2; 377_0; 347_0;>}*/
    return ((void *) 0);
}
/*OUT: {
Reverse<--,>}*/
void pb_FreeParameters(struct pb_Parameters *p) {
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre218;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre218 = p->outFile;
    /*OUT: {
    Reverse<--,>}*/
    free(_imopVarPre218);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char **_imopVarPre220;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre220 = p->inpFiles;
    /*OUT: {
    Reverse<--,>}*/
    free_string_array(_imopVarPre220);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    free(p);
    /*OUT: {
    Reverse<--,>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
static void accumulate_time(pb_Timestamp *accum, pb_Timestamp start , pb_Timestamp end) {
    /*OUT: {
    Reverse<--,>}*/
    *accum += end - start;
}
static pb_Timestamp get_time() {
    /*OUT: {
    Reverse<--,>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre223;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre224;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre223 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre224 = &tv;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre224, _imopVarPre223);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return (pb_Timestamp) (tv.tv_sec * 1000000l + tv.tv_usec);
}
/*OUT: {
Reverse<--,>}*/
void pb_ResetTimer(struct pb_Timer *timer) {
    /*OUT: {
    Reverse<--,>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--,>}*/
    timer->elapsed = 0;
}
/*OUT: {
Reverse<--,>}*/
void pb_StartTimer(struct pb_Timer *timer) {
    /*OUT: {
    Reverse<--,>}*/
    if (timer->state != pb_Timer_STOPPED) {
        /*OUT: {
        Reverse<--, 560_0;>}*/
        fputs("Ignoring attempt to start a running timer\n", __stderrp);
        /*OUT: {
        Reverse<--, 560_0;>}*/
        /*OUT: {
        Reverse<--, 560_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 560_1;>}*/
    timer->state = pb_Timer_RUNNING;
    /*OUT: {
    Reverse<--, 560_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 560_1;>}*/
    void *_imopVarPre227;
    /*OUT: {
    Reverse<--, 560_1;>}*/
    struct timeval *_imopVarPre228;
    /*OUT: {
    Reverse<--, 560_1;>}*/
    _imopVarPre227 = ((void *) 0);
    /*OUT: {
    Reverse<--, 560_1;>}*/
    _imopVarPre228 = &tv;
    /*OUT: {
    Reverse<--, 560_1;>}*/
    gettimeofday(_imopVarPre228, _imopVarPre227);
    /*OUT: {
    Reverse<--, 560_1;>}*/
    /*OUT: {
    Reverse<--, 560_1;>}*/
    timer->init = tv.tv_sec * 1000000l + tv.tv_usec;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void pb_StartTimerAndSubTimer(struct pb_Timer *timer, struct pb_Timer *subtimer) {
    /*OUT: {
    Reverse<--,>}*/
    unsigned int numNotStopped = 0x3;
    /*OUT: {
    Reverse<--,>}*/
    if (timer->state != pb_Timer_STOPPED) {
        /*OUT: {
        Reverse<--, 587_0;>}*/
        fputs("Warning: Timer was not stopped\n", __stderrp);
        /*OUT: {
        Reverse<--, 587_0;>}*/
        /*OUT: {
        Reverse<--, 587_0;>}*/
        numNotStopped &= 0x1;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (subtimer->state != pb_Timer_STOPPED) {
        /*OUT: {
        Reverse<--, 595_0;>}*/
        fputs("Warning: Subtimer was not stopped\n", __stderrp);
        /*OUT: {
        Reverse<--, 595_0;>}*/
        /*OUT: {
        Reverse<--, 595_0;>}*/
        numNotStopped &= 0x2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (numNotStopped == 0x0) {
        /*OUT: {
        Reverse<--, 603_0;>}*/
        fputs("Ignoring attempt to start running timer and subtimer\n", __stderrp);
        /*OUT: {
        Reverse<--, 603_0;>}*/
        /*OUT: {
        Reverse<--, 603_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 603_1;>}*/
    timer->state = pb_Timer_RUNNING;
    /*OUT: {
    Reverse<--, 603_1;>}*/
    subtimer->state = pb_Timer_RUNNING;
    /*OUT: {
    Reverse<--, 603_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 603_1;>}*/
    void *_imopVarPre231;
    /*OUT: {
    Reverse<--, 603_1;>}*/
    struct timeval *_imopVarPre232;
    /*OUT: {
    Reverse<--, 603_1;>}*/
    _imopVarPre231 = ((void *) 0);
    /*OUT: {
    Reverse<--, 603_1;>}*/
    _imopVarPre232 = &tv;
    /*OUT: {
    Reverse<--, 603_1;>}*/
    gettimeofday(_imopVarPre232, _imopVarPre231);
    /*OUT: {
    Reverse<--, 603_1;>}*/
    /*OUT: {
    Reverse<--, 603_1;>}*/
    if (numNotStopped & 0x2) {
        /*OUT: {
        Reverse<--, 627_0; 603_1;>}*/
        timer->init = tv.tv_sec * 1000000l + tv.tv_usec;
    }
    /*OUT: {
    Reverse<--, 603_1;>}*/
    if (numNotStopped & 0x1) {
        /*OUT: {
        Reverse<--, 630_0; 603_1;>}*/
        subtimer->init = tv.tv_sec * 1000000l + tv.tv_usec;
    }
}
/*OUT: {
Reverse<--,>}*/
void pb_StopTimer(struct pb_Timer *timer) {
    /*OUT: {
    Reverse<--,>}*/
    pb_Timestamp fini;
    /*OUT: {
    Reverse<--,>}*/
    if (timer->state != pb_Timer_RUNNING) {
        /*OUT: {
        Reverse<--, 635_0;>}*/
        fputs("Ignoring attempt to stop a stopped timer\n", __stderrp);
        /*OUT: {
        Reverse<--, 635_0;>}*/
        /*OUT: {
        Reverse<--, 635_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 635_1;>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    void *_imopVarPre235;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    struct timeval *_imopVarPre236;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    _imopVarPre235 = ((void *) 0);
    /*OUT: {
    Reverse<--, 635_1;>}*/
    _imopVarPre236 = &tv;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    gettimeofday(_imopVarPre236, _imopVarPre235);
    /*OUT: {
    Reverse<--, 635_1;>}*/
    /*OUT: {
    Reverse<--, 635_1;>}*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    unsigned long long int _imopVarPre239;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    unsigned long long int *_imopVarPre240;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    _imopVarPre239 = timer->init;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    _imopVarPre240 = &timer->elapsed;
    /*OUT: {
    Reverse<--, 635_1;>}*/
    accumulate_time(_imopVarPre240, _imopVarPre239, fini);
    /*OUT: {
    Reverse<--, 635_1;>}*/
    /*OUT: {
    Reverse<--, 635_1;>}*/
    timer->init = fini;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void pb_StopTimerAndSubTimer(struct pb_Timer *timer, struct pb_Timer *subtimer) {
    /*OUT: {
    Reverse<--,>}*/
    pb_Timestamp fini;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int numNotRunning = 0x3;
    /*OUT: {
    Reverse<--,>}*/
    if (timer->state != pb_Timer_RUNNING) {
        /*OUT: {
        Reverse<--, 676_0;>}*/
        fputs("Warning: Timer was not running\n", __stderrp);
        /*OUT: {
        Reverse<--, 676_0;>}*/
        /*OUT: {
        Reverse<--, 676_0;>}*/
        numNotRunning &= 0x1;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (subtimer->state != pb_Timer_RUNNING) {
        /*OUT: {
        Reverse<--, 684_0;>}*/
        fputs("Warning: Subtimer was not running\n", __stderrp);
        /*OUT: {
        Reverse<--, 684_0;>}*/
        /*OUT: {
        Reverse<--, 684_0;>}*/
        numNotRunning &= 0x2;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (numNotRunning == 0x0) {
        /*OUT: {
        Reverse<--, 692_0;>}*/
        fputs("Ignoring attempt to stop stopped timer and subtimer\n", __stderrp);
        /*OUT: {
        Reverse<--, 692_0;>}*/
        /*OUT: {
        Reverse<--, 692_0;>}*/
        return;
    }
    /*OUT: {
    Reverse<--, 692_1;>}*/
    timer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 692_1;>}*/
    subtimer->state = pb_Timer_STOPPED;
    /*OUT: {
    Reverse<--, 692_1;>}*/
    struct timeval tv;
    /*OUT: {
    Reverse<--, 692_1;>}*/
    void *_imopVarPre243;
    /*OUT: {
    Reverse<--, 692_1;>}*/
    struct timeval *_imopVarPre244;
    /*OUT: {
    Reverse<--, 692_1;>}*/
    _imopVarPre243 = ((void *) 0);
    /*OUT: {
    Reverse<--, 692_1;>}*/
    _imopVarPre244 = &tv;
    /*OUT: {
    Reverse<--, 692_1;>}*/
    gettimeofday(_imopVarPre244, _imopVarPre243);
    /*OUT: {
    Reverse<--, 692_1;>}*/
    /*OUT: {
    Reverse<--, 692_1;>}*/
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    /*OUT: {
    Reverse<--, 692_1;>}*/
    if (numNotRunning & 0x2) {
        /*OUT: {
        Reverse<--, 718_0; 692_1;>}*/
        unsigned long long int _imopVarPre247;
        /*OUT: {
        Reverse<--, 718_0; 692_1;>}*/
        unsigned long long int *_imopVarPre248;
        /*OUT: {
        Reverse<--, 718_0; 692_1;>}*/
        _imopVarPre247 = timer->init;
        /*OUT: {
        Reverse<--, 718_0; 692_1;>}*/
        _imopVarPre248 = &timer->elapsed;
        /*OUT: {
        Reverse<--, 718_0; 692_1;>}*/
        accumulate_time(_imopVarPre248, _imopVarPre247, fini);
        /*OUT: {
        Reverse<--, 718_0; 692_1;>}*/
        /*OUT: {
        Reverse<--, 718_0; 692_1;>}*/
        timer->init = fini;
    }
    /*OUT: {
    Reverse<--, 692_1;>}*/
    if (numNotRunning & 0x1) {
        /*OUT: {
        Reverse<--, 732_0; 692_1;>}*/
        unsigned long long int _imopVarPre251;
        /*OUT: {
        Reverse<--, 732_0; 692_1;>}*/
        unsigned long long int *_imopVarPre252;
        /*OUT: {
        Reverse<--, 732_0; 692_1;>}*/
        _imopVarPre251 = subtimer->init;
        /*OUT: {
        Reverse<--, 732_0; 692_1;>}*/
        _imopVarPre252 = &subtimer->elapsed;
        /*OUT: {
        Reverse<--, 732_0; 692_1;>}*/
        accumulate_time(_imopVarPre252, _imopVarPre251, fini);
        /*OUT: {
        Reverse<--, 732_0; 692_1;>}*/
        /*OUT: {
        Reverse<--, 732_0; 692_1;>}*/
        subtimer->init = fini;
    }
}
/*OUT: {
Reverse<--,>}*/
double pb_GetElapsedTime(struct pb_Timer *timer) {
    /*OUT: {
    Reverse<--,>}*/
    double ret;
    /*OUT: {
    Reverse<--,>}*/
    if (timer->state != pb_Timer_STOPPED) {
        /*OUT: {
        Reverse<--, 748_0;>}*/
        fputs("Elapsed time from a running timer is inaccurate\n", __stderrp);
        /*OUT: {
        Reverse<--, 748_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    ret = timer->elapsed / 1e6;
    /*OUT: {
    Reverse<--,>}*/
    return ret;
}
/*OUT: {
Reverse<--,>}*/
void pb_InitializeTimerSet(struct pb_TimerSet *timers) {
    /*OUT: {
    Reverse<--,>}*/
    int n;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long long int _imopVarPre253;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre253 = get_time();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    timers->wall_begin = _imopVarPre253;
    /*OUT: {
    Reverse<--,>}*/
    timers->current = pb_TimerID_NONE;
    /*OUT: {
    Reverse<--,>}*/
    timers->async_markers = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 775_0;>}*/
    for (n = 0; n < pb_TimerID_LAST; n++) {
        /*OUT: {
        Reverse<--, 775_0;>}*/
        struct pb_Timer *_imopVarPre255;
        /*OUT: {
        Reverse<--, 775_0;>}*/
        _imopVarPre255 = &timers->timers[n];
        /*OUT: {
        Reverse<--, 775_0;>}*/
        pb_ResetTimer(_imopVarPre255);
        /*OUT: {
        Reverse<--, 775_0;>}*/
        /*OUT: {
        Reverse<--, 775_0;>}*/
        timers->sub_timer_list[n] = ((void *) 0);
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void pb_AddSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID pb_Category) {
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre258;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre259;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre258 = sizeof(struct pb_SubTimer);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre259 = malloc(_imopVarPre258);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_SubTimer *subtimer = (struct pb_SubTimer *) _imopVarPre259;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre260;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre260 = strlen(label);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int len = _imopVarPre260;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre263;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre264;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre263 = sizeof(char) * (len + 1);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre264 = malloc(_imopVarPre263);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    subtimer->label = (char *) _imopVarPre264;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre276;
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre277;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre278;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre279;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre280;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre276 = 2 > 1;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre276) {
        /*OUT: {
        Reverse<--, 832_0;>}*/
        _imopVarPre277 = 1;
    } else {
        /*OUT: {
        Reverse<--, 832_1;>}*/
        _imopVarPre277 = 0;
    }
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre278 = subtimer->label;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre279 = __builtin_object_size(_imopVarPre278, _imopVarPre277);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre280 = subtimer->label;
    /*OUT: {
    Reverse<--,>}*/
    __builtin___sprintf_chk(_imopVarPre280, 0, _imopVarPre279, "%s\0", label);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Timer *_imopVarPre282;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre282 = &subtimer->timer;
    /*OUT: {
    Reverse<--,>}*/
    pb_ResetTimer(_imopVarPre282);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    subtimer->next = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[pb_Category];
    /*OUT: {
    Reverse<--,>}*/
    if (subtimerlist == ((void *) 0)) {
        /*OUT: {
        Reverse<--, 866_0;>}*/
        unsigned long int _imopVarPre285;
        /*OUT: {
        Reverse<--, 866_0;>}*/
        void *_imopVarPre286;
        /*OUT: {
        Reverse<--, 866_0;>}*/
        _imopVarPre285 = sizeof(struct pb_SubTimerList);
        /*OUT: {
        Reverse<--, 866_0;>}*/
        _imopVarPre286 = malloc(_imopVarPre285);
        /*OUT: {
        Reverse<--, 866_0;>}*/
        /*OUT: {
        Reverse<--, 866_0;>}*/
        subtimerlist = (struct pb_SubTimerList *) _imopVarPre286;
        /*OUT: {
        Reverse<--, 866_0;>}*/
        subtimerlist->subtimer_list = subtimer;
        /*OUT: {
        Reverse<--, 866_0;>}*/
        timers->sub_timer_list[pb_Category] = subtimerlist;
    } else {
        /*OUT: {
        Reverse<--, 866_1;>}*/
        struct pb_SubTimer *element = subtimerlist->subtimer_list;
        /*OUT: {
        Reverse<--, 866_1;>}*/
        while (element->next != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 886_0; 866_1;>}*/
            element = element->next;
        }
        /*OUT: {
        Reverse<--, 886_1; 866_1;>}*/
        element->next = subtimer;
    }
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void pb_SwitchToSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID category) {
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Timer *topLevelToStop = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre288;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre288 = timers->current != category;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre288) {
        /*OUT: {
        Reverse<--, 899_0;>}*/
        _imopVarPre288 = timers->current != pb_TimerID_NONE;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre288) {
        /*OUT: {
        Reverse<--, 902_0;>}*/
        topLevelToStop = &timers->timers[timers->current];
    }
    /*OUT: {
    Reverse<--,>}*/
    struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre289;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre290;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre289 = (subtimerlist == ((void *) 0));
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre289) {
        /*OUT: {
        Reverse<--, 914_0;>}*/
        _imopVarPre290 = ((void *) 0);
    } else {
        /*OUT: {
        Reverse<--, 914_1;>}*/
        _imopVarPre290 = subtimerlist->current;
    }
    /*OUT: {
    Reverse<--,>}*/
    struct pb_SubTimer *curr = _imopVarPre290;
    /*OUT: {
    Reverse<--,>}*/
    if (timers->current != pb_TimerID_NONE) {
        /*OUT: {
        Reverse<--, 921_0;>}*/
        int _imopVarPre292;
        /*OUT: {
        Reverse<--, 921_0;>}*/
        _imopVarPre292 = curr != ((void *) 0);
        /*OUT: {
        Reverse<--, 921_0;>}*/
        if (_imopVarPre292) {
            /*OUT: {
            Reverse<--, 926_0; 921_0;>}*/
            _imopVarPre292 = topLevelToStop != ((void *) 0);
        }
        /*OUT: {
        Reverse<--, 921_0;>}*/
        if (_imopVarPre292) {
            /*OUT: {
            Reverse<--, 930_0; 921_0;>}*/
            struct pb_Timer *_imopVarPre294;
            /*OUT: {
            Reverse<--, 930_0; 921_0;>}*/
            _imopVarPre294 = &curr->timer;
            /*OUT: {
            Reverse<--, 930_0; 921_0;>}*/
            pb_StopTimerAndSubTimer(topLevelToStop, _imopVarPre294);
            /*OUT: {
            Reverse<--, 930_0; 921_0;>}*/
        } else {
            /*OUT: {
            Reverse<--, 930_1; 921_0;>}*/
            if (curr != ((void *) 0)) {
                /*OUT: {
                Reverse<--, 940_0; 930_1; 921_0;>}*/
                struct pb_Timer *_imopVarPre296;
                /*OUT: {
                Reverse<--, 940_0; 930_1; 921_0;>}*/
                _imopVarPre296 = &curr->timer;
                /*OUT: {
                Reverse<--, 940_0; 930_1; 921_0;>}*/
                pb_StopTimer(_imopVarPre296);
                /*OUT: {
                Reverse<--, 940_0; 930_1; 921_0;>}*/
            } else {
                /*OUT: {
                Reverse<--, 940_1; 930_1; 921_0;>}*/
                pb_StopTimer(topLevelToStop);
                /*OUT: {
                Reverse<--, 940_1; 930_1; 921_0;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    subtimerlist = timers->sub_timer_list[category];
    /*OUT: {
    Reverse<--,>}*/
    struct pb_SubTimer *subtimer = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    if (label != ((void *) 0)) {
        /*OUT: {
        Reverse<--, 960_0; 921_1;>
        Reverse<--, 960_0;>
        Reverse<--, 960_0; 930_0; 921_0;>}*/
        subtimer = subtimerlist->subtimer_list;
        /*OUT: {
        Reverse<--, 960_0; 921_1;>
        Reverse<--, 960_0;>
        Reverse<--, 960_0; 930_0; 921_0;>}*/
        while (subtimer != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 964_0; 960_0;>
            Reverse<--, 964_0; 960_0; 921_1;>
            Reverse<--, 964_0; 960_0; 930_0; 921_0;>}*/
            char *_imopVarPre299;
            /*OUT: {
            Reverse<--, 964_0; 960_0;>
            Reverse<--, 964_0; 960_0; 921_1;>
            Reverse<--, 964_0; 960_0; 930_0; 921_0;>}*/
            int _imopVarPre300;
            /*OUT: {
            Reverse<--, 964_0; 960_0;>
            Reverse<--, 964_0; 960_0; 921_1;>
            Reverse<--, 964_0; 960_0; 930_0; 921_0;>}*/
            _imopVarPre299 = subtimer->label;
            /*OUT: {
            Reverse<--, 964_0; 960_0;>
            Reverse<--, 964_0; 960_0; 921_1;>
            Reverse<--, 964_0; 960_0; 930_0; 921_0;>}*/
            _imopVarPre300 = strcmp(_imopVarPre299, label);
            /*OUT: {
            Reverse<--, 964_0; 960_0;>
            Reverse<--, 964_0; 960_0; 921_1;>
            Reverse<--, 964_0; 960_0; 930_0; 921_0;>}*/
            /*OUT: {
            Reverse<--, 964_0; 960_0;>
            Reverse<--, 964_0; 960_0; 921_1;>
            Reverse<--, 964_0; 960_0; 930_0; 921_0;>}*/
            if (_imopVarPre300 == 0) {
                /*OUT: {
                Reverse<--, 975_0; 964_0; 960_0; 921_1;>
                Reverse<--, 975_0; 964_0; 960_0; 930_0; 921_0;>
                Reverse<--, 975_0; 964_0; 960_0;>}*/
                break;
            } else {
                /*OUT: {
                Reverse<--, 975_1; 964_0; 960_0;>
                Reverse<--, 975_1; 964_0; 960_0; 921_1;>
                Reverse<--, 975_1; 964_0; 960_0; 930_0; 921_0;>}*/
                subtimer = subtimer->next;
            }
        }
    }
    /*OUT: {
    Reverse<--, 964_1; 960_0; 930_0; 921_0;>
    Reverse<--, 960_1; 930_0; 921_0;>
    Reverse<--, 960_1; 921_1;>
    Reverse<--, 964_1; 960_0;>
    Reverse<--, 964_1; 960_0; 921_1;>
    Reverse<--, 960_1;>
    Reverse<--, 975_0; 964_0; 960_0; 921_1;>
    Reverse<--, 975_0; 964_0; 960_0; 930_0; 921_0;>
    Reverse<--, 975_0; 964_0; 960_0;>}*/
    if (category != pb_TimerID_NONE) {
        /*OUT: {
        Reverse<--, 979_0; 960_1; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 921_1;>
        Reverse<--, 979_0; 960_1; 921_1;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 960_1;>
        Reverse<--, 979_0; 964_1; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0; 921_1;>}*/
        if (subtimerlist != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 981_0; 979_0; 960_1; 930_0; 921_0;>
            Reverse<--, 981_0; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
            Reverse<--, 981_0; 979_0; 964_1; 960_0;>
            Reverse<--, 981_0; 979_0; 964_1; 960_0; 930_0; 921_0;>
            Reverse<--, 981_0; 979_0; 960_1;>
            Reverse<--, 981_0; 979_0; 975_0; 964_0; 960_0;>
            Reverse<--, 981_0; 979_0; 975_0; 964_0; 960_0; 921_1;>
            Reverse<--, 981_0; 979_0; 960_1; 921_1;>
            Reverse<--, 981_0; 979_0; 964_1; 960_0; 921_1;>}*/
            subtimerlist->current = subtimer;
        }
        /*OUT: {
        Reverse<--, 979_0; 960_1; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 921_1;>
        Reverse<--, 979_0; 960_1; 921_1;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 960_1;>
        Reverse<--, 979_0; 964_1; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0; 921_1;>}*/
        int _imopVarPre302;
        /*OUT: {
        Reverse<--, 979_0; 960_1; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 921_1;>
        Reverse<--, 979_0; 960_1; 921_1;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 960_1;>
        Reverse<--, 979_0; 964_1; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0; 921_1;>}*/
        _imopVarPre302 = category != timers->current;
        /*OUT: {
        Reverse<--, 979_0; 960_1; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 921_1;>
        Reverse<--, 979_0; 960_1; 921_1;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 960_1;>
        Reverse<--, 979_0; 964_1; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0; 921_1;>}*/
        if (_imopVarPre302) {
            /*OUT: {
            Reverse<--, 987_0; 979_0; 975_0; 964_0; 960_0;>
            Reverse<--, 987_0; 979_0; 960_1; 930_0; 921_0;>
            Reverse<--, 987_0; 979_0; 960_1;>
            Reverse<--, 987_0; 979_0; 975_0; 964_0; 960_0; 921_1;>
            Reverse<--, 987_0; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
            Reverse<--, 987_0; 979_0; 964_1; 960_0;>
            Reverse<--, 987_0; 979_0; 960_1; 921_1;>
            Reverse<--, 987_0; 979_0; 964_1; 960_0; 930_0; 921_0;>
            Reverse<--, 987_0; 979_0; 964_1; 960_0; 921_1;>}*/
            _imopVarPre302 = subtimer != ((void *) 0);
        }
        /*OUT: {
        Reverse<--, 979_0; 960_1; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 921_1;>
        Reverse<--, 979_0; 960_1; 921_1;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0;>
        Reverse<--, 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 960_1;>
        Reverse<--, 979_0; 964_1; 960_0; 930_0; 921_0;>
        Reverse<--, 979_0; 964_1; 960_0; 921_1;>}*/
        if (_imopVarPre302) {
            /*OUT: {
            Reverse<--, 991_0; 979_0; 960_1; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 960_1; 921_1;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 960_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0;>}*/
            struct pb_Timer *_imopVarPre305;
            /*OUT: {
            Reverse<--, 991_0; 979_0; 960_1; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 960_1; 921_1;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 960_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0;>}*/
            struct pb_Timer *_imopVarPre306;
            /*OUT: {
            Reverse<--, 991_0; 979_0; 960_1; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 960_1; 921_1;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 960_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0;>}*/
            _imopVarPre305 = &subtimer->timer;
            /*OUT: {
            Reverse<--, 991_0; 979_0; 960_1; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 960_1; 921_1;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 960_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0;>}*/
            _imopVarPre306 = &timers->timers[category];
            /*OUT: {
            Reverse<--, 991_0; 979_0; 960_1; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 960_1; 921_1;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 960_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0;>}*/
            pb_StartTimerAndSubTimer(_imopVarPre306, _imopVarPre305);
            /*OUT: {
            Reverse<--, 991_0; 979_0; 960_1; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 960_1; 921_1;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 921_1;>
            Reverse<--, 991_0; 979_0; 960_1;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0; 930_0; 921_0;>
            Reverse<--, 991_0; 979_0; 964_1; 960_0;>
            Reverse<--, 991_0; 979_0; 975_0; 964_0; 960_0;>}*/
        } else {
            /*OUT: {
            Reverse<--, 991_1; 979_0; 964_1; 960_0; 921_1;>
            Reverse<--, 991_1; 979_0; 964_1; 960_0;>
            Reverse<--, 991_1; 979_0; 960_1; 921_1;>
            Reverse<--, 991_1; 979_0; 960_1;>
            Reverse<--, 991_1; 979_0; 975_0; 964_0; 960_0; 921_1;>
            Reverse<--, 991_1; 979_0; 964_1; 960_0; 930_0; 921_0;>
            Reverse<--, 991_1; 979_0; 960_1; 930_0; 921_0;>
            Reverse<--, 991_1; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
            Reverse<--, 991_1; 979_0; 975_0; 964_0; 960_0;>}*/
            if (subtimer != ((void *) 0)) {
                /*OUT: {
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1; 930_0; 921_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0; 930_0; 921_0;>}*/
                struct pb_Timer *_imopVarPre308;
                /*OUT: {
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1; 930_0; 921_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0; 930_0; 921_0;>}*/
                _imopVarPre308 = &subtimer->timer;
                /*OUT: {
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1; 930_0; 921_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0; 930_0; 921_0;>}*/
                pb_StartTimer(_imopVarPre308);
                /*OUT: {
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1; 930_0; 921_0;>
                Reverse<--, 1005_0; 991_1; 979_0; 960_1; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 975_0; 964_0; 960_0; 921_1;>
                Reverse<--, 1005_0; 991_1; 979_0; 964_1; 960_0; 930_0; 921_0;>}*/
            } else {
                /*OUT: {
                Reverse<--, 1005_1; 991_1; 979_0; 960_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 960_1; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 960_1; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0;>}*/
                struct pb_Timer *_imopVarPre310;
                /*OUT: {
                Reverse<--, 1005_1; 991_1; 979_0; 960_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 960_1; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 960_1; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0;>}*/
                _imopVarPre310 = &timers->timers[category];
                /*OUT: {
                Reverse<--, 1005_1; 991_1; 979_0; 960_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 960_1; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 960_1; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0;>}*/
                pb_StartTimer(_imopVarPre310);
                /*OUT: {
                Reverse<--, 1005_1; 991_1; 979_0; 960_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 960_1; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 964_1; 960_0; 921_1;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 960_1; 930_0; 921_0;>
                Reverse<--, 1005_1; 991_1; 979_0; 975_0; 964_0; 960_0;>}*/
            }
        }
    }
    /*OUT: {
    Reverse<--, 960_1; 921_1;>
    Reverse<--, 964_1; 960_0; 930_0; 921_0;>
    Reverse<--, 964_1; 960_0;>
    Reverse<--, 960_1; 930_0; 921_0;>
    Reverse<--, 964_1; 960_0; 921_1;>
    Reverse<--, 960_1;>
    Reverse<--, 975_0; 964_0; 960_0; 921_1;>
    Reverse<--, 975_0; 964_0; 960_0; 930_0; 921_0;>
    Reverse<--, 975_0; 964_0; 960_0;>}*/
    timers->current = category;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer) {
    /*OUT: {
    Reverse<--,>}*/
    if (timers->current != pb_TimerID_NONE) {
        /*OUT: {
        Reverse<--, 1027_0;>}*/
        struct pb_SubTimer *currSubTimer = ((void *) 0);
        /*OUT: {
        Reverse<--, 1027_0;>}*/
        struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
        /*OUT: {
        Reverse<--, 1027_0;>}*/
        if (subtimerlist != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 1033_0; 1027_0;>}*/
            currSubTimer = timers->sub_timer_list[timers->current]->current;
        }
        /*OUT: {
        Reverse<--, 1027_0;>}*/
        if (currSubTimer != ((void *) 0)) {
            /*OUT: {
            Reverse<--, 1038_0; 1027_0;>}*/
            struct pb_Timer *_imopVarPre313;
            /*OUT: {
            Reverse<--, 1038_0; 1027_0;>}*/
            struct pb_Timer *_imopVarPre314;
            /*OUT: {
            Reverse<--, 1038_0; 1027_0;>}*/
            _imopVarPre313 = &currSubTimer->timer;
            /*OUT: {
            Reverse<--, 1038_0; 1027_0;>}*/
            _imopVarPre314 = &timers->timers[timers->current];
            /*OUT: {
            Reverse<--, 1038_0; 1027_0;>}*/
            pb_StopTimerAndSubTimer(_imopVarPre314, _imopVarPre313);
            /*OUT: {
            Reverse<--, 1038_0; 1027_0;>}*/
        } else {
            /*OUT: {
            Reverse<--, 1038_1; 1027_0;>}*/
            struct pb_Timer *_imopVarPre316;
            /*OUT: {
            Reverse<--, 1038_1; 1027_0;>}*/
            _imopVarPre316 = &timers->timers[timers->current];
            /*OUT: {
            Reverse<--, 1038_1; 1027_0;>}*/
            pb_StopTimer(_imopVarPre316);
            /*OUT: {
            Reverse<--, 1038_1; 1027_0;>}*/
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    timers->current = timer;
    /*OUT: {
    Reverse<--,>}*/
    if (timer != pb_TimerID_NONE) {
        /*OUT: {
        Reverse<--, 1062_0;>
        Reverse<--, 1062_0; 1038_1; 1027_0;>
        Reverse<--, 1062_0; 1027_1;>}*/
        struct pb_Timer *_imopVarPre318;
        /*OUT: {
        Reverse<--, 1062_0;>
        Reverse<--, 1062_0; 1038_1; 1027_0;>
        Reverse<--, 1062_0; 1027_1;>}*/
        _imopVarPre318 = &timers->timers[timer];
        /*OUT: {
        Reverse<--, 1062_0;>
        Reverse<--, 1062_0; 1038_1; 1027_0;>
        Reverse<--, 1062_0; 1027_1;>}*/
        pb_StartTimer(_imopVarPre318);
        /*OUT: {
        Reverse<--, 1062_0;>
        Reverse<--, 1062_0; 1038_1; 1027_0;>
        Reverse<--, 1062_0; 1027_1;>}*/
    }
}
/*OUT: {
Reverse<--,>}*/
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
    /*OUT: {
    Reverse<--,>}*/
    unsigned long long int _imopVarPre319;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre319 = get_time();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    pb_Timestamp wall_end = _imopVarPre319;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Timer *t = timers->timers;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_SubTimer *sub = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    int maxSubLength;
    /*OUT: {
    Reverse<--,>}*/
    const char *categories[] = {"IO", "Kernel" , "Copy" , "Driver" , "Copy Async" , "Compute"};
    /*OUT: {
    Reverse<--,>}*/
    const int maxCategoryLength = 10;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1125_1; 1102_0; 1089_0;>
    Reverse<--, 1102_1; 1089_0;>
    Reverse<--, 1165_1; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
    for (i = 1; i < pb_TimerID_LAST - 1; ++i) {
        /*OUT: {
        Reverse<--, 1089_0;>}*/
        struct pb_Timer *_imopVarPre322;
        /*OUT: {
        Reverse<--, 1089_0;>}*/
        double _imopVarPre323;
        /*OUT: {
        Reverse<--, 1089_0;>}*/
        _imopVarPre322 = &t[i];
        /*OUT: {
        Reverse<--, 1089_0;>}*/
        _imopVarPre323 = pb_GetElapsedTime(_imopVarPre322);
        /*OUT: {
        Reverse<--, 1089_0;>}*/
        /*OUT: {
        Reverse<--, 1089_0;>}*/
        if (_imopVarPre323 != 0) {
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            struct pb_Timer *_imopVarPre329;
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            double _imopVarPre330;
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            char *_imopVarPre331;
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            _imopVarPre329 = &t[i];
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            _imopVarPre330 = pb_GetElapsedTime(_imopVarPre329);
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            _imopVarPre331 = categories[i - 1];
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre331, _imopVarPre330);
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            /*OUT: {
            Reverse<--, 1102_0; 1089_0;>}*/
            if (timers->sub_timer_list[i] != ((void *) 0)) {
                /*OUT: {
                Reverse<--, 1125_0; 1102_0; 1089_0;>}*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*OUT: {
                Reverse<--, 1125_0; 1102_0; 1089_0;>}*/
                maxSubLength = 0;
                /*OUT: {
                Reverse<--, 1125_0; 1102_0; 1089_0;>}*/
                while (sub != ((void *) 0)) {
                    /*OUT: {
                    Reverse<--, 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                    char *_imopVarPre334;
                    /*OUT: {
                    Reverse<--, 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                    unsigned long int _imopVarPre335;
                    /*OUT: {
                    Reverse<--, 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                    _imopVarPre334 = sub->label;
                    /*OUT: {
                    Reverse<--, 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                    _imopVarPre335 = strlen(_imopVarPre334);
                    /*OUT: {
                    Reverse<--, 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                    /*OUT: {
                    Reverse<--, 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                    if (_imopVarPre335 > maxSubLength) {
                        /*OUT: {
                        Reverse<--, 1143_0; 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                        char *_imopVarPre337;
                        /*OUT: {
                        Reverse<--, 1143_0; 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                        unsigned long int _imopVarPre338;
                        /*OUT: {
                        Reverse<--, 1143_0; 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                        _imopVarPre337 = sub->label;
                        /*OUT: {
                        Reverse<--, 1143_0; 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                        _imopVarPre338 = strlen(_imopVarPre337);
                        /*OUT: {
                        Reverse<--, 1143_0; 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                        /*OUT: {
                        Reverse<--, 1143_0; 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                        maxSubLength = _imopVarPre338;
                    }
                    /*OUT: {
                    Reverse<--, 1132_0; 1125_0; 1102_0; 1089_0;>}*/
                    sub = sub->next;
                }
                /*OUT: {
                Reverse<--, 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                if (maxSubLength <= maxCategoryLength) {
                    /*OUT: {
                    Reverse<--, 1158_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    maxSubLength = maxCategoryLength;
                }
                /*OUT: {
                Reverse<--, 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                sub = timers->sub_timer_list[i]->subtimer_list;
                /*OUT: {
                Reverse<--, 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                while (sub != ((void *) 0)) {
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    struct pb_Timer *_imopVarPre344;
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    double _imopVarPre345;
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    char *_imopVarPre346;
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    _imopVarPre344 = &sub->timer;
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    _imopVarPre345 = pb_GetElapsedTime(_imopVarPre344);
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    _imopVarPre346 = sub->label;
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    printf(" -%-*s: %f\n", maxSubLength, _imopVarPre346, _imopVarPre345);
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    /*OUT: {
                    Reverse<--, 1165_0; 1132_1; 1125_0; 1102_0; 1089_0;>}*/
                    sub = sub->next;
                }
            }
        }
    }
    /*OUT: {
    Reverse<--, 1089_1;>}*/
    struct pb_Timer *_imopVarPre349;
    /*OUT: {
    Reverse<--, 1089_1;>}*/
    double _imopVarPre350;
    /*OUT: {
    Reverse<--, 1089_1;>}*/
    _imopVarPre349 = &t[pb_TimerID_OVERLAP];
    /*OUT: {
    Reverse<--, 1089_1;>}*/
    _imopVarPre350 = pb_GetElapsedTime(_imopVarPre349);
    /*OUT: {
    Reverse<--, 1089_1;>}*/
    /*OUT: {
    Reverse<--, 1089_1;>}*/
    if (_imopVarPre350 != 0) {
        /*OUT: {
        Reverse<--, 1197_0; 1089_1;>}*/
        struct pb_Timer *_imopVarPre355;
        /*OUT: {
        Reverse<--, 1197_0; 1089_1;>}*/
        double _imopVarPre356;
        /*OUT: {
        Reverse<--, 1197_0; 1089_1;>}*/
        _imopVarPre355 = &t[pb_TimerID_OVERLAP];
        /*OUT: {
        Reverse<--, 1197_0; 1089_1;>}*/
        _imopVarPre356 = pb_GetElapsedTime(_imopVarPre355);
        /*OUT: {
        Reverse<--, 1197_0; 1089_1;>}*/
        /*OUT: {
        Reverse<--, 1197_0; 1089_1;>}*/
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre356);
        /*OUT: {
        Reverse<--, 1197_0; 1089_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1089_1;>}*/
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    /*OUT: {
    Reverse<--, 1089_1;>}*/
    printf("Timer Wall Time: %f\n", walltime);
    /*OUT: {
    Reverse<--, 1089_1;>}*/
}
void dump_histo_img(unsigned char *histo, unsigned int height , unsigned int width , const char *filename);
struct stUn_imopVarPre12 {
    unsigned char B;
    unsigned char G;
    unsigned char R;
} ;
typedef struct stUn_imopVarPre12 RGB;
struct stUn_imopVarPre13 {
    unsigned int filesz;
    unsigned short creator1;
    unsigned short creator2;
    unsigned int bmp_offset;
} ;
typedef struct stUn_imopVarPre13 bmpfile_header_t;
struct stUn_imopVarPre14 {
    unsigned int header_sz;
    unsigned int width;
    unsigned int height;
    unsigned short nplanes;
    unsigned short bitspp;
    unsigned int compress_type;
    unsigned int bmp_bytesz;
    unsigned int hres;
    unsigned int vres;
    unsigned int ncolors;
    unsigned int nimpcolors;
} ;
typedef struct stUn_imopVarPre14 bmp_dib_header_t;
struct stUn_imopVarPre16 {
    unsigned char magic[2];
    bmpfile_header_t file_header;
    bmp_dib_header_t dib_header;
    unsigned int *palette;
    void *pixel_map;
} ;
typedef struct stUn_imopVarPre16 bmp_image;
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void create_bmp(RGB *bitmap, int height , int width , const char *filename) {
    /*OUT: {
    Reverse<--,>}*/
    bmp_image image;
    /*OUT: {
    Reverse<--,>}*/
    int padded_width = 4 * (((width * 24) + 31) / 32);
    /*OUT: {
    Reverse<--,>}*/
    padded_width -= width * sizeof(RGB);
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre365;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre366;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre365 = sizeof(char);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre366 = calloc(padded_width, _imopVarPre365);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    char *pad = (char *) _imopVarPre366;
    /*OUT: {
    Reverse<--,>}*/
    image.magic[0] = 'B';
    /*OUT: {
    Reverse<--,>}*/
    image.magic[1] = 'M';
    /*OUT: {
    Reverse<--,>}*/
    image.file_header.filesz = 2 * sizeof(char) + sizeof(bmpfile_header_t) + sizeof(bmp_dib_header_t) + height * width * sizeof(RGB);
    /*OUT: {
    Reverse<--,>}*/
    image.file_header.creator1 = image.file_header.creator2 = 0;
    /*OUT: {
    Reverse<--,>}*/
    image.file_header.bmp_offset = 2 * sizeof(char) + sizeof(bmpfile_header_t) + sizeof(bmp_dib_header_t);
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.header_sz = 40;
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.width = width;
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.height = height;
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.nplanes = 1;
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.bitspp = 24;
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.compress_type = 0;
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.bmp_bytesz = width * height * sizeof(RGB);
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.hres = 0;
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.vres = 0;
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.ncolors = 0;
    /*OUT: {
    Reverse<--,>}*/
    image.dib_header.nimpcolors = 0;
    /*OUT: {
    Reverse<--,>}*/
    struct __sFILE *_imopVarPre367;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre367 = fopen(filename, "wb");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    FILE *out_file = _imopVarPre367;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre370;
    /*OUT: {
    Reverse<--,>}*/
    unsigned char *_imopVarPre371;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre370 = sizeof(char);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre371 = image.magic;
    /*OUT: {
    Reverse<--,>}*/
    fwrite(_imopVarPre371, _imopVarPre370, 2, out_file);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre375;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre376;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre13 *_imopVarPre377;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre375 = sizeof(bmpfile_header_t);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre376 = sizeof(char);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre377 = &(image.file_header);
    /*OUT: {
    Reverse<--,>}*/
    fwrite(_imopVarPre377, _imopVarPre376, _imopVarPre375, out_file);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre381;
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre382;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre14 *_imopVarPre383;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre381 = sizeof(bmp_dib_header_t);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre382 = sizeof(char);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre383 = &(image.dib_header);
    /*OUT: {
    Reverse<--,>}*/
    fwrite(_imopVarPre383, _imopVarPre382, _imopVarPre381, out_file);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int h;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1341_0;>}*/
    for (h = height - 1; h >= 0; h--) {
        /*OUT: {
        Reverse<--, 1341_0;>}*/
        unsigned long int _imopVarPre386;
        /*OUT: {
        Reverse<--, 1341_0;>}*/
        struct stUn_imopVarPre12 *_imopVarPre387;
        /*OUT: {
        Reverse<--, 1341_0;>}*/
        _imopVarPre386 = sizeof(RGB);
        /*OUT: {
        Reverse<--, 1341_0;>}*/
        _imopVarPre387 = &bitmap[h * width];
        /*OUT: {
        Reverse<--, 1341_0;>}*/
        fwrite(_imopVarPre387, _imopVarPre386, width, out_file);
        /*OUT: {
        Reverse<--, 1341_0;>}*/
        /*OUT: {
        Reverse<--, 1341_0;>}*/
        unsigned long int _imopVarPre389;
        /*OUT: {
        Reverse<--, 1341_0;>}*/
        _imopVarPre389 = sizeof(char);
        /*OUT: {
        Reverse<--, 1341_0;>}*/
        fwrite(pad, _imopVarPre389, padded_width, out_file);
        /*OUT: {
        Reverse<--, 1341_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1341_1;>}*/
    fclose(out_file);
    /*OUT: {
    Reverse<--, 1341_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
RGB HSVtoRGB(float h, float s , float v) {
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    float f;
    /*OUT: {
    Reverse<--,>}*/
    float p;
    /*OUT: {
    Reverse<--,>}*/
    float q;
    /*OUT: {
    Reverse<--,>}*/
    float t;
    /*OUT: {
    Reverse<--,>}*/
    float r;
    /*OUT: {
    Reverse<--,>}*/
    float g;
    /*OUT: {
    Reverse<--,>}*/
    float b;
    /*OUT: {
    Reverse<--,>}*/
    RGB value = {0, 0 , 0};
    /*OUT: {
    Reverse<--,>}*/
    if (s == 0) {
        /*OUT: {
        Reverse<--, 1380_0;>}*/
        r = g = b = v;
        /*OUT: {
        Reverse<--, 1380_0;>}*/
        return value;
    }
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    h /= 60;
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    i = floor(h);
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    f = h - i;
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    p = v * (1 - s);
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    q = v * (1 - s * f);
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    t = v * (1 - s * (1 - f));
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    switch (i) {
        /*OUT: {
        Reverse<--, 1405_4; 1380_1;>}*/
        case 0: r = v;
        /*OUT: {
        Reverse<--, 1405_4; 1380_1;>}*/
        g = t;
        /*OUT: {
        Reverse<--, 1405_4; 1380_1;>}*/
        b = p;
        /*OUT: {
        Reverse<--, 1405_4; 1380_1;>}*/
        break;
        /*OUT: {
        Reverse<--, 1405_1; 1380_1;>}*/
        case 1: r = q;
        /*OUT: {
        Reverse<--, 1405_1; 1380_1;>}*/
        g = v;
        /*OUT: {
        Reverse<--, 1405_1; 1380_1;>}*/
        b = p;
        /*OUT: {
        Reverse<--, 1405_1; 1380_1;>}*/
        break;
        /*OUT: {
        Reverse<--, 1405_2; 1380_1;>}*/
        case 2: r = p;
        /*OUT: {
        Reverse<--, 1405_2; 1380_1;>}*/
        g = v;
        /*OUT: {
        Reverse<--, 1405_2; 1380_1;>}*/
        b = t;
        /*OUT: {
        Reverse<--, 1405_2; 1380_1;>}*/
        break;
        /*OUT: {
        Reverse<--, 1405_3; 1380_1;>}*/
        case 3: r = p;
        /*OUT: {
        Reverse<--, 1405_3; 1380_1;>}*/
        g = q;
        /*OUT: {
        Reverse<--, 1405_3; 1380_1;>}*/
        b = v;
        /*OUT: {
        Reverse<--, 1405_3; 1380_1;>}*/
        break;
        /*OUT: {
        Reverse<--, 1405_0; 1380_1;>}*/
        case 4: r = t;
        /*OUT: {
        Reverse<--, 1405_0; 1380_1;>}*/
        g = p;
        /*OUT: {
        Reverse<--, 1405_0; 1380_1;>}*/
        b = v;
        /*OUT: {
        Reverse<--, 1405_0; 1380_1;>}*/
        break;
        /*OUT: {
        Reverse<--, 1405_5; 1380_1;>}*/
        default: r = v;
        /*OUT: {
        Reverse<--, 1405_5; 1380_1;>}*/
        g = p;
        /*OUT: {
        Reverse<--, 1405_5; 1380_1;>}*/
        b = q;
        /*OUT: {
        Reverse<--, 1405_5; 1380_1;>}*/
        break;
    }
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    unsigned int temp = r * 255;
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    value.R = temp;
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    temp = g * 255;
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    value.G = temp;
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    temp = b * 255;
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    value.B = temp;
    /*OUT: {
    Reverse<--, 1380_1;>}*/
    return value;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void dump_histo_img(unsigned char *histo, unsigned int height , unsigned int width , const char *filename) {
    /*OUT: {
    Reverse<--,>}*/
    unsigned long int _imopVarPre392;
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre393;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre392 = height * width * sizeof(RGB);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre393 = malloc(_imopVarPre392);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    RGB *pixel_map = (RGB *) _imopVarPre393;
    /*OUT: {
    Reverse<--,>}*/
    size_t y;
    /*OUT: {
    Reverse<--,>}*/
    size_t x;
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1482_1; 1479_0;>}*/
    for (y = 0; y < height; ++y) {
        /*OUT: {
        Reverse<--, 1479_0;>}*/
        /*OUT: {
        Reverse<--, 1479_0;>}*/
        /*OUT: {
        Reverse<--, 1482_0; 1479_0;>}*/
        for (x = 0; x < width; ++x) {
            /*OUT: {
            Reverse<--, 1482_0; 1479_0;>}*/
            unsigned char value = histo[y * width + x];
            /*OUT: {
            Reverse<--, 1482_0; 1479_0;>}*/
            if (value == 0) {
                /*OUT: {
                Reverse<--, 1486_0; 1482_0; 1479_0;>}*/
                pixel_map[y * width + x].R = 0;
                /*OUT: {
                Reverse<--, 1486_0; 1482_0; 1479_0;>}*/
                pixel_map[y * width + x].G = 0;
                /*OUT: {
                Reverse<--, 1486_0; 1482_0; 1479_0;>}*/
                pixel_map[y * width + x].B = 0;
            } else {
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                double _imopVarPre401;
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                double _imopVarPre402;
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                double _imopVarPre403;
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                struct stUn_imopVarPre12 _imopVarPre404;
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                _imopVarPre401 = 1 + 63.0 * ((float) value) / ((float) 255);
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                _imopVarPre402 = cbrt(_imopVarPre401);
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                _imopVarPre403 = _imopVarPre402 / 4;
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                _imopVarPre404 = HSVtoRGB(0.0, 1.0, _imopVarPre403);
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                /*OUT: {
                Reverse<--, 1486_1; 1482_0; 1479_0;>}*/
                pixel_map[y * width + x] = _imopVarPre404;
            }
        }
    }
    /*OUT: {
    Reverse<--, 1479_1;>}*/
    create_bmp(pixel_map, height, width, filename);
    /*OUT: {
    Reverse<--, 1479_1;>}*/
    /*OUT: {
    Reverse<--, 1479_1;>}*/
    free(pixel_map);
    /*OUT: {
    Reverse<--, 1479_1;>}*/
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char *argv[]) {
    /*OUT: {
    Reverse<--,>}*/
    struct pb_TimerSet timers;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *parameters;
    /*OUT: {
    Reverse<--,>}*/
    printf("Base implementation of histogramming.\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("Maintained by Nady Obeid <obeid1@ece.uiuc.edu>\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    int *_imopVarPre406;
    /*OUT: {
    Reverse<--,>}*/
    struct pb_Parameters *_imopVarPre407;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre406 = &argc;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre407 = pb_ReadParameters(_imopVarPre406, argv);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    parameters = _imopVarPre407;
    /*OUT: {
    Reverse<--,>}*/
    if (!parameters) {
        /*OUT: {
        Reverse<--, 1557_0;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 1557_1;>}*/
    if (!parameters->inpFiles[0]) {
        /*OUT: {
        Reverse<--, 1561_0; 1557_1;>}*/
        fputs("Input file expected\n", __stderrp);
        /*OUT: {
        Reverse<--, 1561_0; 1557_1;>}*/
        /*OUT: {
        Reverse<--, 1561_0; 1557_1;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 1561_1; 1557_1;>}*/
    int numIterations;
    /*OUT: {
    Reverse<--, 1561_1; 1557_1;>}*/
    if (argc >= 2) {
        /*OUT: {
        Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
        char *_imopVarPre409;
        /*OUT: {
        Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
        int _imopVarPre410;
        /*OUT: {
        Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
        _imopVarPre409 = argv[1];
        /*OUT: {
        Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
        _imopVarPre410 = atoi(_imopVarPre409);
        /*OUT: {
        Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
        /*OUT: {
        Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
        numIterations = _imopVarPre410;
    } else {
        /*OUT: {
        Reverse<--, 1570_1; 1561_1; 1557_1;>}*/
        fputs("Expected at least one command line argument\n", __stderrp);
        /*OUT: {
        Reverse<--, 1570_1; 1561_1; 1557_1;>}*/
        /*OUT: {
        Reverse<--, 1570_1; 1561_1; 1557_1;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre412;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre412 = &timers;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    pb_InitializeTimerSet(_imopVarPre412);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    char *inputStr = "Input";
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    char *outputStr = "Output";
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre414;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre414 = &timers;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    pb_AddSubTimer(_imopVarPre414, inputStr, pb_TimerID_IO);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre416;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre416 = &timers;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    pb_AddSubTimer(_imopVarPre416, outputStr, pb_TimerID_IO);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre418;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre418 = &timers;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    pb_SwitchToSubTimer(_imopVarPre418, inputStr, pb_TimerID_IO);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned int img_width;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned int img_height;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned int histo_width;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned int histo_height;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    char *_imopVarPre420;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    struct __sFILE *_imopVarPre421;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre420 = parameters->inpFiles[0];
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre421 = fopen(_imopVarPre420, "rb");
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    FILE *f = _imopVarPre421;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    int result = 0;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre424;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned int *_imopVarPre425;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre426;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre424 = sizeof(unsigned int);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre425 = &img_width;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre426 = fread(_imopVarPre425, _imopVarPre424, 1, f);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    result += _imopVarPre426;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre429;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned int *_imopVarPre430;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre431;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre429 = sizeof(unsigned int);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre430 = &img_height;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre431 = fread(_imopVarPre430, _imopVarPre429, 1, f);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    result += _imopVarPre431;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre434;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned int *_imopVarPre435;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre436;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre434 = sizeof(unsigned int);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre435 = &histo_width;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre436 = fread(_imopVarPre435, _imopVarPre434, 1, f);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    result += _imopVarPre436;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre439;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned int *_imopVarPre440;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre441;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre439 = sizeof(unsigned int);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre440 = &histo_height;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre441 = fread(_imopVarPre440, _imopVarPre439, 1, f);
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    result += _imopVarPre441;
    /*OUT: {
    Reverse<--, 1570_0; 1561_1; 1557_1;>}*/
    if (result != 4) {
        /*OUT: {
        Reverse<--, 1702_0; 1570_0; 1561_1; 1557_1;>}*/
        fputs("Error reading input and output dimensions from file\n", __stderrp);
        /*OUT: {
        Reverse<--, 1702_0; 1570_0; 1561_1; 1557_1;>}*/
        /*OUT: {
        Reverse<--, 1702_0; 1570_0; 1561_1; 1557_1;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre444;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    void *_imopVarPre445;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre444 = img_width * img_height * sizeof(unsigned int);
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre445 = malloc(_imopVarPre444);
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    unsigned int *img = (unsigned int *) _imopVarPre445;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre449;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    int _imopVarPre450;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    void *_imopVarPre451;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre449 = sizeof(unsigned char);
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre450 = histo_width * histo_height;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre451 = calloc(_imopVarPre450, _imopVarPre449);
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    unsigned char *histo = (unsigned char *) _imopVarPre451;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre453;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre453 = &timers;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    pb_SwitchToSubTimer(_imopVarPre453, "Input", pb_TimerID_IO);
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    int _imopVarPre456;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre457;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    unsigned long int _imopVarPre458;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre456 = img_width * img_height;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre457 = sizeof(unsigned int);
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre458 = fread(img, _imopVarPre457, _imopVarPre456, f);
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    result = _imopVarPre458;
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    fclose(f);
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    if (result != img_width * img_height) {
        /*OUT: {
        Reverse<--, 1763_0; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        fputs("Error reading input array from file\n", __stderrp);
        /*OUT: {
        Reverse<--, 1763_0; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        /*OUT: {
        Reverse<--, 1763_0; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        return -1;
    }
    /*OUT: {
    Reverse<--, 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre460;
    /*OUT: {
    Reverse<--, 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre460 = &timers;
    /*OUT: {
    Reverse<--, 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    pb_SwitchToTimer(_imopVarPre460, pb_TimerID_COMPUTE);
    /*OUT: {
    Reverse<--, 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    int iter;
    /*OUT: {
    Reverse<--, 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1781_0; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    for (iter = 0; iter < numIterations; iter++) {
        /*OUT: {
        Reverse<--, 1781_0; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        unsigned int _imopVarPre463;
        /*OUT: {
        Reverse<--, 1781_0; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        unsigned long int _imopVarPre464;
        /*OUT: {
        Reverse<--, 1781_0; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        _imopVarPre463 = __builtin_object_size(histo, 0);
        /*OUT: {
        Reverse<--, 1781_0; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        /*OUT: {
        Reverse<--, 1781_0; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        _imopVarPre464 = histo_height * histo_width * sizeof(unsigned char);
        /*OUT: {
        Reverse<--, 1781_0; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        __builtin___memset_chk(histo, 0, _imopVarPre464, _imopVarPre463);
        /*OUT: {
        Reverse<--, 1781_0; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        /*OUT: {
        Reverse<--, 1781_0; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        unsigned int i;
#pragma omp parallel
        {
#pragma omp for nowait
            /*OUT: {
            Reverse<2395,>}*/
            /*OUT: {
            Reverse<2395,>}*/
            /*OUT: {
            Reverse<2395,>}*/
            for (i = 0; i < img_width * img_height; ++i) {
                /*OUT: {
                Reverse<2395,>}*/
                const unsigned int value = img[i];
                /*OUT: {
                Reverse<2395,>}*/
                // #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
                {
                    /*OUT: {
                    Reverse<2395,>}*/
                    if (histo[value] < 255) {
                        /*OUT: {
                        Reverse<2395, 1807_0;>}*/
                        ++histo[value];
                    }
                }
                /*OUT: {
                Reverse<2395,>}*/
                // #pragma omp dummyFlush CRITICAL_END
            }
            /*OUT: {
            Reverse<2395,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<1811,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre466;
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre466 = &timers;
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    pb_SwitchToSubTimer(_imopVarPre466, outputStr, pb_TimerID_IO);
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    if (parameters->outFile) {
        /*OUT: {
        Reverse<--, 1820_0; 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        char *_imopVarPre468;
        /*OUT: {
        Reverse<--, 1820_0; 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        _imopVarPre468 = parameters->outFile;
        /*OUT: {
        Reverse<--, 1820_0; 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
        dump_histo_img(histo, histo_height, histo_width, _imopVarPre468);
        /*OUT: {
        Reverse<--, 1820_0; 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre470;
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre470 = &timers;
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    pb_SwitchToTimer(_imopVarPre470, pb_TimerID_COMPUTE);
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    free(img);
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    free(histo);
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre472;
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre472 = &timers;
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    pb_SwitchToTimer(_imopVarPre472, pb_TimerID_NONE);
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    printf("\n");
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    struct pb_TimerSet *_imopVarPre474;
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    _imopVarPre474 = &timers;
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    pb_PrintTimerSet(_imopVarPre474);
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    pb_FreeParameters(parameters);
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    /*OUT: {
    Reverse<--, 1781_1; 1763_1; 1702_1; 1570_0; 1561_1; 1557_1;>}*/
    return 0;
}
