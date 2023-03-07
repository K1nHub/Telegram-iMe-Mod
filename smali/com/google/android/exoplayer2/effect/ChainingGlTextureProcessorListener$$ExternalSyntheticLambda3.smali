.class public final synthetic Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/effect/FrameProcessingTask;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/effect/GlTextureProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->signalEndOfCurrentInputStream()V

    return-void
.end method
