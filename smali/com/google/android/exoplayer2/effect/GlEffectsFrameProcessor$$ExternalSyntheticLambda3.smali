.class public final synthetic Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlTextureProcessor$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    return-void
.end method


# virtual methods
.method public final onFrameProcessingError(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;->onFrameProcessingError(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V

    return-void
.end method
