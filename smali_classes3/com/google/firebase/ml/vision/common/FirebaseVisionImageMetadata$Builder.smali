.class public Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private format:I

.field private height:I

.field private rotation:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;
    .locals 7

    .line 14
    new-instance v6, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    iget v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->width:I

    iget v2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->height:I

    iget v3, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->rotation:I

    iget v4, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->format:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;-><init>(IIIILcom/google/firebase/ml/vision/common/zza;)V

    return-object v6
.end method

.method public setFormat(I)Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;
    .locals 1

    const v0, 0x32315659

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 11
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 12
    iput p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->format:I

    return-object p0
.end method

.method public setHeight(I)Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Image buffer height should be positive."

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 6
    iput p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->height:I

    return-object p0
.end method

.method public setRotation(I)Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 9
    iput p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->rotation:I

    return-object p0
.end method

.method public setWidth(I)Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Image buffer width should be positive."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    iput p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->width:I

    return-object p0
.end method
