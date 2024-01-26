.class public Lcom/google/android/gms/internal/firebase_ml/zzir;
.super Lcom/google/android/gms/internal/firebase_ml/zzez;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzez;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzez;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzew;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzew<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzez;->zza(Lcom/google/android/gms/internal/firebase_ml/zzew;)V

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzis;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzir;->zza(Lcom/google/android/gms/internal/firebase_ml/zzis;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/firebase_ml/zzis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzis<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
