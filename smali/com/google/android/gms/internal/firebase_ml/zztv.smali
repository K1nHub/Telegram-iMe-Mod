.class final Lcom/google/android/gms/internal/firebase_ml/zztv;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zzboy:Lcom/google/android/gms/internal/firebase_ml/zzue;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zztv;->buffer:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzg([B)Lcom/google/android/gms/internal/firebase_ml/zzue;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zztv;->zzboy:Lcom/google/android/gms/internal/firebase_ml/zzue;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/firebase_ml/zztq;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zztv;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzqi()Lcom/google/android/gms/internal/firebase_ml/zztn;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zztv;->zzboy:Lcom/google/android/gms/internal/firebase_ml/zzue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzue;->zzqm()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zztx;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zztv;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zztx;-><init>([B)V

    return-object v0
.end method

.method public final zzqj()Lcom/google/android/gms/internal/firebase_ml/zzue;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zztv;->zzboy:Lcom/google/android/gms/internal/firebase_ml/zzue;

    return-object v0
.end method
