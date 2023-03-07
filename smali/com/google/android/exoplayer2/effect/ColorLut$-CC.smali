.class public final synthetic Lcom/google/android/exoplayer2/effect/ColorLut$-CC;
.super Ljava/lang/Object;
.source "ColorLut.java"


# direct methods
.method public static bridge synthetic $default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/ColorLut;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/effect/ColorLut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 28
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/ColorLut;->toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method

.method public static $default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/ColorLut;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/effect/ColorLut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/exoplayer2/effect/ColorLutProcessor;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/effect/ColorLut;Z)V

    return-object v0
.end method
