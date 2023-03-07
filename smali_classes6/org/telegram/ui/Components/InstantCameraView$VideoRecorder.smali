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

    .line 1681
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1692
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    .line 1696
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1697
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1700
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1711
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 p1, -0x5

    .line 1712
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 1713
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    const-wide/16 v0, -0x1

    .line 1716
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    const-wide/16 v2, 0x0

    .line 1718
    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 1719
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 1723
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    .line 1731
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 1733
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    const/4 p1, 0x0

    .line 1745
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 1749
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1750
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    .line 1754
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V
    .locals 0

    .line 1681
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 1681
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prepareEncoder()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V
    .locals 0

    .line 1681
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleStopRecording(I)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;JLjava/lang/Integer;)V
    .locals 0

    .line 1681
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleVideoFrameAvailable(JLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 0

    .line 1681
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    .line 1681
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 1681
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I
    .locals 0

    .line 1681
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 1681
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
    .locals 0

    .line 1681
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/ArrayList;
    .locals 0

    .line 1681
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    return-object p0
.end method

.method private createKeyframeThumb()V
    .locals 2

    .line 2147
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

    .line 2148
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    .line 2149
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private didWriteData(Ljava/io/File;JZ)V
    .locals 11

    .line 2518
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 2519
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

    .line 2520
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    if-eqz p4, :cond_3

    .line 2522
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

    .line 2525
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

    .line 1919
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    if-eqz v0, :cond_0

    return-void

    .line 1922
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    .line 1924
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 1925
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "video record not yet started"

    .line 1926
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1932
    :goto_1
    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v0, v3, :cond_7

    if-nez v0, :cond_3

    .line 1933
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v9, 0x989680

    cmp-long v11, v3, v9

    if-lez v11, :cond_3

    .line 1934
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v3, v10

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    .line 1935
    aget-wide v3, v9, v0

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 1937
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1938
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

    .line 1942
    :cond_3
    iget-object v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v3, v0

    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    const-string v4, " timestamp = "

    cmp-long v13, v9, v11

    if-ltz v13, :cond_5

    .line 1943
    iput v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .line 1944
    aget-wide v9, v3, v0

    iput-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 1946
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_4

    .line 1947
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

    .line 1951
    :cond_5
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_6

    .line 1952
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

    .line 1957
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first audio frame not found, removing buffers "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1960
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1964
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1965
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto/16 :goto_0

    :cond_9
    return-void

    .line 1972
    :cond_a
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_b

    .line 1973
    iget-object v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v3, v0, v3

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    .line 1975
    :cond_b
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_c

    .line 1976
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 1979
    :cond_c
    :try_start_0
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1981
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v2, :cond_19

    .line 1986
    :try_start_1
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ltz v10, :cond_18

    .line 1989
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_d

    .line 1990
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v10}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_6

    .line 1992
    :cond_d
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1993
    aget-object v3, v3, v10

    .line 1994
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1996
    :goto_6
    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v11, v6, v9

    .line 1997
    :goto_7
    iget v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v13, 0x0

    if-gt v9, v6, :cond_15

    if-ge v9, v6, :cond_11

    .line 1999
    iget-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v6, :cond_f

    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v14, v6, v9

    iget-wide v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    sub-long/2addr v4, v7

    cmp-long v7, v14, v4

    if-ltz v7, :cond_f

    .line 2000
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_e

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop audio encoding because of stoped video recording at "

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

    .line 2003
    iput-boolean v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    .line 2006
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v2, v13

    const/4 v0, 0x1

    goto :goto_9

    .line 2009
    :cond_f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v5, v5, v9

    if-ge v4, v5, :cond_10

    .line 2010
    iput v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    move-object v2, v13

    goto :goto_9

    .line 2014
    :cond_10
    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2016
    :cond_11
    iget v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v9, v4, :cond_14

    .line 2017
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2018
    iget-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v4, :cond_12

    .line 2019
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 2021
    :cond_12
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2022
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    .line 2024
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

    .line 2030
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

    .line 2034
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method private handleStopRecording(I)V
    .locals 3

    .line 2176
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2177
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    .line 2178
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2182
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2184
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2186
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2188
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2189
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2190
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2192
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2195
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 2197
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2198
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2199
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    .line 2201
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 2203
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2206
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v0, :cond_3

    .line 2208
    :try_start_3
    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 2210
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2213
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_4

    .line 2214
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 2215
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 2216
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    :cond_4
    if-eqz p1, :cond_5

    .line 2219
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 2303
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

    .line 2304
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2306
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 2307
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 2308
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_6

    .line 2309
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 2310
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 2312
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, v0, :cond_7

    .line 2313
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2314
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2315
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2316
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2318
    :cond_7
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2319
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2320
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    .line 2321
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

    .line 2040
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 2042
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2045
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v6, -0x1

    if-nez v0, :cond_0

    .line 2046
    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 2047
    iput-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 2049
    :cond_0
    iget-wide v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v6

    if-nez v0, :cond_1

    .line 2050
    iput-wide v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 2051
    iget-wide v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    .line 2052
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

    .line 2059
    iput-wide v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    :cond_2
    move-wide v8, v10

    .line 2061
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 2062
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    const/4 v4, 0x1

    if-nez v0, :cond_4

    .line 2063
    iget-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    const-wide/32 v14, 0xbebc200

    cmp-long v0, v12, v14

    if-gez v0, :cond_3

    return-void

    .line 2067
    :cond_3
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    .line 2069
    :cond_4
    iget-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 2070
    iget-wide v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v10, v6

    if-nez v0, :cond_5

    const-wide/16 v6, 0x3e8

    .line 2071
    div-long v6, v2, v6

    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 2072
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first video frame was at "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2076
    :cond_5
    iput-wide v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    .line 2078
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2079
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-static {v0, v4, v5, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 2081
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2082
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2083
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2085
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    int-to-float v2, v2

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2087
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

    .line 2088
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    if-nez v0, :cond_6

    .line 2089
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2090
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 2092
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2093
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

    .line 2095
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

    .line 2097
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v11

    invoke-static {v0, v4, v5, v11, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2098
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2099
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v5

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2100
    invoke-static {v6, v5, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2104
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2105
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

    .line 2108
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

    .line 2109
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

    .line 2111
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v11

    invoke-static {v0, v4, v5, v11, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2112
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v11

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2113
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v5

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2114
    invoke-static {v6, v5, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2116
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2117
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2118
    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2119
    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2121
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    invoke-static {v0, v3, v6, v7}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 2122
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 2124
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->createKeyframeThumb()V

    .line 2125
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    add-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    .line 2127
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

    .line 2128
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    long-to-float v3, v8

    const v6, 0x4d3ebc20    # 2.0E8f

    div-float/2addr v3, v6

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2516(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 2129
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_b

    .line 2130
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 2131
    iput-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 2132
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v10}, Lorg/telegram/ui/Components/InstantCameraView;->access$2502(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 2133
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2134
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v5, v0, v5

    .line 2135
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2136
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2802(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 2137
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2140
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2141
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2802(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 2142
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

    .line 2236
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

    .line 2237
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$3()V
    .locals 2

    .line 2239
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$4(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 2220
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v2, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1002(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    .line 2221
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 2222
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 2223
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iput-wide v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 2224
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2225
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 2226
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5000(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 2227
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5100(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 2228
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

    .line 2229
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    const/16 v3, 0x19

    iput v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 2230
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    const/16 v4, 0x168

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 2231
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 2232
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

    .line 2234
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

    .line 2242
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

    .line 2235
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

    .line 2240
    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v10

    .line 2235
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_1

    .line 2245
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v4, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v4}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$902(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;

    .line 2246
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2282
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$4100(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2283
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "other"

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2284
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 2285
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 2286
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5400(Lorg/telegram/ui/Components/InstantCameraView;)V

    .line 2288
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v5, v4, [Landroid/animation/Animator;

    .line 2289
    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2290
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

    .line 2291
    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$5600(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    new-array v8, v2, [I

    aput v1, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2292
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

    .line 2289
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0xb4

    .line 2293
    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2294
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2295
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 2296
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v5

    iput-wide v5, v3, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 2297
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

    .line 2299
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    .line 2300
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    return-void
.end method

.method private synthetic lambda$handleVideoFrameAvailable$0()V
    .locals 3

    .line 2137
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

    .line 2142
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

    .line 2408
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2412
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 2417
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$4602(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 2418
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$4702(Lorg/telegram/ui/Components/InstantCameraView;J)J

    .line 2419
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2420
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

    const-string v0, "video/avc"

    const-string v2, "bitrate"

    const-string v3, "audio/mp4a-latm"

    const/4 v4, 0x1

    .line 2344
    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V

    const/16 v5, 0x10

    const v6, 0xbb80

    const/4 v7, 0x2

    .line 2347
    :try_start_0
    invoke-static {v6, v5, v7}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    if-gtz v5, :cond_0

    const/16 v5, 0xe00

    :cond_0
    const v8, 0xc000

    if-ge v8, v5, :cond_1

    .line 2353
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

    .line 2356
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v11}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2358
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

    .line 2359
    invoke-virtual {v15}, Landroid/media/AudioRecord;->startRecording()V

    .line 2360
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_3

    .line 2361
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

    .line 2363
    :cond_3
    new-instance v8, Ljava/lang/Thread;

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v9, 0xa

    .line 2364
    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 2365
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 2367
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2368
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2370
    new-instance v8, Landroid/media/MediaFormat;

    invoke-direct {v8}, Landroid/media/MediaFormat;-><init>()V

    const-string v9, "mime"

    .line 2371
    invoke-virtual {v8, v9, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sample-rate"

    .line 2372
    invoke-virtual {v8, v9, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "channel-count"

    .line 2373
    invoke-virtual {v8, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2374
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

    .line 2375
    invoke-virtual {v8, v6, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2377
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    .line 2378
    invoke-virtual {v3, v8, v6, v6, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2379
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 2381
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    .line 2382
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    .line 2384
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-static {v0, v3, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "color-format"

    const v8, 0x7f000789

    .line 2386
    invoke-virtual {v0, v3, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2387
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    const/16 v3, 0x1e

    .line 2388
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    .line 2389
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2397
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v6, v6, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2398
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 2399
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 2401
    new-instance v0, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v0}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 2402
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 2403
    invoke-virtual {v0, v5}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 2404
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 2405
    new-instance v2, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v2}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;Z)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    .line 2407
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2426
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_e

    .line 2430
    invoke-static {v5}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2431
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_d

    new-array v2, v7, [I

    .line 2435
    invoke-static {v0, v2, v5, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2440
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_5

    const/16 v0, 0xd

    new-array v7, v0, [I

    .line 2443
    fill-array-data v7, :array_0

    new-array v0, v4, [Landroid/opengl/EGLConfig;

    new-array v12, v4, [I

    .line 2454
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

    .line 2458
    fill-array-data v2, :array_1

    .line 2462
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v6, v0, v5

    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    invoke-static {v3, v6, v7, v2, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2463
    aget-object v0, v0, v5

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    goto :goto_1

    .line 2455
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    new-array v0, v4, [I

    .line 2467
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/16 v6, 0x3098

    invoke-static {v2, v3, v6, v0, v5}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 2469
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_b

    new-array v0, v4, [I

    const/16 v2, 0x3038

    aput v2, v0, v5

    .line 2476
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    iget-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    invoke-static {v2, v3, v6, v0, v5}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_a

    .line 2481
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2482
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 2483
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

    .line 2485
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x302

    const/16 v2, 0x303

    .line 2487
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 2489
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v2, 0x8b31

    const-string v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v0

    .line 2490
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

    .line 2492
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    .line 2493
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2494
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2495
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v4, [I

    .line 2497
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 2498
    aget v0, v0, v5

    if-nez v0, :cond_8

    .line 2499
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 2500
    iput v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    goto :goto_2

    .line 2502
    :cond_8
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    .line 2503
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    .line 2504
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "preview"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    .line 2505
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "resolution"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    .line 2506
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "alpha"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    .line 2507
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    .line 2508
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    :cond_9
    :goto_2
    return-void

    .line 2478
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2470
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "surface already created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2436
    :cond_c
    iput-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2437
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2432
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2427
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EGL already set up"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 2423
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

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

    .line 2325
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2326
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_5

    .line 2327
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 2329
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

    .line 2330
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2331
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 2332
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2333
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2338
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

    .line 2531
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 2535
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    .line 2536
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2539
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

    .line 2545
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v3, :cond_3

    .line 2546
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

    .line 2549
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 2550
    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v5, v11, :cond_3

    .line 2551
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v4, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const-string v5, "prepend-sps-pps-to-idr-frames"

    .line 2552
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v13, :cond_3

    .line 2553
    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2554
    invoke-virtual {v4, v15}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2555
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    goto :goto_1

    :cond_5
    if-ltz v4, :cond_3

    .line 2560
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v3, :cond_6

    .line 2561
    aget-object v7, v1, v4

    goto :goto_2

    .line 2563
    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_1c

    .line 2568
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-le v12, v13, :cond_f

    .line 2569
    iget v3, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v16, v3, 0x2

    if-nez v16, :cond_b

    .line 2570
    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    if-eqz v2, :cond_7

    and-int/lit8 v15, v3, 0x1

    if-eqz v15, :cond_7

    .line 2571
    iget v15, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v15, v2

    iput v15, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v12, v2

    .line 2572
    iput v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2574
    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    if-eqz v2, :cond_a

    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_a

    .line 2575
    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_9

    .line 2576
    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v2, v3, [B

    .line 2578
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_3
    const/16 v12, 0x60

    if-ge v3, v12, :cond_9

    .line 2581
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

    .line 2584
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v3

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 2585
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v8, v3

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2591
    :cond_9
    :goto_4
    iput-boolean v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    .line 2593
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v7, v8, v13}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v2

    cmp-long v7, v2, v9

    if-eqz v7, :cond_f

    .line 2595
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v7, v2, v3, v14}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    goto/16 :goto_7

    .line 2597
    :cond_b
    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v3, v11, :cond_f

    .line 2598
    new-array v3, v12, [B

    .line 2599
    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v12

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2600
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2601
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2604
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v7, v13

    :goto_5
    if-ltz v7, :cond_d

    const/4 v8, 0x3

    if-le v7, v8, :cond_d

    .line 2606
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

    .line 2607
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 2608
    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v8

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 2609
    invoke-virtual {v7, v3, v14, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2610
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

    .line 2618
    :goto_6
    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    const-string v13, "video/avc"

    invoke-static {v13, v3, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v7, :cond_e

    if-eqz v12, :cond_e

    .line 2620
    invoke-virtual {v3, v2, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 2621
    invoke-virtual {v3, v15, v12}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 2623
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v3, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 2626
    :cond_f
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2627
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 2633
    :goto_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_10

    .line 2634
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2638
    :cond_10
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    if-eqz p1, :cond_1a

    .line 2640
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v2, :cond_12

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    if-nez v2, :cond_12

    goto :goto_c

    :cond_11
    const/4 v4, -0x3

    if-ne v2, v4, :cond_15

    .line 2644
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v2, v7, :cond_12

    .line 2645
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

    .line 2648
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 2649
    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    if-ne v8, v11, :cond_13

    .line 2650
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v12, 0x1

    invoke-virtual {v8, v2, v12}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    goto :goto_a

    :cond_16
    const/4 v12, 0x1

    if-ltz v2, :cond_14

    .line 2654
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v8, v13, :cond_17

    .line 2655
    aget-object v8, v1, v2

    goto :goto_b

    .line 2657
    :cond_17
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :goto_b
    if-eqz v8, :cond_1b

    .line 2662
    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_18

    .line 2663
    iput v14, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2665
    :cond_18
    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_19

    .line 2666
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v3, v4, v8, v15, v14}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v3

    cmp-long v8, v3, v9

    if-eqz v8, :cond_19

    .line 2668
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v8, v3, v4, v14}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    .line 2671
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2672
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_10

    :cond_1a
    :goto_c
    return-void

    .line 2660
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

    .line 2566
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

    .line 2682
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2683
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2684
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2685
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2686
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2687
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2688
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 2689
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2693
    throw v0
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V
    .locals 4

    .line 1879
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 1880
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    if-nez v1, :cond_0

    .line 1881
    monitor-exit v0

    return-void

    .line 1883
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1885
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 1887
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    if-le p1, v0, :cond_1

    .line 1889
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_3

    const-string p1, "fix timestamp enabled"

    .line 1890
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1897
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    move-wide p3, v0

    .line 1900
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

    .line 1883
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 2

    .line 1905
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1906
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 1907
    :try_start_0
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v1, 0x1

    .line 1908
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 1909
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1910
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1911
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1913
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 1914
    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 1915
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

    .line 1910
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V
    .locals 2

    .line 1839
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    .line 1840
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->roundVideoBitrate:I

    mul-int/lit16 v1, v1, 0x400

    .line 1842
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    .line 1843
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    .line 1844
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    .line 1845
    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    .line 1846
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 1848
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter p1

    .line 1849
    :try_start_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz p2, :cond_0

    .line 1850
    monitor-exit p1

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 1852
    iput-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    .line 1853
    new-instance p2, Ljava/lang/Thread;

    const-string v0, "TextureMovieEncoder"

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1854
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 1855
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 1856
    :catch_0
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 1858
    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1863
    :cond_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1864
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 1865
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    .line 1866
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p2, :cond_2

    .line 1867
    invoke-virtual {p2}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 1868
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p2}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 1870
    :cond_2
    new-instance p2, Lorg/telegram/messenger/DispatchQueue;

    const-string v0, "keyframes_thumb_queque"

    invoke-direct {p2, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1871
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 1863
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public stopRecording(I)V
    .locals 4

    .line 1875
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
