.class public interface abstract Lcom/google/android/exoplayer2/effect/GlMatrixTransformation;
.super Ljava/lang/Object;
.source "GlMatrixTransformation.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlEffect;


# virtual methods
.method public abstract configure(II)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGlMatrixArray(J)[F
.end method

.method public bridge abstract synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation
.end method

.method public abstract toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation
.end method
