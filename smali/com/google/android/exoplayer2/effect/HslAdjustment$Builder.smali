.class public final Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;
.super Ljava/lang/Object;
.source "HslAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/effect/HslAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private hueAdjustment:F

.field private lightnessAdjustment:F

.field private saturationAdjustment:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustHue(F)Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 48
    iput p1, p0, Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;->hueAdjustment:F

    return-object p0
.end method

.method public adjustLightness(F)Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;
    .locals 3

    const/high16 v0, -0x3d380000    # -100.0f

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can adjust the lightness by only 100 in either direction, but provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 89
    iput p1, p0, Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;->lightnessAdjustment:F

    return-object p0
.end method

.method public adjustSaturation(F)Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;
    .locals 3

    const/high16 v0, -0x3d380000    # -100.0f

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can adjust the saturation by only 100 in either direction, but provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    iput p1, p0, Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;->saturationAdjustment:F

    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/effect/HslAdjustment;
    .locals 5

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/effect/HslAdjustment;

    iget v1, p0, Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;->hueAdjustment:F

    iget v2, p0, Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;->saturationAdjustment:F

    iget v3, p0, Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;->lightnessAdjustment:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/effect/HslAdjustment;-><init>(FFFLcom/google/android/exoplayer2/effect/HslAdjustment$1;)V

    return-object v0
.end method
