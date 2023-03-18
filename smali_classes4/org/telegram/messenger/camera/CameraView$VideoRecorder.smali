.class Lorg/telegram/messenger/camera/CameraView$VideoRecorder;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/camera/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRecorder"
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final FRAME_RATE:I = 0x1e

.field private static final IFRAME_INTERVAL:I = 0x1

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"


# instance fields
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

.field private volatile handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

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

.field private ready:Z

.field private recorderRunnable:Ljava/lang/Runnable;

.field private volatile running:Z

.field private volatile sendWhenDone:I

.field private sharedEglContext:Landroid/opengl/EGLContext;

.field private skippedFirst:Z

.field private skippedTime:J

.field private surface:Landroid/view/Surface;

.field private final sync:Ljava/lang/Object;

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureHandle:I

.field private textureMatrixHandle:I

.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraView;

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
.method public static synthetic $r8$lambda$BYuhXbRANMO64kFPZA-l6Lns6wE(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lambda$handleStopRecording$0()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 4

    .line 1288
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1299
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoConvertFirstWrite:Z

    .line 1303
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1304
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1307
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1318
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 p1, -0x5

    .line 1319
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    .line 1320
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    const-wide/16 v0, -0x1

    .line 1323
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    const-wide/16 v2, 0x0

    .line 1325
    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    .line 1326
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 1330
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    .line 1338
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    .line 1340
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    const/4 p1, 0x0

    .line 1349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 1354
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1355
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    .line 1359
    new-instance p1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$1;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Z
    .locals 0

    .line 1288
    iget-boolean p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 1288
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)I
    .locals 0

    .line 1288
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sendWhenDone:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 1288
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$EncoderHandler;
    .locals 0

    .line 1288
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V
    .locals 0

    .line 1288
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->prepareEncoder()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;I)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handleStopRecording(I)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;JLjava/lang/Integer;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handleVideoFrameAvailable(JLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void
.end method

.method private handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1530
    iget-boolean v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStopedByTime:Z

    if-eqz v0, :cond_0

    return-void

    .line 1533
    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    .line 1535
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 1536
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraView video record not yet started"

    .line 1537
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1543
    :goto_1
    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v0, v3, :cond_7

    if-nez v0, :cond_3

    .line 1544
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v9, 0x989680

    cmp-long v11, v3, v9

    if-lez v11, :cond_3

    .line 1545
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v3, v10

    iput-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->desyncTime:J

    .line 1546
    aget-wide v3, v9, v0

    iput-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    .line 1548
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraView detected desync between audio and video "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->desyncTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 1553
    :cond_3
    iget-object v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v3, v0

    iget-wide v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    const-string v4, " timestamp = "

    cmp-long v13, v9, v11

    if-ltz v13, :cond_5

    .line 1554
    iput v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .line 1555
    aget-wide v9, v3, v0

    iput-wide v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    .line 1557
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_4

    .line 1558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CameraView found first audio frame at "

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

    .line 1562
    :cond_5
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_6

    .line 1563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CameraView ignore first audio frame at "

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

    .line 1568
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraView first audio frame not found, removing buffers "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1571
    :cond_8
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1575
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1576
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto/16 :goto_0

    :cond_9
    return-void

    .line 1583
    :cond_a
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_b

    .line 1584
    iget-object v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v3, v0, v3

    iput-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    .line 1586
    :cond_b
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_c

    .line 1587
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 1590
    :cond_c
    :try_start_0
    invoke-virtual {v1, v7}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1592
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v2, :cond_19

    .line 1597
    :try_start_1
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ltz v10, :cond_18

    .line 1600
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_d

    .line 1601
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v10}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_6

    .line 1603
    :cond_d
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1604
    aget-object v3, v3, v10

    .line 1605
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1607
    :goto_6
    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v11, v6, v9

    .line 1608
    :goto_7
    iget v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v13, 0x0

    if-gt v9, v6, :cond_15

    if-ge v9, v6, :cond_11

    .line 1610
    iget-boolean v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-nez v6, :cond_f

    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v14, v6, v9

    iget-wide v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoLast:J

    iget-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->desyncTime:J

    sub-long/2addr v4, v7

    cmp-long v7, v14, v4

    if-ltz v7, :cond_f

    .line 1611
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_e

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraView stop audio encoding because of stoped video recording at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v4, v2, v9

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " last video "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoLast:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_e
    const/4 v2, 0x1

    .line 1614
    iput-boolean v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStopedByTime:Z

    .line 1617
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v2, v13

    const/4 v0, 0x1

    goto :goto_9

    .line 1620
    :cond_f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v5, v5, v9

    if-ge v4, v5, :cond_10

    .line 1621
    iput v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    move-object v2, v13

    goto :goto_9

    .line 1625
    :cond_10
    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1627
    :cond_11
    iget v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v9, v4, :cond_14

    .line 1628
    iget-object v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1629
    iget-boolean v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-eqz v4, :cond_12

    .line 1630
    iget-object v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 1632
    :cond_12
    iget-object v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1633
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    .line 1635
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

    .line 1641
    :goto_a
    iget-object v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

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
    iget-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

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

    .line 1645
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method private handleStopRecording(I)V
    .locals 3

    .line 1720
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-eqz v0, :cond_0

    .line 1721
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sendWhenDone:I

    const/4 p1, 0x0

    .line 1722
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1726
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1728
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1730
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1732
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    .line 1733
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 1734
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1736
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1739
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_2

    .line 1741
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    .line 1742
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 1743
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1745
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1748
    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz p1, :cond_3

    .line 1750
    :try_start_3
    invoke-virtual {p1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1752
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1756
    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 1757
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1758
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_4

    .line 1759
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 1760
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 1762
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, v1, :cond_5

    .line 1763
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 1764
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 1765
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 1766
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 1768
    :cond_5
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1769
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1770
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    .line 1771
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView$EncoderHandler;->exit()V

    .line 1773
    new-instance p1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleVideoFrameAvailable(JLjava/lang/Integer;)V
    .locals 10

    const/4 v0, 0x0

    .line 1651
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1653
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1656
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    invoke-virtual {v1, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 1657
    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 1658
    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 1660
    :cond_0
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v2

    if-nez p3, :cond_1

    .line 1661
    iput-wide p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 1662
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    cmp-long p3, v4, v6

    if-eqz p3, :cond_2

    .line 1663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCommitedFrameTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    mul-long v6, v6, v4

    goto :goto_1

    :cond_1
    sub-long v6, p1, v4

    .line 1669
    iput-wide p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 1671
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 1672
    iget-boolean p3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedFirst:Z

    const/4 v1, 0x1

    if-nez p3, :cond_4

    .line 1673
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedTime:J

    const-wide/32 v8, 0xbebc200

    cmp-long p3, v4, v8

    if-gez p3, :cond_3

    return-void

    .line 1677
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedFirst:Z

    .line 1679
    :cond_4
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    .line 1680
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    cmp-long p3, v4, v2

    if-nez p3, :cond_5

    const-wide/16 v2, 0x3e8

    .line 1681
    div-long v2, p1, v2

    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    .line 1682
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_5

    .line 1683
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraView first video frame was at "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1686
    :cond_5
    iput-wide p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoLast:J

    .line 1689
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1690
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$700(Lorg/telegram/messenger/camera/CameraView;)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1691
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1692
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    const/4 v3, 0x2

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1693
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1694
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->vertexMatrixHandle:I

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p2}, Lorg/telegram/messenger/camera/CameraView;->access$600(Lorg/telegram/messenger/camera/CameraView;)[F

    move-result-object p2

    invoke-static {p1, v1, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p1, 0x84c0

    .line 1696
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1697
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$2300(Lorg/telegram/messenger/camera/CameraView;)[I

    move-result-object p1

    aget p1, p1, v0

    const/4 p2, 0x4

    const/4 p3, 0x5

    const v2, 0x8d65

    if-eqz p1, :cond_7

    .line 1698
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->blendEnabled:Z

    if-nez p1, :cond_6

    const/16 p1, 0xbe2

    .line 1699
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1700
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->blendEnabled:Z

    .line 1702
    :cond_6
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraView;->access$1300(Lorg/telegram/messenger/camera/CameraView;)[F

    move-result-object v3

    invoke-static {p1, v1, v0, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1703
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$2300(Lorg/telegram/messenger/camera/CameraView;)[I

    move-result-object p1

    aget p1, p1, v0

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1704
    invoke-static {p3, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1706
    :cond_7
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraView;->access$300(Lorg/telegram/messenger/camera/CameraView;)[F

    move-result-object v3

    invoke-static {p1, v1, v0, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1707
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$500(Lorg/telegram/messenger/camera/CameraView;)[I

    move-result-object p1

    aget p1, p1, v0

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1708
    invoke-static {p3, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1710
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1711
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1712
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1713
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1715
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    invoke-static {p1, p2, v0, v1}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 1716
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method private synthetic lambda$handleStopRecording$0()V
    .locals 1

    .line 1774
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$2200(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V

    .line 1775
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->onRecordingFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private prepareEncoder()V
    .locals 24

    move-object/from16 v1, p0

    const-string/jumbo v0, "video/avc"

    const-string v2, "bitrate"

    const-string v3, "audio/mp4a-latm"

    const/16 v4, 0x10

    const v5, 0xac44

    const/4 v6, 0x2

    .line 1781
    :try_start_0
    invoke-static {v5, v4, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    if-gtz v4, :cond_0

    const/16 v4, 0xe00

    :cond_0
    const v7, 0xc000

    const/4 v8, 0x1

    if-ge v7, v4, :cond_1

    .line 1787
    div-int/lit16 v4, v4, 0x800

    add-int/2addr v4, v8

    mul-int/lit16 v4, v4, 0x800

    mul-int/lit8 v7, v4, 0x2

    :cond_1
    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v15, 0x3

    if-ge v9, v15, :cond_2

    .line 1790
    iget-object v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v11}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1792
    :cond_2
    new-instance v14, Landroid/media/AudioRecord;

    const/4 v10, 0x0

    const v11, 0xac44

    const/16 v12, 0x10

    const/4 v13, 0x2

    move-object v9, v14

    move-object v15, v14

    move v14, v7

    invoke-direct/range {v9 .. v14}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v15, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    .line 1793
    invoke-virtual {v15}, Landroid/media/AudioRecord;->startRecording()V

    .line 1794
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_3

    .line 1795
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CameraView initied audio record with channels "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sample rate = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " bufferSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1797
    :cond_3
    new-instance v7, Ljava/lang/Thread;

    iget-object v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v9, 0xa

    .line 1798
    invoke-virtual {v7, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 1799
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1801
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1802
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1804
    new-instance v7, Landroid/media/MediaFormat;

    invoke-direct {v7}, Landroid/media/MediaFormat;-><init>()V

    const-string v9, "mime"

    .line 1805
    invoke-virtual {v7, v9, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sample-rate"

    .line 1806
    invoke-virtual {v7, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "channel-count"

    .line 1807
    invoke-virtual {v7, v5, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v5, 0x7d00

    .line 1808
    invoke-virtual {v7, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "max-input-size"

    const/16 v9, 0x5000

    .line 1809
    invoke-virtual {v7, v5, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1811
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    .line 1812
    invoke-virtual {v3, v7, v5, v5, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1813
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 1815
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    .line 1816
    iput-boolean v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->firstEncode:Z

    .line 1818
    iget v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    iget v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    invoke-static {v0, v3, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "color-format"

    const v7, 0x7f000789

    .line 1820
    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1821
    iget v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBitrate:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    const/16 v3, 0x1e

    .line 1822
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    .line 1823
    invoke-virtual {v0, v2, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1825
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v5, v5, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1826
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 1827
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 1829
    new-instance v0, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v0}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 1830
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 1831
    invoke-virtual {v0, v4}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 1832
    iget v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    iget v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 1833
    new-instance v2, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v2}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    invoke-virtual {v2, v0, v4}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;Z)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_e

    .line 1843
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1844
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_d

    new-array v2, v6, [I

    .line 1848
    invoke-static {v0, v2, v4, v2, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1853
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_5

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 1856
    fill-array-data v0, :array_0

    new-array v2, v8, [Landroid/opengl/EGLConfig;

    new-array v3, v8, [I

    .line 1867
    iget-object v5, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x1

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    invoke-static/range {v16 .. v23}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    new-array v3, v0, [I

    .line 1871
    fill-array-data v3, :array_1

    .line 1875
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v5, v2, v4

    iget-object v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v5, v7, v3, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1876
    aget-object v0, v2, v4

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    goto :goto_1

    .line 1868
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    new-array v0, v8, [I

    .line 1880
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/16 v5, 0x3098

    invoke-static {v2, v3, v5, v0, v4}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 1882
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_b

    new-array v0, v8, [I

    const/16 v2, 0x3038

    aput v2, v0, v4

    .line 1889
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    invoke-static {v2, v3, v5, v0, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_a

    .line 1894
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1895
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 1896
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

    .line 1898
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x302

    const/16 v2, 0x303

    .line 1900
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v4

    aput v2, v0, v8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v6

    const/4 v5, 0x3

    aput v2, v0, v5

    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v2, 0x5

    aput v3, v0, v2

    const/4 v2, 0x6

    aput v3, v0, v2

    const/4 v2, 0x7

    aput v3, v0, v2

    const/16 v2, 0x20

    .line 1911
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 1912
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1915
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    const v2, 0x8b31

    const-string v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/camera/CameraView;->access$400(Lorg/telegram/messenger/camera/CameraView;ILjava/lang/String;)I

    move-result v0

    .line 1916
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    const v3, 0x8b30

    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/camera/CameraView;->access$400(Lorg/telegram/messenger/camera/CameraView;ILjava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 1918
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    .line 1919
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1920
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1921
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v8, [I

    .line 1923
    iget v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1924
    aget v0, v0, v4

    if-nez v0, :cond_8

    .line 1925
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1926
    iput v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    goto :goto_2

    .line 1928
    :cond_8
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    .line 1929
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    .line 1930
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->vertexMatrixHandle:I

    .line 1931
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureMatrixHandle:I

    :cond_9
    :goto_2
    return-void

    .line 1891
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1883
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "surface already created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1849
    :cond_c
    iput-object v5, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1850
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1845
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1840
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EGL already set up"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 1836
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

    .line 1942
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 1946
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    .line 1947
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1950
    :cond_2
    :goto_0
    iget-object v4, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    iget-object v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const-string v5, " was null"

    const-string v6, "encoderOutputBuffer "

    const/4 v7, -0x2

    const/4 v8, -0x3

    const/4 v9, -0x5

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v4, v10, :cond_3

    if-nez p1, :cond_2

    goto/16 :goto_7

    :cond_3
    if-ne v4, v8, :cond_4

    .line 1956
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v3, :cond_2

    .line 1957
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v13, "csd-1"

    const-string v14, "csd-0"

    if-ne v4, v7, :cond_5

    .line 1960
    iget-object v4, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 1961
    iget v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v5, v9, :cond_2

    .line 1962
    iget-object v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v4, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    iput v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    const-string v5, "prepend-sps-pps-to-idr-frames"

    .line 1963
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_2

    .line 1964
    invoke-virtual {v4, v14}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1965
    invoke-virtual {v4, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1966
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v5, v4

    iput v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->prependHeaderSize:I

    goto :goto_0

    :cond_5
    if-ltz v4, :cond_2

    .line 1971
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v3, :cond_6

    .line 1972
    aget-object v15, v1, v4

    goto :goto_1

    .line 1974
    :cond_6
    iget-object v15, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v15, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    :goto_1
    if-eqz v15, :cond_1c

    .line 1979
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-le v7, v12, :cond_f

    .line 1980
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v16, v8, 0x2

    if-nez v16, :cond_b

    .line 1981
    iget v13, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->prependHeaderSize:I

    if-eqz v13, :cond_7

    and-int/lit8 v14, v8, 0x1

    if-eqz v14, :cond_7

    .line 1982
    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v14, v13

    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v7, v13

    .line 1983
    iput v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1985
    :cond_7
    iget-boolean v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->firstEncode:Z

    if-eqz v7, :cond_a

    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_a

    .line 1986
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v8, 0x64

    if-le v7, v8, :cond_9

    .line 1987
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v2, v8, [B

    .line 1989
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    const/16 v13, 0x60

    if-ge v7, v13, :cond_9

    .line 1992
    aget-byte v13, v2, v7

    if-nez v13, :cond_8

    add-int/lit8 v13, v7, 0x1

    aget-byte v13, v2, v13

    if-nez v13, :cond_8

    add-int/lit8 v13, v7, 0x2

    aget-byte v13, v2, v13

    if-nez v13, :cond_8

    add-int/lit8 v13, v7, 0x3

    aget-byte v13, v2, v13

    if-ne v13, v12, :cond_8

    add-int/lit8 v8, v8, 0x1

    if-le v8, v12, :cond_8

    .line 1995
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v7

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1996
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v8, v7

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_3

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2002
    :cond_9
    :goto_3
    iput-boolean v11, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->firstEncode:Z

    .line 2004
    :cond_a
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v7, v15, v8, v12}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    goto/16 :goto_6

    .line 2005
    :cond_b
    iget v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v8, v9, :cond_f

    .line 2006
    new-array v8, v7, [B

    .line 2007
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v7

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2008
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2009
    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2012
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v2, v12

    :goto_4
    if-ltz v2, :cond_d

    const/4 v7, 0x3

    if-le v2, v7, :cond_d

    .line 2014
    aget-byte v7, v8, v2

    if-ne v7, v12, :cond_c

    add-int/lit8 v7, v2, -0x1

    aget-byte v7, v8, v7

    if-nez v7, :cond_c

    add-int/lit8 v7, v2, -0x2

    aget-byte v7, v8, v7

    if-nez v7, :cond_c

    add-int/lit8 v7, v2, -0x3

    aget-byte v15, v8, v7

    if-nez v15, :cond_c

    .line 2015
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2016
    iget-object v15, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v15, v7

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 2017
    invoke-virtual {v2, v8, v11, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2018
    iget-object v12, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v7

    invoke-virtual {v15, v8, v7, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, -0x1

    const/4 v12, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 2026
    :goto_5
    iget v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    iget v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    const-string/jumbo v12, "video/avc"

    invoke-static {v12, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    if-eqz v2, :cond_e

    if-eqz v15, :cond_e

    .line 2028
    invoke-virtual {v7, v14, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 2029
    invoke-virtual {v7, v13, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 2031
    :cond_e
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v7, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    .line 2034
    :cond_f
    :goto_6
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2035
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 2041
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_10

    .line 2042
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2046
    :cond_10
    :goto_8
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v4, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v4, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    if-ne v2, v10, :cond_12

    if-eqz p1, :cond_1a

    .line 2048
    iget-boolean v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-nez v2, :cond_11

    iget v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sendWhenDone:I

    if-nez v2, :cond_11

    goto :goto_c

    :cond_11
    const/4 v4, -0x3

    goto :goto_9

    :cond_12
    const/4 v4, -0x3

    if-ne v2, v4, :cond_14

    .line 2052
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_13

    .line 2053
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_13
    :goto_9
    const/4 v7, -0x2

    goto :goto_a

    :cond_14
    const/4 v7, -0x2

    if-ne v2, v7, :cond_16

    .line 2056
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 2057
    iget v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    if-ne v8, v9, :cond_15

    .line 2058
    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v12, 0x1

    invoke-virtual {v8, v2, v12}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    goto :goto_8

    :cond_15
    :goto_a
    const/4 v12, 0x1

    goto :goto_8

    :cond_16
    const/4 v12, 0x1

    if-ltz v2, :cond_10

    .line 2062
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v3, :cond_17

    .line 2063
    aget-object v8, v1, v2

    goto :goto_b

    .line 2065
    :cond_17
    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :goto_b
    if-eqz v8, :cond_1b

    .line 2070
    iget-object v13, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_18

    .line 2071
    iput v11, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2073
    :cond_18
    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v14, :cond_19

    .line 2074
    iget-object v14, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v15, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v14, v15, v8, v13, v11}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    .line 2076
    :cond_19
    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2077
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_10

    :cond_1a
    :goto_c
    return-void

    .line 2068
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

    .line 1977
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
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2087
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2088
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2089
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2090
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2091
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2092
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2093
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 2094
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2098
    throw v0
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V
    .locals 4

    .line 1490
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 1491
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z

    if-nez v1, :cond_0

    .line 1492
    monitor-exit v0

    return-void

    .line 1494
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 1498
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->zeroTimeStamps:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->zeroTimeStamps:I

    if-le p1, v0, :cond_1

    .line 1500
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_3

    const-string p1, "CameraView fix timestamp enabled"

    .line 1501
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1508
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->zeroTimeStamps:I

    move-wide p3, v0

    .line 1511
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

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

    .line 1494
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 1937
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1516
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1517
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 1518
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$EncoderHandler;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    const/4 v1, 0x1

    .line 1519
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z

    .line 1520
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1522
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1524
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 1525
    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z

    .line 1526
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

    .line 1521
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V
    .locals 3

    .line 1433
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1440
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$2100(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    .line 1441
    iget v1, v0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v2, v0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x2d0

    if-lt v1, v2, :cond_0

    const v1, 0x3567e0

    goto :goto_0

    :cond_0
    const v1, 0x1b7740

    .line 1447
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    .line 1449
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$2200(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result p1

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$2200(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result p1

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 1453
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    .line 1454
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    goto :goto_2

    .line 1450
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    .line 1451
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    .line 1456
    :goto_2
    iput v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBitrate:I

    .line 1457
    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 1459
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter p1

    .line 1460
    :try_start_0
    iget-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-eqz p2, :cond_3

    .line 1461
    monitor-exit p1

    return-void

    :cond_3
    const/4 p2, 0x1

    .line 1463
    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    .line 1464
    new-instance p2, Ljava/lang/Thread;

    const-string v0, "TextureMovieEncoder"

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1465
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 1466
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 1467
    :catch_0
    :goto_3
    iget-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_4

    .line 1469
    :try_start_1
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1474
    :cond_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1475
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 1476
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->frameCount:I

    .line 1477
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p2, :cond_5

    .line 1478
    invoke-virtual {p2}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 1479
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p2}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 1481
    :cond_5
    new-instance p2, Lorg/telegram/messenger/DispatchQueue;

    const-string v0, "keyframes_thumb_queque"

    invoke-direct {p2, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1482
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 1474
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public stopRecording(I)V
    .locals 4

    .line 1486
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
