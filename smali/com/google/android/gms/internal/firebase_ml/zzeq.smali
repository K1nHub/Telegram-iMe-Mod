.class final Lcom/google/android/gms/internal/firebase_ml/zzeq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzfq;


# instance fields
.field private final synthetic zzsp:Lcom/google/android/gms/internal/firebase_ml/zzfq;

.field private final synthetic zzsq:Lcom/google/android/gms/internal/firebase_ml/zzfk;

.field private final synthetic zzsr:Lcom/google/android/gms/internal/firebase_ml/zzer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzer;Lcom/google/android/gms/internal/firebase_ml/zzfq;Lcom/google/android/gms/internal/firebase_ml/zzfk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzeq;->zzsr:Lcom/google/android/gms/internal/firebase_ml/zzer;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzeq;->zzsp:Lcom/google/android/gms/internal/firebase_ml/zzfq;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzeq;->zzsq:Lcom/google/android/gms/internal/firebase_ml/zzfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzfp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzeq;->zzsp:Lcom/google/android/gms/internal/firebase_ml/zzfq;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzfq;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfp;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzfp;->zzfc()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzeq;->zzsq:Lcom/google/android/gms/internal/firebase_ml/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzez()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzeq;->zzsr:Lcom/google/android/gms/internal/firebase_ml/zzer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzer;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzfp;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
