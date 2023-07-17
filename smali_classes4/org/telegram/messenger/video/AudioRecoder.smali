.class public Lorg/telegram/messenger/video/AudioRecoder;
.super Ljava/lang/Object;
.source "AudioRecoder.java"


# instance fields
.field private final TIMEOUT_USEC:I

.field private final decoder:Landroid/media/MediaCodec;

.field private decoderDone:Z

.field private decoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private final decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private decoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field private final encoder:Landroid/media/MediaCodec;

.field private encoderDone:Z

.field private encoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private final encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private encoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field public endTime:J

.field private final extractor:Landroid/media/MediaExtractor;

.field private extractorDone:Z

.field public final format:Landroid/media/MediaFormat;

.field private pendingAudioDecoderOutputBufferIndex:I

.field public startTime:J

.field private final trackIndex:I


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 20
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->extractorDone:Z

    .line 27
    iput-boolean v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->decoderDone:Z

    .line 28
    iput-boolean v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->pendingAudioDecoderOutputBufferIndex:I

    const/16 v1, 0x9c4

    .line 34
    iput v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->TIMEOUT_USEC:I

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->startTime:J

    .line 37
    iput-wide v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->endTime:J

    .line 42
    iput-object p2, p0, Lorg/telegram/messenger/video/AudioRecoder;->extractor:Landroid/media/MediaExtractor;

    .line 43
    iput p3, p0, Lorg/telegram/messenger/video/AudioRecoder;->trackIndex:I

    const-string p2, "mime"

    .line 45
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    const/4 p3, 0x0

    .line 46
    invoke-virtual {p2, p1, p3, p3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 47
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    const-string v0, "audio/mp4a-latm"

    .line 50
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    const-string/jumbo v2, "sample-rate"

    .line 52
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "channel-count"

    .line 53
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 51
    invoke-static {v0, v2, p1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const-string v0, "bitrate"

    const/high16 v2, 0x10000

    .line 55
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 56
    invoke-virtual {v1, p1, p3, p3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 57
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 60
    invoke-virtual {p2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBuffers:[Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 69
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 70
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->extractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lorg/telegram/messenger/video/AudioRecoder;->trackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 71
    iget-object v0, p0, Lorg/telegram/messenger/video/AudioRecoder;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public step(Lorg/telegram/messenger/video/MP4Builder;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 78
    iget-boolean v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->extractorDone:Z

    const/4 v2, 0x1

    const-wide/16 v3, 0x9c4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v1, :cond_4

    .line 79
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-ne v8, v6, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v1, v7, :cond_1

    .line 86
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v8

    .line 90
    :goto_0
    iget-object v7, v0, Lorg/telegram/messenger/video/AudioRecoder;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v1, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    .line 92
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    .line 93
    iget-wide v13, v0, Lorg/telegram/messenger/video/AudioRecoder;->endTime:J

    const-wide/16 v15, 0x0

    cmp-long v1, v13, v15

    if-lez v1, :cond_2

    cmp-long v1, v11, v13

    if-ltz v1, :cond_2

    .line 94
    iput-boolean v2, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    .line 95
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :cond_2
    if-ltz v10, :cond_3

    .line 98
    iget-object v7, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->extractor:Landroid/media/MediaExtractor;

    .line 102
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->extractor:Landroid/media/MediaExtractor;

    .line 103
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v13

    .line 98
    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 106
    :cond_3
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->extractorDone:Z

    if-eqz v1, :cond_4

    .line 108
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    .line 109
    iget-object v7, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x4

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 119
    :cond_4
    :goto_1
    iget-boolean v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderDone:Z

    const/4 v7, -0x2

    const/4 v8, -0x3

    if-nez v1, :cond_9

    iget v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->pendingAudioDecoderOutputBufferIndex:I

    if-ne v1, v6, :cond_9

    .line 120
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    iget-object v9, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 121
    invoke-virtual {v1, v9, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ne v1, v6, :cond_5

    goto :goto_2

    :cond_5
    if-ne v1, v8, :cond_6

    .line 127
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_6
    if-ne v1, v7, :cond_7

    goto :goto_2

    .line 134
    :cond_7
    iget-object v9, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_8

    .line 137
    iget-object v9, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v9, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2

    .line 140
    :cond_8
    iput v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->pendingAudioDecoderOutputBufferIndex:I

    .line 145
    :cond_9
    :goto_2
    iget v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->pendingAudioDecoderOutputBufferIndex:I

    if-eq v1, v6, :cond_c

    .line 146
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ne v10, v6, :cond_a

    goto :goto_3

    .line 151
    :cond_a
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v10

    .line 152
    iget-object v9, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 153
    iget-wide v13, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-ltz v12, :cond_b

    .line 155
    iget-object v9, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v11, v0, Lorg/telegram/messenger/video/AudioRecoder;->pendingAudioDecoderOutputBufferIndex:I

    aget-object v9, v9, v11

    .line 157
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 158
    iget-object v11, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget-object v11, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v11, v12

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 160
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v9, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 169
    :cond_b
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoder:Landroid/media/MediaCodec;

    iget v9, v0, Lorg/telegram/messenger/video/AudioRecoder;->pendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v1, v9, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 170
    iput v6, v0, Lorg/telegram/messenger/video/AudioRecoder;->pendingAudioDecoderOutputBufferIndex:I

    .line 171
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    .line 173
    iput-boolean v2, v0, Lorg/telegram/messenger/video/AudioRecoder;->decoderDone:Z

    .line 178
    :cond_c
    :goto_3
    iget-boolean v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    if-nez v1, :cond_13

    .line 179
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    iget-object v9, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v9, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ne v1, v6, :cond_d

    goto :goto_4

    :cond_d
    if-ne v1, v8, :cond_e

    .line 185
    iget-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_e
    if-ne v1, v7, :cond_f

    goto :goto_4

    .line 193
    :cond_f
    iget-object v3, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    .line 195
    iget-object v4, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_10

    .line 197
    iget-object v2, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_4

    .line 201
    :cond_10
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_11

    move-object/from16 v6, p1

    move/from16 v7, p2

    .line 202
    invoke-virtual {v6, v7, v3, v4, v5}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    .line 204
    :cond_11
    iget-object v3, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_12

    .line 206
    iput-boolean v2, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    .line 208
    :cond_12
    iget-object v2, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 212
    :cond_13
    :goto_4
    iget-boolean v1, v0, Lorg/telegram/messenger/video/AudioRecoder;->encoderDone:Z

    return v1
.end method
