.class final Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.source "OpusDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
        "Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECODE_ERROR:I = -0x1

.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final DRM_ERROR:I = -0x2

.field private static final NO_ERROR:I = 0x0

.field private static final SAMPLE_RATE:I = 0xbb80


# instance fields
.field private final channelCount:I

.field private final exoMediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

.field private final headerSeekPreRollSamples:I

.field private final headerSkipSamples:I

.field private final nativeDecoderContext:J

.field private skipSamples:I


# direct methods
.method public constructor <init>(IIILjava/util/List;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;
        }
    .end annotation

    .line 77
    new-array p1, p1, [Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    new-array p2, p2, [Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    .line 78
    iput-object p5, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->exoMediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    if-eqz p5, :cond_1

    .line 79
    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->opusIsSecureDecodeSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string p2, "Opus decoder does not support secure decode."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 82
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 83
    array-length p5, p2

    const-string v0, "Header size is too small."

    const/16 v1, 0x13

    if-lt p5, v1, :cond_a

    const/16 p5, 0x9

    .line 86
    aget-byte p5, p2, p5

    and-int/lit16 v4, p5, 0xff

    iput v4, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    const/16 p5, 0x8

    if-gt v4, p5, :cond_9

    const/16 v2, 0xa

    .line 90
    invoke-static {p2, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->readUnsignedLittleEndian16([BI)I

    move-result v2

    const/16 v3, 0x10

    .line 91
    invoke-static {p2, v3}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->readSignedLittleEndian16([BI)I

    move-result v7

    new-array v8, p5, [B

    const/16 v3, 0x12

    .line 96
    aget-byte v3, p2, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_4

    if-gt v4, v5, :cond_3

    if-ne v4, v5, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    aput-byte p1, v8, p1

    aput-byte v6, v8, v6

    const/4 v0, 0x1

    goto :goto_2

    .line 99
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string p2, "Invalid Header, missing stream map."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_4
    array-length v3, p2

    add-int/lit8 v9, v4, 0x15

    if-lt v3, v9, :cond_8

    .line 110
    aget-byte v0, p2, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x14

    .line 111
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x15

    .line 112
    invoke-static {p2, v3, v8, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v1

    .line 114
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 115
    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    array-length p1, p1

    if-ne p1, p5, :cond_5

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    array-length p1, p1

    if-ne p1, p5, :cond_5

    .line 119
    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 121
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p4

    .line 122
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nsToSamples(J)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->headerSkipSamples:I

    .line 123
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nsToSamples(J)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->headerSeekPreRollSamples:I

    goto :goto_3

    .line 116
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string p2, "Invalid Codec Delay or Seek Preroll"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_6
    iput v2, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->headerSkipSamples:I

    const/16 p1, 0xf00

    .line 126
    iput p1, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->headerSeekPreRollSamples:I

    :goto_3
    const v3, 0xbb80

    move-object v2, p0

    move v5, v0

    move v6, p2

    .line 128
    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusInit(IIIII[B)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    const-wide/16 p4, 0x0

    cmp-long v0, p1, p4

    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->setInitialInputBufferSize(I)V

    return-void

    .line 131
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string p2, "Failed to initialize decoder"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid channel count: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static nsToSamples(J)I
    .locals 2

    const-wide/32 v0, 0xbb80

    mul-long p0, p0, v0

    const-wide/32 v0, 0x3b9aca00

    .line 225
    div-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private native opusClose(J)V
.end method

.method private native opusDecode(JJLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;)I
.end method

.method private native opusGetErrorCode(J)I
.end method

.method private native opusGetErrorMessage(J)Ljava/lang/String;
.end method

.method private native opusInit(IIIII[B)J
.end method

.method private native opusReset(J)V
.end method

.method private native opusSecureDecode(JJLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;ILcom/google/android/exoplayer2/drm/ExoMediaCrypto;I[B[BI[I[I)I
.end method

.method private static readSignedLittleEndian16([BI)I
    .locals 0

    .line 235
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->readUnsignedLittleEndian16([BI)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method private static readUnsignedLittleEndian16([BI)I
    .locals 1

    .line 229
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 230
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method protected createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 2

    .line 143
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createOutputBuffer()Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;
    .locals 1

    .line 148
    new-instance v0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;-><init>(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V

    return-object v0
.end method

.method protected createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;
    .locals 2

    .line 153
    new-instance v0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    if-eqz p3, :cond_1

    .line 161
    iget-wide v1, v15, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    invoke-direct {v15, v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusReset(J)V

    .line 164
    iget-wide v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget v1, v15, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->headerSkipSamples:I

    goto :goto_0

    :cond_0
    iget v1, v15, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->headerSeekPreRollSamples:I

    :goto_0
    iput v1, v15, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    .line 166
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 167
    iget-object v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    iget-wide v2, v15, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const v9, 0xbb80

    iget-object v10, v15, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->exoMediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    iget v11, v1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    iget-object v12, v1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    iget-object v13, v1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v4, v1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iget-object v0, v1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v1, v1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-wide v1, v2

    move/from16 v18, v4

    move-wide v3, v6

    move v6, v8

    move-object/from16 v7, p2

    move v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v18

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusSecureDecode(JJLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;ILcom/google/android/exoplayer2/drm/ExoMediaCrypto;I[B[BI[I[I)I

    move-result v0

    move-object/from16 v8, p0

    goto :goto_1

    :cond_2
    move-object v8, v15

    .line 173
    iget-wide v1, v8, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusDecode(JJLjava/nio/ByteBuffer;ILcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;)I

    move-result v0

    :goto_1
    if-gez v0, :cond_4

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drm error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v8, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    invoke-direct {v8, v1, v2}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusGetErrorMessage(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/google/android/exoplayer2/drm/DecryptionException;

    iget-wide v2, v8, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    .line 179
    invoke-direct {v8, v2, v3}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusGetErrorCode(J)I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/DecryptionException;-><init>(ILjava/lang/String;)V

    .line 180
    new-instance v2, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 182
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decode error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v0

    invoke-direct {v8, v3, v4}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusGetErrorMessage(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_4
    move-object/from16 v1, p2

    .line 186
    iget-object v2, v1, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 187
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    iget v4, v8, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    if-lez v4, :cond_6

    .line 190
    iget v5, v8, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    mul-int/lit8 v5, v5, 0x2

    mul-int v6, v4, v5

    if-gt v0, v6, :cond_5

    .line 193
    div-int v3, v0, v5

    sub-int/2addr v4, v3

    iput v4, v8, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    const/high16 v3, -0x80000000

    .line 194
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/decoder/Buffer;->addFlag(I)V

    .line 195
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 197
    :cond_5
    iput v3, v8, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->skipSamples:I

    .line 198
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 0

    .line 34
    check-cast p2, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/opus/OpusDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public getChannelCount()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->channelCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libopus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    const v0, 0xbb80

    return v0
.end method

.method public release()V
    .locals 2

    .line 206
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 207
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/opus/OpusDecoder;->opusClose(J)V

    return-void
.end method
