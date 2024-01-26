.class public Lcom/google/android/exoplayer2/effect/Contrast;
.super Ljava/lang/Object;
.source "Contrast.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlEffect;


# instance fields
.field public final contrast:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Contrast needs to be in the interval [-1, 1]."

    .line 37
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 38
    iput p1, p0, Lcom/google/android/exoplayer2/effect/Contrast;->contrast:F

    return-void
.end method


# virtual methods
.method public bridge synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/Contrast;->toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method

.method public toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/effect/ContrastProcessor;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/exoplayer2/effect/ContrastProcessor;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/effect/Contrast;Z)V

    return-object v0
.end method
