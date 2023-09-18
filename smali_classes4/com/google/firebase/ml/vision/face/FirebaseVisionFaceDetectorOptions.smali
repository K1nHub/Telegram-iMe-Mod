.class public Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;
.super Ljava/lang/Object;


# instance fields
.field private final trackingEnabled:Z

.field private final zzbbz:I

.field private final zzbca:I

.field private final zzbcb:I

.field private final zzbcc:I

.field private final zzbcd:F


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 19
    :cond_1
    check-cast p1, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;

    .line 20
    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcd:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcd:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbbz:I

    iget v3, p1, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbbz:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbca:I

    iget v3, p1, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbca:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcc:I

    iget v3, p1, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcc:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->trackingEnabled:Z

    iget-boolean v3, p1, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->trackingEnabled:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcb:I

    iget p1, p1, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcb:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getClassificationMode()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcb:I

    return v0
.end method

.method public getContourMode()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbca:I

    return v0
.end method

.method public getLandmarkMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbbz:I

    return v0
.end method

.method public getMinFaceSize()F
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcd:F

    return v0
.end method

.method public getPerformanceMode()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcc:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcd:F

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbbz:I

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbca:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcc:I

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->trackingEnabled:Z

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcb:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isTrackingEnabled()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->trackingEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FaceDetectorOptions"

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkm;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbbz:I

    const-string v2, "landmarkMode"

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbca:I

    const-string v2, "contourMode"

    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcb:I

    const-string v2, "classificationMode"

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcc:I

    const-string v2, "performanceMode"

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->trackingEnabled:Z

    const-string v2, "trackingEnabled"

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcd:F

    const-string v2, "minFaceSize"

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzko;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zznq()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr;
    .locals 4

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr;->zzji()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;

    move-result-object v0

    .line 39
    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbbz:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 42
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzd;->zzajd:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzd;

    goto :goto_0

    .line 41
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzd;->zzajf:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzd;

    goto :goto_0

    .line 40
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzd;->zzaje:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzd;

    .line 43
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzd;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;

    move-result-object v0

    .line 44
    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcb:I

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzb;->zzaiv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzb;

    goto :goto_1

    .line 46
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzb;->zzaix:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzb;

    goto :goto_1

    .line 45
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzb;->zzaiw:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzb;

    .line 48
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;

    move-result-object v0

    .line 49
    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcc:I

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zze;->zzajh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zze;

    goto :goto_2

    .line 51
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zze;->zzajj:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zze;

    goto :goto_2

    .line 50
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zze;->zzaji:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zze;

    .line 53
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zze;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;

    move-result-object v0

    .line 54
    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbca:I

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_6

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzc;->zzaiz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzc;

    goto :goto_3

    .line 56
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzc;->zzajb:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzc;

    goto :goto_3

    .line 55
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzc;->zzaja:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzc;

    .line 58
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zzc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->isTrackingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;->zzk(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceDetectorOptions;->zzbcd:F

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;->zzm(F)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr$zza;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzr;

    return-object v0
.end method
