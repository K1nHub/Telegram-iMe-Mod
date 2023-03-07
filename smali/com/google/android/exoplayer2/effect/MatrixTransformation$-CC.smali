.class public final synthetic Lcom/google/android/exoplayer2/effect/MatrixTransformation$-CC;
.super Ljava/lang/Object;
.source "MatrixTransformation.java"


# direct methods
.method public static $default$getGlMatrixArray(Lcom/google/android/exoplayer2/effect/MatrixTransformation;J)[F
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/effect/MatrixTransformation;

    .line 38
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/MatrixTransformation;->getMatrix(J)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/effect/MatrixUtils;->getGlMatrixArray(Landroid/graphics/Matrix;)[F

    move-result-object p1

    return-object p1
.end method
