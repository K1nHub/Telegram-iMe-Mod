.class public interface abstract Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;
.super Ljava/lang/Object;
.source "GlTextureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutputListener"
.end annotation


# virtual methods
.method public abstract onCurrentOutputStreamEnded()V
.end method

.method public abstract onOutputFrameAvailable(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
.end method
