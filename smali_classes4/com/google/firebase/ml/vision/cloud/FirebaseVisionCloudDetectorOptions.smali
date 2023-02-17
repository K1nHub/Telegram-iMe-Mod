.class public Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzazx:I

.field private final zzazy:I

.field private final zzazz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions$Builder;-><init>()V

    .line 19
    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions$Builder;->build()Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazx:I

    .line 3
    iput p2, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazy:I

    .line 4
    iput-boolean p3, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazz:Z

    return-void
.end method

.method synthetic constructor <init>(IIZLcom/google/firebase/ml/vision/cloud/zza;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 14
    :cond_1
    check-cast p1, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;

    .line 15
    iget v1, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazx:I

    iget v3, p1, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazx:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazy:I

    iget v3, p1, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazy:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazz:Z

    iget-boolean p1, p1, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazz:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getMaxResults()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazx:I

    return v0
.end method

.method public getModelType()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazy:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget v1, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazz:Z

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

    .line 8
    iget-boolean v0, p0, Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;->zzazz:Z

    return v0
.end method
