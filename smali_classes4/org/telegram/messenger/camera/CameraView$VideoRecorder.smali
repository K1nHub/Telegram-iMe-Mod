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

    .line 1198
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1209
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoConvertFirstWrite:Z

    .line 1213
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1214
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1217
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1228
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 p1, -0x5

    .line 1229
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    .line 1230
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    const-wide/16 v0, -0x1

    .line 1233
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    const-wide/16 v2, 0x0

    .line 1235
    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    .line 1236
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 1240
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    .line 1248
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    .line 1250
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    const/4 p1, 0x0

    .line 1259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 1264
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1265
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    .line 1269
    new-instance p1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$1;)V
    .locals 0

    .line 1198
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Z
    .locals 0

    .line 1198
    iget-boolean p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 1198
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)I
    .locals 0

    .line 1198
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sendWhenDone:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 1198
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$EncoderHandler;
    .locals 0

    .line 1198
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V
    .locals 0

    .line 1198
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->prepareEncoder()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;I)V
    .locals 0

    .line 1198
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handleStopRecording(I)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;JLjava/lang/Integer;)V
    .locals 0

    .line 1198
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handleVideoFrameAvailable(JLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 0

    .line 1198
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void
.end method

.method private handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1440
    iget-boolean v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStopedByTime:Z

    if-eqz v0, :cond_0

    return-void

    .line 1443
    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    .line 1445
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 1446
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraView video record not yet started"

    .line 1447
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1453
    :goto_1
    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v0, v3, :cond_7

    if-nez v0, :cond_3

    .line 1454
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v9, 0x989680

    cmp-long v11, v3, v9

    if-lez v11, :cond_3

    .line 1455
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v3, v10

    iput-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->desyncTime:J

    .line 1456
    aget-wide v3, v9, v0

    iput-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    .line 1458
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1459
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

    .line 1463
    :cond_3
    iget-object v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v3, v0

    iget-wide v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    const-string v4, " timestamp = "

    cmp-long v13, v9, v11

    if-ltz v13, :cond_5

    .line 1464
    iput v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .line 1465
    aget-wide v9, v3, v0

    iput-wide v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    .line 1467
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_4

    .line 1468
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

    .line 1472
    :cond_5
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_6

    .line 1473
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

    .line 1478
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraView first audio frame not found, removing buffers "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1481
    :cond_8
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1485
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1486
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto/16 :goto_0

    :cond_9
    return-void

    .line 1493
    :cond_a
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_b

    .line 1494
    iget-object v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v3, v0, v3

    iput-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    .line 1496
    :cond_b
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_c

    .line 1497
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 1500
    :cond_c
    :try_start_0
    invoke-virtual {v1, v7}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1502
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v2, :cond_19

    .line 1507
    :try_start_1
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ltz v10, :cond_18

    .line 1510
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_d

    .line 1511
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v10}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_6

    .line 1513
    :cond_d
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1514
    aget-object v3, v3, v10

    .line 1515
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1517
    :goto_6
    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v11, v6, v9

    .line 1518
    :goto_7
    iget v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v13, 0x0

    if-gt v9, v6, :cond_15

    if-ge v9, v6, :cond_11

    .line 1520
    iget-boolean v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-nez v6, :cond_f

    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v14, v6, v9

    iget-wide v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoLast:J

    iget-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->desyncTime:J

    sub-long/2addr v4, v7

    cmp-long v7, v14, v4

    if-ltz v7, :cond_f

    .line 1521
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_e

    .line 1522
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

    .line 1524
    iput-boolean v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStopedByTime:Z

    .line 1527
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v2, v13

    const/4 v0, 0x1

    goto :goto_9

    .line 1530
    :cond_f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v5, v5, v9

    if-ge v4, v5, :cond_10

    .line 1531
    iput v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    move-object v2, v13

    goto :goto_9

    .line 1535
    :cond_10
    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1537
    :cond_11
    iget v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v9, v4, :cond_14

    .line 1538
    iget-object v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1539
    iget-boolean v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-eqz v4, :cond_12

    .line 1540
    iget-object v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 1542
    :cond_12
    iget-object v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1543
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    .line 1545
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

    .line 1551
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

    .line 1555
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method private handleStopRecording(I)V
    .locals 3

    .line 1630
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-eqz v0, :cond_0

    .line 1631
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sendWhenDone:I

    const/4 p1, 0x0

    .line 1632
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1636
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1638
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1640
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1642
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    .line 1643
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 1644
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1646
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1649
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_2

    .line 1651
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    .line 1652
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 1653
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1655
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1658
    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz p1, :cond_3

    .line 1660
    :try_start_3
    invoke-virtual {p1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1662
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1666
    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 1667
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1668
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_4

    .line 1669
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 1670
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 1672
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, v1, :cond_5

    .line 1673
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 1674
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 1675
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 1676
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 1678
    :cond_5
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1679
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1680
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    .line 1681
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView$EncoderHandler;->exit()V

    .line 1683
    new-instance p1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleVideoFrameAvailable(JLjava/lang/Integer;)V
    .locals 10

    const/4 v0, 0x0

    .line 1561
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1563
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1566
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    invoke-virtual {v1, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 1567
    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 1568
    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 1570
    :cond_0
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v2

    if-nez p3, :cond_1

    .line 1571
    iput-wide p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 1572
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    cmp-long p3, v4, v6

    if-eqz p3, :cond_2

    .line 1573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCommitedFrameTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    mul-long v6, v6, v4

    goto :goto_1

    :cond_1
    sub-long v6, p1, v4

    .line 1579
    iput-wide p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 1581
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 1582
    iget-boolean p3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedFirst:Z

    const/4 v1, 0x1

    if-nez p3, :cond_4

    .line 1583
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedTime:J

    const-wide/32 v8, 0xbebc200

    cmp-long p3, v4, v8

    if-gez p3, :cond_3

    return-void

    .line 1587
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedFirst:Z

    .line 1589
    :cond_4
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    .line 1590
    iget-wide v4, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    cmp-long p3, v4, v2

    if-nez p3, :cond_5

    const-wide/16 v2, 0x3e8

    .line 1591
    div-long v2, p1, v2

    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    .line 1592
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_5

    .line 1593
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraView first video frame was at "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1596
    :cond_5
    iput-wide p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoLast:J

    .line 1599
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1600
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$600(Lorg/telegram/messenger/camera/CameraView;)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1601
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1602
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    const/4 v3, 0x2

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1603
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1604
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->vertexMatrixHandle:I

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p2}, Lorg/telegram/messenger/camera/CameraView;->access$500(Lorg/telegram/messenger/camera/CameraView;)[F

    move-result-object p2

    invoke-static {p1, v1, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p1, 0x84c0

    .line 1606
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1607
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$2200(Lorg/telegram/messenger/camera/CameraView;)[I

    move-result-object p1

    aget p1, p1, v0

    const/4 p2, 0x4

    const/4 p3, 0x5

    const v2, 0x8d65

    if-eqz p1, :cond_7

    .line 1608
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->blendEnabled:Z

    if-nez p1, :cond_6

    const/16 p1, 0xbe2

    .line 1609
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1610
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->blendEnabled:Z

    .line 1612
    :cond_6
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraView;->access$1200(Lorg/telegram/messenger/camera/CameraView;)[F

    move-result-object v3

    invoke-static {p1, v1, v0, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1613
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$2200(Lorg/telegram/messenger/camera/CameraView;)[I

    move-result-object p1

    aget p1, p1, v0

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1614
    invoke-static {p3, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1616
    :cond_7
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraView;->access$200(Lorg/telegram/messenger/camera/CameraView;)[F

    move-result-object v3

    invoke-static {p1, v1, v0, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1617
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$400(Lorg/telegram/messenger/camera/CameraView;)[I

    move-result-object p1

    aget p1, p1, v0

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1618
    invoke-static {p3, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1620
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1621
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1622
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1623
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1625
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    invoke-static {p1, p2, v0, v1}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 1626
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method private synthetic lambda$handleStopRecording$0()V
    .locals 1

    .line 1684
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$2100(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V

    .line 1685
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->onRecordingFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private prepareEncoder()V
    .locals 24

    move-object/from16 v1, p0

    const-string v0, "video/avc"

    const-string v2, "bitrate"

    const-string v3, "audio/mp4a-latm"

    const/16 v4, 0x10

    const v5, 0xac44

    const/4 v6, 0x2

    .line 1691
    :try_start_0
    invoke-static {v5, v4, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    if-gtz v4, :cond_0

    const/16 v4, 0xe00

    :cond_0
    const v7, 0xc000

    const/4 v8, 0x1

    if-ge v7, v4, :cond_1

    .line 1697
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

    .line 1700
    iget-object v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v11}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1702
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

    .line 1703
    invoke-virtual {v15}, Landroid/media/AudioRecord;->startRecording()V

    .line 1704
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_3

    .line 1705
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

    .line 1707
    :cond_3
    new-instance v7, Ljava/lang/Thread;

    iget-object v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v9, 0xa

    .line 1708
    invoke-virtual {v7, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 1709
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1711
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1712
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1714
    new-instance v7, Landroid/media/MediaFormat;

    invoke-direct {v7}, Landroid/media/MediaFormat;-><init>()V

    const-string v9, "mime"

    .line 1715
    invoke-virtual {v7, v9, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sample-rate"

    .line 1716
    invoke-virtual {v7, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "channel-count"

    .line 1717
    invoke-virtual {v7, v5, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v5, 0x7d00

    .line 1718
    invoke-virtual {v7, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "max-input-size"

    const/16 v9, 0x5000

    .line 1719
    invoke-virtual {v7, v5, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1721
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    .line 1722
    invoke-virtual {v3, v7, v5, v5, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1723
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 1725
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    .line 1726
    iput-boolean v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->firstEncode:Z

    .line 1728
    iget v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    iget v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    invoke-static {v0, v3, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "color-format"

    const v7, 0x7f000789

    .line 1730
    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1731
    iget v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBitrate:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    const/16 v3, 0x1e

    .line 1732
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    .line 1733
    invoke-virtual {v0, v2, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1735
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v5, v5, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1736
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 1737
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 1739
    new-instance v0, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v0}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 1740
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 1741
    invoke-virtual {v0, v4}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 1742
    iget v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    iget v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 1743
    new-instance v2, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v2}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    invoke-virtual {v2, v0, v4}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;Z)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1749
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_e

    .line 1753
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1754
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_d

    new-array v2, v6, [I

    .line 1758
    invoke-static {v0, v2, v4, v2, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1763
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_5

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 1766
    fill-array-data v0, :array_0

    new-array v2, v8, [Landroid/opengl/EGLConfig;

    new-array v3, v8, [I

    .line 1777
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

    .line 1781
    fill-array-data v3, :array_1

    .line 1785
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v5, v2, v4

    iget-object v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v5, v7, v3, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1786
    aget-object v0, v2, v4

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    goto :goto_1

    .line 1778
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    new-array v0, v8, [I

    .line 1790
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/16 v5, 0x3098

    invoke-static {v2, v3, v5, v0, v4}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 1792
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_b

    new-array v0, v8, [I

    const/16 v2, 0x3038

    aput v2, v0, v4

    .line 1799
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    invoke-static {v2, v3, v5, v0, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_a

    .line 1804
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1805
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 1806
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

    .line 1808
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x302

    const/16 v2, 0x303

    .line 1810
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

    .line 1821
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 1822
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1825
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    const v2, 0x8b31

    const-string v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/camera/CameraView;->access$300(Lorg/telegram/messenger/camera/CameraView;ILjava/lang/String;)I

    move-result v0

    .line 1826
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    const v3, 0x8b30

    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/camera/CameraView;->access$300(Lorg/telegram/messenger/camera/CameraView;ILjava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 1828
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    .line 1829
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1830
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1831
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v8, [I

    .line 1833
    iget v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1834
    aget v0, v0, v4

    if-nez v0, :cond_8

    .line 1835
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1836
    iput v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    goto :goto_2

    .line 1838
    :cond_8
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    .line 1839
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    .line 1840
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->vertexMatrixHandle:I

    .line 1841
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureMatrixHandle:I

    :cond_9
    :goto_2
    return-void

    .line 1801
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1793
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "surface already created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1759
    :cond_c
    iput-object v5, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1760
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1755
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1750
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EGL already set up"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 1746
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

    .line 1852
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 1856
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    .line 1857
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1860
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

    .line 1866
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v3, :cond_2

    .line 1867
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v13, "csd-1"

    const-string v14, "csd-0"

    if-ne v4, v7, :cond_5

    .line 1870
    iget-object v4, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 1871
    iget v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v5, v9, :cond_2

    .line 1872
    iget-object v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v4, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    iput v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    const-string v5, "prepend-sps-pps-to-idr-frames"

    .line 1873
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_2

    .line 1874
    invoke-virtual {v4, v14}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1875
    invoke-virtual {v4, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1876
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v5, v4

    iput v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->prependHeaderSize:I

    goto :goto_0

    :cond_5
    if-ltz v4, :cond_2

    .line 1881
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v3, :cond_6

    .line 1882
    aget-object v15, v1, v4

    goto :goto_1

    .line 1884
    :cond_6
    iget-object v15, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v15, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    :goto_1
    if-eqz v15, :cond_1c

    .line 1889
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-le v7, v12, :cond_f

    .line 1890
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v16, v8, 0x2

    if-nez v16, :cond_b

    .line 1891
    iget v13, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->prependHeaderSize:I

    if-eqz v13, :cond_7

    and-int/lit8 v14, v8, 0x1

    if-eqz v14, :cond_7

    .line 1892
    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v14, v13

    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v7, v13

    .line 1893
    iput v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1895
    :cond_7
    iget-boolean v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->firstEncode:Z

    if-eqz v7, :cond_a

    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_a

    .line 1896
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v8, 0x64

    if-le v7, v8, :cond_9

    .line 1897
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v2, v8, [B

    .line 1899
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    const/16 v13, 0x60

    if-ge v7, v13, :cond_9

    .line 1902
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

    .line 1905
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v7

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1906
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v8, v7

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_3

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1912
    :cond_9
    :goto_3
    iput-boolean v11, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->firstEncode:Z

    .line 1914
    :cond_a
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v7, v15, v8, v12}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    goto/16 :goto_6

    .line 1915
    :cond_b
    iget v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v8, v9, :cond_f

    .line 1916
    new-array v8, v7, [B

    .line 1917
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v7

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1918
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1919
    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1922
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v2, v12

    :goto_4
    if-ltz v2, :cond_d

    const/4 v7, 0x3

    if-le v2, v7, :cond_d

    .line 1924
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

    .line 1925
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1926
    iget-object v15, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v15, v7

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 1927
    invoke-virtual {v2, v8, v11, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1928
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

    .line 1936
    :goto_5
    iget v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    iget v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    const-string v12, "video/avc"

    invoke-static {v12, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    if-eqz v2, :cond_e

    if-eqz v15, :cond_e

    .line 1938
    invoke-virtual {v7, v14, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1939
    invoke-virtual {v7, v13, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1941
    :cond_e
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v7, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    .line 1944
    :cond_f
    :goto_6
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1945
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 1951
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_10

    .line 1952
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1956
    :cond_10
    :goto_8
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v4, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v4, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    if-ne v2, v10, :cond_12

    if-eqz p1, :cond_1a

    .line 1958
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

    .line 1962
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_13

    .line 1963
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

    .line 1966
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 1967
    iget v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    if-ne v8, v9, :cond_15

    .line 1968
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

    .line 1972
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v3, :cond_17

    .line 1973
    aget-object v8, v1, v2

    goto :goto_b

    .line 1975
    :cond_17
    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :goto_b
    if-eqz v8, :cond_1b

    .line 1980
    iget-object v13, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_18

    .line 1981
    iput v11, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1983
    :cond_18
    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v14, :cond_19

    .line 1984
    iget-object v14, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v15, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v14, v15, v8, v13, v11}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    .line 1986
    :cond_19
    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1987
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_10

    :cond_1a
    :goto_c
    return-void

    .line 1978
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

    .line 1887
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

    .line 1997
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 1998
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 1999
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2000
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2001
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2002
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2003
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 2004
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2008
    throw v0
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V
    .locals 4

    .line 1400
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z

    if-nez v1, :cond_0

    .line 1402
    monitor-exit v0

    return-void

    .line 1404
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 1408
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->zeroTimeStamps:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->zeroTimeStamps:I

    if-le p1, v0, :cond_1

    .line 1410
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_3

    const-string p1, "CameraView fix timestamp enabled"

    .line 1411
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1418
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->zeroTimeStamps:I

    move-wide p3, v0

    .line 1421
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

    .line 1404
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 1847
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1426
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1427
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 1428
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$EncoderHandler;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    const/4 v1, 0x1

    .line 1429
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z

    .line 1430
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1432
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1434
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 1435
    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z

    .line 1436
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

    .line 1431
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V
    .locals 3

    .line 1343
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1350
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$2000(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    .line 1351
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

    .line 1357
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    .line 1359
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$2100(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result p1

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$2100(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result p1

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 1363
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    .line 1364
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    goto :goto_2

    .line 1360
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoWidth:I

    .line 1361
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoHeight:I

    .line 1366
    :goto_2
    iput v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBitrate:I

    .line 1367
    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 1369
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter p1

    .line 1370
    :try_start_0
    iget-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-eqz p2, :cond_3

    .line 1371
    monitor-exit p1

    return-void

    :cond_3
    const/4 p2, 0x1

    .line 1373
    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    .line 1374
    new-instance p2, Ljava/lang/Thread;

    const-string v0, "TextureMovieEncoder"

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1375
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 1376
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 1377
    :catch_0
    :goto_3
    iget-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_4

    .line 1379
    :try_start_1
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1384
    :cond_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1385
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 1386
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->frameCount:I

    .line 1387
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p2, :cond_5

    .line 1388
    invoke-virtual {p2}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 1389
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p2}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 1391
    :cond_5
    new-instance p2, Lorg/telegram/messenger/DispatchQueue;

    const-string v0, "keyframes_thumb_queque"

    invoke-direct {p2, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1392
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 1384
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public stopRecording(I)V
    .locals 4

    .line 1396
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
