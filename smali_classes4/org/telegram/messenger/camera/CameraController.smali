.class public Lorg/telegram/messenger/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;,
        Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static volatile Instance:Lorg/telegram/messenger/camera/CameraController; = null

.field private static final KEEP_ALIVE_SECONDS:I = 0x3c

.field private static final MAX_POOL_SIZE:I = 0x1


# instance fields
.field protected availableFlashModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile cameraInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/camera/CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cameraInitied:Z

.field private loadingCameras:Z

.field private mirrorRecorderVideo:Z

.field private onFinishCameraInitRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

.field private recordedFile:Ljava/lang/String;

.field private recorder:Landroid/media/MediaRecorder;

.field recordingCurrentCameraView:Lorg/telegram/messenger/camera/CameraView;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static synthetic $r8$lambda$BIerGXjO1aL-Suc2vMvlT37z9Ag(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/camera/CameraController;->lambda$recordVideo$13(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BVs9yR6OrdoZhzpPamu_zydyMF8(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/camera/CameraController;->lambda$open$10(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FjYSQYVACrEh1jwd3CLFXH0YLqA(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZLjava/lang/Runnable;[BLandroid/hardware/Camera;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/messenger/camera/CameraController;->lambda$takePicture$6(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZLjava/lang/Runnable;[BLandroid/hardware/Camera;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MBEIrkJekWsRqtgsSUlb2pgAxiY(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/camera/CameraController;->lambda$recordVideo$12(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MoHkNCvQ8j0BwUA0TCZe6ixVOQQ(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ODELhly1Zs8NlZ75uqM0ldayf-s(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->lambda$stopVideoRecording$15(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OIg-08s8VBv8tK2AV58cIqxuvlE(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController;->lambda$recordVideo$11(Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8XwATTnhP-21--fVa7O8WiKjiM(Lorg/telegram/messenger/camera/CameraController;ZLjava/lang/Exception;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$3(ZLjava/lang/Exception;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RH1tb3k8LSDZdJ6Tv_-E8OfpFJg(Lorg/telegram/messenger/camera/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraController;->finishRecordingVideo()V

    return-void
.end method

.method public static synthetic $r8$lambda$UQHiOp_k_ixnHDWCsEP-YvxHGU8(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$0(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YkZ_PB-Dmv8Io7KRdefSwoBM9U8(Lorg/telegram/messenger/camera/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$dGn5yTNQpPzqjbCpejmrMU-D5gs(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraController;->lambda$close$5(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$doz_knh50b291tZiz6MlJ_xVB0g(Lorg/telegram/messenger/camera/CameraController;Ljava/io/File;Landroid/graphics/Bitmap;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/camera/CameraController;->lambda$finishRecordingVideo$14(Ljava/io/File;Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$kj2DrEzEPNF5ccuFnKAxRKeKTNI(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/camera/CameraController;->lambda$stopPreview$8(Lorg/telegram/messenger/camera/CameraSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mT3xQ0Cd-h_UIy2OAuI_-Oj1bow(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController;->lambda$openRound$9(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uSkj-3_1v8PyrYcavOCBtjwHEuI(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/camera/CameraController;->lambda$startPreview$7(Lorg/telegram/messenger/camera/CameraSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wzo4fotxXPOzcj4gweDqwgjC9OU(Lorg/telegram/messenger/camera/CameraController;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$4(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zqcvenHrUWukLvld-zII9EAygkc(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraController;->lambda$stopVideoRecording$16(Lorg/telegram/messenger/camera/CameraSession;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;II",
            "Lorg/telegram/messenger/camera/Size;",
            ")",
            "Lorg/telegram/messenger/camera/Size;"
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 836
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 837
    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    .line 838
    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p3

    const/4 v3, 0x0

    .line 839
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 840
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    .line 841
    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v6

    mul-int/2addr v6, p3

    div-int/2addr v6, v2

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    if-lt v5, p1, :cond_0

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    if-lt v5, p2, :cond_0

    .line 842
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 843
    :cond_0
    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int v6, p1, p2

    mul-int/lit8 v6, v6, 0x4

    if-gt v5, v6, :cond_1

    .line 844
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 848
    new-instance p0, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/camera/Size;

    return-object p0

    .line 849
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 850
    new-instance p0, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/camera/Size;

    return-object p0

    .line 852
    :cond_4
    new-instance p1, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {p1}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method private finishRecordingVideo()V
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 709
    :try_start_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :try_start_1
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x9

    .line 711
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 713
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    double-to-int v1, v1

    int-to-long v1, v1

    .line 720
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_5

    :catch_2
    move-exception v4

    move-object v3, v0

    .line 716
    :goto_0
    :try_start_3
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_1

    .line 720
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 723
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    move-wide v8, v1

    .line 726
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 727
    iget-boolean v2, p0, Lorg/telegram/messenger/camera/CameraController;->mirrorRecorderVideo:Z

    if-eqz v2, :cond_2

    .line 728
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 729
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 730
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v4, 0x0

    .line 731
    invoke-virtual {v3, v1, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 732
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, v2

    goto :goto_3

    :cond_2
    move-object v7, v1

    .line 735
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-2147483648_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    new-instance v6, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 738
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 739
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x57

    invoke-virtual {v7, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 741
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 743
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 746
    new-instance v0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda7;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/camera/CameraController;Ljava/io/File;Landroid/graphics/Bitmap;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v3, :cond_3

    .line 720
    :try_start_6
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 723
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 725
    :cond_3
    :goto_6
    throw v0
.end method

.method public static getInstance()Lorg/telegram/messenger/camera/CameraController;
    .locals 2

    .line 97
    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    if-nez v0, :cond_1

    .line 99
    const-class v1, Lorg/telegram/messenger/camera/CameraController;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {v0}, Lorg/telegram/messenger/camera/CameraController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    .line 104
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getOrientation([B)I
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    .line 324
    array-length v3, p0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x2

    if-ge v2, v3, :cond_9

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 325
    aget-byte v1, p0, v2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_7

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0xd9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xda

    if-ne v1, v3, :cond_3

    goto :goto_3

    .line 339
    :cond_3
    invoke-static {p0, v2, v7, v0}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v3

    if-lt v3, v7, :cond_6

    add-int v8, v2, v3

    .line 340
    array-length v9, p0

    if-le v8, v9, :cond_4

    goto :goto_1

    :cond_4
    const/16 v9, 0xe1

    if-ne v1, v9, :cond_5

    if-lt v3, v6, :cond_5

    add-int/lit8 v1, v2, 0x2

    .line 346
    invoke-static {p0, v1, v4, v0}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v1

    const v9, 0x45786966

    if-ne v1, v9, :cond_5

    add-int/lit8 v1, v2, 0x6

    .line 347
    invoke-static {p0, v1, v7, v0}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v3, v3, -0x8

    goto :goto_4

    :cond_5
    move v1, v8

    goto :goto_0

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_8
    :goto_3
    move v3, v0

    move v1, v2

    goto :goto_4

    :cond_9
    move v3, v0

    :goto_4
    if-le v3, v6, :cond_11

    .line 358
    invoke-static {p0, v1, v4, v0}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    const v8, 0x49492a00    # 823968.0f

    if-eq v2, v8, :cond_a

    const v9, 0x4d4d002a    # 2.14958752E8f

    if-eq v2, v9, :cond_a

    return v0

    :cond_a
    if-ne v2, v8, :cond_b

    goto :goto_5

    :cond_b
    move v5, v0

    :goto_5
    add-int/lit8 v2, v1, 0x4

    .line 364
    invoke-static {p0, v2, v4, v5}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    add-int/2addr v2, v7

    const/16 v4, 0xa

    if-lt v2, v4, :cond_11

    if-le v2, v3, :cond_c

    goto :goto_7

    :cond_c
    add-int/2addr v1, v2

    sub-int/2addr v3, v2

    add-int/lit8 v2, v1, -0x2

    .line 371
    invoke-static {p0, v2, v7, v5}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    :goto_6
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_11

    const/16 v2, 0xc

    if-lt v3, v2, :cond_11

    .line 373
    invoke-static {p0, v1, v7, v5}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    const/16 v8, 0x112

    if-ne v2, v8, :cond_10

    add-int/2addr v1, v6

    .line 375
    invoke-static {p0, v1, v7, v5}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v1, 0x6

    if-eq p0, v1, :cond_e

    if-eq p0, v6, :cond_d

    return v0

    :cond_d
    const/16 p0, 0x10e

    return p0

    :cond_e
    const/16 p0, 0x5a

    return p0

    :cond_f
    const/16 p0, 0xb4

    return p0

    :cond_10
    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v3, v3, -0xc

    move v2, v4

    goto :goto_6

    :cond_11
    :goto_7
    return v0
.end method

.method private initCamera(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 125
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->loadingCameras:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->loadingCameras:Z

    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/camera/CameraController;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$close$5(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 283
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 285
    :cond_0
    iget-object p0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->stopPreview()V

    .line 288
    iget-object p0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 290
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 293
    :goto_0
    :try_start_1
    iget-object p0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 295
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 297
    :goto_1
    iget-object p0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    :cond_1
    if-eqz p2, :cond_2

    .line 300
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$finishRecordingVideo$14(Ljava/io/File;Landroid/graphics/Bitmap;J)V
    .locals 3

    .line 747
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    if-eqz v0, :cond_1

    .line 748
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 750
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    .line 752
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    invoke-interface {p2, p1, p3, p4}, Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;->onFinishVideoRecording(Ljava/lang/String;J)V

    const/4 p1, 0x0

    .line 753
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    :cond_1
    return-void
.end method

.method private static synthetic lambda$initCamera$0(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 4

    .line 138
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v1, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, -0x1

    if-le v0, v1, :cond_1

    return v3

    .line 143
    :cond_1
    iget p0, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget p1, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ge p0, p1, :cond_2

    return v2

    :cond_2
    if-le p0, p1, :cond_3

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initCamera$1()V
    .locals 3

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->loadingCameras:Z

    const/4 v1, 0x1

    .line 252
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    .line 253
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 254
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 255
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 259
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initCamera$2(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 268
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private synthetic lambda$initCamera$3(ZLjava/lang/Exception;Ljava/lang/Runnable;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->loadingCameras:Z

    .line 266
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-nez p1, :cond_0

    .line 267
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "APP_PAUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 268
    new-instance p1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p3}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/Runnable;)V

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initCamera$4(ZLjava/lang/Runnable;)V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "cameraCache"

    const-string v2, "APP_PAUSED"

    .line 134
    :try_start_0
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-nez v3, :cond_13

    .line 135
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    .line 136
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    sget-object v5, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda17;->INSTANCE:Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda17;

    .line 151
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 153
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 154
    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v3

    move v4, v7

    :goto_0
    if-ge v4, v3, :cond_2

    .line 156
    new-instance v8, Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    invoke-direct {v8, v9, v10}, Lorg/telegram/messenger/camera/CameraInfo;-><init>(II)V

    .line 157
    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_0

    .line 159
    iget-object v11, v8, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v13

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v14

    invoke-direct {v12, v13, v14}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    move v10, v7

    :goto_2
    if-ge v10, v9, :cond_1

    .line 163
    iget-object v11, v8, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v13

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v14

    invoke-direct {v12, v13, v14}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 165
    :cond_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v9, v8, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    invoke-static {v9, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    iget-object v8, v8, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-static {v8, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    move-object/from16 v17, v2

    goto/16 :goto_d

    .line 172
    :cond_3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 173
    new-instance v8, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v8}, Landroid/hardware/Camera$CameraInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v9, 0x4

    move v10, v7

    :goto_3
    if-ge v10, v4, :cond_f

    .line 177
    :try_start_1
    invoke-static {v10, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 178
    new-instance v11, Lorg/telegram/messenger/camera/CameraInfo;

    iget v12, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-direct {v11, v10, v12}, Lorg/telegram/messenger/camera/CameraInfo;-><init>(II)V

    .line 180
    sget-boolean v12, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v12, :cond_5

    :try_start_2
    sget-boolean v12, Lorg/telegram/messenger/ApplicationLoader;->externalInterfacePaused:Z

    if-nez v12, :cond_4

    goto :goto_4

    .line 181
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 183
    :cond_5
    :goto_4
    :try_start_3
    invoke-virtual {v11}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v12

    invoke-static {v12}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v12

    .line 184
    invoke-virtual {v12}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 186
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v14

    move v15, v7

    .line 187
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v16, v8

    const-string v8, " "

    move-object/from16 v17, v2

    if-ge v15, v7, :cond_9

    .line 188
    :try_start_4
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 189
    iget v2, v7, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v18, v14

    const/16 v14, 0x500

    if-ne v2, v14, :cond_6

    iget v14, v7, Landroid/hardware/Camera$Size;->height:I

    const/16 v1, 0x2d0

    if-eq v14, v1, :cond_6

    goto :goto_6

    .line 192
    :cond_6
    iget v1, v7, Landroid/hardware/Camera$Size;->height:I

    const/16 v14, 0x870

    if-ge v1, v14, :cond_7

    if-ge v2, v14, :cond_7

    .line 193
    iget-object v14, v11, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preview size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    :goto_6
    move-object/from16 v19, v0

    :cond_8
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v14, v18

    move-object/from16 v0, v19

    goto :goto_5

    :cond_9
    move-object/from16 v19, v0

    .line 200
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 201
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 203
    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v13, 0x500

    if-ne v7, v13, :cond_a

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    const/16 v14, 0x2d0

    if-eq v7, v14, :cond_b

    goto :goto_9

    :cond_a
    const/16 v14, 0x2d0

    :cond_b
    const-string v7, "samsung"

    .line 206
    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "jflteuc"

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v15, 0x800

    if-ge v7, v15, :cond_d

    .line 207
    :cond_c
    iget-object v7, v11, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/messenger/camera/Size;

    iget v13, v2, Landroid/hardware/Camera$Size;->width:I

    iget v14, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v15, v13, v14}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_d

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "picture size = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_d
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 214
    :cond_e
    invoke-virtual {v12}, Landroid/hardware/Camera;->release()V

    .line 215
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, v11, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 218
    iget-object v0, v11, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    iget-object v0, v11, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v11, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v9, v0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v0, v19

    const/4 v7, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_e

    :cond_f
    move-object/from16 v19, v0

    move-object/from16 v17, v2

    .line 223
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0, v9}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 224
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v4, :cond_12

    .line 226
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/camera/CameraInfo;

    .line 227
    iget v5, v2, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 228
    iget v5, v2, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 230
    iget-object v5, v2, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 231
    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v5, :cond_10

    .line 233
    iget-object v8, v2, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/camera/Size;

    .line 234
    iget v9, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 235
    iget v8, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 237
    :cond_10
    iget-object v5, v2, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 238
    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v5, :cond_11

    .line 240
    iget-object v8, v2, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/camera/Size;

    .line 241
    iget v9, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 242
    iget v8, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 245
    :cond_12
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v1, p0

    .line 248
    :goto_d
    :try_start_5
    iput-object v6, v1, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    goto :goto_f

    :catch_1
    move-exception v0

    :goto_e
    move-object/from16 v1, p0

    goto :goto_10

    :cond_13
    move-object/from16 v17, v2

    .line 250
    :goto_f
    new-instance v0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/camera/CameraController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v17, v2

    .line 262
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 263
    new-instance v2, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda12;

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v2, v1, v3, v0, v4}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/camera/CameraController;ZLjava/lang/Exception;Ljava/lang/Runnable;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_11
    return-void
.end method

.method private synthetic lambda$open$10(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 6

    .line 573
    iget-object v0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 576
    :try_start_0
    iget v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    move-object v1, v2

    .line 578
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 581
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    move v3, v2

    .line 583
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 584
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "off"

    .line 585
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 586
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 589
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSession;->checkFlashMode(Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 593
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 596
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    .line 597
    invoke-virtual {v1, p3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 598
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    if-eqz p4, :cond_7

    .line 600
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 603
    iget-object p1, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 p3, 0x0

    iput-object p3, p1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_6

    .line 605
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 607
    :cond_6
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private static synthetic lambda$openRound$9(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 3

    .line 536
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 538
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "start creating round camera session"

    .line 539
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    .line 542
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    move-object v0, v2

    .line 544
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    .line 546
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/camera/CameraSession;->configureRoundCamera(Z)Z

    if-eqz p1, :cond_2

    .line 548
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 550
    :cond_2
    invoke-virtual {v0, p2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 551
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    if-eqz p3, :cond_3

    .line 553
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 555
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_5

    const-string p1, "round camera session created"

    .line 556
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 559
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 561
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 563
    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$recordVideo$11(Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 1

    .line 634
    new-instance v0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/camera/CameraController;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/camera/CameraView;->startRecording(Ljava/io/File;Ljava/lang/Runnable;)Z

    if-eqz p3, :cond_0

    .line 637
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$recordVideo$12(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 626
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 627
    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "torch"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 629
    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraSession;->onStartRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 631
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 633
    :goto_1
    new-instance p1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p3, p4, p5}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 642
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private synthetic lambda$recordVideo$13(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 654
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 655
    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "torch"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 658
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 660
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/Camera;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 663
    :try_start_2
    iput-boolean p3, p0, Lorg/telegram/messenger/camera/CameraController;->mirrorRecorderVideo:Z

    .line 664
    new-instance p3, Landroid/media/MediaRecorder;

    invoke-direct {p3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    .line 665
    invoke-virtual {p3, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 666
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 667
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 668
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/camera/CameraSession;->configureRecorder(ILandroid/media/MediaRecorder;)V

    .line 669
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 670
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const-wide/32 p2, 0x40000000

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 671
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 672
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 674
    new-instance p1, Lorg/telegram/messenger/camera/Size;

    const/16 p2, 0x10

    const/16 p3, 0x9

    invoke-direct {p1, p2, p3}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 675
    invoke-virtual {p5}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object p2

    const/16 p3, 0x1e0

    const/16 p5, 0x2d0

    invoke-static {p2, p5, p3, p1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object p1

    .line 677
    iget p2, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget p3, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lt p2, p5, :cond_1

    const p2, 0x3567e0

    goto :goto_2

    :cond_1
    const p2, 0x1b7740

    .line 682
    :goto_2
    iget-object p3, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3, p2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 683
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 684
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 685
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 686
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 688
    iput-object p6, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    .line 689
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    if-eqz p7, :cond_2

    .line 691
    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 694
    :try_start_3
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->release()V

    const/4 p2, 0x0

    .line 695
    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    .line 696
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 700
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method private static synthetic lambda$startPreview$7(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 3

    .line 490
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 493
    :try_start_0
    iget v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    move-object v1, v2

    .line 495
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 497
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 501
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$stopPreview$8(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 3

    .line 511
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 514
    :try_start_0
    iget v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    move-object v1, v2

    .line 516
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 518
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 520
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 522
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$stopVideoRecording$15(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 1

    .line 817
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 818
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 821
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$stopVideoRecording$16(Lorg/telegram/messenger/camera/CameraSession;Z)V
    .locals 4

    .line 781
    :try_start_0
    iget-object v0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 782
    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 783
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 785
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 787
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 789
    :try_start_2
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 792
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 794
    :try_start_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 797
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 798
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 800
    :try_start_6
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 803
    :goto_2
    :try_start_7
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 805
    :try_start_8
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 809
    :cond_0
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "off"

    .line 810
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 813
    :try_start_a
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 815
    :goto_4
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    if-nez p2, :cond_1

    .line 824
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    if-eqz p1, :cond_1

    .line 825
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraController;->finishRecordingVideo()V

    goto :goto_5

    .line 827
    :cond_1
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :goto_5
    return-void
.end method

.method private static synthetic lambda$takePicture$6(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZLjava/lang/Runnable;[BLandroid/hardware/Camera;)V
    .locals 14

    move-object v1, p0

    move-object/from16 v2, p4

    .line 420
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 421
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const-string v0, "%s@%d_%d"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 423
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 424
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 425
    array-length v4, v2

    invoke-static {v2, v6, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 430
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 432
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 433
    array-length v4, v2

    invoke-static {v2, v6, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 435
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    move-object v5, p1

    move-object v4, v0

    .line 438
    :try_start_1
    iget v0, v5, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 440
    :try_start_2
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 441
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/camera/CameraController;->getOrientation([B)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 442
    invoke-virtual {v12, v0, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 443
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    move-object v7, v4

    invoke-static/range {v7 .. v13}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v4, :cond_0

    .line 445
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 448
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {v0, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 449
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 450
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 451
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 453
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v7, v3, v6}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    if-eqz p3, :cond_1

    .line 456
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    .line 460
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 463
    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 464
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 465
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 466
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 467
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    if-eqz v4, :cond_3

    .line 469
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v3, v6}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 472
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 475
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private static pack([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    .line 404
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method


# virtual methods
.method public cancelOnInitRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 2

    .line 280
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 281
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, p1, p2}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 307
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCameras()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/camera/CameraInfo;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasCamera(Lcom/iMe/fork/enums/VideoVoiceCamera;)Z
    .locals 3

    .line 61
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/camera/CameraInfo;

    .line 62
    sget-object v2, Lcom/iMe/fork/enums/VideoVoiceCamera;->FRONT:Lcom/iMe/fork/enums/VideoVoiceCamera;

    if-ne p1, v2, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lcom/iMe/fork/enums/VideoVoiceCamera;->BACK:Lcom/iMe/fork/enums/VideoVoiceCamera;

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public initCamera(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public isCameraInitied()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-eq p2, p1, :cond_0

    const/16 p1, 0x321

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 761
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 p2, 0x0

    .line 762
    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_1

    .line 764
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    .line 765
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 767
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    if-eqz p1, :cond_2

    .line 768
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraController;->finishRecordingVideo()V

    :cond_2
    return-void
.end method

.method public open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public openRound(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p4, p2, p3}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 530
    :cond_1
    :goto_0
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_2

    .line 531
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to open round "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " tex = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraView;)V
    .locals 12

    move-object v9, p0

    move-object v3, p1

    move-object/from16 v4, p6

    if-nez v3, :cond_0

    return-void

    .line 616
    :cond_0
    iget-object v6, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 617
    iget-object v2, v6, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    .line 619
    iput-object v4, v9, Lorg/telegram/messenger/camera/CameraController;->recordingCurrentCameraView:Lorg/telegram/messenger/camera/CameraView;

    move-object/from16 v7, p4

    .line 620
    iput-object v7, v9, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    .line 621
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    .line 622
    iget-object v7, v9, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p6

    move-object v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move-object/from16 v7, p4

    .line 650
    iget-object v10, v9, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v11, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPreview(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopPreview(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V
    .locals 2

    .line 774
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->recordingCurrentCameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->stopRecording()V

    const/4 p1, 0x0

    .line 776
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recordingCurrentCameraView:Lorg/telegram/messenger/camera/CameraView;

    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takePicture(Ljava/io/File;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 414
    :cond_0
    iget-object v1, p2, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 415
    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraSession;->isFlipFront()Z

    move-result p2

    .line 416
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 418
    :try_start_0
    new-instance v3, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v1, p2, p3}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZLjava/lang/Runnable;)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1, p1, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 480
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method
