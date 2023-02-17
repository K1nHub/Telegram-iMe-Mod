.class public final Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "SilenceSkippingAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_MINIMUM_SILENCE_DURATION_US:J = 0x249f0L

.field public static final DEFAULT_PADDING_SILENCE_US:J = 0x4e20L

.field public static final DEFAULT_SILENCE_THRESHOLD_LEVEL:S = 0x400s

.field private static final STATE_MAYBE_SILENT:I = 0x1

.field private static final STATE_NOISY:I = 0x0

.field private static final STATE_SILENT:I = 0x2


# instance fields
.field private bytesPerFrame:I

.field private enabled:Z

.field private hasOutputNoise:Z

.field private maybeSilenceBuffer:[B

.field private maybeSilenceBufferSize:I

.field private final minimumSilenceDurationUs:J

.field private paddingBuffer:[B

.field private final paddingSilenceUs:J

.field private paddingSize:I

.field private final silenceThresholdLevel:S

.field private skippedFrames:J

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/32 v1, 0x249f0

    const-wide/16 v3, 0x4e20

    const/16 v5, 0x400

    move-object v0, p0

    .line 93
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;-><init>(JJS)V

    return-void
.end method

.method public constructor <init>(JJS)V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 112
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->minimumSilenceDurationUs:J

    .line 113
    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSilenceUs:J

    .line 114
    iput-short p5, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->silenceThresholdLevel:S

    .line 116
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 117
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    return-void
.end method

.method private durationUsToFrames(J)I
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private findNoiseLimit(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 364
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 366
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 367
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->silenceThresholdLevel:S

    if-le v1, v2, :cond_1

    .line 369
    iget p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v0, p1

    mul-int v0, v0, p1

    add-int/2addr v0, p1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 372
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method private findNoisePosition(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 348
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 350
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 351
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->silenceThresholdLevel:S

    if-le v1, v2, :cond_1

    .line 353
    iget p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method

.method private output(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 311
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 312
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_0

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    :cond_0
    return-void
.end method

.method private output([BI)V
    .locals 2

    .line 301
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    :cond_0
    return-void
.end method

.method private processMaybeSilence(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 242
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 243
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v1, v2

    .line 244
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v4, v3

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-ge v1, v0, :cond_0

    if-ge v2, v4, :cond_0

    .line 247
    invoke-direct {p0, v3, v5}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 248
    iput v6, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 249
    iput v6, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_1

    .line 252
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 254
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 255
    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 256
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 259
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 260
    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 261
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v3, v5

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    goto :goto_0

    .line 263
    :cond_1
    iget-wide v7, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v7, v1

    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    .line 266
    iput v6, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 267
    iput v4, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    .line 271
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method private processNoisy(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 219
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 223
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->findNoiseLimit(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 224
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 226
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output(Ljava/nio/ByteBuffer;)V

    .line 233
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private processSilence(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 280
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 281
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 282
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 283
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 284
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    .line 288
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output([BI)V

    const/4 v1, 0x0

    .line 289
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    .line 292
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 325
    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 326
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 333
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getSkippedFrames()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    return v0
.end method

.method public onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 144
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 147
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    :goto_0
    return-object p1

    .line 145
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v0
.end method

.method protected onFlush()V
    .locals 3

    .line 187
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    .line 189
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->minimumSilenceDurationUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int v0, v0, v1

    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 191
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 193
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSilenceUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 194
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 195
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    :cond_1
    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    const-wide/16 v1, 0x0

    .line 199
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 200
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 201
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    return-void
.end method

.method protected onQueueEndOfStream()V
    .locals 4

    .line 176
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    if-lez v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    if-nez v0, :cond_1

    .line 181
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    :cond_1
    return-void
.end method

.method protected onReset()V
    .locals 1

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    .line 207
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 208
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 209
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 157
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;->hasPendingOutput()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->processSilence(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 163
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->processMaybeSilence(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->processNoisy(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    return-void
.end method
