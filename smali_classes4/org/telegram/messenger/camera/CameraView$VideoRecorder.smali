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

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/hevc"


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

.field private blurHandle:I

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

.field private cameraMatrixHandle:I

.field private crossfadeHandle:I

.field private currentTimestamp:J

.field private desyncTime:J

.field private drawProgram:I

.field private dualHandle:I

.field private eglConfig:Landroid/opengl/EGLConfig;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private fileToWrite:Ljava/io/File;

.field fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

.field private firstEncode:Z

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

.field private oppositeCameraMatrixHandle:I

.field private outputMimeType:Ljava/lang/String;

.field private pixelHandle:I

.field private positionHandle:I

.field private prependHeaderSize:I

.field private ready:Z

.field private recorderRunnable:Ljava/lang/Runnable;

.field private roundRadiusHandle:I

.field private volatile running:Z

.field private scaleHandle:I

.field private volatile sendWhenDone:I

.field private shapeFromHandle:I

.field private shapeHandle:I

.field private shapeToHandle:I

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

.field private videoLast:J

.field private videoTrackIndex:I

.field private writingToDifferentFile:Z

.field private zeroTimeStamps:I


# direct methods
.method public static synthetic $r8$lambda$8dtT6qotw_08-k9crG-RS658tzc(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lambda$handleStopRecording$0(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O5Aroe6jU1o5pqpYhvVMYbmlAg0(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lambda$handleStopRecording$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hCQMkDftOo727FiCv5BVpPLcBIY(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lambda$drainEncoder$3(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yyE3IWrpGbWH5snqHDKFTte76Q4(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lambda$drainEncoder$2(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 4

    .line 1972
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1983
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoConvertFirstWrite:Z

    .line 1987
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1988
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1991
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 2002
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 p1, -0x5

    .line 2003
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    .line 2004
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    const-wide/16 v0, -0x1

    .line 2007
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    const-wide/16 v2, 0x0

    .line 2009
    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    .line 2010
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 2014
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    .line 2022
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    .line 2024
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    const/4 p1, 0x0

    .line 2043
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 2048
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2049
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    .line 2053
    new-instance p1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$1;)V
    .locals 0

    .line 1972
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Z
    .locals 0

    .line 1972
    iget-boolean p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 1972
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)I
    .locals 0

    .line 1972
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sendWhenDone:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 1972
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$EncoderHandler;
    .locals 0

    .line 1972
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V
    .locals 0

    .line 1972
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->prepareEncoder()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;I)V
    .locals 0

    .line 1972
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handleStopRecording(I)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;JLjava/lang/Integer;)V
    .locals 0

    .line 1972
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handleVideoFrameAvailable(JLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 0

    .line 1972
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void
.end method

.method private handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 16

    move-object/from16 v1, p0

    .line 2221
    iget-boolean v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStopedByTime:Z

    if-eqz v0, :cond_0

    return-void

    .line 2224
    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_a

    .line 2226
    iget-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 2227
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraView video record not yet started"

    .line 2228
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    move v0, v3

    .line 2234
    :goto_1
    iget v7, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v0, v7, :cond_7

    if-nez v0, :cond_3

    .line 2235
    iget-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x989680

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 2236
    iget-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v7, v10

    iput-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->desyncTime:J

    .line 2237
    aget-wide v7, v9, v0

    iput-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    .line 2239
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    .line 2240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CameraView detected desync between audio and video "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->desyncTime:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 2244
    :cond_3
    iget-object v7, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v8, v7, v0

    iget-wide v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    cmp-long v8, v8, v10

    const-string v9, " timestamp = "

    if-ltz v8, :cond_5

    .line 2245
    iput v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .line 2246
    aget-wide v10, v7, v0

    iput-wide v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioFirst:J

    .line 2248
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_4

    .line 2249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CameraView found first audio frame at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v8, v0

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_2
    move v0, v4

    goto :goto_3

    .line 2253
    :cond_5
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_6

    .line 2254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CameraView ignore first audio frame at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v8, v0

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    move v0, v3

    :goto_3
    if-nez v0, :cond_a

    .line 2259
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CameraView first audio frame not found, removing buffers "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2262
    :cond_8
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2266
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2267
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto/16 :goto_0

    :cond_9
    return-void

    .line 2274
    :cond_a
    iget-wide v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_b

    .line 2275
    iget-object v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v5, v0, v5

    iput-wide v5, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    .line 2277
    :cond_b
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_c

    .line 2278
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 2281
    :cond_c
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 2283
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    move v0, v3

    :cond_d
    :goto_5
    if-eqz v2, :cond_19

    .line 2288
    :try_start_1
    iget-object v5, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_d

    .line 2291
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v5, v8, :cond_e

    .line 2292
    iget-object v5, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_6

    .line 2294
    :cond_e
    iget-object v5, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2295
    aget-object v5, v5, v9

    .line 2296
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2298
    :goto_6
    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v11, v8, v10

    .line 2299
    :goto_7
    iget v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v13, 0x0

    if-gt v10, v8, :cond_16

    if-ge v10, v8, :cond_12

    .line 2301
    iget-boolean v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-nez v8, :cond_10

    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v14, v8, v10

    iget-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoLast:J

    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->desyncTime:J

    sub-long/2addr v6, v3

    cmp-long v3, v14, v6

    if-ltz v3, :cond_10

    .line 2302
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraView stop audio encoding because of stoped video recording at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v3, v2, v10

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " last video "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoLast:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_f
    const/4 v2, 0x1

    .line 2305
    iput-boolean v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStopedByTime:Z

    .line 2308
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v2, v13

    const/4 v0, 0x1

    goto :goto_8

    .line 2311
    :cond_10
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v4, v4, v10

    if-ge v3, v4, :cond_11

    .line 2312
    iput v10, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    move-object v2, v13

    :goto_8
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_a

    .line 2316
    :cond_11
    iget-object v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v10

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2318
    :cond_12
    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v10, v3, :cond_15

    .line 2319
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2320
    iget-boolean v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-eqz v3, :cond_13

    .line 2321
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 2323
    :cond_13
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2324
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    .line 2326
    iget-boolean v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    move-object v2, v13

    goto :goto_a

    :cond_15
    const/4 v3, 0x0

    :goto_9
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v6, 0x0

    goto/16 :goto_7

    .line 2332
    :cond_16
    :goto_a
    iget-object v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    const-wide/16 v6, 0x0

    cmp-long v13, v11, v6

    if-nez v13, :cond_17

    :goto_b
    move-wide v12, v6

    goto :goto_c

    :cond_17
    iget-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioStartTime:J

    sub-long v6, v11, v6

    goto :goto_b

    :goto_c
    if-eqz v0, :cond_18

    const/4 v6, 0x4

    move v14, v6

    goto :goto_d

    :cond_18
    move v14, v3

    :goto_d
    move v11, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    .line 2336
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method private handleStopRecording(I)V
    .locals 3

    .line 2478
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-eqz v0, :cond_0

    .line 2479
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sendWhenDone:I

    const/4 p1, 0x0

    .line 2480
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2484
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2486
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2488
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2490
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2491
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2492
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2494
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2497
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 2499
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2500
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2501
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 2503
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2506
    :cond_2
    :goto_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2507
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2516
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 2518
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2521
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->writingToDifferentFile:Z

    if-eqz p1, :cond_3

    .line 2522
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p1, "unable to rename file, try move file"

    .line 2523
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2525
    :try_start_4
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 2526
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 2528
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string/jumbo p1, "unable to move file"

    .line 2529
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2534
    :cond_3
    :goto_4
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 2535
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 2536
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_4

    .line 2537
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 2538
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 2540
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, v0, :cond_5

    .line 2541
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2542
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2543
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2544
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2546
    :cond_5
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2547
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2548
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    .line 2549
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView$EncoderHandler;->exit()V

    .line 2551
    new-instance p1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleVideoFrameAvailable(JLjava/lang/Integer;)V
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 2342
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 2344
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2347
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2348
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v8, -0x1

    if-nez v0, :cond_0

    .line 2349
    iput-wide v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 2350
    iput-object v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 2352
    :cond_0
    iget-wide v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    cmp-long v0, v10, v8

    const-wide/16 v12, 0x0

    if-nez v0, :cond_1

    .line 2353
    iput-wide v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 2354
    iget-wide v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    cmp-long v0, v10, v12

    if-eqz v0, :cond_2

    .line 2355
    iget-wide v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCommitedFrameTime:J

    sub-long v10, v6, v10

    const-wide/32 v12, 0xf4240

    mul-long/2addr v12, v10

    goto :goto_1

    :cond_1
    sub-long v12, v2, v10

    .line 2361
    iput-wide v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastTimestamp:J

    .line 2363
    :cond_2
    :goto_1
    iput-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 2364
    iget-boolean v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedFirst:Z

    const/4 v4, 0x1

    if-nez v0, :cond_4

    .line 2365
    iget-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedTime:J

    add-long/2addr v6, v12

    iput-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedTime:J

    const-wide/32 v10, 0xbebc200

    cmp-long v0, v6, v10

    if-gez v0, :cond_3

    return-void

    .line 2369
    :cond_3
    iput-boolean v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->skippedFirst:Z

    .line 2371
    :cond_4
    iget-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    add-long/2addr v6, v12

    iput-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    .line 2372
    iget-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_5

    const-wide/16 v6, 0x3e8

    .line 2373
    div-long v6, v2, v6

    iput-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    .line 2374
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CameraView first video frame was at "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFirst:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2378
    :cond_5
    iput-wide v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoLast:J

    .line 2380
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$700(Lorg/telegram/messenger/camera/CameraView;)[[I

    move-result-object v0

    aget-object v0, v0, v4

    aget v0, v0, v5

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->blendEnabled:Z

    if-nez v0, :cond_6

    const/16 v0, 0xbe2

    .line 2381
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2382
    iput-boolean v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->blendEnabled:Z

    .line 2384
    :cond_6
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v0, v0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 2386
    invoke-static {v3, v3, v3, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v6, 0x4000

    .line 2387
    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 2389
    :cond_7
    iget-object v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraView;->access$2000(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v6

    cmpl-float v7, v6, v3

    if-lez v7, :cond_8

    move v7, v4

    goto :goto_2

    :cond_8
    move v7, v5

    :goto_2
    const/4 v8, -0x1

    move v9, v8

    :goto_3
    const/4 v10, 0x2

    if-ge v9, v10, :cond_12

    if-ne v9, v8, :cond_9

    if-nez v7, :cond_9

    goto/16 :goto_8

    :cond_9
    if-gez v9, :cond_a

    move v10, v4

    goto :goto_4

    :cond_a
    move v10, v9

    .line 2396
    :goto_4
    iget-object v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v11}, Lorg/telegram/messenger/camera/CameraView;->access$700(Lorg/telegram/messenger/camera/CameraView;)[[I

    move-result-object v11

    aget-object v11, v11, v10

    aget v11, v11, v5

    if-nez v11, :cond_b

    goto/16 :goto_8

    .line 2400
    :cond_b
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v11}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2401
    iget v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    const/4 v13, 0x3

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0xc

    iget-object v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v11}, Lorg/telegram/messenger/camera/CameraView;->access$900(Lorg/telegram/messenger/camera/CameraView;)Ljava/nio/FloatBuffer;

    move-result-object v17

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2402
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2403
    iget v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    const/4 v13, 0x2

    const/16 v16, 0x8

    iget-object v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2404
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2405
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->vertexMatrixHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$800(Lorg/telegram/messenger/camera/CameraView;)[[F

    move-result-object v12

    aget-object v12, v12, v10

    invoke-static {v11, v4, v5, v12, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2407
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->cameraMatrixHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$1200(Lorg/telegram/messenger/camera/CameraView;)[[F

    move-result-object v12

    aget-object v12, v12, v10

    invoke-static {v11, v4, v5, v12, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2408
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->oppositeCameraMatrixHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$1200(Lorg/telegram/messenger/camera/CameraView;)[[F

    move-result-object v12

    rsub-int/lit8 v13, v10, 0x1

    aget-object v12, v12, v13

    invoke-static {v11, v4, v5, v12, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v11, 0x84c0

    .line 2410
    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2411
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$500(Lorg/telegram/messenger/camera/CameraView;)[[F

    move-result-object v12

    aget-object v12, v12, v10

    invoke-static {v11, v4, v5, v12, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2413
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->blurHandle:I

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    if-nez v10, :cond_d

    .line 2415
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->pixelHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$2100(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v12

    iget-object v13, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v13}, Lorg/telegram/messenger/camera/CameraView;->access$2200(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2416
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->dualHandle:I

    if-eqz v0, :cond_c

    move v12, v2

    goto :goto_5

    :cond_c
    move v12, v3

    :goto_5
    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_6

    .line 2418
    :cond_d
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->pixelHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$2300(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v12

    iget-object v13, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v13}, Lorg/telegram/messenger/camera/CameraView;->access$2400(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2419
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->dualHandle:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_6
    const/16 v11, 0x10

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v10, v4, :cond_10

    .line 2422
    iget v13, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->alphaHandle:I

    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    if-gez v9, :cond_e

    .line 2424
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->roundRadiusHandle:I

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2425
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->scaleHandle:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2426
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeFromHandle:I

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2427
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeToHandle:I

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2428
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeHandle:I

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2429
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->crossfadeHandle:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/16 :goto_7

    :cond_e
    if-nez v7, :cond_f

    .line 2431
    iget v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->roundRadiusHandle:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v12, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2432
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->scaleHandle:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2433
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeFromHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$1900(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2434
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeToHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$1900(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2435
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$1900(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v12

    iget-object v13, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v13}, Lorg/telegram/messenger/camera/CameraView;->access$1900(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v13, v13

    sub-float/2addr v12, v13

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2436
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->crossfadeHandle:I

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/16 :goto_7

    .line 2438
    :cond_f
    iget v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->roundRadiusHandle:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v12, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2439
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->scaleHandle:I

    sub-float v12, v2, v6

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2440
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeFromHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$1900(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2441
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeToHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$1900(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2442
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeHandle:I

    iget-object v12, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v12}, Lorg/telegram/messenger/camera/CameraView;->access$1900(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v12

    iget-object v13, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v13}, Lorg/telegram/messenger/camera/CameraView;->access$1900(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v13, v13

    sub-float/2addr v12, v13

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2443
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeHandle:I

    invoke-static {v11, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2444
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->crossfadeHandle:I

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_7

    .line 2447
    :cond_10
    iget v13, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->alphaHandle:I

    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    if-eqz v7, :cond_11

    .line 2449
    iget v13, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->roundRadiusHandle:I

    const/16 v14, 0xc

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v14, v11, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v13, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2450
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->scaleHandle:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2451
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeFromHandle:I

    iget-object v13, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v13}, Lorg/telegram/messenger/camera/CameraView;->access$1300(Lorg/telegram/messenger/camera/CameraView;)F

    move-result v13

    invoke-static {v11, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2452
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeToHandle:I

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2453
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeHandle:I

    sub-float v12, v2, v6

    invoke-static {v12, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v12

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2454
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->crossfadeHandle:I

    invoke-static {v11, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_7

    .line 2456
    :cond_11
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->roundRadiusHandle:I

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2457
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->scaleHandle:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2458
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeFromHandle:I

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2459
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeToHandle:I

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2460
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeHandle:I

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2461
    iget v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->crossfadeHandle:I

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2464
    :goto_7
    iget-object v11, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v11}, Lorg/telegram/messenger/camera/CameraView;->access$700(Lorg/telegram/messenger/camera/CameraView;)[[I

    move-result-object v11

    aget-object v10, v11, v10

    aget v10, v10, v5

    const v11, 0x8d65

    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v10, 0x5

    const/4 v12, 0x4

    .line 2465
    invoke-static {v10, v5, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2467
    iget v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2468
    iget v10, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2469
    invoke-static {v11, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2470
    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 2473
    :cond_12
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-wide v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->currentTimestamp:J

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 2474
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method private synthetic lambda$drainEncoder$2(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 2833
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2835
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$drainEncoder$3(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 2918
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2920
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$handleStopRecording$0(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 2509
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2511
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2513
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$1()V
    .locals 2

    .line 2552
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$3400(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2553
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$3400(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V

    .line 2555
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$3400(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 2556
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$3400(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V

    .line 2558
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->onRecordingFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private prepareEncoder()V
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "bitrate"

    const-string v0, "audio/mp4a-latm"

    const/16 v3, 0x10

    const v4, 0xac44

    const/4 v5, 0x2

    .line 2564
    :try_start_0
    invoke-static {v4, v3, v5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    if-gtz v3, :cond_0

    const/16 v3, 0xe00

    :cond_0
    const v6, 0xc000

    const/4 v7, 0x1

    if-ge v6, v3, :cond_1

    .line 2570
    div-int/lit16 v3, v3, 0x800

    add-int/2addr v3, v7

    mul-int/lit16 v3, v3, 0x800

    mul-int/lit8 v6, v3, 0x2

    :cond_1
    const/4 v3, 0x0

    move v8, v3

    :goto_0
    const/4 v14, 0x3

    if-ge v8, v14, :cond_2

    .line 2573
    iget-object v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v10}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2575
    :cond_2
    new-instance v15, Landroid/media/AudioRecord;

    const/4 v9, 0x0

    const v10, 0xac44

    const/16 v11, 0x10

    const/4 v12, 0x2

    move-object v8, v15

    move v13, v6

    invoke-direct/range {v8 .. v13}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v15, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    .line 2576
    invoke-virtual {v15}, Landroid/media/AudioRecord;->startRecording()V

    .line 2577
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v8, :cond_3

    .line 2578
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CameraView initied audio record with channels "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v9}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sample rate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v9}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bufferSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2580
    :cond_3
    new-instance v6, Ljava/lang/Thread;

    iget-object v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v8, 0xa

    .line 2581
    invoke-virtual {v6, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 2582
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2584
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2585
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2587
    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    const-string v8, "mime"

    .line 2588
    invoke-virtual {v6, v8, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "sample-rate"

    .line 2589
    invoke-virtual {v6, v8, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "channel-count"

    .line 2590
    invoke-virtual {v6, v4, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v4, 0x7d00

    .line 2591
    invoke-virtual {v6, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "max-input-size"

    const/16 v8, 0x5000

    .line 2592
    invoke-virtual {v6, v4, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2594
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    .line 2595
    invoke-virtual {v0, v6, v4, v4, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2596
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 2598
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v0, v0, Lorg/telegram/messenger/camera/CameraView;->isStory:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "video/hevc"

    const-string/jumbo v8, "video/avc"

    if-eqz v0, :cond_4

    move-object v9, v6

    goto :goto_1

    :cond_4
    move-object v9, v8

    .line 2599
    :goto_1
    :try_start_1
    iput-object v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->outputMimeType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_5

    .line 2602
    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->findGoodHevcEncoder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2604
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2607
    :cond_5
    iput-object v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->outputMimeType:Ljava/lang/String;

    .line 2608
    invoke-static {v8}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    .line 2610
    :cond_6
    :goto_2
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "hevc encoder isn\'t hardware accelerated"

    .line 2611
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2612
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2613
    iput-object v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_3
    const-string v9, "can\'t get hevc encoder"

    .line 2616
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2617
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2619
    :cond_7
    :goto_4
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_8

    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2620
    iput-object v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->outputMimeType:Ljava/lang/String;

    .line 2621
    invoke-static {v8}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    .line 2623
    :cond_8
    iput-boolean v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->firstEncode:Z

    .line 2625
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->outputMimeType:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraView;->access$3500(Lorg/telegram/messenger/camera/CameraView;)I

    move-result v6

    iget-object v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v8}, Lorg/telegram/messenger/camera/CameraView;->access$3600(Lorg/telegram/messenger/camera/CameraView;)I

    move-result v8

    invoke-static {v0, v6, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v6, "color-format"

    const v8, 0x7f000789

    .line 2627
    invoke-virtual {v0, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2628
    iget v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBitrate:I

    invoke-virtual {v0, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    const/16 v6, 0x1e

    .line 2629
    invoke-virtual {v0, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    .line 2630
    invoke-virtual {v0, v2, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2632
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v4, v4, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2633
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 2634
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 2636
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->isSdCardPath(Ljava/io/File;)Z

    move-result v0

    .line 2637
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    iput-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileToWrite:Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_a

    .line 2640
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v6, "camera_tmp.mp4"

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    .line 2641
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2642
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2644
    :cond_9
    iput-boolean v7, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->writingToDifferentFile:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 2646
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2647
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    .line 2648
    iput-boolean v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->writingToDifferentFile:Z

    .line 2652
    :cond_a
    :goto_5
    new-instance v0, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v0}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 2653
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 2654
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 2655
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraView;->access$3500(Lorg/telegram/messenger/camera/CameraView;)I

    move-result v2

    iget-object v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraView;->access$3600(Lorg/telegram/messenger/camera/CameraView;)I

    move-result v6

    invoke-virtual {v0, v2, v6}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 2656
    new-instance v2, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v2}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    invoke-virtual {v2, v0, v3, v3}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2662
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_15

    .line 2666
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2667
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_14

    new-array v2, v5, [I

    .line 2671
    invoke-static {v0, v2, v3, v2, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2676
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_c

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 2679
    fill-array-data v0, :array_0

    new-array v2, v7, [Landroid/opengl/EGLConfig;

    new-array v6, v7, [I

    .line 2690
    iget-object v15, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x1

    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v21, v6

    invoke-static/range {v15 .. v22}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-eqz v0, :cond_b

    new-array v0, v14, [I

    .line 2694
    fill-array-data v0, :array_1

    .line 2698
    iget-object v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v8, v2, v3

    iget-object v9, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    invoke-static {v6, v8, v9, v0, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2699
    aget-object v0, v2, v3

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    goto :goto_6

    .line 2691
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    new-array v0, v7, [I

    .line 2703
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/16 v8, 0x3098

    invoke-static {v2, v6, v8, v0, v3}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 2705
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_12

    new-array v0, v7, [I

    const/16 v2, 0x3038

    aput v2, v0, v3

    .line 2712
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    iget-object v8, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    invoke-static {v2, v6, v8, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_11

    .line 2717
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2718
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_d

    .line 2719
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

    .line 2721
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/16 v0, 0x302

    const/16 v2, 0x303

    .line 2723
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v3

    aput v2, v0, v7

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v0, v5

    aput v2, v0, v14

    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v2, 0x5

    aput v6, v0, v2

    const/4 v2, 0x6

    aput v6, v0, v2

    const/4 v2, 0x7

    aput v6, v0, v2

    const/16 v2, 0x20

    .line 2734
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 2735
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2738
    iget-object v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    const v2, 0x8b31

    sget v5, Lorg/telegram/messenger/R$raw;->camera_vert:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/camera/CameraView;->access$600(Lorg/telegram/messenger/camera/CameraView;ILjava/lang/String;)I

    move-result v0

    .line 2739
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    const v5, 0x8b30

    sget v6, Lorg/telegram/messenger/R$raw;->camera_frag:I

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lorg/telegram/messenger/camera/CameraView;->access$600(Lorg/telegram/messenger/camera/CameraView;ILjava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_10

    if-eqz v2, :cond_10

    .line 2741
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    .line 2742
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2743
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2744
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v7, [I

    .line 2746
    iget v2, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const v4, 0x8b82

    invoke-static {v2, v4, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 2747
    aget v0, v0, v3

    if-nez v0, :cond_f

    .line 2748
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 2749
    iput v3, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    goto/16 :goto_7

    .line 2751
    :cond_f
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->positionHandle:I

    .line 2752
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureHandle:I

    .line 2753
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->vertexMatrixHandle:I

    .line 2754
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->textureMatrixHandle:I

    .line 2755
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "cameraMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->cameraMatrixHandle:I

    .line 2756
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "oppositeCameraMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->oppositeCameraMatrixHandle:I

    .line 2758
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "roundRadius"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->roundRadiusHandle:I

    .line 2759
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "pixelWH"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->pixelHandle:I

    .line 2760
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "dual"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->dualHandle:I

    .line 2761
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "scale"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->scaleHandle:I

    .line 2762
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "blur"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->blurHandle:I

    .line 2763
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "alpha"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->alphaHandle:I

    .line 2764
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string v2, "crossfade"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->crossfadeHandle:I

    .line 2765
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "shapeFrom"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeFromHandle:I

    .line 2766
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "shapeTo"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeToHandle:I

    .line 2767
    iget v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v2, "shapeT"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->shapeHandle:I

    :cond_10
    :goto_7
    return-void

    .line 2714
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2706
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "surface already created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2672
    :cond_13
    iput-object v4, v1, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2673
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2668
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2663
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EGL already set up"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 2659
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

    .line 2778
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 2782
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    .line 2783
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2786
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

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v4, v10, :cond_3

    if-nez p1, :cond_2

    goto/16 :goto_7

    :cond_3
    if-ne v4, v8, :cond_4

    .line 2792
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v3, :cond_2

    .line 2793
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v13, "csd-1"

    const-string v14, "csd-0"

    if-ne v4, v7, :cond_7

    .line 2796
    iget-object v4, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 2797
    iget v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v5, v9, :cond_2

    .line 2798
    iget-object v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v4, v12}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    iput v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    const-string/jumbo v5, "prepend-sps-pps-to-idr-frames"

    .line 2799
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v11, :cond_2

    .line 2800
    invoke-virtual {v4, v14}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2801
    invoke-virtual {v4, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v5, :cond_5

    move v5, v12

    goto :goto_1

    .line 2802
    :cond_5
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    :goto_1
    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    :goto_2
    add-int/2addr v5, v12

    iput v5, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->prependHeaderSize:I

    goto :goto_0

    :cond_7
    if-ltz v4, :cond_2

    .line 2807
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v3, :cond_8

    .line 2808
    aget-object v15, v1, v4

    goto :goto_3

    .line 2810
    :cond_8
    iget-object v15, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v15, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    :goto_3
    if-eqz v15, :cond_1d

    .line 2815
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-le v7, v11, :cond_10

    .line 2816
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v16, v8, 0x2

    if-nez v16, :cond_b

    .line 2817
    iget v13, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->prependHeaderSize:I

    if-eqz v13, :cond_9

    and-int/lit8 v14, v8, 0x1

    if-eqz v14, :cond_9

    .line 2818
    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v14, v13

    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v7, v13

    .line 2819
    iput v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2821
    :cond_9
    iget-boolean v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->firstEncode:Z

    if-eqz v7, :cond_a

    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_a

    .line 2822
    iget-object v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->outputMimeType:Ljava/lang/String;

    invoke-static {v7, v15, v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 2823
    iput-boolean v12, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->firstEncode:Z

    .line 2825
    :cond_a
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 2826
    iget-object v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2827
    iget v8, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 2828
    iget v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 2829
    iget-wide v7, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v7, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 2830
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 2831
    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v13, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v13, v0, v7, v2}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v8, v13}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 2838
    :cond_b
    iget v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v2, v9, :cond_10

    .line 2839
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->outputMimeType:Ljava/lang/String;

    const-string/jumbo v7, "video/hevc"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 2842
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v8, v7, [B

    .line 2843
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v7

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2844
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2845
    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2848
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v2, v11

    :goto_4
    if-ltz v2, :cond_d

    const/4 v7, 0x3

    if-le v2, v7, :cond_d

    .line 2850
    aget-byte v7, v8, v2

    if-ne v7, v11, :cond_c

    add-int/lit8 v7, v2, -0x1

    aget-byte v7, v8, v7

    if-nez v7, :cond_c

    add-int/lit8 v7, v2, -0x2

    aget-byte v7, v8, v7

    if-nez v7, :cond_c

    add-int/lit8 v7, v2, -0x3

    aget-byte v15, v8, v7

    if-nez v15, :cond_c

    .line 2851
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2852
    iget-object v15, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v15, v7

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 2853
    invoke-virtual {v2, v8, v12, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2854
    iget-object v11, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v11, v7

    invoke-virtual {v15, v8, v7, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, -0x1

    const/4 v11, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 2862
    :goto_5
    iget-object v7, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v7}, Lorg/telegram/messenger/camera/CameraView;->access$3500(Lorg/telegram/messenger/camera/CameraView;)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v8}, Lorg/telegram/messenger/camera/CameraView;->access$3600(Lorg/telegram/messenger/camera/CameraView;)I

    move-result v8

    const-string/jumbo v11, "video/avc"

    invoke-static {v11, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    if-eqz v2, :cond_e

    if-eqz v15, :cond_e

    .line 2864
    invoke-virtual {v7, v14, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 2865
    invoke-virtual {v7, v13, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 2867
    :cond_e
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v7, v12}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoTrackIndex:I

    goto :goto_6

    .line 2840
    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "need fix parsing csd data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2870
    :cond_10
    :goto_6
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2871
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 2877
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_11

    .line 2878
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2882
    :cond_11
    :goto_8
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v4, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v4, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    if-ne v2, v10, :cond_13

    if-eqz p1, :cond_1b

    .line 2884
    iget-boolean v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-nez v2, :cond_12

    iget v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sendWhenDone:I

    if-nez v2, :cond_12

    goto/16 :goto_c

    :cond_12
    const/4 v4, -0x3

    goto :goto_9

    :cond_13
    const/4 v4, -0x3

    if-ne v2, v4, :cond_15

    .line 2888
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_14

    .line 2889
    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_14
    :goto_9
    const/4 v7, -0x2

    goto :goto_a

    :cond_15
    const/4 v7, -0x2

    if-ne v2, v7, :cond_17

    .line 2892
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 2893
    iget v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    if-ne v8, v9, :cond_16

    .line 2894
    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v11, 0x1

    invoke-virtual {v8, v2, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioTrackIndex:I

    goto :goto_8

    :cond_16
    :goto_a
    const/4 v11, 0x1

    goto :goto_8

    :cond_17
    const/4 v11, 0x1

    if-ltz v2, :cond_11

    .line 2898
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v3, :cond_18

    .line 2899
    aget-object v8, v1, v2

    goto :goto_b

    .line 2901
    :cond_18
    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :goto_b
    if-eqz v8, :cond_1c

    .line 2906
    iget-object v13, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_19

    .line 2907
    iput v12, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2909
    :cond_19
    iget v13, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v13, :cond_1a

    .line 2910
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 2911
    iget-object v14, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2912
    iget v15, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 2913
    iget v15, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 2914
    iget-wide v14, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v14, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 2915
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 2916
    iget-object v14, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v15, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0, v8, v13}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2924
    :cond_1a
    iget-object v8, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2925
    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_11

    :cond_1b
    :goto_c
    return-void

    .line 2904
    :cond_1c
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

    .line 2813
    :cond_1d
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2934
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2935
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 2936
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 2939
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_1

    .line 2940
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2941
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2942
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2943
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2944
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2945
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2946
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2950
    throw v0
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V
    .locals 4

    .line 2181
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 2182
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z

    if-nez v1, :cond_0

    .line 2183
    monitor-exit v0

    return-void

    .line 2185
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 2189
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->zeroTimeStamps:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->zeroTimeStamps:I

    if-le p1, v0, :cond_1

    .line 2191
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_3

    const-string p1, "CameraView fix timestamp enabled"

    .line 2192
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 2199
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->zeroTimeStamps:I

    move-wide p3, v0

    .line 2202
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    const/4 v1, 0x2

    const/16 v2, 0x20

    shr-long v2, p3, v2

    long-to-int v2, v2

    long-to-int p3, p3

    invoke-virtual {v0, v1, v2, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 2185
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 2773
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 2207
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2208
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 2209
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$EncoderHandler;-><init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    const/4 v1, 0x1

    .line 2210
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z

    .line 2211
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2213
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2215
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 2216
    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z

    .line 2217
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

    .line 2212
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V
    .locals 4

    .line 2128
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 2135
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$3300(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2136
    iget v2, v0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v3, v0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0x2d0

    if-lt v2, v3, :cond_0

    const v2, 0x3567e0

    goto :goto_0

    :cond_0
    const v2, 0x1b7740

    .line 2142
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoFile:Ljava/io/File;

    .line 2144
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$3400(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result p1

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$3400(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result p1

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 2148
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v3

    invoke-static {p1, v3}, Lorg/telegram/messenger/camera/CameraView;->access$3502(Lorg/telegram/messenger/camera/CameraView;I)I

    .line 2149
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/camera/CameraView;->access$3602(Lorg/telegram/messenger/camera/CameraView;I)I

    goto :goto_2

    .line 2145
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    invoke-static {p1, v3}, Lorg/telegram/messenger/camera/CameraView;->access$3502(Lorg/telegram/messenger/camera/CameraView;I)I

    .line 2146
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/camera/CameraView;->access$3602(Lorg/telegram/messenger/camera/CameraView;I)I

    .line 2151
    :goto_2
    iput v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->videoBitrate:I

    .line 2152
    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 2153
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter p1

    .line 2154
    :try_start_0
    iget-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    if-eqz p2, :cond_3

    .line 2155
    monitor-exit p1

    return-void

    :cond_3
    const/4 p2, 0x1

    .line 2157
    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->running:Z

    .line 2158
    new-instance p2, Ljava/lang/Thread;

    const-string v0, "TextureMovieEncoder"

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 2159
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 2160
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 2161
    :catch_0
    :goto_3
    iget-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_4

    .line 2163
    :try_start_1
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2168
    :cond_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2169
    new-instance p1, Lorg/telegram/messenger/DispatchQueue;

    const-string p2, "VR_FileWriteQueue"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 2170
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 2172
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2173
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 2168
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public stopRecording(I)V
    .locals 4

    .line 2177
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->handler:Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
