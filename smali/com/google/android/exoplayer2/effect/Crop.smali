.class public final Lcom/google/android/exoplayer2/effect/Crop;
.super Ljava/lang/Object;
.source "Crop.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/MatrixTransformation;


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F

.field private transformationMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v2, p2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 54
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "right value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " should be greater than left value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    cmpl-float v2, p4, p3

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 56
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "top value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " should be greater than bottom value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 58
    iput p1, p0, Lcom/google/android/exoplayer2/effect/Crop;->left:F

    .line 59
    iput p2, p0, Lcom/google/android/exoplayer2/effect/Crop;->right:F

    .line 60
    iput p3, p0, Lcom/google/android/exoplayer2/effect/Crop;->bottom:F

    .line 61
    iput p4, p0, Lcom/google/android/exoplayer2/effect/Crop;->top:F

    .line 63
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/Crop;->transformationMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public configure(II)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "inputWidth must be positive"

    .line 68
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "inputHeight must be positive"

    .line 69
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/effect/Crop;->transformationMatrix:Landroid/graphics/Matrix;

    .line 72
    iget v1, p0, Lcom/google/android/exoplayer2/effect/Crop;->left:F

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v2

    if-nez v4, :cond_2

    iget v4, p0, Lcom/google/android/exoplayer2/effect/Crop;->right:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_2

    iget v4, p0, Lcom/google/android/exoplayer2/effect/Crop;->bottom:F

    cmpl-float v2, v4, v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/effect/Crop;->top:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 77
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/effect/Crop;->right:F

    sub-float v4, v2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 78
    iget v6, p0, Lcom/google/android/exoplayer2/effect/Crop;->top:F

    iget v7, p0, Lcom/google/android/exoplayer2/effect/Crop;->bottom:F

    sub-float v8, v6, v7

    div-float/2addr v8, v5

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v7, v6

    div-float/2addr v7, v5

    neg-float v1, v1

    neg-float v2, v7

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/Crop;->transformationMatrix:Landroid/graphics/Matrix;

    div-float v1, v3, v4

    div-float/2addr v3, v8

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float p1, p1

    mul-float p1, p1, v4

    .line 85
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    mul-float p2, p2, v8

    .line 86
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getGlMatrixArray(J)[F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/MatrixTransformation$-CC;->$default$getGlMatrixArray(Lcom/google/android/exoplayer2/effect/MatrixTransformation;J)[F

    move-result-object p1

    return-object p1
.end method

.method public getMatrix(J)Landroid/graphics/Matrix;
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/Crop;->transformationMatrix:Landroid/graphics/Matrix;

    const-string p2, "configure must be called first"

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    return-object p1
.end method

.method public bridge synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation$-CC;->$default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation$-CC;->$default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method
