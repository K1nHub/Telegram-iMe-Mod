.class public interface abstract Lcom/google/android/exoplayer2/effect/ColorLut;
.super Ljava/lang/Object;
.source "ColorLut.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlEffect;


# virtual methods
.method public abstract getLength(J)I
.end method

.method public abstract getLutTextureId(J)I
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation
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
