.class final Lcom/google/android/gms/internal/firebase_ml/zzuk;
.super Lcom/google/android/gms/internal/firebase_ml/zzul;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzul<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzul;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/firebase_ml/zzuj;Lcom/google/android/gms/internal/firebase_ml/zzwe;I)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzuj;->zza(Lcom/google/android/gms/internal/firebase_ml/zzwe;I)Lcom/google/android/gms/internal/firebase_ml/zzuu$zzf;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/firebase_ml/zzyj;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzyj;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zze(Lcom/google/android/gms/internal/firebase_ml/zzwe;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    return p1
.end method

.method final zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_ml/zzum<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    return-object p1
.end method

.method final zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_ml/zzum<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzrr()Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p1

    return-object p1
.end method

.method final zzq(Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzul;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzqa()V

    return-void
.end method
