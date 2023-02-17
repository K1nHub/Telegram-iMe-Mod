.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;
    }
.end annotation


# instance fields
.field private alphaHandle:I

.field private audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private audioEncoder:Landroid/media/MediaCodec;

.field private audioFirst:J

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioStartTime:J

.field private audioStopedByTime:Z

.field private audioTrackIndex:I

.field private blendEnabled:Z

.field private buffers:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private buffersToWrite:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentTimestamp:J

.field private desyncTime:J

.field private drawProgram:I

.field private eglConfig:Landroid/opengl/EGLConfig;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private firstEncode:Z

.field private frameCount:I

.field private generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

.field private volatile handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

.field private keyframeThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private lastCameraId:Ljava/lang/Integer;

.field private lastCommitedFrameTime:J

.field private lastTimestamp:J

.field private mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

.field private positionHandle:I

.field private prependHeaderSize:I

.field private previewSizeHandle:I

.field private ready:Z

.field private recorderRunnable:Ljava/lang/Runnable;

.field private resolutionHandle:I

.field private volatile running:Z

.field private volatile sendWhenDone:I

.field private sharedEglContext:Landroid/opengl/EGLContext;

.field private skippedFirst:Z

.field private skippedTime:J

.field private surface:Landroid/view/Surface;

.field private final sync:Ljava/lang/Object;

.field private textureHandle:I

.field private textureMatrixHandle:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field private vertexMatrixHandle:I

.field private videoBitrate:I

.field private videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private videoConvertFirstWrite:Z

.field private videoEncoder:Landroid/media/MediaCodec;

.field private videoFile:Ljava/io/File;

.field private videoFirst:J

.field private videoHeight:I

.field private videoLast:J

.field private videoTrackIndex:I

.field private videoWidth:I

.field private zeroTimeStamps:I


# direct methods
.method public static synthetic $r8$lambda$83Hk6_qG6P0X8_fQQuYAFV91mLU(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$2(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E7gJWZPUjiHHHR8X1K7O-9LtdGE(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Je50nmS1F5V-nzOqzltHRjA00VQ(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$prepareEncoder$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$YV04Svi203GpDpRcdqeqrWPVGzE(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleVideoFrameAvailable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$aVixZgqkvgk1K7wcdkXCYuXRa0k(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$zKSWXu_h6ZQT19I2mxyRHkkZQZU(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleVideoFrameAvailable$0()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 4

    .line 1658
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1669
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    .line 1673
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1674
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1677
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1688
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 p1, -0x5

    .line 1689
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 1690
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    const-wide/16 v0, -0x1

    .line 1693
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    const-wide/16 v2, 0x0

    .line 1695
    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 1696
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 1700
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    .line 1708
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 1710
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    const/4 p1, 0x0

    .line 1722
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 1726
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1727
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    .line 1731
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prepareEncoder()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleStopRecording(I)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;JLjava/lang/Integer;)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleVideoFrameAvailable(JLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    .line 1658
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 1658
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I
    .locals 0

    .line 1658
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 1658
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
    .locals 0

    .line 1658
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/ArrayList;
    .locals 0

    .line 1658
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    return-object p0
.end method

.method private createKeyframeThumb()V
    .locals 2

    .line 2124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    rem-int/lit8 v0, v0, 0x21

    if-nez v0, :cond_0

    .line 2125
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    .line 2126
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private didWriteData(Ljava/io/File;JZ)V
    .locals 11

    .line 2495
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 2496
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x1

    const/high16 v9, 0x2000000

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    const/4 v0, 0x0

    .line 2497
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    if-eqz p4, :cond_3

    .line 2499
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v5

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    :cond_0
    move-wide v8, v1

    move-wide v6, p2

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    goto :goto_0

    .line 2502
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v5

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    :cond_2
    move-wide v8, v1

    move-wide v6, p2

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1896
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    if-eqz v0, :cond_0

    return-void

    .line 1899
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1900
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    .line 1901
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 1902
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "video record not yet started"

    .line 1903
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1909
    :goto_1
    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v0, v3, :cond_7

    if-nez v0, :cond_3

    .line 1910
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v9, 0x989680

    cmp-long v11, v3, v9

    if-lez v11, :cond_3

    .line 1911
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v3, v10

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    .line 1912
    aget-wide v3, v9, v0

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 1914
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detected desync between audio and video "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 1919
    :cond_3
    iget-object v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v3, v0

    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    const-string v4, " timestamp = "

    cmp-long v13, v9, v11

    if-ltz v13, :cond_5

    .line 1920
    iput v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .line 1921
    aget-wide v9, v3, v0

    iput-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 1923
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_4

    .line 1924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found first audio frame at "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v4, v0

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    .line 1928
    :cond_5
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_6

    .line 1929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignore first audio frame at "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v4, v0

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_a

    .line 1934
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first audio frame not found, removing buffers "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1937
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1941
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1942
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto/16 :goto_0

    :cond_9
    return-void

    .line 1949
    :cond_a
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_b

    .line 1950
    iget-object v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v3, v0, v3

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    .line 1952
    :cond_b
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_c

    .line 1953
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 1956
    :cond_c
    :try_start_0
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1958
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v2, :cond_19

    .line 1963
    :try_start_1
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ltz v10, :cond_18

    .line 1966
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_d

    .line 1967
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v10}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_6

    .line 1969
    :cond_d
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1970
    aget-object v3, v3, v10

    .line 1971
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1973
    :goto_6
    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v11, v6, v9

    .line 1974
    :goto_7
    iget v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v13, 0x0

    if-gt v9, v6, :cond_15

    if-ge v9, v6, :cond_11

    .line 1976
    iget-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v6, :cond_f

    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v14, v6, v9

    iget-wide v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    sub-long/2addr v4, v7

    cmp-long v7, v14, v4

    if-ltz v7, :cond_f

    .line 1977
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_e

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop audio encoding because of stoped video recording at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v4, v2, v9

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " last video "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_e
    const/4 v2, 0x1

    .line 1980
    iput-boolean v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    .line 1983
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v2, v13

    const/4 v0, 0x1

    goto :goto_9

    .line 1986
    :cond_f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v5, v5, v9

    if-ge v4, v5, :cond_10

    .line 1987
    iput v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    move-object v2, v13

    goto :goto_9

    .line 1991
    :cond_10
    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1993
    :cond_11
    iget v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v9, v4, :cond_14

    .line 1994
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1995
    iget-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v4, :cond_12

    .line 1996
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 1998
    :cond_12
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1999
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    .line 2001
    iget-boolean v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    move-object v2, v13

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    :goto_8
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_15
    :goto_9
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2007
    :goto_a
    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const-wide/16 v7, 0x0

    cmp-long v13, v11, v7

    if-nez v13, :cond_16

    :goto_b
    move-wide v13, v7

    goto :goto_c

    :cond_16
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    sub-long v7, v11, v7

    goto :goto_b

    :goto_c
    if-eqz v0, :cond_17

    const/4 v7, 0x4

    const/4 v15, 0x4

    goto :goto_d

    :cond_17
    const/4 v15, 0x0

    :goto_d
    move v11, v6

    move v12, v3

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    :cond_18
    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_e
    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    .line 2011
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method private handleStopRecording(I)V
    .locals 3

    .line 2153
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2154
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    .line 2155
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2159
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2161
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2163
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2165
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2166
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2167
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2169
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2172
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 2174
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2175
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2176
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    .line 2178
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 2180
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2183
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v0, :cond_3

    .line 2185
    :try_start_3
    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 2187
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2190
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_4

    .line 2191
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 2192
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 2193
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    :cond_4
    if-eqz p1, :cond_5

    .line 2196
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 2280
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 2281
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2283
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 2284
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 2285
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_6

    .line 2286
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 2287
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 2289
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, v0, :cond_7

    .line 2290
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2291
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2292
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2293
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2295
    :cond_7
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2296
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2297
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    .line 2298
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->exit()V

    return-void
.end method

.method private handleVideoFrameAvailable(JLjava/lang/Integer;)V
    .locals 27

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 2017
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 2019
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2022
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v6, -0x1

    if-nez v0, :cond_0

    .line 2023
    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 2024
    iput-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 2026
    :cond_0
    iget-wide v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v6

    if-nez v0, :cond_1

    .line 2027
    iput-wide v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 2028
    iget-wide v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    .line 2029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    sub-long/2addr v8, v12

    const-wide/32 v12, 0xf4240

    mul-long v8, v8, v12

    move-wide/from16 v25, v8

    move-wide v8, v10

    move-wide/from16 v10, v25

    goto :goto_1

    :cond_1
    sub-long v10, v2, v8

    .line 2036
    iput-wide v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    :cond_2
    move-wide v8, v10

    .line 2038
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 2039
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    const/4 v4, 0x1

    if-nez v0, :cond_4

    .line 2040
    iget-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    const-wide/32 v14, 0xbebc200

    cmp-long v0, v12, v14

    if-gez v0, :cond_3

    return-void

    .line 2044
    :cond_3
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    .line 2046
    :cond_4
    iget-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 2047
    iget-wide v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v10, v6

    if-nez v0, :cond_5

    const-wide/16 v6, 0x3e8

    .line 2048
    div-long v6, v2, v6

    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 2049
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 2050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first video frame was at "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2053
    :cond_5
    iput-wide v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    .line 2055
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2056
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-static {v0, v4, v5, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 2058
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2059
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2060
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2062
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    int-to-float v2, v2

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2064
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v5

    const/16 v2, 0xbe2

    const/4 v3, 0x4

    const/4 v6, 0x5

    const v7, 0x8d65

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v0, :cond_8

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2065
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    if-nez v0, :cond_6

    .line 2066
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2067
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 2069
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2070
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$2700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$2700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v0, v11, v12}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2072
    :cond_7
    iget v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    const/4 v14, 0x2

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0x8

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v18

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2074
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v11

    invoke-static {v0, v4, v5, v11, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2075
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2076
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v5

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2077
    invoke-static {v6, v5, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2081
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2082
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v0, v11, v12}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2085
    :cond_9
    iget v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    const/4 v14, 0x3

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0xc

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v18

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2086
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    const/16 v20, 0x2

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x8

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v24

    move/from16 v19, v0

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2088
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v11

    invoke-static {v0, v4, v5, v11, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2089
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v11

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2090
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v5

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2091
    invoke-static {v6, v5, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2093
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2094
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2095
    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2096
    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2098
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    invoke-static {v0, v3, v6, v7}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 2099
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 2101
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->createKeyframeThumb()V

    .line 2102
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    add-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    .line 2104
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v5

    if-eqz v0, :cond_a

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    cmpg-float v0, v0, v10

    if-gez v0, :cond_a

    .line 2105
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    long-to-float v3, v8

    const v6, 0x4d3ebc20    # 2.0E8f

    div-float/2addr v3, v6

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2516(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 2106
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_b

    .line 2107
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 2108
    iput-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 2109
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v10}, Lorg/telegram/ui/Components/InstantCameraView;->access$2502(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 2110
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2111
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v5, v0, v5

    .line 2112
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2113
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2802(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 2114
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2117
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2118
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2802(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 2119
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private synthetic lambda$handleStopRecording$2(ZILjava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 2213
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    const/4 v7, 0x0

    move-object v3, v1

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    .line 2214
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$3()V
    .locals 2

    .line 2216
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$4(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 2197
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v2, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1002(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    .line 2198
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 2199
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 2200
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iput-wide v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 2201
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2202
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 2203
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5000(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 2204
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5100(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 2205
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 2206
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    const/16 v3, 0x19

    iput v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 2207
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    const/16 v4, 0x168

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 2208
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 2209
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    const/4 v1, 0x0

    move/from16 v3, p1

    if-ne v3, v2, :cond_2

    .line 2211
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2219
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v16}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    goto/16 :goto_1

    .line 2212
    :cond_1
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    new-instance v7, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    new-instance v8, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2217
    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    .line 2212
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_1

    .line 2222
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v4, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v4}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$902(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;

    .line 2223
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2259
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$4100(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2260
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "other"

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2261
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 2262
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 2263
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5400(Lorg/telegram/ui/Components/InstantCameraView;)V

    .line 2265
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v5, v4, [Landroid/animation/Animator;

    .line 2266
    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2267
    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    const/4 v9, 0x0

    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2268
    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$5600(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    new-array v8, v2, [I

    aput v1, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2269
    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 2266
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0xb4

    .line 2270
    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2271
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2272
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 2273
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v5

    iput-wide v5, v3, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 2274
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v8}, Lorg/telegram/ui/Components/InstantCameraView;->access$3800(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v8}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v8

    aput-object v8, v6, v2

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2276
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    .line 2277
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    return-void
.end method

.method private synthetic lambda$handleVideoFrameAvailable$0()V
    .locals 3

    .line 2114
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$handleVideoFrameAvailable$1()V
    .locals 3

    .line 2119
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$prepareEncoder$5()V
    .locals 6

    .line 2385
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2389
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2393
    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 2394
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$4602(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 2395
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$4702(Lorg/telegram/ui/Components/InstantCameraView;J)J

    .line 2396
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2397
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$3800(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v0, v2

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private prepareEncoder()V
    .locals 16

    move-object/from16 v1, p0

    const-string/jumbo v0, "video/avc"

    const-string v2, "bitrate"

    const-string v3, "audio/mp4a-latm"

    const/4 v4, 0x1

    .line 2321
    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V

    const/16 v5, 0x10

    const v6, 0xbb80

    const/4 v7, 0x2

    .line 2324
    :try_start_0
    invoke-static {v6, v5, v7}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    if-gtz v5, :cond_0

    const/16 v5, 0xe00

    :cond_0
    const v8, 0xc000

    if-ge v8, v5, :cond_1

    .line 2330
    div-int/lit16 v5, v5, 0x800

    add-int/2addr v5, v4

    mul-int/lit16 v5, v5, 0x800

    mul-int/lit8 v8, v5, 0x2

    :cond_1
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v15, 0x3

    if-ge v9, v15, :cond_2

    .line 2333
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v11}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2335
    :cond_2
    new-instance v14, Landroid/media/AudioRecord;

    const/4 v10, 0x0

    const v11, 0xbb80

    const/16 v12, 0x10

    const/4 v13, 0x2

    move-object v9, v14

    move-object v15, v14

    move v14, v8

    invoke-direct/range {v9 .. v14}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v15, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    .line 2336
    invoke-virtual {v15}, Landroid/media/AudioRecord;->startRecording()V

    .line 2337
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_3

    .line 2338
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initied audio record with channels "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sample rate = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " bufferSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2340
    :cond_3
    new-instance v8, Ljava/lang/Thread;

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v9, 0xa

    .line 2341
    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 2342
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 2344
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2345
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2347
    new-instance v8, Landroid/media/MediaFormat;

    invoke-direct {v8}, Landroid/media/MediaFormat;-><init>()V

    const-string v9, "mime"

    .line 2348
    invoke-virtual {v8, v9, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "sample-rate"

    .line 2349
    invoke-virtual {v8, v9, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "channel-count"

    .line 2350
    invoke-virtual {v8, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2351
    iget-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->roundAudioBitrate:I

    mul-int/lit16 v6, v6, 0x400

    invoke-virtual {v8, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "max-input-size"

    const/16 v9, 0x5000

    .line 2352
    invoke-virtual {v8, v6, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2354
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    .line 2355
    invoke-virtual {v3, v8, v6, v6, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2356
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 2358
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    .line 2359
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    .line 2361
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-static {v0, v3, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "color-format"

    const v8, 0x7f000789

    .line 2363
    invoke-virtual {v0, v3, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2364
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    const/16 v3, 0x1e

    .line 2365
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    .line 2366
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2374
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v6, v6, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2375
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 2376
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 2378
    new-instance v0, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v0}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 2379
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 2380
    invoke-virtual {v0, v5}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 2381
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 2382
    new-instance v2, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v2}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;Z)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    .line 2384
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_e

    .line 2407
    invoke-static {v5}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2408
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_d

    new-array v2, v7, [I

    .line 2412
    invoke-static {v0, v2, v5, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2417
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_5

    const/16 v0, 0xd

    new-array v7, v0, [I

    .line 2420
    fill-array-data v7, :array_0

    new-array v0, v4, [Landroid/opengl/EGLConfig;

    new-array v12, v4, [I

    .line 2431
    iget-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x1

    move-object v9, v0

    invoke-static/range {v6 .. v13}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 2435
    fill-array-data v2, :array_1

    .line 2439
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v6, v0, v5

    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    invoke-static {v3, v6, v7, v2, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2440
    aget-object v0, v0, v5

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    goto :goto_1

    .line 2432
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    new-array v0, v4, [I

    .line 2444
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/16 v6, 0x3098

    invoke-static {v2, v3, v6, v0, v5}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 2446
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_b

    new-array v0, v4, [I

    const/16 v2, 0x3038

    aput v2, v0, v5

    .line 2453
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    iget-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    invoke-static {v2, v3, v6, v0, v5}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_a

    .line 2458
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2459
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2462
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x302

    const/16 v2, 0x303

    .line 2464
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 2466
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v2, 0x8b31

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v0

    .line 2467
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v3, 0x8b30

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$4400(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 2469
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    .line 2470
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2471
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2472
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v4, [I

    .line 2474
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 2475
    aget v0, v0, v5

    if-nez v0, :cond_8

    .line 2476
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 2477
    iput v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    goto :goto_2

    .line 2479
    :cond_8
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    .line 2480
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    .line 2481
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "preview"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    .line 2482
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "resolution"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    .line 2483
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "alpha"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    .line 2484
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    .line 2485
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    :cond_9
    :goto_2
    return-void

    .line 2455
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2447
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "surface already created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2413
    :cond_c
    iput-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2409
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2404
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EGL already set up"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 2400
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setBluetoothScoOn(Z)V
    .locals 3

    .line 2302
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2303
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_5

    .line 2304
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 2306
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    if-nez p1, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    .line 2307
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2308
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 2309
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2310
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2315
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public drainEncoder(Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    .line 2508
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 2512
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    .line 2513
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2516
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const-string v5, " was null"

    const-string v6, "encoderOutputBuffer "

    const/4 v7, -0x2

    const/4 v8, -0x3

    const-wide/16 v9, 0x0

    const/4 v11, -0x5

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v4, v12, :cond_2

    if-nez p1, :cond_3

    goto/16 :goto_8

    :cond_2
    if-ne v4, v8, :cond_4

    .line 2522
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v3, :cond_3

    .line 2523
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_3
    :goto_1
    const/16 v13, 0x15

    goto/16 :goto_d

    :cond_4
    const-string v15, "csd-1"

    const-string v2, "csd-0"

    if-ne v4, v7, :cond_5

    .line 2526
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 2527
    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v5, v11, :cond_3

    .line 2528
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v4, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const-string v5, "prepend-sps-pps-to-idr-frames"

    .line 2529
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v13, :cond_3

    .line 2530
    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2531
    invoke-virtual {v4, v15}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2532
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    goto :goto_1

    :cond_5
    if-ltz v4, :cond_3

    .line 2537
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v3, :cond_6

    .line 2538
    aget-object v7, v1, v4

    goto :goto_2

    .line 2540
    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_1c

    .line 2545
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-le v12, v13, :cond_f

    .line 2546
    iget v3, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v16, v3, 0x2

    if-nez v16, :cond_b

    .line 2547
    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    if-eqz v2, :cond_7

    and-int/lit8 v15, v3, 0x1

    if-eqz v15, :cond_7

    .line 2548
    iget v15, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v15, v2

    iput v15, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v12, v2

    .line 2549
    iput v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2551
    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    if-eqz v2, :cond_a

    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_a

    .line 2552
    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_9

    .line 2553
    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v2, v3, [B

    .line 2555
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_3
    const/16 v12, 0x60

    if-ge v3, v12, :cond_9

    .line 2558
    aget-byte v12, v2, v3

    if-nez v12, :cond_8

    add-int/lit8 v12, v3, 0x1

    aget-byte v12, v2, v12

    if-nez v12, :cond_8

    add-int/lit8 v12, v3, 0x2

    aget-byte v12, v2, v12

    if-nez v12, :cond_8

    add-int/lit8 v12, v3, 0x3

    aget-byte v12, v2, v12

    if-ne v12, v13, :cond_8

    add-int/lit8 v8, v8, 0x1

    if-le v8, v13, :cond_8

    .line 2561
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v3

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 2562
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v8, v3

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2568
    :cond_9
    :goto_4
    iput-boolean v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    .line 2570
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v7, v8, v13}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v2

    cmp-long v7, v2, v9

    if-eqz v7, :cond_f

    .line 2572
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v7, v2, v3, v14}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    goto/16 :goto_7

    .line 2574
    :cond_b
    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v3, v11, :cond_f

    .line 2575
    new-array v3, v12, [B

    .line 2576
    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v12

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2577
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2578
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2581
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v7, v13

    :goto_5
    if-ltz v7, :cond_d

    const/4 v8, 0x3

    if-le v7, v8, :cond_d

    .line 2583
    aget-byte v8, v3, v7

    if-ne v8, v13, :cond_c

    add-int/lit8 v8, v7, -0x1

    aget-byte v8, v3, v8

    if-nez v8, :cond_c

    add-int/lit8 v8, v7, -0x2

    aget-byte v8, v3, v8

    if-nez v8, :cond_c

    add-int/lit8 v8, v7, -0x3

    aget-byte v12, v3, v8

    if-nez v12, :cond_c

    .line 2584
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 2585
    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v8

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 2586
    invoke-virtual {v7, v3, v14, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2587
    iget-object v13, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v13, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v13, v8

    invoke-virtual {v12, v3, v8, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    :cond_c
    add-int/lit8 v7, v7, -0x1

    const/4 v13, 0x1

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 2595
    :goto_6
    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    const-string/jumbo v13, "video/avc"

    invoke-static {v13, v3, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v7, :cond_e

    if-eqz v12, :cond_e

    .line 2597
    invoke-virtual {v3, v2, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 2598
    invoke-virtual {v3, v15, v12}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 2600
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v3, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 2603
    :cond_f
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2604
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 2610
    :goto_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_10

    .line 2611
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2615
    :cond_10
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    if-eqz p1, :cond_1a

    .line 2617
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v2, :cond_12

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    if-nez v2, :cond_12

    goto :goto_c

    :cond_11
    const/4 v4, -0x3

    if-ne v2, v4, :cond_15

    .line 2621
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v2, v7, :cond_12

    .line 2622
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_12
    const/4 v7, -0x2

    :cond_13
    const/4 v12, 0x1

    :cond_14
    :goto_a
    const/16 v13, 0x15

    goto :goto_9

    :cond_15
    const/4 v7, -0x2

    if-ne v2, v7, :cond_16

    .line 2625
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 2626
    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    if-ne v8, v11, :cond_13

    .line 2627
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v12, 0x1

    invoke-virtual {v8, v2, v12}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    goto :goto_a

    :cond_16
    const/4 v12, 0x1

    if-ltz v2, :cond_14

    .line 2631
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v8, v13, :cond_17

    .line 2632
    aget-object v8, v1, v2

    goto :goto_b

    .line 2634
    :cond_17
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :goto_b
    if-eqz v8, :cond_1b

    .line 2639
    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_18

    .line 2640
    iput v14, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2642
    :cond_18
    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_19

    .line 2643
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v3, v4, v8, v15, v14}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v3

    cmp-long v8, v3, v9

    if-eqz v8, :cond_19

    .line 2645
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v8, v3, v4, v14}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    .line 2648
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2649
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_10

    :cond_1a
    :goto_c
    return-void

    .line 2637
    :cond_1b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2543
    :cond_1c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_d
    const/16 v3, 0x15

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2659
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2660
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2661
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2662
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2663
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2664
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2665
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 2666
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2669
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2670
    throw v0
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V
    .locals 4

    .line 1856
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 1857
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    if-nez v1, :cond_0

    .line 1858
    monitor-exit v0

    return-void

    .line 1860
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 1864
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    if-le p1, v0, :cond_1

    .line 1866
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_3

    const-string p1, "fix timestamp enabled"

    .line 1867
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1874
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    move-wide p3, v0

    .line 1877
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v1, 0x2

    const/16 v2, 0x20

    shr-long v2, p3, v2

    long-to-int v3, v2

    long-to-int p4, p3

    invoke-virtual {v0, v1, v3, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 1860
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 2

    .line 1882
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1883
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 1884
    :try_start_0
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v1, 0x1

    .line 1885
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 1886
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1887
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1888
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1890
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 1891
    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 1892
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1887
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V
    .locals 2

    .line 1816
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    .line 1817
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->roundVideoBitrate:I

    mul-int/lit16 v1, v1, 0x400

    .line 1819
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    .line 1820
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    .line 1821
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    .line 1822
    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    .line 1823
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 1825
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter p1

    .line 1826
    :try_start_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz p2, :cond_0

    .line 1827
    monitor-exit p1

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 1829
    iput-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    .line 1830
    new-instance p2, Ljava/lang/Thread;

    const-string v0, "TextureMovieEncoder"

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1831
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 1832
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 1833
    :catch_0
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 1835
    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1840
    :cond_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1841
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 1842
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    .line 1843
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p2, :cond_2

    .line 1844
    invoke-virtual {p2}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 1845
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p2}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 1847
    :cond_2
    new-instance p2, Lorg/telegram/messenger/DispatchQueue;

    const-string v0, "keyframes_thumb_queque"

    invoke-direct {p2, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1848
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 1840
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public stopRecording(I)V
    .locals 4

    .line 1852
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
