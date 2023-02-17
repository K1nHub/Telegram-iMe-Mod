.class Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerRenderersFactory;
.super Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioVisualizerRenderersFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/VideoPlayer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/VideoPlayer;Landroid/content/Context;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerRenderersFactory;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    .line 698
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;ZZ[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 703
    new-instance v0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;

    new-instance v1, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;

    move-object v13, p0

    iget-object v2, v13, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerRenderersFactory;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;-><init>(Lorg/telegram/ui/Components/VideoPlayer;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;-><init>(Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;)V

    const/4 v1, 0x1

    new-array v9, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    aput-object v0, v9, v1

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 704
    invoke-super/range {v2 .. v12}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V

    return-void
.end method
