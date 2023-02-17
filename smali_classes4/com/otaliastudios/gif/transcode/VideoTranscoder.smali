.class public Lcom/otaliastudios/gif/transcode/VideoTranscoder;
.super Lcom/otaliastudios/gif/transcode/BaseTranscoder;
.source "VideoTranscoder.java"


# instance fields
.field private mDecoderOutputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderInputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;

.field private final mExtraRotation:I

.field private mFrameDropper:Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;

.field private final mTimeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/otaliastudios/gif/internal/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/gif/internal/Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/gif/source/DataSource;Lcom/otaliastudios/gif/sink/DataSink;Lcom/otaliastudios/gif/time/TimeInterpolator;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;-><init>(Lcom/otaliastudios/gif/source/DataSource;Lcom/otaliastudios/gif/sink/DataSink;)V

    .line 56
    iput-object p3, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mTimeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;

    .line 57
    iput p4, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mExtraRotation:I

    return-void
.end method


# virtual methods
.method protected onConfigureEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 6

    const-string v0, "width"

    .line 66
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    .line 67
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 68
    iget v4, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mExtraRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    .line 69
    :goto_1
    invoke-virtual {p1, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 70
    :goto_2
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 71
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->onConfigureEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    return-void
.end method

.method protected onDrainSource(JLandroid/graphics/Bitmap;JZ)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mTimeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;

    invoke-interface {p1, p4, p5}, Lcom/otaliastudios/gif/time/TimeInterpolator;->interpolate(J)J

    move-result-wide p1

    .line 140
    iget-object p4, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mFrameDropper:Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;

    invoke-virtual {p4, p1, p2}, Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;->shouldRenderFrame(J)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 141
    iget-object p4, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mDecoderOutputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;

    invoke-virtual {p4, p3}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->drawFrame(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object p3, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mEncoderInputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;

    invoke-virtual {p3, p1, p2}, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;->onFrame(J)V

    :cond_0
    if-eqz p6, :cond_1

    .line 145
    iget-object p1, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_1
    return-void
.end method

.method protected onFeedEncoder(Landroid/media/MediaCodec;Lcom/otaliastudios/gif/internal/MediaCodecBuffers;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onStartEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 2

    .line 76
    new-instance v0, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mEncoderInputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;

    .line 77
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->onStartEncoder(Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    return-void
.end method

.method protected onStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V
    .locals 5

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->onStarted(Landroid/media/MediaFormat;Landroid/media/MediaFormat;Landroid/media/MediaCodec;)V

    .line 83
    iput-object p3, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mEncoder:Landroid/media/MediaCodec;

    .line 87
    new-instance p3, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;

    invoke-direct {p3}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;-><init>()V

    iput-object p3, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mDecoderOutputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;

    .line 88
    iget v0, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mExtraRotation:I

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {p3, v0}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->setRotation(I)V

    const-string p3, "frame-rate"

    .line 92
    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 93
    invoke-virtual {p2, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    .line 91
    invoke-static {v0, p3}, Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;->newDropper(II)Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;

    move-result-object p3

    iput-object p3, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mFrameDropper:Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;

    .line 98
    iget p3, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mExtraRotation:I

    rem-int/lit16 p3, p3, 0x168

    .line 99
    rem-int/lit16 p3, p3, 0xb4

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string v0, "width"

    .line 100
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const-string v2, "height"

    .line 101
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    div-float v3, v1, p1

    if-eqz p3, :cond_1

    .line 103
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    :goto_1
    int-to-float v4, v4

    if-eqz p3, :cond_2

    .line 104
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_2
    int-to-float p2, p2

    div-float/2addr v4, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p3, v3, v4

    if-lez p3, :cond_3

    div-float/2addr v3, v4

    move p2, v3

    goto :goto_3

    :cond_3
    cmpg-float p3, v3, v4

    if-gez p3, :cond_4

    div-float/2addr v4, v3

    goto :goto_4

    :cond_4
    :goto_3
    const/high16 v4, 0x3f800000    # 1.0f

    .line 113
    :goto_4
    iget-object p3, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mDecoderOutputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;

    float-to-int v0, v1

    float-to-int p1, p1

    invoke-virtual {p3, v0, p1}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->setSize(II)V

    .line 114
    iget-object p1, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mDecoderOutputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;

    invoke-virtual {p1, p2, v4}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->setScale(FF)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mDecoderOutputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;->release()V

    .line 121
    iput-object v1, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mDecoderOutputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoDecoderOutput;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mEncoderInputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;->release()V

    .line 125
    iput-object v1, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mEncoderInputSurface:Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;

    .line 127
    :cond_1
    invoke-super {p0}, Lcom/otaliastudios/gif/transcode/BaseTranscoder;->release()V

    .line 128
    iput-object v1, p0, Lcom/otaliastudios/gif/transcode/VideoTranscoder;->mEncoder:Landroid/media/MediaCodec;

    return-void
.end method
