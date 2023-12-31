.class public Lorg/telegram/messenger/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraController$ErrorCallback;,
        Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;,
        Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;,
        Lorg/telegram/messenger/camera/CameraController$ICameraView;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static volatile Instance:Lorg/telegram/messenger/camera/CameraController; = null

.field private static final KEEP_ALIVE_SECONDS:I = 0x3c

.field private static final MAX_POOL_SIZE:I = 0x1


# instance fields
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

.field private errorCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/camera/CameraController$ErrorCallback;",
            ">;"
        }
    .end annotation
.end field

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

.field recordingCurrentCameraView:Lorg/telegram/messenger/camera/CameraController$ICameraView;

.field protected threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static synthetic $r8$lambda$Afu8iZsrF5Vy--uH_j8lcpBjHRo(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZZLorg/telegram/messenger/Utilities$Callback;[BLandroid/hardware/Camera;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/camera/CameraController;->lambda$takePicture$6(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZZLorg/telegram/messenger/Utilities$Callback;[BLandroid/hardware/Camera;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BVs9yR6OrdoZhzpPamu_zydyMF8(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/camera/CameraController;->lambda$open$10(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ds6dRasVmBqCAyzH5i-5gI5RvwA(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/camera/CameraController;->lambda$recordVideo$14(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GEUhCn5EkdX4_lONVDHO6QqOecc(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/camera/CameraController;->lambda$recordVideo$12(Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MoHkNCvQ8j0BwUA0TCZe6ixVOQQ(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$POH4iXjVCuRNVPrYc7QZwu0xNzY(Lorg/telegram/messenger/camera/CameraController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->lambda$recordVideo$11(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8XwATTnhP-21--fVa7O8WiKjiM(Lorg/telegram/messenger/camera/CameraController;ZLjava/lang/Exception;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$3(ZLjava/lang/Exception;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQHiOp_k_ixnHDWCsEP-YvxHGU8(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$0(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WQ_CDW-CymoJukjPvkEWqrdMrqM(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;ILandroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController;->lambda$getErrorListener$18(Lorg/telegram/messenger/camera/CameraSession;ILandroid/hardware/Camera;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XonvnoUzjb3lS3y_a3rLYlzpnJM(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->lambda$stopPreview$8(Lorg/telegram/messenger/camera/CameraSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YkZ_PB-Dmv8Io7KRdefSwoBM9U8(Lorg/telegram/messenger/camera/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mT3xQ0Cd-h_UIy2OAuI_-Oj1bow(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController;->lambda$openRound$9(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pCELGPPszWrzA4Ub7gMKz0zK-yg(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController;->lambda$stopVideoRecording$17(Lorg/telegram/messenger/camera/CameraSession;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$slW3dxdoaR-kkcF07_SO3G77e68(Lorg/telegram/messenger/camera/CameraController;Ljava/io/File;Landroid/graphics/Bitmap;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/camera/CameraController;->lambda$finishRecordingVideo$15(Ljava/io/File;Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$vHqzTWnZfH4tgwbuOvndodH4gpg(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->lambda$stopVideoRecording$16(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wTBsF2gCAT67revEq05yqIIEU3I(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController;->lambda$close$5(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wW_KsCq0dSbRgKM5OJEZtqOocKw(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/camera/CameraController;->lambda$recordVideo$13(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wzo4fotxXPOzcj4gweDqwgjC9OU(Lorg/telegram/messenger/camera/CameraController;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraController;->lambda$initCamera$4(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y9IAQA8_IGPZCGUGddcO_g14CKI(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->lambda$startPreview$7(Lorg/telegram/messenger/camera/CameraSession;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    .line 117
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

.method public static chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;II",
            "Lorg/telegram/messenger/camera/Size;",
            "Z)",
            "Lorg/telegram/messenger/camera/Size;"
        }
    .end annotation

    .line 885
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 886
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 887
    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    .line 888
    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p3

    const/4 v3, 0x0

    .line 889
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 890
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    if-eqz p4, :cond_0

    .line 891
    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    if-gt v5, p2, :cond_2

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    if-le v5, p1, :cond_0

    goto :goto_1

    .line 894
    :cond_0
    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v6

    mul-int/2addr v6, p3

    div-int/2addr v6, v2

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    if-lt v5, p1, :cond_1

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    if-lt v5, p2, :cond_1

    .line 895
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 896
    :cond_1
    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int v6, p1, p2

    mul-int/lit8 v6, v6, 0x4

    if-gt v5, v6, :cond_2

    .line 897
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 900
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 901
    new-instance p0, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/camera/Size;

    return-object p0

    .line 902
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 903
    new-instance p0, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/camera/Size;

    return-object p0

    .line 905
    :cond_5
    new-instance p1, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {p1}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method private finishRecordingVideo(Z)V
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 739
    :try_start_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :try_start_1
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x9

    .line 741
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 743
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 750
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
    move-exception p1

    goto/16 :goto_7

    :catch_2
    move-exception v4

    move-object v3, v0

    .line 746
    :goto_0
    :try_start_3
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v3, :cond_1

    .line 750
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 753
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    move-wide v8, v1

    if-eqz p1, :cond_5

    .line 759
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 760
    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraController;->mirrorRecorderVideo:Z

    if-eqz v1, :cond_2

    .line 761
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 762
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 763
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v3, 0x0

    .line 764
    invoke-virtual {v2, p1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 765
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v1

    .line 768
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-2147483648_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 772
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 773
    :try_start_6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x57

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 779
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 775
    :goto_4
    :try_start_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v1, :cond_3

    goto :goto_3

    :catchall_3
    :cond_3
    :goto_5
    move-object v7, p1

    move-object v6, v2

    goto :goto_6

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_4

    .line 779
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 782
    :catchall_5
    :cond_4
    throw p1

    :cond_5
    move-object v6, v0

    move-object v7, v6

    .line 786
    :goto_6
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 789
    new-instance p1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda7;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/camera/CameraController;Ljava/io/File;Landroid/graphics/Bitmap;J)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_6
    move-exception p1

    move-object v0, v3

    :goto_7
    if-eqz v0, :cond_6

    .line 750
    :try_start_a
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 753
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 755
    :cond_6
    :goto_8
    throw p1
.end method

.method public static getInstance()Lorg/telegram/messenger/camera/CameraController;
    .locals 2

    .line 104
    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    if-nez v0, :cond_1

    .line 106
    const-class v1, Lorg/telegram/messenger/camera/CameraController;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {v0}, Lorg/telegram/messenger/camera/CameraController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    .line 111
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
    .locals 11

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x3

    .line 338
    array-length v4, p0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-ge v3, v4, :cond_9

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 339
    aget-byte v2, p0, v3

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xd8

    if-eq v2, v4, :cond_7

    if-ne v2, v6, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0xd9

    if-eq v2, v4, :cond_8

    const/16 v4, 0xda

    if-ne v2, v4, :cond_3

    goto :goto_3

    .line 353
    :cond_3
    invoke-static {p0, v3, v8, v1}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v4

    if-lt v4, v8, :cond_6

    add-int v9, v3, v4

    .line 354
    array-length v10, p0

    if-le v9, v10, :cond_4

    goto :goto_1

    :cond_4
    const/16 v10, 0xe1

    if-ne v2, v10, :cond_5

    if-lt v4, v7, :cond_5

    add-int/lit8 v2, v3, 0x2

    .line 360
    invoke-static {p0, v2, v5, v1}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    const v10, 0x45786966

    if-ne v2, v10, :cond_5

    add-int/lit8 v2, v3, 0x6

    .line 361
    invoke-static {p0, v2, v8, v1}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v2, v3, 0x8

    add-int/lit8 v4, v4, -0x8

    goto :goto_4

    :cond_5
    move v2, v9

    goto :goto_0

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    move v2, v3

    goto :goto_0

    :cond_8
    :goto_3
    move v4, v1

    move v2, v3

    goto :goto_4

    :cond_9
    move v4, v1

    :goto_4
    if-le v4, v7, :cond_12

    .line 372
    invoke-static {p0, v2, v5, v1}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v3

    const v9, 0x49492a00    # 823968.0f

    if-eq v3, v9, :cond_a

    const v10, 0x4d4d002a    # 2.14958752E8f

    if-eq v3, v10, :cond_a

    return v0

    :cond_a
    if-ne v3, v9, :cond_b

    move v3, v6

    goto :goto_5

    :cond_b
    move v3, v1

    :goto_5
    add-int/lit8 v9, v2, 0x4

    .line 378
    invoke-static {p0, v9, v5, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v5

    add-int/2addr v5, v8

    const/16 v9, 0xa

    if-lt v5, v9, :cond_12

    if-le v5, v4, :cond_c

    goto :goto_7

    :cond_c
    add-int/2addr v2, v5

    sub-int/2addr v4, v5

    add-int/lit8 v5, v2, -0x2

    .line 385
    invoke-static {p0, v5, v8, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v5

    :goto_6
    add-int/lit8 v9, v5, -0x1

    if-lez v5, :cond_12

    const/16 v5, 0xc

    if-lt v4, v5, :cond_12

    .line 387
    invoke-static {p0, v2, v8, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v5

    const/16 v10, 0x112

    if-ne v5, v10, :cond_11

    add-int/2addr v2, v7

    .line 389
    invoke-static {p0, v2, v8, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result p0

    if-eq p0, v6, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v1, 0x6

    if-eq p0, v1, :cond_e

    if-eq p0, v7, :cond_d

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
    return v1

    :cond_11
    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v4, v4, -0xc

    move v5, v9

    goto :goto_6

    :cond_12
    :goto_7
    return v0
.end method

.method private initCamera(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->loadingCameras:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->loadingCameras:Z

    .line 139
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/camera/CameraController;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$close$5(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 294
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 296
    :cond_0
    iget-object p0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 298
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->stopPreview()V

    .line 299
    iget-object p0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 301
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 304
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

    .line 306
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 308
    :goto_1
    iget-object p0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    :cond_1
    if-eqz p2, :cond_2

    .line 311
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    if-eqz p3, :cond_3

    .line 314
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$finishRecordingVideo$15(Ljava/io/File;Landroid/graphics/Bitmap;J)V
    .locals 4

    .line 790
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 793
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 795
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 798
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    invoke-interface {p2, p1, p3, p4}, Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;->onFinishVideoRecording(Ljava/lang/String;J)V

    .line 799
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    :cond_2
    return-void
.end method

.method private synthetic lambda$getErrorListener$18(Lorg/telegram/messenger/camera/CameraSession;ILandroid/hardware/Camera;)V
    .locals 2

    .line 939
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->errorCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 940
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->errorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 941
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->errorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/camera/CameraController$ErrorCallback;

    if-eqz v1, :cond_0

    .line 943
    invoke-interface {v1, p2, p3, p1}, Lorg/telegram/messenger/camera/CameraController$ErrorCallback;->onError(ILandroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$initCamera$0(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 4

    .line 145
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v1, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, -0x1

    if-le v0, v1, :cond_1

    return v3

    .line 150
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

    .line 258
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->loadingCameras:Z

    const/4 v1, 0x1

    .line 259
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    .line 260
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 261
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 262
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 266
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

    .line 275
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private synthetic lambda$initCamera$3(ZLjava/lang/Exception;Ljava/lang/Runnable;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->loadingCameras:Z

    .line 273
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-nez p1, :cond_0

    .line 274
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "APP_PAUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 275
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

    .line 141
    :try_start_0
    iget-object v3, v1, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-nez v3, :cond_13

    .line 142
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    .line 143
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    sget-object v5, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda18;

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 160
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 161
    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v3

    move v4, v7

    :goto_0
    if-ge v4, v3, :cond_2

    .line 163
    new-instance v8, Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    invoke-direct {v8, v9, v10}, Lorg/telegram/messenger/camera/CameraInfo;-><init>(II)V

    .line 164
    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_0

    .line 166
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

    .line 168
    :cond_0
    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    move v10, v7

    :goto_2
    if-ge v10, v9, :cond_1

    .line 170
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

    .line 172
    :cond_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v9, v8, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    invoke-static {v9, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    iget-object v8, v8, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-static {v8, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    move-object/from16 v17, v2

    goto/16 :goto_d

    .line 179
    :cond_3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 180
    new-instance v8, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v8}, Landroid/hardware/Camera$CameraInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v9, 0x4

    move v10, v7

    :goto_3
    if-ge v10, v4, :cond_f

    .line 184
    :try_start_1
    invoke-static {v10, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 185
    new-instance v11, Lorg/telegram/messenger/camera/CameraInfo;

    iget v12, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-direct {v11, v10, v12}, Lorg/telegram/messenger/camera/CameraInfo;-><init>(II)V

    .line 187
    sget-boolean v12, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v12, :cond_5

    :try_start_2
    sget-boolean v12, Lorg/telegram/messenger/ApplicationLoader;->externalInterfacePaused:Z

    if-nez v12, :cond_4

    goto :goto_4

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 190
    :cond_5
    :goto_4
    :try_start_3
    invoke-virtual {v11}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v12

    invoke-static {v12}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v12

    .line 191
    invoke-virtual {v12}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 193
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v14

    move v15, v7

    .line 194
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v16, v8

    const-string v8, " "

    move-object/from16 v17, v2

    if-ge v15, v7, :cond_9

    .line 195
    :try_start_4
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 196
    iget v2, v7, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v18, v14

    const/16 v14, 0x500

    if-ne v2, v14, :cond_6

    iget v14, v7, Landroid/hardware/Camera$Size;->height:I

    const/16 v1, 0x2d0

    if-eq v14, v1, :cond_6

    goto :goto_6

    .line 199
    :cond_6
    iget v1, v7, Landroid/hardware/Camera$Size;->height:I

    const/16 v14, 0x870

    if-ge v1, v14, :cond_7

    if-ge v2, v14, :cond_7

    .line 200
    iget-object v14, v11, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "preview size = "

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

    .line 207
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 208
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 210
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
    const-string/jumbo v7, "samsung"

    .line 213
    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "jflteuc"

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v15, 0x800

    if-ge v7, v15, :cond_d

    .line 214
    :cond_c
    iget-object v7, v11, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/messenger/camera/Size;

    iget v13, v2, Landroid/hardware/Camera$Size;->width:I

    iget v14, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v15, v13, v14}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_d

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "picture size = "

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

    .line 221
    :cond_e
    invoke-virtual {v12}, Landroid/hardware/Camera;->release()V

    .line 222
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, v11, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    iget-object v0, v11, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 227
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

    .line 230
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0, v9}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 231
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v4, :cond_12

    .line 233
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/camera/CameraInfo;

    .line 234
    iget v5, v2, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 235
    iget v5, v2, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 237
    iget-object v5, v2, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 238
    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v5, :cond_10

    .line 240
    iget-object v8, v2, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

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

    goto :goto_b

    .line 244
    :cond_10
    iget-object v5, v2, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 245
    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v5, :cond_11

    .line 247
    iget-object v8, v2, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/camera/Size;

    .line 248
    iget v9, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 249
    iget v8, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 252
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

    .line 253
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v1, p0

    .line 255
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

    .line 257
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

    .line 269
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 270
    new-instance v2, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda15;

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v2, v1, v3, v0, v4}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/camera/CameraController;ZLjava/lang/Exception;Ljava/lang/Runnable;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_11
    return-void
.end method

.method private synthetic lambda$open$10(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 7

    .line 594
    iget-object v0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 597
    :try_start_0
    iget v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    move-object v1, v2

    .line 599
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->getErrorListener(Lorg/telegram/messenger/camera/CameraSession;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 600
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 603
    iget-object v3, p1, Lorg/telegram/messenger/camera/CameraSession;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    move v4, v3

    .line 605
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 606
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "off"

    .line 607
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 608
    :cond_1
    iget-object v6, p1, Lorg/telegram/messenger/camera/CameraSession;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 611
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/telegram/messenger/camera/CameraSession;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 614
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSession;->checkFlashMode(Ljava/lang/String;)V

    goto :goto_2

    .line 612
    :cond_5
    :goto_1
    iget-object v0, p1, Lorg/telegram/messenger/camera/CameraSession;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSession;->checkFlashMode(Ljava/lang/String;)V

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 619
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 622
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    .line 623
    invoke-virtual {v1, p3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 624
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    if-eqz p4, :cond_9

    .line 626
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 629
    iget-object p1, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 p3, 0x0

    iput-object p3, p1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_8

    .line 631
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 633
    :cond_8
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private static synthetic lambda$openRound$9(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 3

    .line 557
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 559
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "start creating round camera session"

    .line 560
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    .line 563
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    move-object v0, v2

    .line 565
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    .line 567
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/camera/CameraSession;->configureRoundCamera(Z)Z

    if-eqz p1, :cond_2

    .line 569
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 571
    :cond_2
    invoke-virtual {v0, p2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 572
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    if-eqz p3, :cond_3

    .line 574
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 576
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_5

    const-string/jumbo p1, "round camera session created"

    .line 577
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 580
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 582
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 584
    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$recordVideo$11(Z)V
    .locals 0

    .line 664
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->finishRecordingVideo(Z)V

    return-void
.end method

.method private synthetic lambda$recordVideo$12(Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V
    .locals 1

    .line 664
    new-instance v0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p3}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/camera/CameraController;Z)V

    invoke-interface {p1, p2, v0}, Lorg/telegram/messenger/camera/CameraController$ICameraView;->startRecording(Ljava/io/File;Ljava/lang/Runnable;)Z

    if-eqz p4, :cond_0

    .line 667
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$recordVideo$13(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 656
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 657
    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "torch"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 659
    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraSession;->onStartRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 661
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 663
    :goto_1
    new-instance p1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 672
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private synthetic lambda$recordVideo$14(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 684
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 685
    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "torch"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 688
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 690
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/Camera;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 693
    :try_start_2
    iput-boolean p3, p0, Lorg/telegram/messenger/camera/CameraController;->mirrorRecorderVideo:Z

    .line 694
    new-instance p3, Landroid/media/MediaRecorder;

    invoke-direct {p3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    .line 695
    invoke-virtual {p3, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 696
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 697
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 698
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/camera/CameraSession;->configureRecorder(ILandroid/media/MediaRecorder;)V

    .line 699
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 700
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const-wide/32 p2, 0x40000000

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 701
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 702
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 704
    new-instance p1, Lorg/telegram/messenger/camera/Size;

    const/16 p3, 0x10

    const/16 v0, 0x9

    invoke-direct {p1, p3, v0}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 705
    invoke-virtual {p5}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object p3

    const/16 p5, 0x1e0

    const/16 v0, 0x2d0

    invoke-static {p3, v0, p5, p1, p2}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object p1

    .line 707
    iget p2, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget p3, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lt p2, v0, :cond_1

    const p2, 0x3567e0

    goto :goto_2

    :cond_1
    const p2, 0x1b7740

    .line 712
    :goto_2
    iget-object p3, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3, p2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 713
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 714
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 715
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 716
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 718
    iput-object p6, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    .line 719
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    if-eqz p7, :cond_2

    .line 721
    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 724
    :try_start_3
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->release()V

    const/4 p2, 0x0

    .line 725
    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    .line 726
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 730
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method private synthetic lambda$startPreview$7(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 3

    .line 509
    iget-object v0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 512
    :try_start_0
    iget v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->getErrorListener(Lorg/telegram/messenger/camera/CameraSession;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 515
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 517
    :goto_1
    iget-object p1, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v2, 0x0

    iput-object v2, p1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 521
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$stopPreview$8(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 3

    .line 531
    iget-object v0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 534
    :try_start_0
    iget v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 535
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->getErrorListener(Lorg/telegram/messenger/camera/CameraSession;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 537
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 539
    :goto_1
    iget-object p1, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v2, 0x0

    iput-object v2, p1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 543
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static synthetic lambda$stopVideoRecording$16(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 1

    .line 867
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 868
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 871
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$stopVideoRecording$17(Lorg/telegram/messenger/camera/CameraSession;ZZ)V
    .locals 4

    .line 831
    :try_start_0
    iget-object v0, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 832
    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 833
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 835
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 837
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 839
    :try_start_2
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 842
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 844
    :try_start_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 847
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 848
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 850
    :try_start_6
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 853
    :goto_2
    :try_start_7
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 855
    :try_start_8
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 859
    :cond_0
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string/jumbo v3, "off"

    .line 860
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 863
    :try_start_a
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 865
    :goto_4
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, p1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    if-nez p2, :cond_1

    .line 874
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    if-eqz p1, :cond_1

    .line 875
    invoke-direct {p0, p3}, Lorg/telegram/messenger/camera/CameraController;->finishRecordingVideo(Z)V

    goto :goto_5

    .line 877
    :cond_1
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :goto_5
    return-void
.end method

.method private static synthetic lambda$takePicture$6(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZZLorg/telegram/messenger/Utilities$Callback;[BLandroid/hardware/Camera;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 435
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    int-to-float v0, v0

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 436
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const-string v0, "%s@%d_%d"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 438
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 439
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 440
    array-length v5, v3

    invoke-static {v3, v7, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 445
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 447
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 448
    array-length v5, v3

    invoke-static {v3, v7, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 450
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 453
    :try_start_1
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/camera/CameraController;->getOrientation([B)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v8, p1

    .line 454
    :try_start_2
    iget v0, v8, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 456
    :try_start_3
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    if-nez p3, :cond_0

    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    int-to-float v0, v6

    .line 458
    invoke-virtual {v13, v0}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 461
    :try_start_4
    invoke-virtual {v13, v0, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 462
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    move-object v8, v5

    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v5, :cond_1

    .line 464
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 466
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 467
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v0, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 468
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 469
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    .line 470
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 472
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v8, v4, v7}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    if-eqz v2, :cond_2

    .line 475
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    move v6, v7

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 479
    :goto_1
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 482
    :cond_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 483
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 484
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 485
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 486
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    if-eqz v5, :cond_4

    .line 488
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v4, v7}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move v7, v6

    goto :goto_2

    :catch_1
    move-exception v0

    .line 491
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v6, v7

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 494
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_5
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

    .line 418
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
.method public addOnErrorListener(Lorg/telegram/messenger/camera/CameraController$ErrorCallback;)V
    .locals 1

    .line 924
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->errorCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->errorCallbacks:Ljava/util/ArrayList;

    .line 927
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->errorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 928
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->errorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelOnInitRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onFinishCameraInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 291
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 292
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3, p1, p2, p4}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    .line 319
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
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

    .line 327
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getErrorListener(Lorg/telegram/messenger/camera/CameraSession;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .line 938
    new-instance v0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V

    return-object v0
.end method

.method public hasCamera(Lcom/iMe/fork/enums/VideoVoiceCamera;)Z
    .locals 3

    .line 64
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

    .line 65
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

    .line 125
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public isCameraInitied()Z
    .locals 1

    .line 283
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

    const/4 p1, 0x1

    const/16 p3, 0x320

    if-eq p2, p3, :cond_0

    const/16 p3, 0x321

    if-eq p2, p3, :cond_0

    if-ne p2, p1, :cond_2

    .line 807
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 p3, 0x0

    .line 808
    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    if-eqz p2, :cond_1

    .line 810
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->stop()V

    .line 811
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->release()V

    .line 813
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    if-eqz p2, :cond_2

    .line 814
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraController;->finishRecordingVideo(Z)V

    :cond_2
    return-void
.end method

.method public open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda12;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

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

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p4, p2, p3}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 551
    :cond_1
    :goto_0
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_2

    .line 552
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

.method public recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraController$ICameraView;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 639
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/camera/CameraController;->recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraController$ICameraView;Z)V

    return-void
.end method

.method public recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraController$ICameraView;Z)V
    .locals 12

    move-object v9, p0

    move-object v3, p1

    move-object/from16 v4, p6

    if-nez v3, :cond_0

    return-void

    .line 646
    :cond_0
    iget-object v6, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 647
    iget-object v2, v6, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    .line 649
    iput-object v4, v9, Lorg/telegram/messenger/camera/CameraController;->recordingCurrentCameraView:Lorg/telegram/messenger/camera/CameraController$ICameraView;

    move-object/from16 v7, p4

    .line 650
    iput-object v7, v9, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    .line 651
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    .line 652
    iget-object v8, v9, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p6

    move-object v5, p2

    move/from16 v6, p7

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V

    invoke-virtual {v8, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move-object/from16 v7, p4

    .line 680
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

.method public removeOnErrorListener(Lorg/telegram/messenger/camera/CameraController$ErrorCallback;)V
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->errorCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startPreview(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopPreview(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 820
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;ZZ)V

    return-void
.end method

.method public stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;ZZ)V
    .locals 2

    .line 824
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->recordingCurrentCameraView:Lorg/telegram/messenger/camera/CameraController$ICameraView;

    if-eqz v0, :cond_0

    .line 825
    invoke-interface {v0}, Lorg/telegram/messenger/camera/CameraController$ICameraView;->stopRecording()V

    const/4 p1, 0x0

    .line 826
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recordingCurrentCameraView:Lorg/telegram/messenger/camera/CameraController$ICameraView;

    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takePicture(Ljava/io/File;ZLorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/Utilities$Callback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Lorg/telegram/messenger/camera/CameraSession;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 428
    :cond_0
    iget-object v3, p3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 429
    invoke-virtual {p3}, Lorg/telegram/messenger/camera/CameraSession;->isFlipFront()Z

    move-result v4

    .line 430
    iget-object p3, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 432
    :try_start_0
    new-instance v7, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p1

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZZLorg/telegram/messenger/Utilities$Callback;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p1, v7}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 499
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method
