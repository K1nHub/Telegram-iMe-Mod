.class public interface abstract Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
.super Ljava/lang/Object;
.source "GlTextureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;,
        Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;,
        Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;
    }
.end annotation


# virtual methods
.method public abstract queueInputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation
.end method

.method public abstract releaseOutputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;)V
.end method

.method public abstract setErrorListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;)V
.end method

.method public abstract setInputListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;)V
.end method

.method public abstract setOutputListener(Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;)V
.end method

.method public abstract signalEndOfCurrentInputStream()V
.end method
