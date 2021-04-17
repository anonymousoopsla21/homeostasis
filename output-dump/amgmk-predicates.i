typedef int __int32_t;
typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef unsigned long __darwin_clock_t;
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
extern FILE *__stdoutp;
extern FILE *__stderrp;
int fflush(FILE *);
int fprintf(FILE *restrict , const char *restrict , ...);
int printf(const char *restrict , ...);
struct timeval {
    __darwin_time_t tv_sec;
    __darwin_suseconds_t tv_usec;
} ;
void *calloc(size_t __count, size_t __size);
void free(void *);
typedef __darwin_clock_t clock_t;
clock_t clock(void );
int gettimeofday(struct timeval *restrict , void *restrict );
extern double fabs(double );
extern int omp_get_num_threads(void );
int hypre_OutOfMemory(int size);
char *hypre_CAlloc(int count, int elt_size);
void hypre_Free(char *ptr);
extern int hypre__global_error;
void hypre_error_handler(char *filename, int line , int ierr);
struct stUn_imopVarPre14 {
    double *data;
    int *i;
    int *j;
    int num_rows;
    int num_cols;
    int num_nonzeros;
    int *rownnz;
    int num_rownnz;
    int owns_data;
} ;
typedef struct stUn_imopVarPre14 hypre_CSRMatrix;
struct stUn_imopVarPre15 {
    double *data;
    int size;
    int owns_data;
    int num_vectors;
    int multivec_storage_method;
    int vecstride, idxstride;
} ;
typedef struct stUn_imopVarPre15 hypre_Vector;
hypre_CSRMatrix *hypre_CSRMatrixCreate(int num_rows, int num_cols , int num_nonzeros);
int hypre_CSRMatrixDestroy(hypre_CSRMatrix *matrix);
int hypre_CSRMatrixMatvec(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y);
hypre_Vector *hypre_SeqVectorCreate(int size);
int hypre_SeqVectorDestroy(hypre_Vector *vector);
int hypre_SeqVectorInitialize(hypre_Vector *vector);
int hypre_SeqVectorSetConstantValues(hypre_Vector *v, double value);
int hypre_SeqVectorAxpy(double alpha, hypre_Vector *x , hypre_Vector *y);
hypre_CSRMatrix *GenerateSeqLaplacian(int nx, int ny , int nz , double *values , hypre_Vector **x_ptr , hypre_Vector **y_ptr , hypre_Vector **sol_ptr);
int hypre_BoomerAMGSeqRelax(hypre_CSRMatrix *A, hypre_Vector *x , hypre_Vector *y);
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
hypre_CSRMatrix *hypre_CSRMatrixCreate(int num_rows, int num_cols , int num_nonzeros) {
    /*OUT: {
    Reverse<--,>}*/
    hypre_CSRMatrix *matrix;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre153;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre154;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre155;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre153 = (unsigned int) sizeof(hypre_CSRMatrix);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre154 = (unsigned int) 1;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre155 = hypre_CAlloc(_imopVarPre154, _imopVarPre153);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    matrix = ((hypre_CSRMatrix *) _imopVarPre155);
    /*OUT: {
    Reverse<--,>}*/
    (matrix->data) = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    (matrix->i) = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    (matrix->j) = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    (matrix->rownnz) = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    (matrix->num_rows) = num_rows;
    /*OUT: {
    Reverse<--,>}*/
    (matrix->num_cols) = num_cols;
    /*OUT: {
    Reverse<--,>}*/
    (matrix->num_nonzeros) = num_nonzeros;
    /*OUT: {
    Reverse<--,>}*/
    (matrix->owns_data) = 1;
    /*OUT: {
    Reverse<--,>}*/
    (matrix->num_rownnz) = num_rows;
    /*OUT: {
    Reverse<--,>}*/
    return matrix;
}
/*OUT: {
Reverse<--,>}*/
int hypre_CSRMatrixDestroy(hypre_CSRMatrix *matrix) {
    /*OUT: {
    Reverse<--,>}*/
    int ierr = 0;
    /*OUT: {
    Reverse<--,>}*/
    if (matrix) {
        /*OUT: {
        Reverse<--, 156_0;>}*/
        char *_imopVarPre159;
        /*OUT: {
        Reverse<--, 156_0;>}*/
        _imopVarPre159 = (char *) (matrix->i);
        /*OUT: {
        Reverse<--, 156_0;>}*/
        hypre_Free(_imopVarPre159);
        /*OUT: {
        Reverse<--, 156_0;>}*/
        /*OUT: {
        Reverse<--, 156_0;>}*/
        ((matrix->i) = ((void *) 0));
        /*OUT: {
        Reverse<--, 156_0;>}*/
        if ((matrix->rownnz)) {
            /*OUT: {
            Reverse<--, 172_0; 156_0;>}*/
            char *_imopVarPre163;
            /*OUT: {
            Reverse<--, 172_0; 156_0;>}*/
            _imopVarPre163 = (char *) (matrix->rownnz);
            /*OUT: {
            Reverse<--, 172_0; 156_0;>}*/
            hypre_Free(_imopVarPre163);
            /*OUT: {
            Reverse<--, 172_0; 156_0;>}*/
            /*OUT: {
            Reverse<--, 172_0; 156_0;>}*/
            ((matrix->rownnz) = ((void *) 0));
        }
        /*OUT: {
        Reverse<--, 156_0;>}*/
        if ((matrix->owns_data)) {
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            char *_imopVarPre167;
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            _imopVarPre167 = (char *) (matrix->data);
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            hypre_Free(_imopVarPre167);
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            ((matrix->data) = ((void *) 0));
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            char *_imopVarPre171;
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            _imopVarPre171 = (char *) (matrix->j);
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            hypre_Free(_imopVarPre171);
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            /*OUT: {
            Reverse<--, 188_0; 156_0;>}*/
            ((matrix->j) = ((void *) 0));
        }
        /*OUT: {
        Reverse<--, 156_0;>}*/
        char *_imopVarPre175;
        /*OUT: {
        Reverse<--, 156_0;>}*/
        _imopVarPre175 = (char *) matrix;
        /*OUT: {
        Reverse<--, 156_0;>}*/
        hypre_Free(_imopVarPre175);
        /*OUT: {
        Reverse<--, 156_0;>}*/
        /*OUT: {
        Reverse<--, 156_0;>}*/
        (matrix = ((void *) 0));
    }
    /*OUT: {
    Reverse<--,>}*/
    return ierr;
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
int hypre_CSRMatrixMatvec(double alpha, hypre_CSRMatrix *A , hypre_Vector *x , double beta , hypre_Vector *y) {
    /*OUT: {
    Reverse<--,>}*/
    double *A_data = (A->data);
    /*OUT: {
    Reverse<--,>}*/
    int *A_i = (A->i);
    /*OUT: {
    Reverse<--,>}*/
    int *A_j = (A->j);
    /*OUT: {
    Reverse<--,>}*/
    int num_rows = (A->num_rows);
    /*OUT: {
    Reverse<--,>}*/
    int num_cols = (A->num_cols);
    /*OUT: {
    Reverse<--,>}*/
    int *A_rownnz = (A->rownnz);
    /*OUT: {
    Reverse<--,>}*/
    int num_rownnz = (A->num_rownnz);
    /*OUT: {
    Reverse<--,>}*/
    double *x_data = (x->data);
    /*OUT: {
    Reverse<--,>}*/
    double *y_data = (y->data);
    /*OUT: {
    Reverse<--,>}*/
    int x_size = (x->size);
    /*OUT: {
    Reverse<--,>}*/
    int y_size = (y->size);
    /*OUT: {
    Reverse<--,>}*/
    int num_vectors = (x->num_vectors);
    /*OUT: {
    Reverse<--,>}*/
    int idxstride_y = (y->idxstride);
    /*OUT: {
    Reverse<--,>}*/
    int vecstride_y = (y->vecstride);
    /*OUT: {
    Reverse<--,>}*/
    int idxstride_x = (x->idxstride);
    /*OUT: {
    Reverse<--,>}*/
    int vecstride_x = (x->vecstride);
    /*OUT: {
    Reverse<--,>}*/
    double temp;
    /*OUT: {
    Reverse<--,>}*/
    double tempx;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int jj;
    /*OUT: {
    Reverse<--,>}*/
    int m;
    /*OUT: {
    Reverse<--,>}*/
    double xpar = 0.7;
    /*OUT: {
    Reverse<--,>}*/
    int ierr = 0;
    /*OUT: {
    Reverse<--,>}*/
    if (!(num_vectors == (y->num_vectors))) {
        /*OUT: {
        Reverse<--, 278_0;>}*/
        fprintf(__stderrp, "hypre_assert failed: %s\n", "num_vectors == hypre_VectorNumVectors(y)");
        /*OUT: {
        Reverse<--, 278_0;>}*/
        /*OUT: {
        Reverse<--, 278_0;>}*/
        hypre_error_handler("amgmk.c", 1112, 1);
        /*OUT: {
        Reverse<--, 278_0;>}*/
    }
    /*OUT: {
    Reverse<--,>}*/
    ;
    /*OUT: {
    Reverse<--,>}*/
    if (num_cols != x_size) {
        /*OUT: {
        Reverse<--, 290_0;>}*/
        ierr = 1;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (num_rows != y_size) {
        /*OUT: {
        Reverse<--, 293_0;>}*/
        ierr = 2;
    }
    /*OUT: {
    Reverse<--,>}*/
    int _imopVarPre292;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre292 = num_cols != x_size;
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre292) {
        /*OUT: {
        Reverse<--, 299_0;>}*/
        _imopVarPre292 = num_rows != y_size;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (_imopVarPre292) {
        /*OUT: {
        Reverse<--, 302_0;>}*/
        ierr = 3;
    }
    /*OUT: {
    Reverse<--,>}*/
    if (alpha == 0.0) {
        /*OUT: {
        Reverse<--, 305_0;>}*/
        /*OUT: {
        Reverse<--, 305_0;>}*/
        /*OUT: {
        Reverse<--, 307_0; 305_0;>}*/
        for (i = 0; i < num_rows * num_vectors; i++) {
            /*OUT: {
            Reverse<--, 307_0; 305_0;>}*/
            y_data[i] *= beta;
        }
        /*OUT: {
        Reverse<--, 307_1; 305_0;>}*/
        return ierr;
    }
    /*OUT: {
    Reverse<--, 305_1;>}*/
    temp = beta / alpha;
    /*OUT: {
    Reverse<--, 305_1;>}*/
    if (temp != 1.0) {
        /*OUT: {
        Reverse<--, 316_0; 305_1;>}*/
        if (temp == 0.0) {
            /*OUT: {
            Reverse<--, 317_0; 316_0; 305_1;>}*/
            /*OUT: {
            Reverse<--, 317_0; 316_0; 305_1;>}*/
            /*OUT: {
            Reverse<--, 319_0; 317_0; 316_0; 305_1;>}*/
            for (i = 0; i < num_rows * num_vectors; i++) {
                /*OUT: {
                Reverse<--, 319_0; 317_0; 316_0; 305_1;>}*/
                y_data[i] = 0.0;
            }
        } else {
            /*OUT: {
            Reverse<--, 317_1; 316_0; 305_1;>}*/
            /*OUT: {
            Reverse<--, 317_1; 316_0; 305_1;>}*/
            /*OUT: {
            Reverse<--, 325_0; 317_1; 316_0; 305_1;>}*/
            for (i = 0; i < num_rows * num_vectors; i++) {
                /*OUT: {
                Reverse<--, 325_0; 317_1; 316_0; 305_1;>}*/
                y_data[i] *= temp;
            }
        }
    }
    /*OUT: {
    Reverse<--, 325_1; 317_1; 316_0; 305_1;>
    Reverse<--, 316_1; 305_1;>
    Reverse<--, 319_1; 317_0; 316_0; 305_1;>}*/
    if (num_rownnz < xpar * num_rows) {
        /*OUT: {
        Reverse<--, 330_0; 316_1; 305_1;>
        Reverse<--, 330_0; 325_1; 317_1; 316_0; 305_1;>
        Reverse<--, 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
        /*OUT: {
        Reverse<--, 330_0; 316_1; 305_1;>
        Reverse<--, 330_0; 325_1; 317_1; 316_0; 305_1;>
        Reverse<--, 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
        /*OUT: {
        Reverse<--, 344_1; 337_0; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
        Reverse<--, 355_1; 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
        Reverse<--, 344_1; 337_0; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
        Reverse<--, 344_1; 337_0; 332_0; 330_0; 316_1; 305_1;>
        Reverse<--, 355_1; 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
        Reverse<--, 355_1; 337_1; 332_0; 330_0; 316_1; 305_1;>}*/
        for (i = 0; i < num_rownnz; i++) {
            /*OUT: {
            Reverse<--, 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
            Reverse<--, 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
            Reverse<--, 332_0; 330_0; 316_1; 305_1;>}*/
            m = A_rownnz[i];
            /*OUT: {
            Reverse<--, 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
            Reverse<--, 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
            Reverse<--, 332_0; 330_0; 316_1; 305_1;>}*/
            if (num_vectors == 1) {
                /*OUT: {
                Reverse<--, 337_0; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                Reverse<--, 337_0; 332_0; 330_0; 316_1; 305_1;>
                Reverse<--, 337_0; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
                tempx = y_data[m];
                /*OUT: {
                Reverse<--, 337_0; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                Reverse<--, 337_0; 332_0; 330_0; 316_1; 305_1;>
                Reverse<--, 337_0; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
                /*OUT: {
                Reverse<--, 337_0; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                Reverse<--, 337_0; 332_0; 330_0; 316_1; 305_1;>
                Reverse<--, 337_0; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
                /*OUT: {
                Reverse<--, 344_0; 337_0; 332_0; 330_0; 316_1; 305_1;>
                Reverse<--, 344_0; 337_0; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
                Reverse<--, 344_0; 337_0; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>}*/
                for (jj = A_i[m]; jj < A_i[m + 1]; jj++) {
                    /*OUT: {
                    Reverse<--, 344_0; 337_0; 332_0; 330_0; 316_1; 305_1;>
                    Reverse<--, 344_0; 337_0; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
                    Reverse<--, 344_0; 337_0; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>}*/
                    tempx += A_data[jj] * x_data[A_j[jj]];
                }
                /*OUT: {
                Reverse<--, 344_1; 337_0; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
                Reverse<--, 344_1; 337_0; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                Reverse<--, 344_1; 337_0; 332_0; 330_0; 316_1; 305_1;>}*/
                y_data[m] = tempx;
            } else {
                /*OUT: {
                Reverse<--, 337_1; 332_0; 330_0; 316_1; 305_1;>
                Reverse<--, 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
                Reverse<--, 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>}*/
                /*OUT: {
                Reverse<--, 337_1; 332_0; 330_0; 316_1; 305_1;>
                Reverse<--, 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
                Reverse<--, 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>}*/
                /*OUT: {
                Reverse<--, 363_1; 355_0; 337_1; 332_0; 330_0; 316_1; 305_1;>
                Reverse<--, 363_1; 355_0; 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                Reverse<--, 363_1; 355_0; 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
                for (j = 0; j < num_vectors; ++j) {
                    /*OUT: {
                    Reverse<--, 355_0; 337_1; 332_0; 330_0; 316_1; 305_1;>
                    Reverse<--, 355_0; 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                    Reverse<--, 355_0; 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
                    tempx = y_data[j * vecstride_y + m * idxstride_y];
                    /*OUT: {
                    Reverse<--, 355_0; 337_1; 332_0; 330_0; 316_1; 305_1;>
                    Reverse<--, 355_0; 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                    Reverse<--, 355_0; 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
                    /*OUT: {
                    Reverse<--, 355_0; 337_1; 332_0; 330_0; 316_1; 305_1;>
                    Reverse<--, 355_0; 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                    Reverse<--, 355_0; 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
                    /*OUT: {
                    Reverse<--, 363_0; 355_0; 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                    Reverse<--, 363_0; 355_0; 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
                    Reverse<--, 363_0; 355_0; 337_1; 332_0; 330_0; 316_1; 305_1;>}*/
                    for (jj = A_i[m]; jj < A_i[m + 1]; jj++) {
                        /*OUT: {
                        Reverse<--, 363_0; 355_0; 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                        Reverse<--, 363_0; 355_0; 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>
                        Reverse<--, 363_0; 355_0; 337_1; 332_0; 330_0; 316_1; 305_1;>}*/
                        tempx += A_data[jj] * x_data[j * vecstride_x + A_j[jj] * idxstride_x];
                    }
                    /*OUT: {
                    Reverse<--, 363_1; 355_0; 337_1; 332_0; 330_0; 316_1; 305_1;>
                    Reverse<--, 363_1; 355_0; 337_1; 332_0; 330_0; 325_1; 317_1; 316_0; 305_1;>
                    Reverse<--, 363_1; 355_0; 337_1; 332_0; 330_0; 319_1; 317_0; 316_0; 305_1;>}*/
                    y_data[j * vecstride_y + m * idxstride_y] = tempx;
                }
            }
        }
    } else {
#pragma omp parallel private(i, jj, temp)
        {
#pragma omp for schedule(static) nowait
            /*OUT: {
            Reverse<2033,>}*/
            /*OUT: {
            Reverse<2033,>}*/
            /*OUT: {
            Reverse<2033, 385_1; 378_0;>
            Reverse<2033, 396_1; 378_1;>}*/
            for (i = 0; i < num_rows; i++) {
                /*OUT: {
                Reverse<2033,>}*/
                if (num_vectors == 1) {
                    /*OUT: {
                    Reverse<2033, 378_0;>}*/
                    temp = y_data[i];
                    /*OUT: {
                    Reverse<2033, 378_0;>}*/
                    /*OUT: {
                    Reverse<2033, 378_0;>}*/
                    /*OUT: {
                    Reverse<2033, 385_0; 378_0;>}*/
                    for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                        /*OUT: {
                        Reverse<2033, 385_0; 378_0;>}*/
                        temp += A_data[jj] * x_data[A_j[jj]];
                    }
                    /*OUT: {
                    Reverse<2033, 385_1; 378_0;>}*/
                    y_data[i] = temp;
                } else {
                    /*OUT: {
                    Reverse<2033, 378_1;>}*/
                    /*OUT: {
                    Reverse<2033, 378_1;>}*/
                    /*OUT: {
                    Reverse<2033, 404_1; 396_0; 378_1;>}*/
                    for (j = 0; j < num_vectors; ++j) {
                        /*OUT: {
                        Reverse<2033, 396_0; 378_1;>}*/
                        temp = y_data[j * vecstride_y + i * idxstride_y];
                        /*OUT: {
                        Reverse<2033, 396_0; 378_1;>}*/
                        /*OUT: {
                        Reverse<2033, 396_0; 378_1;>}*/
                        /*OUT: {
                        Reverse<2033, 404_0; 396_0; 378_1;>}*/
                        for (jj = A_i[i]; jj < A_i[i + 1]; jj++) {
                            /*OUT: {
                            Reverse<2033, 404_0; 396_0; 378_1;>}*/
                            temp += A_data[jj] * x_data[j * vecstride_x + A_j[jj] * idxstride_x];
                        }
                        /*OUT: {
                        Reverse<2033, 404_1; 396_0; 378_1;>}*/
                        y_data[j * vecstride_y + i * idxstride_y] = temp;
                    }
                }
            }
            /*OUT: {
            Reverse<2033,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<414,>}*/
#pragma omp barrier
        }
    }
    /*OUT: {
    Reverse<--, 332_1; 330_0; 325_1; 317_1; 316_0; 305_1;>
    Reverse<--, 332_1; 330_0; 319_1; 317_0; 316_0; 305_1;>
    Reverse<--, 330_1; 319_1; 317_0; 316_0; 305_1;>
    Reverse<--, 330_1; 325_1; 317_1; 316_0; 305_1;>
    Reverse<--, 332_1; 330_0; 316_1; 305_1;>
    Reverse<--, 330_1; 316_1; 305_1;>}*/
    if (alpha != 1.0) {
        /*OUT: {
        Reverse<--, 415_0; 332_1; 330_0; 319_1; 317_0; 316_0; 305_1;>
        Reverse<--, 415_0; 332_1; 330_0; 325_1; 317_1; 316_0; 305_1;>
        Reverse<--, 415_0; 330_1; 316_1; 305_1;>
        Reverse<--, 415_0; 330_1; 319_1; 317_0; 316_0; 305_1;>
        Reverse<--, 415_0; 330_1; 325_1; 317_1; 316_0; 305_1;>
        Reverse<--, 415_0; 332_1; 330_0; 316_1; 305_1;>}*/
        /*OUT: {
        Reverse<--, 415_0; 332_1; 330_0; 319_1; 317_0; 316_0; 305_1;>
        Reverse<--, 415_0; 332_1; 330_0; 325_1; 317_1; 316_0; 305_1;>
        Reverse<--, 415_0; 330_1; 316_1; 305_1;>
        Reverse<--, 415_0; 330_1; 319_1; 317_0; 316_0; 305_1;>
        Reverse<--, 415_0; 330_1; 325_1; 317_1; 316_0; 305_1;>
        Reverse<--, 415_0; 332_1; 330_0; 316_1; 305_1;>}*/
        /*OUT: {
        Reverse<--, 417_0; 415_0; 332_1; 330_0; 319_1; 317_0; 316_0; 305_1;>
        Reverse<--, 417_0; 415_0; 330_1; 319_1; 317_0; 316_0; 305_1;>
        Reverse<--, 417_0; 415_0; 332_1; 330_0; 325_1; 317_1; 316_0; 305_1;>
        Reverse<--, 417_0; 415_0; 332_1; 330_0; 316_1; 305_1;>
        Reverse<--, 417_0; 415_0; 330_1; 316_1; 305_1;>
        Reverse<--, 417_0; 415_0; 330_1; 325_1; 317_1; 316_0; 305_1;>}*/
        for (i = 0; i < num_rows * num_vectors; i++) {
            /*OUT: {
            Reverse<--, 417_0; 415_0; 332_1; 330_0; 319_1; 317_0; 316_0; 305_1;>
            Reverse<--, 417_0; 415_0; 330_1; 319_1; 317_0; 316_0; 305_1;>
            Reverse<--, 417_0; 415_0; 332_1; 330_0; 325_1; 317_1; 316_0; 305_1;>
            Reverse<--, 417_0; 415_0; 332_1; 330_0; 316_1; 305_1;>
            Reverse<--, 417_0; 415_0; 330_1; 316_1; 305_1;>
            Reverse<--, 417_0; 415_0; 330_1; 325_1; 317_1; 316_0; 305_1;>}*/
            y_data[i] *= alpha;
        }
    }
    /*OUT: {
    Reverse<--, 417_1; 415_0; 332_1; 330_0; 316_1; 305_1;>
    Reverse<--, 417_1; 415_0; 330_1; 325_1; 317_1; 316_0; 305_1;>
    Reverse<--, 417_1; 415_0; 332_1; 330_0; 319_1; 317_0; 316_0; 305_1;>
    Reverse<--, 415_1; 332_1; 330_0; 325_1; 317_1; 316_0; 305_1;>
    Reverse<--, 417_1; 415_0; 332_1; 330_0; 325_1; 317_1; 316_0; 305_1;>
    Reverse<--, 415_1; 332_1; 330_0; 316_1; 305_1;>
    Reverse<--, 417_1; 415_0; 330_1; 316_1; 305_1;>
    Reverse<--, 415_1; 330_1; 319_1; 317_0; 316_0; 305_1;>
    Reverse<--, 415_1; 332_1; 330_0; 319_1; 317_0; 316_0; 305_1;>
    Reverse<--, 415_1; 330_1; 316_1; 305_1;>
    Reverse<--, 415_1; 330_1; 325_1; 317_1; 316_0; 305_1;>
    Reverse<--, 417_1; 415_0; 330_1; 319_1; 317_0; 316_0; 305_1;>}*/
    return ierr;
}
/*OUT: {
Reverse<--,>}*/
hypre_Vector *hypre_SeqVectorCreate(int size) {
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *vector;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre310;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre311;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre312;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre310 = (unsigned int) sizeof(hypre_Vector);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre311 = (unsigned int) 1;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre312 = hypre_CAlloc(_imopVarPre311, _imopVarPre310);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    vector = ((hypre_Vector *) _imopVarPre312);
    /*OUT: {
    Reverse<--,>}*/
    (vector->data) = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    (vector->size) = size;
    /*OUT: {
    Reverse<--,>}*/
    (vector->num_vectors) = 1;
    /*OUT: {
    Reverse<--,>}*/
    (vector->multivec_storage_method) = 0;
    /*OUT: {
    Reverse<--,>}*/
    (vector->owns_data) = 1;
    /*OUT: {
    Reverse<--,>}*/
    return vector;
}
/*OUT: {
Reverse<--,>}*/
int hypre_SeqVectorDestroy(hypre_Vector *vector) {
    /*OUT: {
    Reverse<--,>}*/
    int ierr = 0;
    /*OUT: {
    Reverse<--,>}*/
    if (vector) {
        /*OUT: {
        Reverse<--, 462_0;>}*/
        if ((vector->owns_data)) {
            /*OUT: {
            Reverse<--, 464_0; 462_0;>}*/
            char *_imopVarPre317;
            /*OUT: {
            Reverse<--, 464_0; 462_0;>}*/
            _imopVarPre317 = (char *) (vector->data);
            /*OUT: {
            Reverse<--, 464_0; 462_0;>}*/
            hypre_Free(_imopVarPre317);
            /*OUT: {
            Reverse<--, 464_0; 462_0;>}*/
            /*OUT: {
            Reverse<--, 464_0; 462_0;>}*/
            ((vector->data) = ((void *) 0));
        }
        /*OUT: {
        Reverse<--, 462_0;>}*/
        char *_imopVarPre321;
        /*OUT: {
        Reverse<--, 462_0;>}*/
        _imopVarPre321 = (char *) vector;
        /*OUT: {
        Reverse<--, 462_0;>}*/
        hypre_Free(_imopVarPre321);
        /*OUT: {
        Reverse<--, 462_0;>}*/
        /*OUT: {
        Reverse<--, 462_0;>}*/
        (vector = ((void *) 0));
    }
    /*OUT: {
    Reverse<--,>}*/
    return ierr;
}
/*OUT: {
Reverse<--,>}*/
int hypre_SeqVectorInitialize(hypre_Vector *vector) {
    /*OUT: {
    Reverse<--,>}*/
    int size = (vector->size);
    /*OUT: {
    Reverse<--,>}*/
    int ierr = 0;
    /*OUT: {
    Reverse<--,>}*/
    int num_vectors = (vector->num_vectors);
    /*OUT: {
    Reverse<--,>}*/
    int multivec_storage_method = (vector->multivec_storage_method);
    /*OUT: {
    Reverse<--,>}*/
    if (!(vector->data)) {
        /*OUT: {
        Reverse<--, 502_0;>}*/
        unsigned int _imopVarPre331;
        /*OUT: {
        Reverse<--, 502_0;>}*/
        unsigned int _imopVarPre332;
        /*OUT: {
        Reverse<--, 502_0;>}*/
        char *_imopVarPre333;
        /*OUT: {
        Reverse<--, 502_0;>}*/
        _imopVarPre331 = (unsigned int) sizeof(double);
        /*OUT: {
        Reverse<--, 502_0;>}*/
        _imopVarPre332 = (unsigned int) (num_vectors * size);
        /*OUT: {
        Reverse<--, 502_0;>}*/
        _imopVarPre333 = hypre_CAlloc(_imopVarPre332, _imopVarPre331);
        /*OUT: {
        Reverse<--, 502_0;>}*/
        /*OUT: {
        Reverse<--, 502_0;>}*/
        (vector->data) = ((double *) _imopVarPre333);
    }
    /*OUT: {
    Reverse<--,>}*/
    if (multivec_storage_method == 0) {
        /*OUT: {
        Reverse<--, 521_0;>
        Reverse<--, 521_0; 502_1;>}*/
        (vector->vecstride) = size;
        /*OUT: {
        Reverse<--, 521_0;>
        Reverse<--, 521_0; 502_1;>}*/
        (vector->idxstride) = 1;
    } else {
        /*OUT: {
        Reverse<--, 521_1;>
        Reverse<--, 521_1; 502_1;>}*/
        if (multivec_storage_method == 1) {
            /*OUT: {
            Reverse<--, 528_0; 521_1; 502_1;>
            Reverse<--, 528_0; 521_1;>}*/
            (vector->vecstride) = 1;
            /*OUT: {
            Reverse<--, 528_0; 521_1; 502_1;>
            Reverse<--, 528_0; 521_1;>}*/
            (vector->idxstride) = num_vectors;
        } else {
            /*OUT: {
            Reverse<--, 528_1; 521_1; 502_1;>
            Reverse<--, 528_1; 521_1;>}*/
            ++ierr;
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    return ierr;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int hypre_SeqVectorSetConstantValues(hypre_Vector *v, double value) {
    /*OUT: {
    Reverse<--,>}*/
    double *vector_data = (v->data);
    /*OUT: {
    Reverse<--,>}*/
    int size = (v->size);
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int ierr = 0;
    /*OUT: {
    Reverse<--,>}*/
    size *= (v->num_vectors);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 551_0;>}*/
    for (i = 0; i < size; i++) {
        /*OUT: {
        Reverse<--, 551_0;>}*/
        vector_data[i] = value;
    }
    /*OUT: {
    Reverse<--, 551_1;>}*/
    return ierr;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int hypre_SeqVectorAxpy(double alpha, hypre_Vector *x , hypre_Vector *y) {
    /*OUT: {
    Reverse<--,>}*/
    double *x_data = (x->data);
    /*OUT: {
    Reverse<--,>}*/
    double *y_data = (y->data);
    /*OUT: {
    Reverse<--,>}*/
    int size = (x->size);
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int ierr = 0;
    /*OUT: {
    Reverse<--,>}*/
    size *= (x->num_vectors);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 573_0;>}*/
    for (i = 0; i < size; i++) {
        /*OUT: {
        Reverse<--, 573_0;>}*/
        y_data[i] += alpha * x_data[i];
    }
    /*OUT: {
    Reverse<--, 573_1;>}*/
    return ierr;
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
hypre_CSRMatrix *GenerateSeqLaplacian(int nx, int ny , int nz , double *value , hypre_Vector **rhs_ptr , hypre_Vector **x_ptr , hypre_Vector **sol_ptr) {
    /*OUT: {
    Reverse<--,>}*/
    hypre_CSRMatrix *A;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *rhs;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *x;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *sol;
    /*OUT: {
    Reverse<--,>}*/
    double *rhs_data;
    /*OUT: {
    Reverse<--,>}*/
    double *x_data;
    /*OUT: {
    Reverse<--,>}*/
    double *sol_data;
    /*OUT: {
    Reverse<--,>}*/
    int *A_i;
    /*OUT: {
    Reverse<--,>}*/
    int *A_j;
    /*OUT: {
    Reverse<--,>}*/
    double *A_data;
    /*OUT: {
    Reverse<--,>}*/
    int ix;
    /*OUT: {
    Reverse<--,>}*/
    int iy;
    /*OUT: {
    Reverse<--,>}*/
    int iz;
    /*OUT: {
    Reverse<--,>}*/
    int cnt;
    /*OUT: {
    Reverse<--,>}*/
    int row_index;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int grid_size;
    /*OUT: {
    Reverse<--,>}*/
    grid_size = nx * ny * nz;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre353;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre354;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre355;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre353 = (unsigned int) sizeof(int);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre354 = (unsigned int) (grid_size + 1);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre355 = hypre_CAlloc(_imopVarPre354, _imopVarPre353);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    A_i = ((int *) _imopVarPre355);
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre365;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre366;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre367;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre365 = (unsigned int) sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre366 = (unsigned int) grid_size;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre367 = hypre_CAlloc(_imopVarPre366, _imopVarPre365);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    rhs_data = ((double *) _imopVarPre367);
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre377;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre378;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre379;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre377 = (unsigned int) sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre378 = (unsigned int) grid_size;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre379 = hypre_CAlloc(_imopVarPre378, _imopVarPre377);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    x_data = ((double *) _imopVarPre379);
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre389;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre390;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre391;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre389 = (unsigned int) sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre390 = (unsigned int) grid_size;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre391 = hypre_CAlloc(_imopVarPre390, _imopVarPre389);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    sol_data = ((double *) _imopVarPre391);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 674_0;>}*/
    for (i = 0; i < grid_size; i++) {
        /*OUT: {
        Reverse<--, 674_0;>}*/
        x_data[i] = 0.0;
        /*OUT: {
        Reverse<--, 674_0;>}*/
        sol_data[i] = 0.0;
        /*OUT: {
        Reverse<--, 674_0;>}*/
        rhs_data[i] = 1.0;
    }
    /*OUT: {
    Reverse<--, 674_1;>}*/
    cnt = 1;
    /*OUT: {
    Reverse<--, 674_1;>}*/
    A_i[0] = 0;
    /*OUT: {
    Reverse<--, 674_1;>}*/
    /*OUT: {
    Reverse<--, 674_1;>}*/
    /*OUT: {
    Reverse<--, 694_1; 691_0; 674_1;>}*/
    for (iz = 0; iz < nz; iz++) {
        /*OUT: {
        Reverse<--, 691_0; 674_1;>}*/
        /*OUT: {
        Reverse<--, 691_0; 674_1;>}*/
        /*OUT: {
        Reverse<--, 697_1; 694_0; 691_0; 674_1;>}*/
        for (iy = 0; iy < ny; iy++) {
            /*OUT: {
            Reverse<--, 694_0; 691_0; 674_1;>}*/
            /*OUT: {
            Reverse<--, 694_0; 691_0; 674_1;>}*/
            /*OUT: {
            Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
            for (ix = 0; ix < nx; ix++) {
                /*OUT: {
                Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
                A_i[cnt] = A_i[cnt - 1];
                /*OUT: {
                Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
                A_i[cnt]++;
                /*OUT: {
                Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
                if (iz) {
                    /*OUT: {
                    Reverse<--, 706_0; 697_0; 694_0; 691_0; 674_1;>}*/
                    A_i[cnt]++;
                }
                /*OUT: {
                Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
                if (iy) {
                    /*OUT: {
                    Reverse<--, 710_0; 697_0; 694_0; 691_0; 674_1;>}*/
                    A_i[cnt]++;
                }
                /*OUT: {
                Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
                if (ix) {
                    /*OUT: {
                    Reverse<--, 714_0; 697_0; 694_0; 691_0; 674_1;>}*/
                    A_i[cnt]++;
                }
                /*OUT: {
                Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
                if (ix + 1 < nx) {
                    /*OUT: {
                    Reverse<--, 718_0; 697_0; 694_0; 691_0; 674_1;>}*/
                    A_i[cnt]++;
                }
                /*OUT: {
                Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
                if (iy + 1 < ny) {
                    /*OUT: {
                    Reverse<--, 722_0; 697_0; 694_0; 691_0; 674_1;>}*/
                    A_i[cnt]++;
                }
                /*OUT: {
                Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
                if (iz + 1 < nz) {
                    /*OUT: {
                    Reverse<--, 726_0; 697_0; 694_0; 691_0; 674_1;>}*/
                    A_i[cnt]++;
                }
                /*OUT: {
                Reverse<--, 697_0; 694_0; 691_0; 674_1;>}*/
                cnt++;
            }
        }
    }
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    unsigned int _imopVarPre401;
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    unsigned int _imopVarPre402;
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    char *_imopVarPre403;
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    _imopVarPre401 = (unsigned int) sizeof(int);
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    _imopVarPre402 = (unsigned int) (A_i[grid_size]);
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    _imopVarPre403 = hypre_CAlloc(_imopVarPre402, _imopVarPre401);
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    A_j = ((int *) _imopVarPre403);
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    unsigned int _imopVarPre413;
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    unsigned int _imopVarPre414;
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    char *_imopVarPre415;
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    _imopVarPre413 = (unsigned int) sizeof(double);
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    _imopVarPre414 = (unsigned int) (A_i[grid_size]);
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    _imopVarPre415 = hypre_CAlloc(_imopVarPre414, _imopVarPre413);
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    A_data = ((double *) _imopVarPre415);
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    row_index = 0;
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    cnt = 0;
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 776_1; 773_0; 691_1; 674_1;>}*/
    for (iz = 0; iz < nz; iz++) {
        /*OUT: {
        Reverse<--, 773_0; 691_1; 674_1;>}*/
        /*OUT: {
        Reverse<--, 773_0; 691_1; 674_1;>}*/
        /*OUT: {
        Reverse<--, 779_1; 776_0; 773_0; 691_1; 674_1;>}*/
        for (iy = 0; iy < ny; iy++) {
            /*OUT: {
            Reverse<--, 776_0; 773_0; 691_1; 674_1;>}*/
            /*OUT: {
            Reverse<--, 776_0; 773_0; 691_1; 674_1;>}*/
            /*OUT: {
            Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
            for (ix = 0; ix < nx; ix++) {
                /*OUT: {
                Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                A_j[cnt] = row_index;
                /*OUT: {
                Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                A_data[cnt++] = value[0];
                /*OUT: {
                Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                if (iz) {
                    /*OUT: {
                    Reverse<--, 788_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_j[cnt] = row_index - nx * ny;
                    /*OUT: {
                    Reverse<--, 788_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_data[cnt++] = value[3];
                }
                /*OUT: {
                Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                if (iy) {
                    /*OUT: {
                    Reverse<--, 796_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_j[cnt] = row_index - nx;
                    /*OUT: {
                    Reverse<--, 796_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_data[cnt++] = value[2];
                }
                /*OUT: {
                Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                if (ix) {
                    /*OUT: {
                    Reverse<--, 804_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_j[cnt] = row_index - 1;
                    /*OUT: {
                    Reverse<--, 804_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_data[cnt++] = value[1];
                }
                /*OUT: {
                Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                if (ix + 1 < nx) {
                    /*OUT: {
                    Reverse<--, 812_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_j[cnt] = row_index + 1;
                    /*OUT: {
                    Reverse<--, 812_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_data[cnt++] = value[1];
                }
                /*OUT: {
                Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                if (iy + 1 < ny) {
                    /*OUT: {
                    Reverse<--, 820_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_j[cnt] = row_index + nx;
                    /*OUT: {
                    Reverse<--, 820_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_data[cnt++] = value[2];
                }
                /*OUT: {
                Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                if (iz + 1 < nz) {
                    /*OUT: {
                    Reverse<--, 828_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_j[cnt] = row_index + nx * ny;
                    /*OUT: {
                    Reverse<--, 828_0; 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                    A_data[cnt++] = value[3];
                }
                /*OUT: {
                Reverse<--, 779_0; 776_0; 773_0; 691_1; 674_1;>}*/
                row_index++;
            }
        }
    }
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    int _imopVarPre417;
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    struct stUn_imopVarPre14 *_imopVarPre418;
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    _imopVarPre417 = A_i[grid_size];
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    _imopVarPre418 = hypre_CSRMatrixCreate(grid_size, grid_size, _imopVarPre417);
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    A = _imopVarPre418;
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    rhs = hypre_SeqVectorCreate(grid_size);
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    (rhs->data) = rhs_data;
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    x = hypre_SeqVectorCreate(grid_size);
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    (x->data) = x_data;
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 773_1; 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 875_1; 870_0; 773_1; 691_1; 674_1;>}*/
    for (i = 0; i < grid_size; i++) {
        /*OUT: {
        Reverse<--, 870_0; 773_1; 691_1; 674_1;>}*/
        /*OUT: {
        Reverse<--, 870_0; 773_1; 691_1; 674_1;>}*/
        /*OUT: {
        Reverse<--, 875_0; 870_0; 773_1; 691_1; 674_1;>}*/
        for (j = A_i[i]; j < A_i[i + 1]; j++) {
            /*OUT: {
            Reverse<--, 875_0; 870_0; 773_1; 691_1; 674_1;>}*/
            sol_data[i] += A_data[j];
        }
    }
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    sol = hypre_SeqVectorCreate(grid_size);
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    (sol->data) = sol_data;
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    (A->i) = A_i;
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    (A->j) = A_j;
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    (A->data) = A_data;
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    *rhs_ptr = rhs;
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    *x_ptr = x;
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    *sol_ptr = sol;
    /*OUT: {
    Reverse<--, 870_1; 773_1; 691_1; 674_1;>}*/
    return A;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int hypre_BoomerAMGSeqRelax(hypre_CSRMatrix *A, hypre_Vector *f , hypre_Vector *u) {
    /*OUT: {
    Reverse<--,>}*/
    double *A_diag_data = (A->data);
    /*OUT: {
    Reverse<--,>}*/
    int *A_diag_i = (A->i);
    /*OUT: {
    Reverse<--,>}*/
    int *A_diag_j = (A->j);
    /*OUT: {
    Reverse<--,>}*/
    int n = (A->num_rows);
    /*OUT: {
    Reverse<--,>}*/
    double *u_data = (u->data);
    /*OUT: {
    Reverse<--,>}*/
    double *f_data = (f->data);
    /*OUT: {
    Reverse<--,>}*/
    double *tmp_data;
    /*OUT: {
    Reverse<--,>}*/
    double res;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    int j;
    /*OUT: {
    Reverse<--,>}*/
    int ii;
    /*OUT: {
    Reverse<--,>}*/
    int jj;
    /*OUT: {
    Reverse<--,>}*/
    int ns;
    /*OUT: {
    Reverse<--,>}*/
    int ne;
    /*OUT: {
    Reverse<--,>}*/
    int size;
    /*OUT: {
    Reverse<--,>}*/
    int rest;
    /*OUT: {
    Reverse<--,>}*/
    int relax_error = 0;
    /*OUT: {
    Reverse<--,>}*/
    int numThreads;
    /*OUT: {
    Reverse<--,>}*/
    numThreads = 1;
    /*OUT: {
    Reverse<--,>}*/
    if (1) {
        /*OUT: {
        Reverse<--,>}*/
        unsigned int _imopVarPre428;
        /*OUT: {
        Reverse<--,>}*/
        unsigned int _imopVarPre429;
        /*OUT: {
        Reverse<--,>}*/
        char *_imopVarPre430;
        /*OUT: {
        Reverse<--,>}*/
        _imopVarPre428 = (unsigned int) sizeof(double);
        /*OUT: {
        Reverse<--,>}*/
        _imopVarPre429 = (unsigned int) n;
        /*OUT: {
        Reverse<--,>}*/
        _imopVarPre430 = hypre_CAlloc(_imopVarPre429, _imopVarPre428);
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        tmp_data = ((double *) _imopVarPre430);
#pragma omp parallel private(numThreads)
        {
            /*OUT: {
            Reverse<2222,>}*/
            numThreads = omp_get_num_threads();
            /*OUT: {
            Reverse<2222,>}*/
#pragma omp for private(i) nowait
            /*OUT: {
            Reverse<2222,>}*/
            /*OUT: {
            Reverse<2222,>}*/
            /*OUT: {
            Reverse<2222,>}*/
            for (i = 0; i < n; i++) {
                /*OUT: {
                Reverse<2222,>}*/
                tmp_data[i] = u_data[i];
            }
            /*OUT: {
            Reverse<2222,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<968,>}*/
#pragma omp barrier
#pragma omp for private(i, ii, j, jj, ns, ne, res, rest, size) nowait
            /*OUT: {
            Reverse<968,>}*/
            /*OUT: {
            Reverse<968,>}*/
            /*OUT: {
            Reverse<968, 990_1;>}*/
            for (j = 0; j < numThreads; j++) {
                /*OUT: {
                Reverse<968,>}*/
                size = n / numThreads;
                /*OUT: {
                Reverse<968,>}*/
                rest = n - size * numThreads;
                /*OUT: {
                Reverse<968,>}*/
                if (j < rest) {
                    /*OUT: {
                    Reverse<968, 978_0;>}*/
                    ns = j * size + j;
                    /*OUT: {
                    Reverse<968, 978_0;>}*/
                    ne = (j + 1) * size + j + 1;
                } else {
                    /*OUT: {
                    Reverse<968, 978_1;>}*/
                    ns = j * size + rest;
                    /*OUT: {
                    Reverse<968, 978_1;>}*/
                    ne = (j + 1) * size + rest;
                }
                /*OUT: {
                Reverse<968,>}*/
                /*OUT: {
                Reverse<968,>}*/
                /*OUT: {
                Reverse<968, 1001_1; 994_0; 990_0;>
                Reverse<968, 994_1; 990_0;>}*/
                for (i = ns; i < ne; i++) {
                    /*OUT: {
                    Reverse<968, 990_0;>}*/
                    if (A_diag_data[A_diag_i[i]] != 0.0) {
                        /*OUT: {
                        Reverse<968, 994_0; 990_0;>}*/
                        res = f_data[i];
                        /*OUT: {
                        Reverse<968, 994_0; 990_0;>}*/
                        /*OUT: {
                        Reverse<968, 994_0; 990_0;>}*/
                        /*OUT: {
                        Reverse<968, 1001_0; 994_0; 990_0;>}*/
                        for (jj = A_diag_i[i] + 1; jj < A_diag_i[i + 1]; jj++) {
                            /*OUT: {
                            Reverse<968, 1001_0; 994_0; 990_0;>}*/
                            ii = A_diag_j[jj];
                            /*OUT: {
                            Reverse<968, 1001_0; 994_0; 990_0;>}*/
                            int _imopVarPre432;
                            /*OUT: {
                            Reverse<968, 1001_0; 994_0; 990_0;>}*/
                            _imopVarPre432 = ii >= ns;
                            /*OUT: {
                            Reverse<968, 1001_0; 994_0; 990_0;>}*/
                            if (_imopVarPre432) {
                                /*OUT: {
                                Reverse<968, 1009_0; 1001_0; 994_0; 990_0;>}*/
                                _imopVarPre432 = ii < ne;
                            }
                            /*OUT: {
                            Reverse<968, 1001_0; 994_0; 990_0;>}*/
                            if (_imopVarPre432) {
                                /*OUT: {
                                Reverse<968, 1012_0; 1001_0; 994_0; 990_0;>}*/
                                res -= A_diag_data[jj] * u_data[ii];
                            } else {
                                /*OUT: {
                                Reverse<968, 1012_1; 1001_0; 994_0; 990_0;>}*/
                                res -= A_diag_data[jj] * tmp_data[ii];
                            }
                        }
                        /*OUT: {
                        Reverse<968, 1001_1; 994_0; 990_0;>}*/
                        u_data[i] = res / A_diag_data[A_diag_i[i]];
                    }
                }
            }
            /*OUT: {
            Reverse<968,>}*/
            // #pragma omp dummyFlush BARRIER_START
            /*OUT: {
            Reverse<1026,>}*/
#pragma omp barrier
        }
        /*OUT: {
        Reverse<--,>}*/
        char *_imopVarPre436;
        /*OUT: {
        Reverse<--,>}*/
        _imopVarPre436 = (char *) tmp_data;
        /*OUT: {
        Reverse<--,>}*/
        hypre_Free(_imopVarPre436);
        /*OUT: {
        Reverse<--,>}*/
        /*OUT: {
        Reverse<--,>}*/
        (tmp_data = ((void *) 0));
    } else {
        for (i = 0; i < n; i++) {
            if (A_diag_data[A_diag_i[i]] != 0.0) {
                res = f_data[i];
                for (jj = A_diag_i[i] + 1; jj < A_diag_i[i + 1]; jj++) {
                    ii = A_diag_j[jj];
                    res -= A_diag_data[jj] * u_data[ii];
                }
                u_data[i] = res / A_diag_data[A_diag_i[i]];
            }
        }
    }
    /*OUT: {
    Reverse<--,>}*/
    return relax_error;
}
int hypre__global_error = 0;
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
void hypre_error_handler(char *filename, int line , int ierr) {
    /*OUT: {
    Reverse<--,>}*/
    hypre__global_error |= ierr;
}
/*OUT: {
Reverse<--,>}*/
int hypre_OutOfMemory(int size) {
    /*OUT: {
    Reverse<--,>}*/
    printf("Out of memory trying to allocate %d bytes\n", size);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    fflush(__stdoutp);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    hypre_error_handler("amgmk.c", 2270, 2);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return 0;
}
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
char *hypre_CAlloc(int count, int elt_size) {
    /*OUT: {
    Reverse<--,>}*/
    char *ptr;
    /*OUT: {
    Reverse<--,>}*/
    int size = count * elt_size;
    /*OUT: {
    Reverse<--,>}*/
    if (size > 0) {
        /*OUT: {
        Reverse<--, 1095_0;>}*/
        ptr = calloc(count, elt_size);
        /*OUT: {
        Reverse<--, 1095_0;>}*/
        /*OUT: {
        Reverse<--, 1095_0;>}*/
        if (ptr == ((void *) 0)) {
            /*OUT: {
            Reverse<--, 1103_0; 1095_0;>}*/
            hypre_OutOfMemory(size);
            /*OUT: {
            Reverse<--, 1103_0; 1095_0;>}*/
        }
    } else {
        /*OUT: {
        Reverse<--, 1095_1;>}*/
        ptr = ((void *) 0);
    }
    /*OUT: {
    Reverse<--,>}*/
    return ptr;
}
/*OUT: {
Reverse<--,>}*/
void hypre_Free(char *ptr) {
    /*OUT: {
    Reverse<--,>}*/
    if (ptr) {
        /*OUT: {
        Reverse<--, 1115_0;>}*/
        free(ptr);
        /*OUT: {
        Reverse<--, 1115_0;>}*/
    }
}
const int testIter = 500;
double totalWallTime = 0.0;
double totalCPUTime = 0.0;
void test_Matvec();
void test_Relax();
void test_Axpy();
/*OUT: {
Reverse<--,>}*/
/*OUT: {
Reverse<--,>}*/
int main(int argc, char *argv[]) {
    /*OUT: {
    Reverse<--,>}*/
    struct timeval t0;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval t1;
    /*OUT: {
    Reverse<--,>}*/
    clock_t t0_cpu = 0;
    /*OUT: {
    Reverse<--,>}*/
    clock_t t1_cpu = 0;
    /*OUT: {
    Reverse<--,>}*/
    double del_wtime = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//------------ \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("// \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//  Sequoia Benchmark Version 1.0 \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("// \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//------------ \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre493;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre494;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre493 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre494 = &t0;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre494, _imopVarPre493);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    t0_cpu = clock();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    totalWallTime = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    totalCPUTime = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    test_Matvec();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//------------ \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("// \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//   MATVEC\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("// \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//------------ \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    totalWallTime = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    totalCPUTime = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    test_Relax();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//------------ \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("// \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//   Relax\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("// \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//------------ \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    totalWallTime = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    totalCPUTime = 0.0;
    /*OUT: {
    Reverse<--,>}*/
    test_Axpy();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//------------ \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("// \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//   Axpy\n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("// \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("//------------ \n");
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\nTotal Wall time = %f seconds. \n", totalWallTime);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    printf("\nTotal CPU  time = %f seconds. \n\n", totalCPUTime);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre497;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre498;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre497 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre498 = &t1;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre498, _imopVarPre497);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    t1_cpu = clock();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    del_wtime = (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*OUT: {
    Reverse<--,>}*/
    printf("\nTotal Wall time = %f seconds. \n", del_wtime);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    double _imopVarPre500;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre500 = ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*OUT: {
    Reverse<--,>}*/
    printf("\nTotal CPU  time = %f seconds. \n", _imopVarPre500);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    return 0;
}
void test_Matvec() {
    /*OUT: {
    Reverse<--,>}*/
    struct timeval t0;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval t1;
    /*OUT: {
    Reverse<--,>}*/
    clock_t t0_cpu = 0;
    /*OUT: {
    Reverse<--,>}*/
    clock_t t1_cpu = 0;
    /*OUT: {
    Reverse<--,>}*/
    hypre_CSRMatrix *A;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *x;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *y;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *sol;
    /*OUT: {
    Reverse<--,>}*/
    int nx;
    /*OUT: {
    Reverse<--,>}*/
    int ny;
    /*OUT: {
    Reverse<--,>}*/
    int nz;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    double *values;
    /*OUT: {
    Reverse<--,>}*/
    double *y_data;
    /*OUT: {
    Reverse<--,>}*/
    double *sol_data;
    /*OUT: {
    Reverse<--,>}*/
    double error;
    /*OUT: {
    Reverse<--,>}*/
    double diff;
    /*OUT: {
    Reverse<--,>}*/
    nx = 50;
    /*OUT: {
    Reverse<--,>}*/
    ny = 50;
    /*OUT: {
    Reverse<--,>}*/
    nz = 50;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre510;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre511;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre512;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre510 = (unsigned int) sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre511 = (unsigned int) 4;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre512 = hypre_CAlloc(_imopVarPre511, _imopVarPre510);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    values = ((double *) _imopVarPre512);
    /*OUT: {
    Reverse<--,>}*/
    values[0] = 6;
    /*OUT: {
    Reverse<--,>}*/
    values[1] = -1;
    /*OUT: {
    Reverse<--,>}*/
    values[2] = -1;
    /*OUT: {
    Reverse<--,>}*/
    values[3] = -1;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre15 **_imopVarPre516;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre15 **_imopVarPre517;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre15 **_imopVarPre518;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre14 *_imopVarPre519;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre516 = &sol;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre517 = &x;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre518 = &y;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre519 = GenerateSeqLaplacian(nx, ny, nz, values, _imopVarPre518, _imopVarPre517, _imopVarPre516);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    A = _imopVarPre519;
    /*OUT: {
    Reverse<--,>}*/
    hypre_SeqVectorSetConstantValues(x, 1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    hypre_SeqVectorSetConstantValues(y, 0);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre522;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre523;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre522 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre523 = &t0;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre523, _imopVarPre522);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    t0_cpu = clock();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1466_0;>}*/
    for (i = 0; i < testIter; ++i) {
        /*OUT: {
        Reverse<--, 1466_0;>}*/
        hypre_CSRMatrixMatvec(1, A, x, 0, y);
        /*OUT: {
        Reverse<--, 1466_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    void *_imopVarPre526;
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    struct timeval *_imopVarPre527;
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    _imopVarPre526 = ((void *) 0);
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    _imopVarPre527 = &t1;
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    gettimeofday(_imopVarPre527, _imopVarPre526);
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    t1_cpu = clock();
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    y_data = (y->data);
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    sol_data = (sol->data);
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    error = 0;
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    /*OUT: {
    Reverse<--, 1466_1;>}*/
    /*OUT: {
    Reverse<--, 1508_0; 1466_1;>}*/
    for (i = 0; i < nx * ny * nz; i++) {
        /*OUT: {
        Reverse<--, 1508_0; 1466_1;>}*/
        double _imopVarPre529;
        /*OUT: {
        Reverse<--, 1508_0; 1466_1;>}*/
        double _imopVarPre530;
        /*OUT: {
        Reverse<--, 1508_0; 1466_1;>}*/
        _imopVarPre529 = y_data[i] - sol_data[i];
        /*OUT: {
        Reverse<--, 1508_0; 1466_1;>}*/
        _imopVarPre530 = fabs(_imopVarPre529);
        /*OUT: {
        Reverse<--, 1508_0; 1466_1;>}*/
        /*OUT: {
        Reverse<--, 1508_0; 1466_1;>}*/
        diff = _imopVarPre530;
        /*OUT: {
        Reverse<--, 1508_0; 1466_1;>}*/
        if (diff > error) {
            /*OUT: {
            Reverse<--, 1524_0; 1508_0; 1466_1;>}*/
            error = diff;
        }
    }
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    if (error > 0) {
        /*OUT: {
        Reverse<--, 1527_0; 1508_1; 1466_1;>}*/
        printf(" \n Matvec: error: %e\n", error);
        /*OUT: {
        Reverse<--, 1527_0; 1508_1; 1466_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    char *_imopVarPre534;
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    _imopVarPre534 = (char *) values;
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    hypre_Free(_imopVarPre534);
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    (values = ((void *) 0));
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    hypre_CSRMatrixDestroy(A);
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    hypre_SeqVectorDestroy(x);
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    hypre_SeqVectorDestroy(y);
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
    hypre_SeqVectorDestroy(sol);
    /*OUT: {
    Reverse<--, 1508_1; 1466_1;>}*/
}
void test_Relax() {
    /*OUT: {
    Reverse<--,>}*/
    struct timeval t0;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval t1;
    /*OUT: {
    Reverse<--,>}*/
    clock_t t0_cpu = 0;
    /*OUT: {
    Reverse<--,>}*/
    clock_t t1_cpu = 0;
    /*OUT: {
    Reverse<--,>}*/
    hypre_CSRMatrix *A;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *x;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *y;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *sol;
    /*OUT: {
    Reverse<--,>}*/
    int nx;
    /*OUT: {
    Reverse<--,>}*/
    int ny;
    /*OUT: {
    Reverse<--,>}*/
    int nz;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    double *values;
    /*OUT: {
    Reverse<--,>}*/
    double *x_data;
    /*OUT: {
    Reverse<--,>}*/
    double diff;
    /*OUT: {
    Reverse<--,>}*/
    double error;
    /*OUT: {
    Reverse<--,>}*/
    nx = 50;
    /*OUT: {
    Reverse<--,>}*/
    ny = 50;
    /*OUT: {
    Reverse<--,>}*/
    nz = 50;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre544;
    /*OUT: {
    Reverse<--,>}*/
    unsigned int _imopVarPre545;
    /*OUT: {
    Reverse<--,>}*/
    char *_imopVarPre546;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre544 = (unsigned int) sizeof(double);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre545 = (unsigned int) 4;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre546 = hypre_CAlloc(_imopVarPre545, _imopVarPre544);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    values = ((double *) _imopVarPre546);
    /*OUT: {
    Reverse<--,>}*/
    values[0] = 6;
    /*OUT: {
    Reverse<--,>}*/
    values[1] = -1;
    /*OUT: {
    Reverse<--,>}*/
    values[2] = -1;
    /*OUT: {
    Reverse<--,>}*/
    values[3] = -1;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre15 **_imopVarPre550;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre15 **_imopVarPre551;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre15 **_imopVarPre552;
    /*OUT: {
    Reverse<--,>}*/
    struct stUn_imopVarPre14 *_imopVarPre553;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre550 = &sol;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre551 = &x;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre552 = &y;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre553 = GenerateSeqLaplacian(nx, ny, nz, values, _imopVarPre552, _imopVarPre551, _imopVarPre550);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    A = _imopVarPre553;
    /*OUT: {
    Reverse<--,>}*/
    hypre_SeqVectorSetConstantValues(x, 1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre556;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre557;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre556 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre557 = &t0;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre557, _imopVarPre556);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    t0_cpu = clock();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1657_0;>}*/
    for (i = 0; i < testIter; ++i) {
        /*OUT: {
        Reverse<--, 1657_0;>}*/
        hypre_BoomerAMGSeqRelax(A, sol, x);
        /*OUT: {
        Reverse<--, 1657_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    void *_imopVarPre560;
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    struct timeval *_imopVarPre561;
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    _imopVarPre560 = ((void *) 0);
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    _imopVarPre561 = &t1;
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    gettimeofday(_imopVarPre561, _imopVarPre560);
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    t1_cpu = clock();
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    x_data = (x->data);
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    error = 0;
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    /*OUT: {
    Reverse<--, 1657_1;>}*/
    /*OUT: {
    Reverse<--, 1696_0; 1657_1;>}*/
    for (i = 0; i < nx * ny * nz; i++) {
        /*OUT: {
        Reverse<--, 1696_0; 1657_1;>}*/
        double _imopVarPre563;
        /*OUT: {
        Reverse<--, 1696_0; 1657_1;>}*/
        double _imopVarPre564;
        /*OUT: {
        Reverse<--, 1696_0; 1657_1;>}*/
        _imopVarPre563 = x_data[i] - 1;
        /*OUT: {
        Reverse<--, 1696_0; 1657_1;>}*/
        _imopVarPre564 = fabs(_imopVarPre563);
        /*OUT: {
        Reverse<--, 1696_0; 1657_1;>}*/
        /*OUT: {
        Reverse<--, 1696_0; 1657_1;>}*/
        diff = _imopVarPre564;
        /*OUT: {
        Reverse<--, 1696_0; 1657_1;>}*/
        if (diff > error) {
            /*OUT: {
            Reverse<--, 1711_0; 1696_0; 1657_1;>}*/
            error = diff;
        }
    }
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    if (error > 0) {
        /*OUT: {
        Reverse<--, 1714_0; 1696_1; 1657_1;>}*/
        printf(" \n Relax: error: %e\n", error);
        /*OUT: {
        Reverse<--, 1714_0; 1696_1; 1657_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    char *_imopVarPre568;
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    _imopVarPre568 = (char *) values;
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    hypre_Free(_imopVarPre568);
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    (values = ((void *) 0));
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    hypre_CSRMatrixDestroy(A);
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    hypre_SeqVectorDestroy(x);
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    hypre_SeqVectorDestroy(y);
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
    hypre_SeqVectorDestroy(sol);
    /*OUT: {
    Reverse<--, 1696_1; 1657_1;>}*/
}
void test_Axpy() {
    /*OUT: {
    Reverse<--,>}*/
    struct timeval t0;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval t1;
    /*OUT: {
    Reverse<--,>}*/
    clock_t t0_cpu = 0;
    /*OUT: {
    Reverse<--,>}*/
    clock_t t1_cpu = 0;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *x;
    /*OUT: {
    Reverse<--,>}*/
    hypre_Vector *y;
    /*OUT: {
    Reverse<--,>}*/
    int nx;
    /*OUT: {
    Reverse<--,>}*/
    int i;
    /*OUT: {
    Reverse<--,>}*/
    double alpha = 0.5;
    /*OUT: {
    Reverse<--,>}*/
    double diff;
    /*OUT: {
    Reverse<--,>}*/
    double error;
    /*OUT: {
    Reverse<--,>}*/
    double *y_data;
    /*OUT: {
    Reverse<--,>}*/
    nx = 125000;
    /*OUT: {
    Reverse<--,>}*/
    x = hypre_SeqVectorCreate(nx);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    y = hypre_SeqVectorCreate(nx);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    hypre_SeqVectorInitialize(x);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    hypre_SeqVectorInitialize(y);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    hypre_SeqVectorSetConstantValues(x, 1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    hypre_SeqVectorSetConstantValues(y, 1);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    void *_imopVarPre571;
    /*OUT: {
    Reverse<--,>}*/
    struct timeval *_imopVarPre572;
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre571 = ((void *) 0);
    /*OUT: {
    Reverse<--,>}*/
    _imopVarPre572 = &t0;
    /*OUT: {
    Reverse<--,>}*/
    gettimeofday(_imopVarPre572, _imopVarPre571);
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    t0_cpu = clock();
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--,>}*/
    /*OUT: {
    Reverse<--, 1817_0;>}*/
    for (i = 0; i < testIter; ++i) {
        /*OUT: {
        Reverse<--, 1817_0;>}*/
        hypre_SeqVectorAxpy(alpha, x, y);
        /*OUT: {
        Reverse<--, 1817_0;>}*/
    }
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    void *_imopVarPre575;
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    struct timeval *_imopVarPre576;
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    _imopVarPre575 = ((void *) 0);
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    _imopVarPre576 = &t1;
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    gettimeofday(_imopVarPre576, _imopVarPre575);
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    t1_cpu = clock();
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    y_data = (y->data);
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    error = 0;
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    /*OUT: {
    Reverse<--, 1817_1;>}*/
    /*OUT: {
    Reverse<--, 1848_0; 1817_1;>}*/
    for (i = 0; i < nx; i++) {
        /*OUT: {
        Reverse<--, 1848_0; 1817_1;>}*/
        double _imopVarPre578;
        /*OUT: {
        Reverse<--, 1848_0; 1817_1;>}*/
        double _imopVarPre579;
        /*OUT: {
        Reverse<--, 1848_0; 1817_1;>}*/
        _imopVarPre578 = y_data[i] - 1 - 0.5 * (double) testIter;
        /*OUT: {
        Reverse<--, 1848_0; 1817_1;>}*/
        _imopVarPre579 = fabs(_imopVarPre578);
        /*OUT: {
        Reverse<--, 1848_0; 1817_1;>}*/
        /*OUT: {
        Reverse<--, 1848_0; 1817_1;>}*/
        diff = _imopVarPre579;
        /*OUT: {
        Reverse<--, 1848_0; 1817_1;>}*/
        if (diff > error) {
            /*OUT: {
            Reverse<--, 1863_0; 1848_0; 1817_1;>}*/
            error = diff;
        }
    }
    /*OUT: {
    Reverse<--, 1848_1; 1817_1;>}*/
    if (error > 0) {
        /*OUT: {
        Reverse<--, 1866_0; 1848_1; 1817_1;>}*/
        printf(" \n Axpy: error: %e\n", error);
        /*OUT: {
        Reverse<--, 1866_0; 1848_1; 1817_1;>}*/
    }
    /*OUT: {
    Reverse<--, 1848_1; 1817_1;>}*/
    totalWallTime += (double) (t1.tv_sec - t0.tv_sec) + (double) (t1.tv_usec - t0.tv_usec) / 1000000.0;
    /*OUT: {
    Reverse<--, 1848_1; 1817_1;>}*/
    totalCPUTime += ((double) (t1_cpu - t0_cpu)) / 1000000;
    /*OUT: {
    Reverse<--, 1848_1; 1817_1;>}*/
    hypre_SeqVectorDestroy(x);
    /*OUT: {
    Reverse<--, 1848_1; 1817_1;>}*/
    /*OUT: {
    Reverse<--, 1848_1; 1817_1;>}*/
    hypre_SeqVectorDestroy(y);
    /*OUT: {
    Reverse<--, 1848_1; 1817_1;>}*/
}
