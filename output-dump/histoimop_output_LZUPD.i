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
static void free_string_array(char **string_array) {
    char **p;
    if (!string_array) {
        return;
    }
    for (p = string_array; *p; p++) {
        char *_imopVarPre146;
        _imopVarPre146 = *p;
        free(_imopVarPre146);
    }
    free(string_array);
}
static char **read_string_array(char *in) {
    char **ret;
    int i;
    int count;
    char *substring;
    count = 1;
    for (i = 0; in[i]; i++) {
        if (in[i] == ',') {
            count++;
        }
    }
    unsigned long int _imopVarPre149;
    void *_imopVarPre150;
    _imopVarPre149 = (count + 1) * sizeof(char *);
    _imopVarPre150 = malloc(_imopVarPre149);
    ret = (char **) _imopVarPre150;
    substring = in;
    for (i = 0; i < count; i++) {
        char *substring_end;
        int substring_length;
        int _imopVarPre152;
        substring_end = substring;
        _imopVarPre152 = (*substring_end != ',');
        if (_imopVarPre152) {
            _imopVarPre152 = (*substring_end != 0);
        }
        for (; _imopVarPre152; ) {
            ;
            substring_end++;
            _imopVarPre152 = (*substring_end != ',');
            if (_imopVarPre152) {
                _imopVarPre152 = (*substring_end != 0);
            }
        }
        substring_length = substring_end - substring;
        int _imopVarPre155;
        void *_imopVarPre156;
        _imopVarPre155 = substring_length + 1;
        _imopVarPre156 = malloc(_imopVarPre155);
        ret[i] = (char *) _imopVarPre156;
        char *_imopVarPre162;
        unsigned int _imopVarPre163;
        char *_imopVarPre164;
        _imopVarPre162 = ret[i];
        _imopVarPre163 = __builtin_object_size(_imopVarPre162, 0);
        _imopVarPre164 = ret[i];
        __builtin___memcpy_chk(_imopVarPre164, substring, substring_length, _imopVarPre163);
        ret[i][substring_length] = 0;
        substring = substring_end + 1;
    }
    ret[i] = ((void *) 0);
    return ret;
}
struct argparse {
    int argc;
    char **argv;
    int argn;
    char **argv_get;
    char **argv_put;
} ;
static void initialize_argparse(struct argparse *ap, int argc , char **argv) {
    ap->argc = argc;
    ap->argn = 0;
    ap->argv_get = ap->argv_put = ap->argv = argv;
}
static void finalize_argparse(struct argparse *ap) {
    for (; ap->argn < ap->argc; ap->argn++) {
        *ap->argv_put++ = *ap->argv_get++;
    }
}
static void delete_argument(struct argparse *ap) {
    if (ap->argn >= ap->argc) {
        fprintf(__stderrp, "delete_argument\n");
    }
    ap->argc--;
    ap->argv_get++;
}
static void next_argument(struct argparse *ap) {
    if (ap->argn >= ap->argc) {
        fprintf(__stderrp, "next_argument\n");
    }
    *ap->argv_put++ = *ap->argv_get++;
    ap->argn++;
}
static int is_end_of_arguments(struct argparse *ap) {
    return ap->argn == ap->argc;
}
static char *get_argument(struct argparse *ap) {
    return *ap->argv_get;
}
static char *consume_argument(struct argparse *ap) {
    char *_imopVarPre165;
    _imopVarPre165 = get_argument(ap);
    char *ret = _imopVarPre165;
    delete_argument(ap);
    return ret;
}
struct pb_Parameters *pb_ReadParameters(int *_argc, char **argv) {
    char *err_message;
    struct argparse ap;
    unsigned long int _imopVarPre168;
    void *_imopVarPre169;
    _imopVarPre168 = sizeof(struct pb_Parameters);
    _imopVarPre169 = malloc(_imopVarPre168);
    struct pb_Parameters *ret = (struct pb_Parameters *) _imopVarPre169;
    ret->outFile = ((void *) 0);
    unsigned long int _imopVarPre172;
    void *_imopVarPre173;
    _imopVarPre172 = sizeof(char *);
    _imopVarPre173 = malloc(_imopVarPre172);
    ret->inpFiles = (char **) _imopVarPre173;
    ret->inpFiles[0] = ((void *) 0);
    int _imopVarPre176;
    struct argparse *_imopVarPre177;
    _imopVarPre176 = *_argc;
    _imopVarPre177 = &ap;
    initialize_argparse(_imopVarPre177, _imopVarPre176, argv);
    struct argparse *_imopVarPre180;
    int _imopVarPre181;
    _imopVarPre180 = &ap;
    _imopVarPre181 = is_end_of_arguments(_imopVarPre180);
    while (!_imopVarPre181) {
        struct argparse *_imopVarPre183;
        char *_imopVarPre184;
        _imopVarPre183 = &ap;
        _imopVarPre184 = get_argument(_imopVarPre183);
        char *arg = _imopVarPre184;
        int _imopVarPre187;
        int _imopVarPre188;
        _imopVarPre187 = (arg[0] == '-');
        if (_imopVarPre187) {
            _imopVarPre188 = (arg[1] != 0);
            if (_imopVarPre188) {
                _imopVarPre188 = (arg[2] == 0);
            }
            _imopVarPre187 = _imopVarPre188;
        }
        if (_imopVarPre187) {
            struct argparse *_imopVarPre190;
            _imopVarPre190 = &ap;
            delete_argument(_imopVarPre190);
            switch (arg[1]) {
                case 'o': ;
                struct argparse *_imopVarPre192;
                int _imopVarPre193;
                _imopVarPre192 = &ap;
                _imopVarPre193 = is_end_of_arguments(_imopVarPre192);
                if (_imopVarPre193) {
                    err_message = "Expecting file name after '-o'\n";
                    goto error;
                }
                char *_imopVarPre195;
                _imopVarPre195 = ret->outFile;
                free(_imopVarPre195);
                struct argparse *_imopVarPre200;
                char *_imopVarPre201;
                char *_imopVarPre202;
                _imopVarPre200 = &ap;
                _imopVarPre201 = consume_argument(_imopVarPre200);
                _imopVarPre202 = strdup(_imopVarPre201);
                ret->outFile = _imopVarPre202;
                break;
                case 'i': ;
                struct argparse *_imopVarPre204;
                int _imopVarPre205;
                _imopVarPre204 = &ap;
                _imopVarPre205 = is_end_of_arguments(_imopVarPre204);
                if (_imopVarPre205) {
                    err_message = "Expecting file name after '-i'\n";
                    goto error;
                }
                struct argparse *_imopVarPre210;
                char *_imopVarPre211;
                char **_imopVarPre212;
                _imopVarPre210 = &ap;
                _imopVarPre211 = consume_argument(_imopVarPre210);
                _imopVarPre212 = read_string_array(_imopVarPre211);
                ret->inpFiles = _imopVarPre212;
                break;
                case '-': goto end_of_options;
                default: err_message = "Unexpected command-line parameter\n";
                goto error;
            }
        } else {
            struct argparse *_imopVarPre214;
            _imopVarPre214 = &ap;
            next_argument(_imopVarPre214);
        }
        _imopVarPre180 = &ap;
        _imopVarPre181 = is_end_of_arguments(_imopVarPre180);
    }
    end_of_options: *_argc = ap.argc;
    struct argparse *_imopVarPre216;
    _imopVarPre216 = &ap;
    finalize_argparse(_imopVarPre216);
    return ret;
    error: fputs(err_message, __stderrp);
    pb_FreeParameters(ret);
    return ((void *) 0);
}
void pb_FreeParameters(struct pb_Parameters *p) {
    char *_imopVarPre218;
    _imopVarPre218 = p->outFile;
    free(_imopVarPre218);
    char **_imopVarPre220;
    _imopVarPre220 = p->inpFiles;
    free_string_array(_imopVarPre220);
    free(p);
}
static void accumulate_time(pb_Timestamp *accum, pb_Timestamp start , pb_Timestamp end) {
    *accum += end - start;
}
static pb_Timestamp get_time() {
    struct timeval tv;
    void *_imopVarPre223;
    struct timeval *_imopVarPre224;
    _imopVarPre223 = ((void *) 0);
    _imopVarPre224 = &tv;
    gettimeofday(_imopVarPre224, _imopVarPre223);
    return (pb_Timestamp) (tv.tv_sec * 1000000l + tv.tv_usec);
}
void pb_ResetTimer(struct pb_Timer *timer) {
    timer->state = pb_Timer_STOPPED;
    timer->elapsed = 0;
}
void pb_StartTimer(struct pb_Timer *timer) {
    if (timer->state != pb_Timer_STOPPED) {
        fputs("Ignoring attempt to start a running timer\n", __stderrp);
        return;
    }
    timer->state = pb_Timer_RUNNING;
    struct timeval tv;
    void *_imopVarPre227;
    struct timeval *_imopVarPre228;
    _imopVarPre227 = ((void *) 0);
    _imopVarPre228 = &tv;
    gettimeofday(_imopVarPre228, _imopVarPre227);
    timer->init = tv.tv_sec * 1000000l + tv.tv_usec;
}
void pb_StartTimerAndSubTimer(struct pb_Timer *timer, struct pb_Timer *subtimer) {
    unsigned int numNotStopped = 0x3;
    if (timer->state != pb_Timer_STOPPED) {
        fputs("Warning: Timer was not stopped\n", __stderrp);
        numNotStopped &= 0x1;
    }
    if (subtimer->state != pb_Timer_STOPPED) {
        fputs("Warning: Subtimer was not stopped\n", __stderrp);
        numNotStopped &= 0x2;
    }
    if (numNotStopped == 0x0) {
        fputs("Ignoring attempt to start running timer and subtimer\n", __stderrp);
        return;
    }
    timer->state = pb_Timer_RUNNING;
    subtimer->state = pb_Timer_RUNNING;
    struct timeval tv;
    void *_imopVarPre231;
    struct timeval *_imopVarPre232;
    _imopVarPre231 = ((void *) 0);
    _imopVarPre232 = &tv;
    gettimeofday(_imopVarPre232, _imopVarPre231);
    if (numNotStopped & 0x2) {
        timer->init = tv.tv_sec * 1000000l + tv.tv_usec;
    }
    if (numNotStopped & 0x1) {
        subtimer->init = tv.tv_sec * 1000000l + tv.tv_usec;
    }
}
void pb_StopTimer(struct pb_Timer *timer) {
    pb_Timestamp fini;
    if (timer->state != pb_Timer_RUNNING) {
        fputs("Ignoring attempt to stop a stopped timer\n", __stderrp);
        return;
    }
    timer->state = pb_Timer_STOPPED;
    struct timeval tv;
    void *_imopVarPre235;
    struct timeval *_imopVarPre236;
    _imopVarPre235 = ((void *) 0);
    _imopVarPre236 = &tv;
    gettimeofday(_imopVarPre236, _imopVarPre235);
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    unsigned long long int _imopVarPre239;
    unsigned long long int *_imopVarPre240;
    _imopVarPre239 = timer->init;
    _imopVarPre240 = &timer->elapsed;
    accumulate_time(_imopVarPre240, _imopVarPre239, fini);
    timer->init = fini;
}
void pb_StopTimerAndSubTimer(struct pb_Timer *timer, struct pb_Timer *subtimer) {
    pb_Timestamp fini;
    unsigned int numNotRunning = 0x3;
    if (timer->state != pb_Timer_RUNNING) {
        fputs("Warning: Timer was not running\n", __stderrp);
        numNotRunning &= 0x1;
    }
    if (subtimer->state != pb_Timer_RUNNING) {
        fputs("Warning: Subtimer was not running\n", __stderrp);
        numNotRunning &= 0x2;
    }
    if (numNotRunning == 0x0) {
        fputs("Ignoring attempt to stop stopped timer and subtimer\n", __stderrp);
        return;
    }
    timer->state = pb_Timer_STOPPED;
    subtimer->state = pb_Timer_STOPPED;
    struct timeval tv;
    void *_imopVarPre243;
    struct timeval *_imopVarPre244;
    _imopVarPre243 = ((void *) 0);
    _imopVarPre244 = &tv;
    gettimeofday(_imopVarPre244, _imopVarPre243);
    fini = tv.tv_sec * 1000000l + tv.tv_usec;
    if (numNotRunning & 0x2) {
        unsigned long long int _imopVarPre247;
        unsigned long long int *_imopVarPre248;
        _imopVarPre247 = timer->init;
        _imopVarPre248 = &timer->elapsed;
        accumulate_time(_imopVarPre248, _imopVarPre247, fini);
        timer->init = fini;
    }
    if (numNotRunning & 0x1) {
        unsigned long long int _imopVarPre251;
        unsigned long long int *_imopVarPre252;
        _imopVarPre251 = subtimer->init;
        _imopVarPre252 = &subtimer->elapsed;
        accumulate_time(_imopVarPre252, _imopVarPre251, fini);
        subtimer->init = fini;
    }
}
double pb_GetElapsedTime(struct pb_Timer *timer) {
    double ret;
    if (timer->state != pb_Timer_STOPPED) {
        fputs("Elapsed time from a running timer is inaccurate\n", __stderrp);
    }
    ret = timer->elapsed / 1e6;
    return ret;
}
void pb_InitializeTimerSet(struct pb_TimerSet *timers) {
    int n;
    unsigned long long int _imopVarPre253;
    _imopVarPre253 = get_time();
    timers->wall_begin = _imopVarPre253;
    timers->current = pb_TimerID_NONE;
    timers->async_markers = ((void *) 0);
    for (n = 0; n < pb_TimerID_LAST; n++) {
        struct pb_Timer *_imopVarPre255;
        _imopVarPre255 = &timers->timers[n];
        pb_ResetTimer(_imopVarPre255);
        timers->sub_timer_list[n] = ((void *) 0);
    }
}
void pb_AddSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID pb_Category) {
    unsigned long int _imopVarPre258;
    void *_imopVarPre259;
    _imopVarPre258 = sizeof(struct pb_SubTimer);
    _imopVarPre259 = malloc(_imopVarPre258);
    struct pb_SubTimer *subtimer = (struct pb_SubTimer *) _imopVarPre259;
    unsigned long int _imopVarPre260;
    _imopVarPre260 = strlen(label);
    int len = _imopVarPre260;
    unsigned long int _imopVarPre263;
    void *_imopVarPre264;
    _imopVarPre263 = sizeof(char) * (len + 1);
    _imopVarPre264 = malloc(_imopVarPre263);
    subtimer->label = (char *) _imopVarPre264;
    int _imopVarPre276;
    int _imopVarPre277;
    char *_imopVarPre278;
    unsigned int _imopVarPre279;
    char *_imopVarPre280;
    _imopVarPre276 = 2 > 1;
    if (_imopVarPre276) {
        _imopVarPre277 = 1;
    } else {
        _imopVarPre277 = 0;
    }
    _imopVarPre278 = subtimer->label;
    _imopVarPre279 = __builtin_object_size(_imopVarPre278, _imopVarPre277);
    _imopVarPre280 = subtimer->label;
    __builtin___sprintf_chk(_imopVarPre280, 0, _imopVarPre279, "%s\0", label);
    struct pb_Timer *_imopVarPre282;
    _imopVarPre282 = &subtimer->timer;
    pb_ResetTimer(_imopVarPre282);
    subtimer->next = ((void *) 0);
    struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[pb_Category];
    if (subtimerlist == ((void *) 0)) {
        unsigned long int _imopVarPre285;
        void *_imopVarPre286;
        _imopVarPre285 = sizeof(struct pb_SubTimerList);
        _imopVarPre286 = malloc(_imopVarPre285);
        subtimerlist = (struct pb_SubTimerList *) _imopVarPre286;
        subtimerlist->subtimer_list = subtimer;
        timers->sub_timer_list[pb_Category] = subtimerlist;
    } else {
        struct pb_SubTimer *element = subtimerlist->subtimer_list;
        while (element->next != ((void *) 0)) {
            element = element->next;
        }
        element->next = subtimer;
    }
}
void pb_SwitchToSubTimer(struct pb_TimerSet *timers, char *label , enum pb_TimerID category) {
    struct pb_Timer *topLevelToStop = ((void *) 0);
    int _imopVarPre288;
    _imopVarPre288 = timers->current != category;
    if (_imopVarPre288) {
        _imopVarPre288 = timers->current != pb_TimerID_NONE;
    }
    if (_imopVarPre288) {
        topLevelToStop = &timers->timers[timers->current];
    }
    struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
    int _imopVarPre289;
    void *_imopVarPre290;
    _imopVarPre289 = (subtimerlist == ((void *) 0));
    if (_imopVarPre289) {
        _imopVarPre290 = ((void *) 0);
    } else {
        _imopVarPre290 = subtimerlist->current;
    }
    struct pb_SubTimer *curr = _imopVarPre290;
    if (timers->current != pb_TimerID_NONE) {
        int _imopVarPre292;
        _imopVarPre292 = curr != ((void *) 0);
        if (_imopVarPre292) {
            _imopVarPre292 = topLevelToStop != ((void *) 0);
        }
        if (_imopVarPre292) {
            struct pb_Timer *_imopVarPre294;
            _imopVarPre294 = &curr->timer;
            pb_StopTimerAndSubTimer(topLevelToStop, _imopVarPre294);
        } else {
            if (curr != ((void *) 0)) {
                struct pb_Timer *_imopVarPre296;
                _imopVarPre296 = &curr->timer;
                pb_StopTimer(_imopVarPre296);
            } else {
                pb_StopTimer(topLevelToStop);
            }
        }
    }
    subtimerlist = timers->sub_timer_list[category];
    struct pb_SubTimer *subtimer = ((void *) 0);
    if (label != ((void *) 0)) {
        subtimer = subtimerlist->subtimer_list;
        while (subtimer != ((void *) 0)) {
            char *_imopVarPre299;
            int _imopVarPre300;
            _imopVarPre299 = subtimer->label;
            _imopVarPre300 = strcmp(_imopVarPre299, label);
            if (_imopVarPre300 == 0) {
                break;
            } else {
                subtimer = subtimer->next;
            }
        }
    }
    if (category != pb_TimerID_NONE) {
        if (subtimerlist != ((void *) 0)) {
            subtimerlist->current = subtimer;
        }
        int _imopVarPre302;
        _imopVarPre302 = category != timers->current;
        if (_imopVarPre302) {
            _imopVarPre302 = subtimer != ((void *) 0);
        }
        if (_imopVarPre302) {
            struct pb_Timer *_imopVarPre305;
            struct pb_Timer *_imopVarPre306;
            _imopVarPre305 = &subtimer->timer;
            _imopVarPre306 = &timers->timers[category];
            pb_StartTimerAndSubTimer(_imopVarPre306, _imopVarPre305);
        } else {
            if (subtimer != ((void *) 0)) {
                struct pb_Timer *_imopVarPre308;
                _imopVarPre308 = &subtimer->timer;
                pb_StartTimer(_imopVarPre308);
            } else {
                struct pb_Timer *_imopVarPre310;
                _imopVarPre310 = &timers->timers[category];
                pb_StartTimer(_imopVarPre310);
            }
        }
    }
    timers->current = category;
}
void pb_SwitchToTimer(struct pb_TimerSet *timers, enum pb_TimerID timer) {
    if (timers->current != pb_TimerID_NONE) {
        struct pb_SubTimer *currSubTimer = ((void *) 0);
        struct pb_SubTimerList *subtimerlist = timers->sub_timer_list[timers->current];
        if (subtimerlist != ((void *) 0)) {
            currSubTimer = timers->sub_timer_list[timers->current]->current;
        }
        if (currSubTimer != ((void *) 0)) {
            struct pb_Timer *_imopVarPre313;
            struct pb_Timer *_imopVarPre314;
            _imopVarPre313 = &currSubTimer->timer;
            _imopVarPre314 = &timers->timers[timers->current];
            pb_StopTimerAndSubTimer(_imopVarPre314, _imopVarPre313);
        } else {
            struct pb_Timer *_imopVarPre316;
            _imopVarPre316 = &timers->timers[timers->current];
            pb_StopTimer(_imopVarPre316);
        }
    }
    timers->current = timer;
    if (timer != pb_TimerID_NONE) {
        struct pb_Timer *_imopVarPre318;
        _imopVarPre318 = &timers->timers[timer];
        pb_StartTimer(_imopVarPre318);
    }
}
void pb_PrintTimerSet(struct pb_TimerSet *timers) {
    unsigned long long int _imopVarPre319;
    _imopVarPre319 = get_time();
    pb_Timestamp wall_end = _imopVarPre319;
    struct pb_Timer *t = timers->timers;
    struct pb_SubTimer *sub = ((void *) 0);
    int maxSubLength;
    const char *categories[] = {"IO", "Kernel" , "Copy" , "Driver" , "Copy Async" , "Compute"};
    const int maxCategoryLength = 10;
    int i;
    for (i = 1; i < pb_TimerID_LAST - 1; ++i) {
        struct pb_Timer *_imopVarPre322;
        double _imopVarPre323;
        _imopVarPre322 = &t[i];
        _imopVarPre323 = pb_GetElapsedTime(_imopVarPre322);
        if (_imopVarPre323 != 0) {
            struct pb_Timer *_imopVarPre329;
            double _imopVarPre330;
            char *_imopVarPre331;
            _imopVarPre329 = &t[i];
            _imopVarPre330 = pb_GetElapsedTime(_imopVarPre329);
            _imopVarPre331 = categories[i - 1];
            printf("%-*s: %f\n", maxCategoryLength, _imopVarPre331, _imopVarPre330);
            if (timers->sub_timer_list[i] != ((void *) 0)) {
                sub = timers->sub_timer_list[i]->subtimer_list;
                maxSubLength = 0;
                while (sub != ((void *) 0)) {
                    char *_imopVarPre334;
                    unsigned long int _imopVarPre335;
                    _imopVarPre334 = sub->label;
                    _imopVarPre335 = strlen(_imopVarPre334);
                    if (_imopVarPre335 > maxSubLength) {
                        char *_imopVarPre337;
                        unsigned long int _imopVarPre338;
                        _imopVarPre337 = sub->label;
                        _imopVarPre338 = strlen(_imopVarPre337);
                        maxSubLength = _imopVarPre338;
                    }
                    sub = sub->next;
                }
                if (maxSubLength <= maxCategoryLength) {
                    maxSubLength = maxCategoryLength;
                }
                sub = timers->sub_timer_list[i]->subtimer_list;
                while (sub != ((void *) 0)) {
                    struct pb_Timer *_imopVarPre344;
                    double _imopVarPre345;
                    char *_imopVarPre346;
                    _imopVarPre344 = &sub->timer;
                    _imopVarPre345 = pb_GetElapsedTime(_imopVarPre344);
                    _imopVarPre346 = sub->label;
                    printf(" -%-*s: %f\n", maxSubLength, _imopVarPre346, _imopVarPre345);
                    sub = sub->next;
                }
            }
        }
    }
    struct pb_Timer *_imopVarPre349;
    double _imopVarPre350;
    _imopVarPre349 = &t[pb_TimerID_OVERLAP];
    _imopVarPre350 = pb_GetElapsedTime(_imopVarPre349);
    if (_imopVarPre350 != 0) {
        struct pb_Timer *_imopVarPre355;
        double _imopVarPre356;
        _imopVarPre355 = &t[pb_TimerID_OVERLAP];
        _imopVarPre356 = pb_GetElapsedTime(_imopVarPre355);
        printf("CPU/Kernel Overlap: %f\n", _imopVarPre356);
    }
    float walltime = (wall_end - timers->wall_begin) / 1e6;
    printf("Timer Wall Time: %f\n", walltime);
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
void create_bmp(RGB *bitmap, int height , int width , const char *filename) {
    bmp_image image;
    int padded_width = 4 * (((width * 24) + 31) / 32);
    padded_width -= width * sizeof(RGB);
    unsigned long int _imopVarPre365;
    void *_imopVarPre366;
    _imopVarPre365 = sizeof(char);
    _imopVarPre366 = calloc(padded_width, _imopVarPre365);
    char *pad = (char *) _imopVarPre366;
    image.magic[0] = 'B';
    image.magic[1] = 'M';
    image.file_header.filesz = 2 * sizeof(char) + sizeof(bmpfile_header_t) + sizeof(bmp_dib_header_t) + height * width * sizeof(RGB);
    image.file_header.creator1 = image.file_header.creator2 = 0;
    image.file_header.bmp_offset = 2 * sizeof(char) + sizeof(bmpfile_header_t) + sizeof(bmp_dib_header_t);
    image.dib_header.header_sz = 40;
    image.dib_header.width = width;
    image.dib_header.height = height;
    image.dib_header.nplanes = 1;
    image.dib_header.bitspp = 24;
    image.dib_header.compress_type = 0;
    image.dib_header.bmp_bytesz = width * height * sizeof(RGB);
    image.dib_header.hres = 0;
    image.dib_header.vres = 0;
    image.dib_header.ncolors = 0;
    image.dib_header.nimpcolors = 0;
    struct __sFILE *_imopVarPre367;
    _imopVarPre367 = fopen(filename, "wb");
    FILE *out_file = _imopVarPre367;
    unsigned long int _imopVarPre370;
    unsigned char *_imopVarPre371;
    _imopVarPre370 = sizeof(char);
    _imopVarPre371 = image.magic;
    fwrite(_imopVarPre371, _imopVarPre370, 2, out_file);
    unsigned long int _imopVarPre375;
    unsigned long int _imopVarPre376;
    struct stUn_imopVarPre13 *_imopVarPre377;
    _imopVarPre375 = sizeof(bmpfile_header_t);
    _imopVarPre376 = sizeof(char);
    _imopVarPre377 = &(image.file_header);
    fwrite(_imopVarPre377, _imopVarPre376, _imopVarPre375, out_file);
    unsigned long int _imopVarPre381;
    unsigned long int _imopVarPre382;
    struct stUn_imopVarPre14 *_imopVarPre383;
    _imopVarPre381 = sizeof(bmp_dib_header_t);
    _imopVarPre382 = sizeof(char);
    _imopVarPre383 = &(image.dib_header);
    fwrite(_imopVarPre383, _imopVarPre382, _imopVarPre381, out_file);
    int h;
    for (h = height - 1; h >= 0; h--) {
        unsigned long int _imopVarPre386;
        struct stUn_imopVarPre12 *_imopVarPre387;
        _imopVarPre386 = sizeof(RGB);
        _imopVarPre387 = &bitmap[h * width];
        fwrite(_imopVarPre387, _imopVarPre386, width, out_file);
        unsigned long int _imopVarPre389;
        _imopVarPre389 = sizeof(char);
        fwrite(pad, _imopVarPre389, padded_width, out_file);
    }
    fclose(out_file);
}
RGB HSVtoRGB(float h, float s , float v) {
    int i;
    float f;
    float p;
    float q;
    float t;
    float r;
    float g;
    float b;
    RGB value = {0, 0 , 0};
    if (s == 0) {
        r = g = b = v;
        return value;
    }
    h /= 60;
    i = floor(h);
    f = h - i;
    p = v * (1 - s);
    q = v * (1 - s * f);
    t = v * (1 - s * (1 - f));
    switch (i) {
        case 0: r = v;
        g = t;
        b = p;
        break;
        case 1: r = q;
        g = v;
        b = p;
        break;
        case 2: r = p;
        g = v;
        b = t;
        break;
        case 3: r = p;
        g = q;
        b = v;
        break;
        case 4: r = t;
        g = p;
        b = v;
        break;
        default: r = v;
        g = p;
        b = q;
        break;
    }
    unsigned int temp = r * 255;
    value.R = temp;
    temp = g * 255;
    value.G = temp;
    temp = b * 255;
    value.B = temp;
    return value;
}
void dump_histo_img(unsigned char *histo, unsigned int height , unsigned int width , const char *filename) {
    unsigned long int _imopVarPre392;
    void *_imopVarPre393;
    _imopVarPre392 = height * width * sizeof(RGB);
    _imopVarPre393 = malloc(_imopVarPre392);
    RGB *pixel_map = (RGB *) _imopVarPre393;
    size_t y;
    size_t x;
    for (y = 0; y < height; ++y) {
        for (x = 0; x < width; ++x) {
            unsigned char value = histo[y * width + x];
            if (value == 0) {
                pixel_map[y * width + x].R = 0;
                pixel_map[y * width + x].G = 0;
                pixel_map[y * width + x].B = 0;
            } else {
                double _imopVarPre401;
                double _imopVarPre402;
                double _imopVarPre403;
                struct stUn_imopVarPre12 _imopVarPre404;
                _imopVarPre401 = 1 + 63.0 * ((float) value) / ((float) 255);
                _imopVarPre402 = cbrt(_imopVarPre401);
                _imopVarPre403 = _imopVarPre402 / 4;
                _imopVarPre404 = HSVtoRGB(0.0, 1.0, _imopVarPre403);
                pixel_map[y * width + x] = _imopVarPre404;
            }
        }
    }
    create_bmp(pixel_map, height, width, filename);
    free(pixel_map);
}
int main(int argc, char *argv[]) {
    struct pb_TimerSet timers;
    struct pb_Parameters *parameters;
    printf("Base implementation of histogramming.\n");
    printf("Maintained by Nady Obeid <obeid1@ece.uiuc.edu>\n");
    int *_imopVarPre406;
    struct pb_Parameters *_imopVarPre407;
    _imopVarPre406 = &argc;
    _imopVarPre407 = pb_ReadParameters(_imopVarPre406, argv);
    parameters = _imopVarPre407;
    if (!parameters) {
        return -1;
    }
    if (!parameters->inpFiles[0]) {
        fputs("Input file expected\n", __stderrp);
        return -1;
    }
    int numIterations;
    if (argc >= 2) {
        char *_imopVarPre409;
        int _imopVarPre410;
        _imopVarPre409 = argv[1];
        _imopVarPre410 = atoi(_imopVarPre409);
        numIterations = _imopVarPre410;
    } else {
        fputs("Expected at least one command line argument\n", __stderrp);
        return -1;
    }
    struct pb_TimerSet *_imopVarPre412;
    _imopVarPre412 = &timers;
    pb_InitializeTimerSet(_imopVarPre412);
    char *inputStr = "Input";
    char *outputStr = "Output";
    struct pb_TimerSet *_imopVarPre414;
    _imopVarPre414 = &timers;
    pb_AddSubTimer(_imopVarPre414, inputStr, pb_TimerID_IO);
    struct pb_TimerSet *_imopVarPre416;
    _imopVarPre416 = &timers;
    pb_AddSubTimer(_imopVarPre416, outputStr, pb_TimerID_IO);
    struct pb_TimerSet *_imopVarPre418;
    _imopVarPre418 = &timers;
    pb_SwitchToSubTimer(_imopVarPre418, inputStr, pb_TimerID_IO);
    unsigned int img_width;
    unsigned int img_height;
    unsigned int histo_width;
    unsigned int histo_height;
    char *_imopVarPre420;
    struct __sFILE *_imopVarPre421;
    _imopVarPre420 = parameters->inpFiles[0];
    _imopVarPre421 = fopen(_imopVarPre420, "rb");
    FILE *f = _imopVarPre421;
    int result = 0;
    unsigned long int _imopVarPre424;
    unsigned int *_imopVarPre425;
    unsigned long int _imopVarPre426;
    _imopVarPre424 = sizeof(unsigned int);
    _imopVarPre425 = &img_width;
    _imopVarPre426 = fread(_imopVarPre425, _imopVarPre424, 1, f);
    result += _imopVarPre426;
    unsigned long int _imopVarPre429;
    unsigned int *_imopVarPre430;
    unsigned long int _imopVarPre431;
    _imopVarPre429 = sizeof(unsigned int);
    _imopVarPre430 = &img_height;
    _imopVarPre431 = fread(_imopVarPre430, _imopVarPre429, 1, f);
    result += _imopVarPre431;
    unsigned long int _imopVarPre434;
    unsigned int *_imopVarPre435;
    unsigned long int _imopVarPre436;
    _imopVarPre434 = sizeof(unsigned int);
    _imopVarPre435 = &histo_width;
    _imopVarPre436 = fread(_imopVarPre435, _imopVarPre434, 1, f);
    result += _imopVarPre436;
    unsigned long int _imopVarPre439;
    unsigned int *_imopVarPre440;
    unsigned long int _imopVarPre441;
    _imopVarPre439 = sizeof(unsigned int);
    _imopVarPre440 = &histo_height;
    _imopVarPre441 = fread(_imopVarPre440, _imopVarPre439, 1, f);
    result += _imopVarPre441;
    if (result != 4) {
        fputs("Error reading input and output dimensions from file\n", __stderrp);
        return -1;
    }
    unsigned long int _imopVarPre444;
    void *_imopVarPre445;
    _imopVarPre444 = img_width * img_height * sizeof(unsigned int);
    _imopVarPre445 = malloc(_imopVarPre444);
    unsigned int *img = (unsigned int *) _imopVarPre445;
    unsigned long int _imopVarPre449;
    int _imopVarPre450;
    void *_imopVarPre451;
    _imopVarPre449 = sizeof(unsigned char);
    _imopVarPre450 = histo_width * histo_height;
    _imopVarPre451 = calloc(_imopVarPre450, _imopVarPre449);
    unsigned char *histo = (unsigned char *) _imopVarPre451;
    struct pb_TimerSet *_imopVarPre453;
    _imopVarPre453 = &timers;
    pb_SwitchToSubTimer(_imopVarPre453, "Input", pb_TimerID_IO);
    int _imopVarPre456;
    unsigned long int _imopVarPre457;
    unsigned long int _imopVarPre458;
    _imopVarPre456 = img_width * img_height;
    _imopVarPre457 = sizeof(unsigned int);
    _imopVarPre458 = fread(img, _imopVarPre457, _imopVarPre456, f);
    result = _imopVarPre458;
    fclose(f);
    if (result != img_width * img_height) {
        fputs("Error reading input array from file\n", __stderrp);
        return -1;
    }
    struct pb_TimerSet *_imopVarPre460;
    _imopVarPre460 = &timers;
    pb_SwitchToTimer(_imopVarPre460, pb_TimerID_COMPUTE);
    int iter;
    for (iter = 0; iter < numIterations; iter++) {
        unsigned int i;
#pragma omp parallel
        {
            unsigned int _imopVarPre463;
            unsigned long int _imopVarPre464;
#pragma omp master
            {
                _imopVarPre463 = __builtin_object_size(histo, 0);
                _imopVarPre464 = histo_height * histo_width * sizeof(unsigned char);
                __builtin___memset_chk(histo, 0, _imopVarPre464, _imopVarPre463);
            }
// #pragma omp dummyFlush BARRIER_START
#pragma omp barrier
#pragma omp for nowait
            for (i = 0; i < img_width * img_height; ++i) {
                const unsigned int value = img[i];
// #pragma omp dummyFlush CRITICAL_START
#pragma omp critical
                {
                    if (histo[value] < 255) {
                        ++histo[value];
                    }
                }
// #pragma omp dummyFlush CRITICAL_END
            }
        }
    }
    struct pb_TimerSet *_imopVarPre466;
    _imopVarPre466 = &timers;
    pb_SwitchToSubTimer(_imopVarPre466, outputStr, pb_TimerID_IO);
    if (parameters->outFile) {
        char *_imopVarPre468;
        _imopVarPre468 = parameters->outFile;
        dump_histo_img(histo, histo_height, histo_width, _imopVarPre468);
    }
    struct pb_TimerSet *_imopVarPre470;
    _imopVarPre470 = &timers;
    pb_SwitchToTimer(_imopVarPre470, pb_TimerID_COMPUTE);
    free(img);
    free(histo);
    struct pb_TimerSet *_imopVarPre472;
    _imopVarPre472 = &timers;
    pb_SwitchToTimer(_imopVarPre472, pb_TimerID_NONE);
    printf("\n");
    struct pb_TimerSet *_imopVarPre474;
    _imopVarPre474 = &timers;
    pb_PrintTimerSet(_imopVarPre474);
    pb_FreeParameters(parameters);
    return 0;
}
