.class public final Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;
.super Ljava/lang/Object;
.source "ScaleToFitTransformation.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/MatrixTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation$Builder;
    }
.end annotation


# instance fields
.field private adjustedTransformationMatrix:Landroid/graphics/Matrix;

.field private final transformationMatrix:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>(FFF)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;->transformationMatrix:Landroid/graphics/Matrix;

    .line 101
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 102
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    return-void
.end method

.method synthetic constructor <init>(FFFLcom/google/android/exoplayer2/effect/ScaleToFitTransformation$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public configure(II)Landroid/util/Pair;
    .locals 12
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

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "inputWidth must be positive"

    .line 107
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "inputHeight must be positive"

    .line 108
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 110
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;->adjustedTransformationMatrix:Landroid/graphics/Matrix;

    .line 112
    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_2
    int-to-float p1, p1

    int-to-float p2, p2

    div-float v2, p1, p2

    .line 122
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;->adjustedTransformationMatrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 123
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;->adjustedTransformationMatrix:Landroid/graphics/Matrix;

    div-float v2, v4, v2

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x4

    new-array v3, v2, [[F

    new-array v5, v2, [F

    .line 126
    fill-array-data v5, :array_0

    aput-object v5, v3, v1

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    aput-object v5, v3, v0

    const/4 v5, 0x2

    new-array v6, v2, [F

    fill-array-data v6, :array_2

    aput-object v6, v3, v5

    const/4 v5, 0x3

    new-array v6, v2, [F

    fill-array-data v6, :array_3

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v1

    move v7, v6

    move v8, v7

    move v6, v5

    :goto_2
    if-ge v9, v2, :cond_3

    .line 131
    aget-object v10, v3, v9

    .line 132
    iget-object v11, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;->adjustedTransformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 133
    aget v11, v10, v1

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 134
    aget v11, v10, v1

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 135
    aget v11, v10, v0

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 136
    aget v10, v10, v0

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    sub-float/2addr v5, v7

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    sub-float/2addr v6, v8

    div-float/2addr v6, v0

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;->adjustedTransformationMatrix:Landroid/graphics/Matrix;

    div-float v1, v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr p1, v5

    .line 142
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    mul-float/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic getGlMatrixArray(J)[F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/MatrixTransformation$-CC;->$default$getGlMatrixArray(Lcom/google/android/exoplayer2/effect/MatrixTransformation;J)[F

    move-result-object p1

    return-object p1
.end method

.method public getMatrix(J)Landroid/graphics/Matrix;
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/ScaleToFitTransformation;->adjustedTransformationMatrix:Landroid/graphics/Matrix;

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
