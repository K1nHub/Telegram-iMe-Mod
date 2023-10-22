.class public Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;
.super Ljava/lang/Object;


# instance fields
.field private final zzauc:Ljava/lang/String;

.field private final zzawg:Ljava/lang/String;

.field private final zzawh:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 13
    :cond_1
    instance-of v2, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    if-nez v2, :cond_2

    return v0

    .line 15
    :cond_2
    check-cast p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    .line 16
    iget-object v2, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzauc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzauc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawg:Ljava/lang/String;

    .line 17
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawh:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawh:Ljava/lang/String;

    .line 18
    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getAssetFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawh:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawg:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzauc:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzauc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawg:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawh:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;
    .locals 2

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzjw()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzju()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzly()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    move-result-object p1

    .line 24
    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawg:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawh:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;->zzba(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    move-result-object p1

    .line 26
    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;->zzamp:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;

    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zzawh:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;->zzamo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;

    goto :goto_0

    .line 30
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;->zzamn:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;

    .line 31
    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    return-object p1
.end method
