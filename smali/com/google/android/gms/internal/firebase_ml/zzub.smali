.class final Lcom/google/android/gms/internal/firebase_ml/zzub;
.super Lcom/google/android/gms/internal/firebase_ml/zztz;


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private final zzbpc:Z

.field private zzbpd:I

.field private zzbpe:I

.field private zzbpf:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zztz;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzuc;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpf:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->buffer:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->limit:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->pos:I

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpe:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpc:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/firebase_ml/zzuc;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_ml/zzub;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final zzcp(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_ml/zzve;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zztz;->zzqk()I

    move-result v0

    add-int/2addr p1, v0

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpf:I

    if-gt p1, v0, :cond_1

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpf:I

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->limit:I

    .line 18
    iget v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpe:I

    sub-int v2, v1, v2

    if-le v2, p1, :cond_0

    sub-int/2addr v2, p1

    .line 20
    iput v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpd:I

    sub-int/2addr v1, v2

    .line 21
    iput v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->limit:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpd:I

    :goto_0
    return v0

    .line 14
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzrt()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzve;->zzru()Lcom/google/android/gms/internal/firebase_ml/zzve;

    move-result-object p1

    throw p1
.end method

.method public final zzqk()I
    .locals 2

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzub;->zzbpe:I

    sub-int/2addr v0, v1

    return v0
.end method
