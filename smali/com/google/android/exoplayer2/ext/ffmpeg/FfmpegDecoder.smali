.class final Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.source "FfmpegDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
        "Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECODER_ERROR_INVALID_DATA:I = -0x1

.field private static final DECODER_ERROR_OTHER:I = -0x2

.field private static final OUTPUT_BUFFER_SIZE_16BIT:I = 0x10000

.field private static final OUTPUT_BUFFER_SIZE_32BIT:I = 0x20000


# instance fields
.field private volatile channelCount:I

.field private final codecName:Ljava/lang/String;

.field private final encoding:I

.field private final extraData:[B

.field private hasOutputFormat:Z

.field private nativeContext:J

.field private final outputBufferSize:I

.field private volatile sampleRate:I


# direct methods
.method public constructor <init>(IIILcom/google/android/exoplayer2/Format;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
        }
    .end annotation

    .line 62
    new-array p1, p1, [Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    new-array p2, p2, [Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    .line 63
    iget-object p1, p4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->getCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->codecName:Ljava/lang/String;

    .line 65
    iget-object p1, p4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p2, p4, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getExtraData(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    if-eqz p5, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 66
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->encoding:I

    if-eqz p5, :cond_1

    const/high16 p1, 0x20000

    goto :goto_1

    :cond_1
    const/high16 p1, 0x10000

    .line 67
    :goto_1
    iput p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->outputBufferSize:I

    .line 68
    iget v4, p4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v5, p4, Lcom/google/android/exoplayer2/Format;->channelCount:I

    move-object v0, p0

    move v3, p5

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegInitialize(Ljava/lang/String;[BZII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    const-wide/16 p4, 0x0

    cmp-long v0, p1, p4

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->setInitialInputBufferSize(I)V

    return-void

    .line 71
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Initialization failed."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native ffmpegDecode(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
.end method

.method private native ffmpegGetChannelCount(J)I
.end method

.method private native ffmpegGetSampleRate(J)I
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[BZII)J
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegReset(J[B)J
.end method

.method private static getAlacExtraData(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 186
    array-length v1, p0

    add-int/lit8 v1, v1, 0xc

    .line 187
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 188
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, 0x616c6163

    .line 189
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 191
    array-length v1, p0

    invoke-virtual {v2, p0, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static getExtraData(Ljava/lang/String;Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "audio/opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "audio/alac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "audio/vorbis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 170
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getAlacExtraData(Ljava/util/List;)[B

    move-result-object p0

    return-object p0

    .line 168
    :pswitch_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 172
    :pswitch_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getVorbisExtraData(Ljava/util/List;)[B

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3bd43e14 -> :sswitch_3
        -0x3313c2e -> :sswitch_2
        0x59ac6426 -> :sswitch_1
        0x59b2d2d8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getVorbisExtraData(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    .line 196
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x1

    .line 197
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 198
    array-length v3, v1

    array-length v4, p0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x6

    new-array v3, v3, [B

    .line 199
    array-length v4, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 200
    array-length v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 201
    array-length v2, v1

    const/4 v4, 0x2

    invoke-static {v1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    array-length v2, v1

    add-int/2addr v2, v4

    aput-byte v0, v3, v2

    .line 203
    array-length v2, v1

    add-int/lit8 v2, v2, 0x3

    aput-byte v0, v3, v2

    .line 204
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    array-length v4, p0

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 205
    array-length v2, v1

    add-int/lit8 v2, v2, 0x5

    array-length v4, p0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 206
    array-length v1, v1

    add-int/lit8 v1, v1, 0x6

    array-length v2, p0

    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method


# virtual methods
.method protected createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 2

    .line 83
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createOutputBuffer()Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;
    .locals 1

    .line 88
    new-instance v0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;-><init>(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V

    return-object v0
.end method

.method protected createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
    .locals 2

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
    .locals 7

    if-eqz p3, :cond_0

    .line 100
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegReset(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 102
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Error resetting (see logcat)."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 105
    :cond_0
    iget-object p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 107
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->outputBufferSize:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->init(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 108
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    iget v6, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->outputBufferSize:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegDecode(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    const/high16 p1, -0x80000000

    .line 113
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->setFlags(I)V

    return-object v1

    :cond_1
    const/4 p2, -0x2

    if-ne p3, p2, :cond_2

    .line 116
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Error decoding (see logcat)."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 118
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->hasOutputFormat:Z

    if-nez p2, :cond_4

    .line 119
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegGetChannelCount(J)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->channelCount:I

    .line 120
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegGetSampleRate(J)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->sampleRate:I

    .line 121
    iget p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->sampleRate:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->codecName:Ljava/lang/String;

    const-string v0, "alac"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 122
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->extraData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 127
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->sampleRate:I

    :cond_3
    const/4 p2, 0x1

    .line 129
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->hasOutputFormat:Z

    :cond_4
    const/4 p2, 0x0

    .line 131
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method protected bridge synthetic decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 0

    .line 34
    check-cast p2, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public getChannelCount()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->channelCount:I

    return v0
.end method

.method public getEncoding()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->encoding:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->sampleRate:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 139
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->ffmpegRelease(J)V

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->nativeContext:J

    return-void
.end method
