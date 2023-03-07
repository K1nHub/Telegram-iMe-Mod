.class public final Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;
.super Ljava/lang/Object;
.source "ScaleToFitTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private rotationDegrees:F

.field private scaleX:F

.field private scaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    iput v0, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->scaleX:F

    .line 50
    iput v0, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->scaleY:F

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->rotationDegrees:F

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;
    .locals 5

    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;

    iget v1, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->scaleX:F

    iget v2, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->scaleY:F

    iget v3, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->rotationDegrees:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;-><init>(FFFLcom/google/android/exoplayer2/effect/ScaleToFitTransformation$1;)V

    return-object v0
.end method

.method public setRotationDegrees(F)Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;
    .locals 0

    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->rotationDegrees:F

    return-object p0
.end method

.method public setScale(FF)Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;
    .locals 0

    .line 65
    iput p1, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->scaleX:F

    .line 66
    iput p2, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;->scaleY:F

    return-object p0
.end method
