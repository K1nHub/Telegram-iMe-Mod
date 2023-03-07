.class public final synthetic Lcom/google/android/exoplayer2/effect/GlMatrixTransformation$-CC;
.super Ljava/lang/Object;
.source "GlMatrixTransformation.java"


# direct methods
.method public static $default$configure(Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;II)Landroid/util/Pair;
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 34
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;->toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method

.method public static $default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .locals 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 56
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;->create(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    move-result-object p1

    return-object p1
.end method
