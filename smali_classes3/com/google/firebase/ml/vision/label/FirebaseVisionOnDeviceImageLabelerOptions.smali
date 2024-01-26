.class public Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;
.super Ljava/lang/Object;


# instance fields
.field private final zzazi:F


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 9
    :cond_1
    check-cast p1, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;

    .line 10
    iget v1, p0, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;->zzazi:F

    iget p1, p1, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;->zzazi:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getConfidenceThreshold()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;->zzazi:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;->zzazi:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zznr()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;
    .locals 2

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;->zzkj()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad$zza;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;->zzazi:F

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad$zza;->zzr(F)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad$zza;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;

    return-object v0
.end method
