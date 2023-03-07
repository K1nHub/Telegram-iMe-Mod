.class public Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;
.super Ljava/lang/Object;


# instance fields
.field private final zzazz:Z

.field private final zzbbl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbdp:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 14
    :cond_1
    check-cast p1, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;

    .line 15
    iget-object v1, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzbbl:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->getHintedLanguages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzbdp:I

    iget v3, p1, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzbdp:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzazz:Z

    iget-boolean p1, p1, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzazz:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getHintedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzbbl:Ljava/util/List;

    return-object v0
.end method

.method public getModelType()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzbdp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzbbl:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzbdp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzazz:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isEnforceCertFingerprintMatch()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->zzazz:Z

    return v0
.end method
