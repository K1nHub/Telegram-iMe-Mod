.class public final Lcom/google/android/gms/internal/firebase_ml/zzfn;
.super Ljava/lang/Object;


# instance fields
.field private final zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

.field private final zzup:Lcom/google/android/gms/internal/firebase_ml/zzfm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzft;Lcom/google/android/gms/internal/firebase_ml/zzfm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzfn;->zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzfn;->zzup:Lcom/google/android/gms/internal/firebase_ml/zzfm;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzfc;Lcom/google/android/gms/internal/firebase_ml/zzff;)Lcom/google/android/gms/internal/firebase_ml/zzfk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfn;->zzse:Lcom/google/android/gms/internal/firebase_ml/zzft;

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzfk;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/firebase_ml/zzfk;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzft;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzfn;->zzup:Lcom/google/android/gms/internal/firebase_ml/zzfm;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzfm;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfk;)V

    .line 10
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    .line 11
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzfc;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/firebase_ml/zzfk;->zza(Lcom/google/android/gms/internal/firebase_ml/zzff;)Lcom/google/android/gms/internal/firebase_ml/zzfk;

    :cond_1
    return-object v1
.end method
