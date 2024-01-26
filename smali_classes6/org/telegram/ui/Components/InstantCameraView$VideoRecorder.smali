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

.field private audioLast:J

.field private audioLastDt:J

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

.field private fileToWrite:Ljava/io/File;

.field fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

.field private firstEncode:Z

.field private firstVideoFrameSincePause:Z

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

.field private volatile pauseRecorder:Z

.field private positionHandle:I

.field private prependHeaderSize:I

.field private prevAudioLast:J

.field private prevVideoLast:J

.field private previewSizeHandle:I

.field private ready:Z

.field private recorderRunnable:Ljava/lang/Runnable;

.field private resolutionHandle:I

.field private volatile running:Z

.field private volatile sendWhenDone:I

.field private volatile sendWhenDoneTTL:I

.field private sentMedia:Z

.field private sharedEglContext:Landroid/opengl/EGLContext;

.field private skippedFirst:Z

.field private skippedTime:J

.field private started:Z

.field private surface:Landroid/view/Surface;

.field private final sync:Ljava/lang/Object;

.field private textureHandle:I

.field private textureMatrixHandle:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field private vertexMatrixHandle:I

.field private videoBitrate:I

.field private videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private videoConvertFirstWrite:Z

.field private videoDiff:J

.field private videoEncoder:Landroid/media/MediaCodec;

.field private videoFile:Ljava/io/File;

.field private videoFirst:J

.field private videoHeight:I

.field private videoLast:J

.field private videoLastDt:J

.field private videoTrackIndex:I

.field private videoWidth:I

.field private writingToDifferentFile:Z

.field private zeroTimeStamps:I


# direct methods
.method public static synthetic $r8$lambda$2xBWKfyi-A3v4ClpNN666lcMtFE(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handlePauseRecording$4(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$97ubTKM54OiH5lOmKKI5FHzia64(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$10(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$BLHkZbENG408viIWgdMyVqw2m5g(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$CMw27WgfwA6gKxFqN11K_HbPrzk(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$drainEncoder$14(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L7MLSg1GRRyZvi782IzOsYrpYPw(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleVideoFrameAvailable$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$MTCbQQyTUUrbdMCsdqMbxwbyHC4(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$QyPwt8CMl89xiMPmN-gxgqSiQlc(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$VrR5RO96MCIEpVabrTUyDsV0oCg(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$stopRecording$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zdb9k6-YImBJdh2nv77xhlv3HDM(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$startRecording$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_CJXpF92z19nA8QviVghhFPWJnI(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$prepareEncoder$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_WxEM-rW4rdK1C0tNOsQHMIvKOQ(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleVideoFrameAvailable$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$i7jwm4HSOtM2uUyBkmzR-9HWr3s(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handlePauseRecording$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$iQkl8cn3DKe-2Ld9G0mHDGev5EE(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$drainEncoder$15(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nt1Ty6mjWIaqEolOQJO2Uv_Uhmc(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$7(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pnaRrtPLDY0I01jCLwi8jSqlfJI(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q-wCyaKkuXGSfs22-3r8GU0mbG8(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;IZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$8(IZILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 4

    .line 1865
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1878
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    .line 1882
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1883
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1886
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1897
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 p1, -0x5

    .line 1898
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 1899
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    const-wide/16 v0, -0x1

    .line 1902
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    const-wide/16 v2, 0x0

    .line 1905
    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 1906
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 1910
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    .line 1919
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 1923
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    .line 1924
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 1925
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    .line 1926
    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLastDt:J

    .line 1927
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    const/4 p1, 0x0

    .line 1940
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 1944
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1945
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    .line 1952
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V
    .locals 0

    .line 1865
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    .line 1865
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->started:Z

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V
    .locals 0

    .line 1865
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prepareEncoder(Z)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;II)V
    .locals 0

    .line 1865
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleStopRecording(II)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 1865
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handlePauseRecording()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 1865
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleResumeRecording()V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;JLjava/lang/Integer;)V
    .locals 0

    .line 1865
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleVideoFrameAvailable(JLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 0

    .line 1865
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    .line 1865
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    .line 1865
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 1865
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I
    .locals 0

    .line 1865
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 1865
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
    .locals 0

    .line 1865
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I
    .locals 0

    .line 1865
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDoneTTL:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/ArrayList;
    .locals 0

    .line 1865
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    return-object p0
.end method

.method private createKeyframeThumb()V
    .locals 2

    .line 2440
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_0

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

    .line 2441
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    .line 2442
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private didWriteData(Ljava/io/File;JZ)V
    .locals 11

    .line 3082
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 3083
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x1

    const/high16 v9, 0x2000000

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    const/4 v0, 0x0

    .line 3084
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    if-eqz p4, :cond_3

    .line 3086
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v5

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    :cond_0
    move-wide v8, v1

    move-wide v6, p2

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    goto :goto_0

    .line 3089
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Z

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
    .locals 18

    move-object/from16 v1, p0

    .line 2167
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v0, :cond_0

    return-void

    .line 2170
    :cond_0
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    if-eqz v0, :cond_1

    return-void

    .line 2173
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_b

    .line 2175
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_3

    .line 2176
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    const-string v0, "InstantCamera video record not yet started"

    .line 2177
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    move v0, v3

    .line 2183
    :goto_1
    iget v7, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v0, v7, :cond_8

    if-nez v0, :cond_4

    .line 2184
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x989680

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 2185
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v9, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v10, v9, v0

    sub-long/2addr v7, v10

    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    .line 2186
    aget-wide v7, v9, v0

    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 2188
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InstantCamera detected desync between audio and video "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 2193
    :cond_4
    iget-object v7, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v8, v7, v0

    iget-wide v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v8, v8, v10

    const-string v9, " timestamp = "

    if-ltz v8, :cond_6

    .line 2194
    iput v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .line 2195
    aget-wide v10, v7, v0

    iput-wide v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 2197
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_5

    .line 2198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InstantCamera found first audio frame at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v8, v0

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    :goto_2
    move v0, v4

    goto :goto_3

    .line 2202
    :cond_6
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_7

    .line 2203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InstantCamera ignore first audio frame at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v8, v0

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_8
    move v0, v3

    :goto_3
    if-nez v0, :cond_b

    .line 2208
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_9

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InstantCamera first audio frame not found, removing buffers "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2211
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2215
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2216
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto/16 :goto_0

    :cond_a
    return-void

    .line 2223
    :cond_b
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_c

    .line 2224
    iget-object v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v5, v0, v5

    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    .line 2226
    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_d

    .line 2227
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 2230
    :cond_d
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 2232
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    move v0, v3

    :cond_e
    :goto_5
    if-eqz v2, :cond_1d

    .line 2237
    :try_start_1
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_e

    .line 2240
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v5, v8, :cond_f

    .line 2241
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_6

    .line 2243
    :cond_f
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2244
    aget-object v5, v5, v9

    .line 2245
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2247
    :goto_6
    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v11, v8, v10

    .line 2248
    :goto_7
    iget v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-gt v10, v8, :cond_19

    if-ge v10, v8, :cond_15

    .line 2250
    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v14, v8, v10

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    sub-long/2addr v14, v6

    .line 2251
    iget-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v6, :cond_13

    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v7, v6, v10

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    move-wide/from16 v16, v14

    iget-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    sub-long/2addr v3, v13

    cmp-long v3, v7, v3

    const-wide/32 v7, 0x3938700

    if-gez v3, :cond_10

    cmp-long v3, v16, v7

    if-ltz v3, :cond_13

    .line 2252
    :cond_10
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_12

    cmp-long v0, v16, v7

    if-ltz v0, :cond_11

    const-string v0, "InstantCamera stop audio encoding because recorded time more than 60s"

    .line 2254
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_8

    .line 2256
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera stop audio encoding because of stoped video recording at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v3, v2, v10

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " last video "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_12
    :goto_8
    const/4 v2, 0x1

    .line 2260
    iput-boolean v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    .line 2263
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    goto :goto_9

    .line 2266
    :cond_13
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v4, v4, v10

    if-ge v3, v4, :cond_14

    .line 2267
    iput v10, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    :goto_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_a

    .line 2271
    :cond_14
    iget-object v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v10

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2273
    :cond_15
    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v10, v3, :cond_18

    .line 2274
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2275
    iget-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v3, :cond_16

    .line 2276
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 2278
    :cond_16
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 2279
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_b

    :cond_17
    const/4 v3, 0x0

    .line 2281
    iget-boolean v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    const/4 v2, 0x0

    :goto_a
    const-wide/16 v6, 0x0

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    :goto_b
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v6, 0x0

    goto/16 :goto_7

    :cond_19
    :goto_c
    cmp-long v8, v11, v6

    if-nez v8, :cond_1a

    move-wide v11, v6

    goto :goto_d

    .line 2287
    :cond_1a
    iget-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    sub-long/2addr v11, v13

    .line 2289
    :goto_d
    iget-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    cmp-long v6, v13, v6

    if-ltz v6, :cond_1b

    add-long/2addr v11, v13

    :cond_1b
    move-wide v12, v11

    .line 2292
    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    sub-long v6, v12, v6

    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLastDt:J

    .line 2293
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    .line 2294
    iget-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    if-eqz v0, :cond_1c

    const/4 v5, 0x4

    move v14, v5

    goto :goto_e

    :cond_1c
    move v14, v3

    :goto_e
    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    .line 2298
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method

.method private handlePauseRecording()V
    .locals 4

    const/4 v0, 0x1

    .line 2469
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    .line 2470
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2471
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2472
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5202(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)Ljava/io/File;

    .line 2474
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    invoke-static {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5202(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)Ljava/io/File;

    :try_start_0
    const-string v1, "InstantCamera handlePauseRecording drain encoders"

    .line 2476
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2477
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2479
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2501
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v1, :cond_2

    .line 2502
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v3, :cond_1

    .line 2503
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2504
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2513
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2515
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2519
    :cond_1
    :try_start_2
    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 2521
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2526
    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleResumeRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 2547
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    return-void
.end method

.method private handleStopRecording(II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 2628
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2630
    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    if-nez v2, :cond_1

    .line 2631
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    .line 2632
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 2658
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-nez v3, :cond_3

    const-string v1, "InstantCamera handleStopRecording running=false"

    .line 2659
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2660
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    .line 2661
    iput p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDoneTTL:I

    .line 2662
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return-void

    :cond_3
    :try_start_0
    const-string v3, "InstantCamera handleStopRecording drain encoders"

    .line 2666
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 2669
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2671
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 2673
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 2674
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 2675
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 2677
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2680
    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_5

    .line 2682
    :try_start_2
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 2683
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 2684
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    .line 2686
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 2688
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2691
    :cond_5
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2692
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2693
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$5202(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)Ljava/io/File;

    .line 2695
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_9

    .line 2696
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v5, v5, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v5, :cond_7

    .line 2697
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2698
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2707
    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    .line 2709
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 2713
    :cond_7
    :try_start_4
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 2715
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    const-string v3, "InstantCamera handleStopRecording finish muxer"

    .line 2718
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2719
    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-eqz v3, :cond_9

    .line 2720
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2722
    :try_start_5
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    .line 2724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstantCamera copying fileToWrite to videoFile, deleting videoFile error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2725
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2728
    :cond_8
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "InstantCamera unable to rename file, try move file"

    .line 2729
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2731
    :try_start_6
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 2732
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    .line 2734
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string v3, "InstantCamera unable to move file"

    .line 2735
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_9
    :goto_6
    const/4 v3, 0x2

    if-eq p1, v3, :cond_a

    .line 2741
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v3, :cond_a

    .line 2742
    invoke-virtual {v3}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 2743
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v3}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 2744
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 2747
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InstantCamera handleStopRecording send "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_b

    .line 2749
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 2751
    :try_start_7
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2754
    :catchall_0
    :try_start_8
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_d

    if-ne p1, v1, :cond_c

    .line 2757
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    if-nez v0, :cond_d

    .line 2758
    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    .line 2759
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;II)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2817
    :cond_d
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2825
    :catchall_1
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 2826
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 2827
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_e

    .line 2828
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 2829
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 2831
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, p2, :cond_f

    .line 2832
    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, p2, p2, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2833
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2834
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2835
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2837
    :cond_f
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2838
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2839
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    .line 2840
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->exit()V

    .line 2841
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleVideoFrameAvailable(JLjava/lang/Integer;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 2303
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 2307
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 2309
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2313
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 2315
    iput-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    .line 2317
    :goto_1
    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    const-wide/16 v9, -0x1

    if-ltz v2, :cond_3

    .line 2318
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    cmp-long v2, v11, v9

    if-nez v2, :cond_2

    sub-long v5, p1, v5

    .line 2319
    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    .line 2321
    :cond_2
    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    sub-long v5, p1, v5

    goto :goto_2

    :cond_3
    move-wide/from16 v5, p1

    :goto_2
    if-nez v0, :cond_5

    .line 2323
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    cmp-long v0, v11, v9

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    sub-long v7, v5, v11

    .line 2345
    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    move-wide v9, v7

    goto :goto_4

    .line 2324
    :cond_5
    :goto_3
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    cmp-long v0, v11, v7

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstVideoFrameSincePause:Z

    if-nez v0, :cond_8

    .line 2328
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    sub-long v11, v5, v11

    .line 2329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    sub-long/2addr v13, v9

    const-wide/32 v9, 0xf4240

    mul-long/2addr v13, v9

    cmp-long v0, v11, v7

    if-ltz v0, :cond_6

    sub-long v9, v13, v11

    .line 2330
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v17, 0x5f5e100

    cmp-long v0, v9, v17

    if-lez v0, :cond_7

    :cond_6
    move-wide v11, v13

    :cond_7
    cmp-long v0, v11, v7

    if-gez v0, :cond_9

    :cond_8
    move-wide v11, v7

    .line 2342
    :cond_9
    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    move-wide v9, v7

    move-wide v7, v11

    .line 2347
    :goto_4
    iput-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstVideoFrameSincePause:Z

    .line 2348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 2349
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    if-nez v0, :cond_b

    .line 2350
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    add-long/2addr v11, v7

    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    const-wide/32 v13, 0xbebc200

    cmp-long v0, v11, v13

    if-gez v0, :cond_a

    return-void

    .line 2354
    :cond_a
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    .line 2356
    :cond_b
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    add-long/2addr v11, v7

    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 2357
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    const-wide/16 v11, -0x1

    cmp-long v0, v7, v11

    if-nez v0, :cond_c

    const-wide/16 v7, 0x3e8

    .line 2358
    div-long v7, v5, v7

    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 2359
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_c

    .line 2360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstantCamera first video frame was at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2363
    :cond_c
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    sub-long v7, v5, v7

    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLastDt:J

    .line 2364
    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    .line 2366
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 2367
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 2368
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$3000(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v5

    if-eqz v0, :cond_14

    if-nez v2, :cond_d

    goto/16 :goto_7

    .line 2374
    :cond_d
    iget v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v6, 0x84c0

    .line 2375
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2376
    iget v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    const/4 v12, 0x3

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0xc

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2377
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2378
    iget v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    const/4 v12, 0x2

    const/16 v15, 0x8

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2379
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2380
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-static {v0, v4, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2382
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    int-to-float v2, v2

    iget v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    int-to-float v6, v6

    invoke-static {v0, v2, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2384
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    const/16 v2, 0xbe2

    const/4 v6, 0x4

    const/4 v7, 0x5

    const v8, 0x8d65

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v0, :cond_10

    if-eqz v5, :cond_10

    .line 2385
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    if-nez v0, :cond_e

    .line 2386
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2387
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 2389
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2390
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$3100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$3100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v0, v11, v12}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2392
    :cond_f
    iget v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v0, 0x8

    move v2, v15

    move v15, v0

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2394
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$2700(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v5

    invoke-static {v0, v4, v3, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2395
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2396
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2397
    invoke-static {v7, v3, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_5

    :cond_10
    move v2, v15

    .line 2400
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2401
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v0, v5, v11}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2404
    :cond_11
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v5

    invoke-static {v0, v4, v3, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2405
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$2900(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v5

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2406
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2407
    invoke-static {v7, v3, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2409
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2410
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2411
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2412
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2414
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    invoke-static {v0, v5, v6, v7}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 2415
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v5}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 2417
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->createKeyframeThumb()V

    .line 2418
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    add-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    .line 2420
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    if-eqz v0, :cond_12

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2900(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_12

    .line 2421
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    long-to-float v5, v9

    const v6, 0x4d3ebc20    # 2.0E8f

    div-float/2addr v5, v6

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$2916(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 2422
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2900(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    const/16 v0, 0xbe2

    .line 2423
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 2424
    iput-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 2425
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2902(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 2426
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2427
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v3, v0, v3

    .line 2428
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2429
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2502(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 2430
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 2433
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2434
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2502(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 2435
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_13
    :goto_6
    return-void

    .line 2370
    :cond_14
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantCamera handleVideoFrameAvailable skip frame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$drainEncoder$14(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 3167
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, p2, v4}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3169
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-wide p1, v0

    :goto_0
    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 3171
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5900(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3172
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$drainEncoder$15(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 3259
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v3, v4, p1, p2, v0}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3261
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-wide p1, v1

    :goto_0
    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 3263
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5900(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3264
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handlePauseRecording$4(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 2506
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2508
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2510
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$handlePauseRecording$5()V
    .locals 6

    .line 2527
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1102(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    .line 2528
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 2529
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 2530
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 2531
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2532
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6600(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 2533
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6700(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 2534
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6800(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 2535
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6900(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 2536
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/16 v2, 0x19

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 2537
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/16 v3, 0x168

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 2538
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 2539
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 2540
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setupVideoPlayer(Ljava/io/File;)V

    .line 2541
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6200(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 2542
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$4800(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$10(II)V
    .locals 12

    .line 2760
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2761
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1102(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    .line 2762
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 2763
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 2765
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_5

    .line 2766
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6502(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2767
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6602(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 2768
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6702(Lorg/telegram/ui/Components/InstantCameraView;[B)[B

    .line 2769
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6802(Lorg/telegram/ui/Components/InstantCameraView;[B)[B

    .line 2770
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v4, v4

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v6, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v6, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    goto :goto_0

    :cond_1
    move-wide v6, v8

    .line 2772
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v10, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v0, v10, v8

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v10, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v10, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 2773
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    sub-long/2addr v10, v6

    iput-wide v10, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 2774
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$6900(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v6

    long-to-double v6, v6

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v10

    iget-wide v10, v10, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v10, v10

    div-double/2addr v10, v4

    mul-double/2addr v6, v10

    double-to-long v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 2775
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const v2, 0xf4240

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 2776
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v0, v2, v8

    const-wide/16 v2, 0x3e8

    if-lez v0, :cond_3

    .line 2777
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    mul-long/2addr v4, v2

    iput-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 2779
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_4

    .line 2780
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    mul-long/2addr v4, v2

    iput-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 2782
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2784
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6900(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 2786
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 2787
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$6500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2788
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$6600(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 2789
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$6700(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 2790
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$6800(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 2791
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/16 v3, 0x19

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 2792
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    const/16 v4, 0x168

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 2793
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 2794
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    if-ne p1, v2, :cond_8

    .line 2796
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object p1

    invoke-interface {p1, v2, v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isTemplatesChannel(ZZ)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 2806
    :cond_6
    new-instance p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 2807
    iput p2, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    .line 2808
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    goto :goto_4

    .line 2797
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getDialogId()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2804
    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$7000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getChatActivity()Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    .line 2797
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_4

    .line 2811
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setupVideoPlayer(Ljava/io/File;)V

    .line 2812
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6200(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v3

    iput-wide v3, p1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 2813
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4800(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method private synthetic lambda$handleStopRecording$11()V
    .locals 5

    .line 2818
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2819
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->notReadyYet:Z

    .line 2821
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    .line 2822
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$12()V
    .locals 2

    .line 2842
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1502(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    return-void
.end method

.method private synthetic lambda$handleStopRecording$6(I)V
    .locals 14

    .line 2633
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1102(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    .line 2634
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 2635
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 2636
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$6900(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 2637
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 2638
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2639
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6600(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 2640
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6700(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 2641
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6800(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 2642
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/16 v2, 0x19

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 2643
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/16 v3, 0x168

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 2644
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 2645
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 2646
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->notReadyYet:Z

    .line 2647
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3300(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->thumb:Landroid/graphics/Bitmap;

    .line 2648
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$6200(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 2649
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3302(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2650
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 2651
    iput p1, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    .line 2652
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-interface/range {v2 .. v8}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$7(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 2700
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2702
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2704
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$8(IZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 2798
    new-instance v13, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move v1, p1

    .line 2799
    iput v1, v13, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    .line 2800
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, v13

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    .line 2801
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$9()V
    .locals 2

    .line 2803
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    return-void
.end method

.method private synthetic lambda$handleVideoFrameAvailable$2()V
    .locals 3

    .line 2430
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

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

.method private synthetic lambda$handleVideoFrameAvailable$3()V
    .locals 3

    .line 2435
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

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

.method private synthetic lambda$prepareEncoder$13(Z)V
    .locals 5

    .line 2971
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2975
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2979
    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 2980
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz p1, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$6200(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$6102(Lorg/telegram/ui/Components/InstantCameraView;J)J

    .line 2981
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6302(Lorg/telegram/ui/Components/InstantCameraView;J)J

    .line 2982
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$6402(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 2983
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2984
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$4800(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startRecording$0()V
    .locals 5

    .line 2069
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$stopRecording$1()V
    .locals 5

    .line 2113
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private prepareEncoder(Z)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v0, "video/avc"

    const-string v3, "bitrate"

    const-string v4, "audio/mp4a-latm"

    const/4 v5, 0x1

    .line 2866
    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V

    const/16 v6, 0x10

    const v7, 0xbb80

    const/4 v8, 0x2

    .line 2869
    :try_start_0
    invoke-static {v7, v6, v8}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    if-gtz v6, :cond_0

    const/16 v6, 0xe00

    :cond_0
    const v9, 0xc000

    if-ge v9, v6, :cond_1

    .line 2875
    div-int/lit16 v6, v6, 0x800

    add-int/2addr v6, v5

    mul-int/lit16 v6, v6, 0x800

    mul-int/lit8 v9, v6, 0x2

    .line 2877
    :cond_1
    iget-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v6, 0x0

    move v10, v6

    :goto_0
    const/4 v15, 0x3

    if-ge v10, v15, :cond_2

    .line 2879
    iget-object v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v12, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v12}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v12, -0x1

    if-eqz v2, :cond_3

    .line 2883
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    iget-wide v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLastDt:J

    add-long/2addr v7, v10

    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    .line 2884
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    iget-wide v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLastDt:J

    add-long/2addr v7, v10

    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    .line 2885
    iput-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstVideoFrameSincePause:Z

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 2887
    :cond_3
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    .line 2888
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    const-wide/16 v7, 0x0

    .line 2889
    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 2891
    :goto_1
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 2892
    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 2893
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    .line 2894
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 2895
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 2896
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    .line 2897
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    .line 2898
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    .line 2900
    iput-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    .line 2902
    new-instance v7, Landroid/media/AudioRecord;

    const/4 v11, 0x0

    const v12, 0xbb80

    const/16 v13, 0x10

    const/4 v14, 0x2

    move-object v10, v7

    move v8, v15

    move v15, v9

    invoke-direct/range {v10 .. v15}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    .line 2903
    invoke-virtual {v7}, Landroid/media/AudioRecord;->startRecording()V

    .line 2904
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_4

    .line 2905
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InstantCamera initied audio record with channels "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sample rate = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " bufferSize = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2907
    :cond_4
    iput-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    .line 2908
    new-instance v7, Ljava/lang/Thread;

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v9, 0xa

    .line 2909
    invoke-virtual {v7, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 2910
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 2912
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2913
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2915
    new-instance v7, Landroid/media/MediaFormat;

    invoke-direct {v7}, Landroid/media/MediaFormat;-><init>()V

    const-string v9, "mime"

    .line 2916
    invoke-virtual {v7, v9, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sample-rate"

    const v10, 0xbb80

    .line 2917
    invoke-virtual {v7, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v9, "channel-count"

    .line 2918
    invoke-virtual {v7, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2919
    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v9}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessagesController;->roundAudioBitrate:I

    mul-int/lit16 v9, v9, 0x400

    invoke-virtual {v7, v3, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v9, "max-input-size"

    const/16 v10, 0x5000

    .line 2920
    invoke-virtual {v7, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2922
    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    .line 2923
    invoke-virtual {v4, v7, v9, v9, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2924
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 2926
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    .line 2927
    iput-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    .line 2929
    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-static {v0, v4, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v4, "color-format"

    const v7, 0x7f000789

    .line 2931
    invoke-virtual {v0, v4, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2932
    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "frame-rate"

    const/16 v4, 0x1e

    .line 2933
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "i-frame-interval"

    .line 2934
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2942
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v9, v9, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2943
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 2944
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    if-nez v2, :cond_7

    .line 2947
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->isSdCardPath(Ljava/io/File;)Z

    move-result v0

    .line 2948
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    .line 2951
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    const-string v4, "camera_tmp.mp4"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    .line 2952
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2953
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2955
    :cond_5
    iput-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 2957
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2958
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    .line 2959
    iput-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    .line 2962
    :cond_6
    :goto_2
    new-instance v0, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v0}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 2963
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 2964
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 2965
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 2966
    new-instance v3, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v3}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    .line 2967
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$5902(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/video/MP4Builder;->setAllowSyncFiles(Z)V

    .line 2970
    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda14;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2990
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_12

    .line 2994
    invoke-static {v6}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2995
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_11

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 2999
    invoke-static {v0, v2, v6, v2, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3004
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_9

    const/16 v0, 0xd

    new-array v10, v0, [I

    .line 3007
    fill-array-data v10, :array_0

    new-array v0, v5, [Landroid/opengl/EGLConfig;

    new-array v15, v5, [I

    .line 3018
    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x1

    move-object v12, v0

    invoke-static/range {v9 .. v16}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-eqz v2, :cond_8

    new-array v2, v8, [I

    .line 3022
    fill-array-data v2, :array_1

    .line 3026
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v0, v6

    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v7, v2, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 3027
    aget-object v0, v0, v6

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    goto :goto_3

    .line 3019
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    new-array v0, v5, [I

    .line 3031
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/16 v4, 0x3098

    invoke-static {v2, v3, v4, v0, v6}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 3033
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_f

    new-array v0, v5, [I

    const/16 v2, 0x3038

    aput v2, v0, v6

    .line 3040
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    invoke-static {v2, v3, v4, v0, v6}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_e

    .line 3045
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3046
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_a

    .line 3047
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

    .line 3049
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v0, 0x302

    const/16 v2, 0x303

    .line 3051
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 3053
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v2, 0x8b31

    const-string v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v0

    .line 3054
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v3, 0x8b30

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6000(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    .line 3056
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    .line 3057
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 3058
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 3059
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v5, [I

    .line 3061
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v0, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 3062
    aget v0, v0, v6

    if-nez v0, :cond_c

    .line 3063
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 3064
    iput v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    goto :goto_4

    .line 3066
    :cond_c
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    .line 3067
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    .line 3068
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "preview"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    .line 3069
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "resolution"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    .line 3070
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "alpha"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    .line 3071
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    .line 3072
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    :cond_d
    :goto_4
    return-void

    .line 3042
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3034
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "surface already created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3000
    :cond_10
    iput-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 3001
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2996
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2991
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EGL already set up"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 2987
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

    .line 2847
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2848
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_5

    .line 2849
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 2851
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

    .line 2852
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2853
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 2854
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2855
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2860
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method private setupVideoPlayer(Ljava/io/File;)V
    .locals 7

    .line 2551
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1002(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;

    .line 2552
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2588
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2589
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "other"

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2590
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 2591
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 2592
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5300(Lorg/telegram/ui/Components/InstantCameraView;)V

    .line 2594
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2595
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2596
    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5400(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v0, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2597
    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    new-array v4, v0, [I

    aput v6, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 2598
    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5600(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v0, v6

    invoke-static {v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 2595
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xb4

    .line 2599
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2600
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2601
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 2603
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 2604
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 2605
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2606
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 2607
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 2609
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, v1, :cond_1

    .line 2610
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2611
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2612
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2613
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2615
    :cond_1
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2616
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2617
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

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

    .line 3095
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 3099
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    .line 3100
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3103
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

    if-eqz p1, :cond_10

    .line 3105
    iget-boolean v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v4, :cond_20

    goto/16 :goto_7

    :cond_2
    if-ne v4, v8, :cond_3

    .line 3109
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v3, :cond_20

    .line 3110
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto/16 :goto_c

    :cond_3
    const-string v15, "csd-1"

    const-string v2, "csd-0"

    if-ne v4, v7, :cond_4

    .line 3113
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 3114
    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v5, v11, :cond_20

    .line 3115
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v4, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const-string v5, "prepend-sps-pps-to-idr-frames"

    .line 3116
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v13, :cond_20

    .line 3117
    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3118
    invoke-virtual {v4, v15}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 3119
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    goto/16 :goto_c

    :cond_4
    if-ltz v4, :cond_20

    .line 3124
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v3, :cond_5

    .line 3125
    aget-object v7, v1, v4

    goto :goto_1

    .line 3127
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_1f

    .line 3132
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-le v12, v13, :cond_f

    .line 3133
    iget v3, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v16, v3, 0x2

    if-nez v16, :cond_b

    .line 3134
    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    if-eqz v2, :cond_6

    and-int/lit8 v15, v3, 0x1

    if-eqz v15, :cond_6

    .line 3135
    iget v15, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v15, v2

    iput v15, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v12, v2

    .line 3136
    iput v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3138
    :cond_6
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    if-eqz v2, :cond_9

    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_9

    .line 3139
    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_8

    .line 3140
    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v2, v3, [B

    .line 3142
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v3, v14

    move v8, v3

    :goto_2
    const/16 v12, 0x60

    if-ge v3, v12, :cond_8

    .line 3145
    aget-byte v12, v2, v3

    if-nez v12, :cond_7

    add-int/lit8 v12, v3, 0x1

    aget-byte v12, v2, v12

    if-nez v12, :cond_7

    add-int/lit8 v12, v3, 0x2

    aget-byte v12, v2, v12

    if-nez v12, :cond_7

    add-int/lit8 v12, v3, 0x3

    aget-byte v12, v2, v12

    if-ne v12, v13, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-le v8, v13, :cond_7

    .line 3148
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v3

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3149
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v8, v3

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3155
    :cond_8
    :goto_3
    iput-boolean v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    .line 3157
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v2, :cond_a

    .line 3158
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 3159
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3160
    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3161
    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 3162
    iget-wide v11, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v11, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3163
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 3164
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda10;

    invoke-direct {v8, v0, v3, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 3176
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v7, v8, v13}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v2

    cmp-long v7, v2, v9

    if-eqz v7, :cond_f

    .line 3177
    iget-boolean v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v7, :cond_f

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView;->access$5900(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 3178
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v7, v2, v3, v14}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    goto/16 :goto_6

    .line 3181
    :cond_b
    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const/4 v11, -0x5

    if-ne v3, v11, :cond_f

    .line 3182
    new-array v3, v12, [B

    .line 3183
    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v12

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3184
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3185
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3188
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v7, v13

    :goto_4
    if-ltz v7, :cond_d

    const/4 v8, 0x3

    if-le v7, v8, :cond_d

    .line 3190
    aget-byte v8, v3, v7

    if-ne v8, v13, :cond_c

    add-int/lit8 v8, v7, -0x1

    aget-byte v8, v3, v8

    if-nez v8, :cond_c

    add-int/lit8 v8, v7, -0x2

    aget-byte v8, v3, v8

    if-nez v8, :cond_c

    add-int/lit8 v8, v7, -0x3

    aget-byte v11, v3, v8

    if-nez v11, :cond_c

    .line 3191
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 3192
    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v11, v8

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 3193
    invoke-virtual {v7, v3, v14, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3194
    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v8

    invoke-virtual {v11, v3, v8, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    :cond_c
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 3202
    :goto_5
    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    const-string v12, "video/avc"

    invoke-static {v12, v3, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v7, :cond_e

    if-eqz v11, :cond_e

    .line 3204
    invoke-virtual {v3, v2, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3205
    invoke-virtual {v3, v15, v11}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3207
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v3, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 3210
    :cond_f
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 3211
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_20

    .line 3217
    :cond_10
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_11

    .line 3218
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3221
    :cond_11
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    if-eqz p1, :cond_1d

    .line 3223
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v2, :cond_12

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    if-eqz v2, :cond_1d

    :cond_12
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v2, :cond_14

    goto/16 :goto_b

    :cond_13
    const/4 v4, -0x3

    if-ne v2, v4, :cond_15

    .line 3227
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v2, v7, :cond_14

    .line 3228
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_14
    const/4 v7, -0x2

    goto :goto_8

    :cond_15
    const/4 v7, -0x2

    if-ne v2, v7, :cond_16

    .line 3231
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 3232
    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    const/4 v11, -0x5

    if-ne v8, v11, :cond_11

    .line 3233
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v8, v2, v13}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    goto :goto_8

    :cond_16
    const/4 v11, -0x5

    if-ltz v2, :cond_11

    .line 3237
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v8, v12, :cond_17

    .line 3238
    aget-object v8, v1, v2

    goto :goto_9

    .line 3240
    :cond_17
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :goto_9
    if-eqz v8, :cond_1e

    .line 3245
    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_18

    .line 3246
    iput v14, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3248
    :cond_18
    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_1b

    .line 3249
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v3, :cond_19

    .line 3250
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 3251
    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3252
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3253
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 3254
    iget-wide v11, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v11, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3255
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 3256
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;

    invoke-direct {v11, v0, v4, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3267
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1c

    .line 3268
    invoke-virtual {v3, v2, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_a

    .line 3271
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v3, v4, v8, v15, v14}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v3

    cmp-long v8, v3, v9

    if-eqz v8, :cond_1a

    .line 3272
    iget-boolean v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v8, :cond_1a

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v8}, Lorg/telegram/ui/Components/InstantCameraView;->access$5900(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 3273
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v8, v3, v4, v14}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    .line 3275
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1c

    .line 3276
    invoke-virtual {v3, v2, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_a

    .line 3279
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1c

    .line 3280
    invoke-virtual {v3, v2, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 3282
    :cond_1c
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_11

    :cond_1d
    :goto_b
    return-void

    .line 3243
    :cond_1e
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

    .line 3130
    :cond_1f
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

    :cond_20
    :goto_c
    const/16 v3, 0x15

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3292
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3293
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 3294
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 3297
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_1

    .line 3298
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 3299
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 3300
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 3301
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 3302
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 3303
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 3304
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3307
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3308
    throw v0
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V
    .locals 4

    .line 2127
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 2128
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    if-nez v1, :cond_0

    .line 2129
    monitor-exit v0

    return-void

    .line 2131
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2133
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 2135
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    if-le p1, v0, :cond_1

    .line 2137
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_3

    const-string p1, "InstantCamera fix timestamp enabled"

    .line 2138
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 2145
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    move-wide p3, v0

    .line 2148
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

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

    .line 2131
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 3

    .line 2118
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resume()V
    .locals 3

    .line 2122
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 2153
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2154
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 2155
    :try_start_0
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v1, 0x1

    .line 2156
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 2157
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2159
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2161
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 2162
    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 2163
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

    .line 2158
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V
    .locals 5

    .line 2059
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->started:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2060
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 2061
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {p2, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2065
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->started:Z

    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    .line 2067
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->roundVideoBitrate:I

    mul-int/lit16 v3, v3, 0x400

    .line 2068
    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2072
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    .line 2073
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    .line 2074
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    .line 2075
    iput v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    .line 2076
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 2078
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter p1

    .line 2079
    :try_start_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz p2, :cond_1

    .line 2080
    monitor-exit p1

    return-void

    .line 2082
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    .line 2083
    new-instance p2, Ljava/lang/Thread;

    const-string v0, "TextureMovieEncoder"

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 2084
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 2085
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 2086
    :catch_0
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 2088
    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2093
    :cond_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2095
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz p1, :cond_3

    .line 2096
    new-instance p1, Lorg/telegram/messenger/DispatchQueue;

    const-string p2, "IVR_FileWriteQueue"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 2097
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 2100
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2101
    iput v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    .line 2102
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p1, :cond_4

    .line 2103
    invoke-virtual {p1}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 2104
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 2106
    :cond_4
    new-instance p1, Lorg/telegram/messenger/DispatchQueue;

    const-string p2, "keyframes_thumb_queue"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 2107
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 2093
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public stopRecording(II)V
    .locals 3

    .line 2111
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2112
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
