.class public final synthetic Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/effect/FrameProcessingTask;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/effect/ExternalTextureManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/effect/ExternalTextureManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/GlEffectsFrameProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/effect/ExternalTextureManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->signalEndOfInput()V

    return-void
.end method
