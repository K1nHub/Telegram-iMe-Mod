.class public abstract Lcom/otaliastudios/gif/transcode/BaseTranscoder;
.super Ljava/lang/Object;
.source "BaseTranscoder.java"

# interfaces
.implements Lcom/otaliastudios/gif/transcode/Transcoder;


# instance fields
.field private mActualOutputFormat:Landroid/media/MediaFormat;

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mDataChunk:Lcom/otaliastudios/gif/source/DataSource$Chunk;

.field private final mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

.field private final mDataSource:Lcom/otaliastudios/gif/source/DataSource;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderBuffers:Lcom/otaliastudios/gif/internal/MediaCodecBuffers;

.field private mEncoderStarted:Z

.field private mIsDataSourceEOS:Z

.field private mIsEncoderEOS:Z


# direct methods
.method protected constructor <init>(Lcom/otaliastudios/gif/source/DataSource;Lcom/otaliastudios/gif/sink/DataSink;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataSource:Lcom/otaliastudios/gif/source/DataSource;

    .line 45
    iput-object p2, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

    .line 46
    new-instance p1, Lcom/otaliastudios/gif/source/DataSource$Chunk;

    invoke-direct {p1}, Lcom/otaliastudios/gif/source/DataSource$Chunk;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataChunk:Lcom/otaliastudios/gif/source/DataSource$Chunk;

    return-void
.end method

.method private drainEncoder(J)I
    .locals 8

    .line 172
    iget-boolean v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mIsEncoderEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    const/4 p2, -0x3

    const/4 v0, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, -0x2

    if-eq p1, p2, :cond_5

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 186
    iget-object p2, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_3

    .line 190
    iget-object v2, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, v7, 0x4

    if-eqz p2, :cond_1

    .line 191
    iput-boolean v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mIsEncoderEOS:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 192
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 194
    :cond_1
    iget-object p2, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr p2, v2

    if-eqz p2, :cond_2

    .line 196
    iget-object p2, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v0

    .line 199
    :cond_2
    iget-object p2, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoderBuffers:Lcom/otaliastudios/gif/internal/MediaCodecBuffers;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/gif/internal/MediaCodecBuffers;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {p2, v0, v3}, Lcom/otaliastudios/gif/sink/DataSink;->write(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 200
    iget-object p2, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v2

    .line 187
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not determine actual output format."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v1

    .line 179
    :cond_5
    iget-object p1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->onEncoderOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return v0

    .line 182
    :cond_6
    iget-object p1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoderBuffers:Lcom/otaliastudios/gif/internal/MediaCodecBuffers;

    invoke-virtual {p1}, Lcom/otaliastudios/gif/internal/MediaCodecBuffers;->onOutputBuffersChanged()V

    return v0
.end method

.method private drainSource(JZ)I
    .locals 7

    .line 126
    iget-boolean v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mIsDataSourceEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataSource:Lcom/otaliastudios/gif/source/DataSource;

    invoke-interface {v0}, Lcom/otaliastudios/gif/source/DataSource;->isDrained()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object p3, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataSource:Lcom/otaliastudios/gif/source/DataSource;

    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataChunk:Lcom/otaliastudios/gif/source/DataSource$Chunk;

    invoke-interface {p3, v0}, Lcom/otaliastudios/gif/source/DataSource;->read(Lcom/otaliastudios/gif/source/DataSource$Chunk;)V

    .line 136
    iget-object p3, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataChunk:Lcom/otaliastudios/gif/source/DataSource$Chunk;

    iget-object v3, p3, Lcom/otaliastudios/gif/source/DataSource$Chunk;->bitmap:Landroid/graphics/Bitmap;

    iget-wide v4, p3, Lcom/otaliastudios/gif/source/DataSource$Chunk;->timestampUs:J

    iget-object p3, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataSource:Lcom/otaliastudios/gif/source/DataSource;

    invoke-interface {p3}, Lcom/otaliastudios/gif/source/DataSource;->isDrained()Z

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->onDrainSource(JLandroid/graphics/Bitmap;JZ)V

    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mIsDataSourceEOS:Z

    return v1
.end method

.method private feedEncoder(J)Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoderBuffers:Lcom/otaliastudios/gif/internal/MediaCodecBuffers;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->onFeedEncoder(Landroid/media/MediaCodec;Lcom/otaliastudios/gif/internal/MediaCodecBuffers;J)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final isFinished()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mIsEncoderEOS:Z

    return v0
.end method

.method protected onConfigureEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {p2, p1, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected abstract onDrainSource(JLandroid/graphics/Bitmap;JZ)V
.end method

.method protected onEncoderOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-nez p1, :cond_0

    .line 161
    iput-object p2, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    .line 162
    iget-object p1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

    invoke-interface {p1, p2}, Lcom/otaliastudios/gif/sink/DataSink;->setFormat(Landroid/media/MediaFormat;)V

    return-void

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Audio output format changed twice."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract onFeedEncoder(Landroid/media/MediaCodec;Lcom/otaliastudios/gif/internal/MediaCodecBuffers;J)Z
.end method

.method protected onStartEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 0

    .line 77
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoderStarted:Z

    .line 79
    new-instance p1, Lcom/otaliastudios/gif/internal/MediaCodecBuffers;

    invoke-direct {p1, p2}, Lcom/otaliastudios/gif/internal/MediaCodecBuffers;-><init>(Landroid/media/MediaCodec;)V

    iput-object p1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoderBuffers:Lcom/otaliastudios/gif/internal/MediaCodecBuffers;

    return-void
.end method

.method protected onStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 100
    iget-boolean v1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoderStarted:Z

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoderStarted:Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    :cond_1
    return-void
.end method

.method public final setUp(Landroid/media/MediaFormat;)V
    .locals 2

    :try_start_0
    const-string v0, "mime"

    .line 52
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->onConfigureEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    .line 57
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->onStartEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    .line 58
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mDataSource:Lcom/otaliastudios/gif/source/DataSource;

    invoke-interface {v0}, Lcom/otaliastudios/gif/source/DataSource;->getTrackFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0, p1, v1}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->onStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    return-void

    :catch_0
    move-exception p1

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final transcode(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    .line 113
    invoke-direct {p0, v2, v3}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->drainEncoder(J)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, v2, v3, p1}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->drainSource(JZ)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eq v4, v0, :cond_0

    .line 120
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->feedEncoder(J)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method
