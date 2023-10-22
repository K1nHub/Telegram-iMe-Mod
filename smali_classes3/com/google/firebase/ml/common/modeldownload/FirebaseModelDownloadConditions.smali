.class public Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;
.super Ljava/lang/Object;


# instance fields
.field private final zzawm:Z

.field private final zzawn:Z

.field private final zzawo:Z


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 13
    :cond_1
    check-cast p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    .line 14
    iget-boolean v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawm:Z

    iget-boolean v3, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawm:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawo:Z

    iget-boolean v3, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawo:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawn:Z

    iget-boolean p1, p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawn:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    iget-boolean v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawo:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChargingRequired()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawm:Z

    return v0
.end method

.method public isDeviceIdleRequired()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawo:Z

    return v0
.end method

.method public isWifiRequired()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->zzawn:Z

    return v0
.end method
