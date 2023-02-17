.class public Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;
.super Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.source "LibopusAudioRenderer.java"


# static fields
.field private static final DEFAULT_INPUT_BUFFER_SIZE:I = 0x1680

.field private static final NUM_BUFFERS:I = 0x10


# instance fields
.field private channelCount:I

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;
        }
    .end annotation

    .line 109
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1680

    const/16 v4, 0x1680

    .line 110
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;

    const/16 v2, 0x10

    const/16 v3, 0x10

    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;-><init>(IIILjava/util/List;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)V

    .line 117
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->getChannelCount()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;->channelCount:I

    .line 118
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;->sampleRate:I

    return-object v0
.end method

.method protected getOutputFormat()Lcom/google/android/exoplayer2/Format;
    .locals 12

    .line 124
    iget v5, p0, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;->channelCount:I

    iget v6, p0, Lcom/google/android/exoplayer2/ext/opus/LibopusAudioRenderer;->sampleRate:I

    const/4 v0, 0x0

    const-string v1, "audio/raw"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method protected supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .line 89
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    .line 91
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->matchesExpectedExoMediaCryptoType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 93
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/BaseRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 94
    :goto_1
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 96
    :cond_2
    iget p2, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->supportsOutput(II)Z

    move-result p2

    if-nez p2, :cond_3

    return v2

    :cond_3
    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x4

    return p1
.end method
