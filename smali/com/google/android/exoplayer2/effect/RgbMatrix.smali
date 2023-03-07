.class public interface abstract Lcom/google/android/exoplayer2/effect/RgbMatrix;
.super Ljava/lang/Object;
.source "RgbMatrix.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlEffect;


# virtual methods
.method public abstract getMatrix(JZ)[F
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
