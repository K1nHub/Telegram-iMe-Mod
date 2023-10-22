.class public Lorg/telegram/messenger/video/AudioRecoder;
.super Ljava/lang/Object;
.source "AudioRecoder.java"


# static fields
.field private static final BYTES_PER_SHORT:I = 0x2


# instance fields
.field private final DEFAULT_BIT_RATE:I

.field private final DEFAULT_CHANNEL_COUNT:I

.field private final DEFAULT_SAMPLE_RATE:I

.field private final TIMEOUT_USEC:I

.field audioInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/audio_input/AudioInput;",
            ">;"
        }
    .end annotation
.end field

.field private channelCount:I

.field private decoderDone:Z

.field private final encoder:Landroid/media/MediaCodec;

.field private encoderDone:Z

.field private encoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private encoderInputDone:Z

.field private encoderInputPresentationTimeUs:J

.field private final encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private encoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field private extractorDone:Z

.field public final format:Landroid/media/MediaFormat;

.field mainInput:Lorg/telegram/messenger/video/audio_input/AudioInput;

.field private pendingAudioDecoderOutputBufferIndex:I

.field private sampleRate:I

.field private totalDurationUs:J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/audio_input/AudioInput;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9c4

    .line 23
    iput v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->TIMEOUT_USEC:I

    const v0, 0xac44

    .line 24
    iput v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->DEFAULT_SAMPLE_RATE:I

    const v1, 0x1f400

    .line 25
    iput v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->DEFAULT_BIT_RATE:I

    const/4 v1, 0x2

    .line 26
    iput v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->DEFAULT_CHANNEL_COUNT:I

    .line 30
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    .line 35
    iput-boolean v2, p0, Lorg/telegram/messenger/video/AudioRecoder;->extractorDone:Z

    .line 36
    iput-boolean v2, p0, Lorg/telegram/messenger/video/AudioRecoder;->decoderDone:Z

    .line 37
    iput-boolean v2, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputDone:Z

    const/4 v3, -0x1

    .line 39
    iput v3, p0, Lorg/telegram/messenger/video/AudioRecoder;->pendingAudioDecoderOutputBufferIndex:I

    .line 41
    iput v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->sampleRate:I

    .line 42
    iput v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->channelCount:I

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputPresentationTimeUs:J

    .line 53
    iput-object p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->audioInputs:Ljava/util/ArrayList;

    .line 54
    iput-wide p2, p0, Lorg/telegram/messenger/video/AudioRecoder;->totalDurationUs:J

    .line 55
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/video/audio_input/AudioInput;

    iput-object p2, p0, Lorg/telegram/messenger/video/AudioRecoder;->mainInput:Lorg/telegram/messenger/video/audio_input/AudioInput;

    move p2, v2

    .line 57
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 58
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/video/audio_input/AudioInput;

    invoke-virtual {p3}, Lorg/telegram/messenger/video/audio_input/AudioInput;->getSampleRate()I

    move-result p3

    iget v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->sampleRate:I

    if-le p3, v0, :cond_0

    .line 59
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/video/audio_input/AudioInput;

    invoke-virtual {p3}, Lorg/telegram/messenger/video/audio_input/AudioInput;->getSampleRate()I

    move-result p3

    iput p3, p0, Lorg/telegram/messenger/video/AudioRecoder;->sampleRate:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "audio/mp4a-latm"

    .line 63
    invoke-static {p2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    .line 64
    iget v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->sampleRate:I

    iget v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->channelCount:I

    invoke-static {p2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/high16 v0, 0x10000

    const-string v1, "bitrate"

    .line 68
    invoke-virtual {p2, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p3, p2, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 70
    invoke-virtual {p3}, Landroid/media/MediaCodec;->start()V

    .line 72
    invoke-virtual {p3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {p3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 75
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_2

    .line 76
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/video/audio_input/AudioInput;

    iget p3, p0, Lorg/telegram/messenger/video/AudioRecoder;->sampleRate:I

    iget v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->channelCount:I

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/video/audio_input/AudioInput;->start(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private isInputAvailable()Z
    .locals 4

    .line 176
    iget-wide v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputPresentationTimeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/video/AudioRecoder;->totalDurationUs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->mainInput:Lorg/telegram/messenger/video/audio_input/AudioInput;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/audio_input/AudioInput;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method private mix(Ljava/nio/ShortBuffer;)V
    .locals 8

    .line 151
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 154
    invoke-direct {p0}, Lorg/telegram/messenger/video/AudioRecoder;->isInputAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    move v3, v1

    move v4, v3

    move v5, v4

    .line 159
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/video/AudioRecoder;->audioInputs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 160
    invoke-direct {p0}, Lorg/telegram/messenger/video/AudioRecoder;->isInputAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 162
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/video/AudioRecoder;->audioInputs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/video/audio_input/AudioInput;

    .line 163
    invoke-virtual {v6}, Lorg/telegram/messenger/video/audio_input/AudioInput;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 164
    invoke-virtual {v6}, Lorg/telegram/messenger/video/audio_input/AudioInput;->getNext()S

    move-result v4

    int-to-float v4, v4

    .line 166
    invoke-virtual {v6}, Lorg/telegram/messenger/video/audio_input/AudioInput;->getVolume()F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    .line 167
    iget-object v6, p0, Lorg/telegram/messenger/video/AudioRecoder;->audioInputs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int/2addr v4, v6

    add-int/2addr v5, v4

    int-to-short v5, v5

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 171
    invoke-virtual {p1, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    const/4 v0, 0x0

    .line 83
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->audioInputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->audioInputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/audio_input/AudioInput;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/audio_input/AudioInput;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public step(Lorg/telegram/messenger/video/MP4Builder;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputDone:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x9c4

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_2

    .line 95
    invoke-direct {p0}, Lorg/telegram/messenger/video/AudioRecoder;->isInputAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_0

    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 103
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/AudioRecoder;->mix(Ljava/nio/ShortBuffer;)V

    .line 105
    iget-object v4, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    .line 107
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    iget-wide v8, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputPresentationTimeUs:J

    const/4 v10, 0x1

    .line 105
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 110
    iget-wide v4, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputPresentationTimeUs:J

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    iget v6, p0, Lorg/telegram/messenger/video/AudioRecoder;->sampleRate:I

    iget v7, p0, Lorg/telegram/messenger/video/AudioRecoder;->channelCount:I

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/video/AudioConversions;->shortsToUs(III)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputPresentationTimeUs:J

    goto :goto_1

    .line 112
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 113
    iput-boolean v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputDone:Z

    .line 118
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    if-nez v0, :cond_9

    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 121
    iget-boolean p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    return p1

    :cond_3
    const/4 v2, -0x3

    if-ne v0, v2, :cond_4

    .line 124
    iget-object v2, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBuffers:[Ljava/nio/ByteBuffer;

    :cond_4
    const/4 v2, -0x2

    if-ne v0, v2, :cond_5

    .line 127
    iget-boolean p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    return p1

    .line 130
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v0

    .line 132
    iget-object v3, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 134
    iget-object p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 135
    iget-boolean p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    return p1

    .line 138
    :cond_6
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_7

    .line 139
    invoke-virtual {p1, p2, v2, v3, v5}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    .line 141
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    .line 142
    iput-boolean v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    .line 144
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 147
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    return p1
.end method
