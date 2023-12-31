.class public Lorg/telegram/messenger/camera/CameraSession;
.super Ljava/lang/Object;
.source "CameraSession.java"


# static fields
.field public static final ORIENTATION_HYSTERESIS:I = 0x5


# instance fields
.field private autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field public availableFlashModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

.field private currentFlashMode:Ljava/lang/String;

.field private currentOrientation:I

.field private currentZoom:F

.field private destroyed:Z

.field private diffOrientation:I

.field private displayOrientation:I

.field private flipFront:Z

.field info:Landroid/hardware/Camera$CameraInfo;

.field private infoCameraId:I

.field private initied:Z

.field private isRound:Z

.field private isVideo:Z

.field private jpegOrientation:I

.field private lastDisplayOrientation:I

.field private lastOrientation:I

.field private maxZoom:I

.field private meteringAreaSupported:Z

.field private optimizeForBarcode:Z

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private final pictureFormat:I

.field private final pictureSize:Lorg/telegram/messenger/camera/Size;

.field private final previewSize:Lorg/telegram/messenger/camera/Size;

.field private sameTakePictureOrientation:Z

.field private useTorch:Z


# direct methods
.method public static synthetic $r8$lambda$aUpvoh7skCacjuNQtDivSRvySJM(ZLandroid/hardware/Camera;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/camera/CameraSession;->lambda$new$0(ZLandroid/hardware/Camera;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;IZ)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I

    .line 37
    iput v0, p0, Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraSession;->flipFront:Z

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->availableFlashModes:Ljava/util/ArrayList;

    .line 58
    iput v0, p0, Lorg/telegram/messenger/camera/CameraSession;->infoCameraId:I

    .line 59
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    .line 63
    sget-object v0, Lorg/telegram/messenger/camera/CameraSession$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/camera/CameraSession$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 73
    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 74
    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    .line 75
    iput p4, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureFormat:I

    .line 76
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 77
    iput-boolean p5, p0, Lorg/telegram/messenger/camera/CameraSession;->isRound:Z

    .line 79
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "camera"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget p2, p2, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz p2, :cond_0

    const-string p2, "flashMode_front"

    goto :goto_0

    :cond_0
    const-string p2, "flashMode"

    :goto_0
    const-string/jumbo p3, "off"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    .line 82
    new-instance p1, Lorg/telegram/messenger/camera/CameraSession$1;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/camera/CameraSession$1;-><init>(Lorg/telegram/messenger/camera/CameraSession;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 101
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_1

    .line 104
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/camera/CameraSession;)Landroid/view/OrientationEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/camera/CameraSession;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraSession;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/camera/CameraSession;I)I
    .locals 0

    .line 31
    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/camera/CameraSession;II)I
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraSession;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/camera/CameraSession;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/camera/CameraSession;I)I
    .locals 0

    .line 31
    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/camera/CameraSession;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/camera/CameraSession;I)I
    .locals 0

    .line 31
    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/camera/CameraSession;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    return p0
.end method

.method private getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I
    .locals 6

    .line 517
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 518
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    move v2, v4

    .line 538
    :cond_3
    :goto_0
    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_6

    .line 539
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, v2

    rem-int/lit16 p1, p1, 0x168

    rsub-int p1, p1, 0x168

    .line 540
    rem-int/lit16 p1, p1, 0x168

    if-nez p2, :cond_4

    if-ne p1, v4, :cond_4

    move p1, v3

    :cond_4
    if-nez p2, :cond_5

    .line 545
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Huawei"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v0, "angler"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    move v4, p1

    goto :goto_1

    .line 549
    :cond_6
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, v2

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 v4, p1, 0x168

    :goto_1
    return v4
.end method

.method private getHigh()I
    .locals 2

    .line 510
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "LGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "g3_tmo_us"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$new$0(ZLandroid/hardware/Camera;)V
    .locals 0

    return-void
.end method

.method private roundOrientation(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, p1, p2

    .line 120
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x2d

    .line 125
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    return p1

    :cond_2
    return p2
.end method

.method private updateCameraInfo()V
    .locals 2

    .line 110
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->infoCameraId:I

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraSession;->infoCameraId:I

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkFlashMode(Ljava/lang/String;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->availableFlashModes:Ljava/util/ArrayList;

    .line 137
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    .line 142
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v1, :cond_1

    const-string v1, "flashMode_front"

    goto :goto_0

    :cond_1
    const-string v1, "flashMode"

    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected configurePhotoCamera()V
    .locals 7

    const-string v0, "barcode"

    .line 346
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_a

    const/4 v2, 0x0

    .line 350
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 352
    :try_start_2
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 355
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraSession;->updateCameraInfo()V

    .line 356
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->updateRotation()V

    .line 358
    iget v3, p0, Lorg/telegram/messenger/camera/CameraSession;->currentOrientation:I

    iget v4, p0, Lorg/telegram/messenger/camera/CameraSession;->displayOrientation:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/camera/CameraSession;->diffOrientation:I

    if-gez v3, :cond_0

    add-int/lit16 v3, v3, 0x168

    .line 360
    iput v3, p0, Lorg/telegram/messenger/camera/CameraSession;->diffOrientation:I

    :cond_0
    if-eqz v2, :cond_a

    .line 364
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 365
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 366
    iget v3, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureFormat:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const/16 v3, 0x64

    .line 367
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 368
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 369
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/camera/CameraSession;->maxZoom:I

    .line 370
    iget v4, p0, Lorg/telegram/messenger/camera/CameraSession;->currentZoom:F

    int-to-float v3, v3

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 372
    iget-boolean v3, p0, Lorg/telegram/messenger/camera/CameraSession;->optimizeForBarcode:Z

    if-eqz v3, :cond_2

    .line 373
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 374
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_1
    const-string v0, "continuous-video"

    .line 378
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "continuous-picture"

    .line 383
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 389
    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_5

    .line 390
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v5, :cond_4

    .line 391
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    goto :goto_2

    .line 393
    :cond_4
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v3, v3, 0x168
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_5
    move v3, v4

    .line 397
    :goto_2
    :try_start_3
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 398
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_7

    .line 399
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->displayOrientation:I

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v3, :cond_6

    move v4, v5

    :cond_6
    iput-boolean v4, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z

    goto :goto_3

    .line 401
    :cond_7
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->displayOrientation:I

    if-ne v0, v3, :cond_8

    move v4, v5

    :cond_8
    iput-boolean v4, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    :catch_1
    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->useTorch:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "torch"

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 409
    :try_start_5
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 416
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :catch_2
    :cond_a
    :goto_5
    return-void
.end method

.method protected configureRecorder(ILandroid/media/MediaRecorder;)V
    .locals 5

    .line 478
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraSession;->updateCameraInfo()V

    .line 481
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 482
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_0

    .line 483
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    goto :goto_0

    .line 485
    :cond_0
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v3, v3, 0x168

    goto :goto_0

    :cond_1
    move v3, v2

    .line 488
    :goto_0
    invoke-virtual {p2, v3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 490
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraSession;->getHigh()I

    move-result v0

    .line 491
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v3, v3, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v3, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    .line 492
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v4, v4, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v4, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v3, :cond_3

    if-eq p1, v1, :cond_2

    if-nez v4, :cond_3

    .line 494
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget p1, p1, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 496
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget p1, p1, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {p1, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 500
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    return-void

    .line 498
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot find valid CamcorderProfile"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected configureRoundCamera(Z)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 211
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    .line 212
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_9

    const/4 v3, 0x0

    .line 216
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 218
    :try_start_2
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 221
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraSession;->updateCameraInfo()V

    .line 222
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->updateRotation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_9

    const-string v4, " "

    if-eqz p1, :cond_0

    .line 225
    :try_start_3
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_0

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set preview size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    if-eqz p1, :cond_1

    .line 229
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set picture size = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 233
    iget p1, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureFormat:I

    invoke-virtual {v3, p1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 234
    invoke-virtual {v3, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 235
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->maxZoom:I

    const-string p1, "continuous-video"

    .line 238
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    invoke-virtual {v3, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "auto"

    .line 242
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 243
    invoke-virtual {v3, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 248
    :cond_3
    :goto_1
    iget p1, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    const/4 v4, -0x1

    if-eq p1, v4, :cond_5

    .line 249
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    iget v5, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v1, :cond_4

    .line 250
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, p1

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v4, v4, 0x168

    goto :goto_2

    .line 252
    :cond_4
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, p1

    rem-int/lit16 v4, v4, 0x168
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_5
    move v4, v0

    .line 256
    :goto_2
    :try_start_4
    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 257
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, v1, :cond_7

    .line 258
    iget p1, p0, Lorg/telegram/messenger/camera/CameraSession;->displayOrientation:I

    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    if-ne p1, v4, :cond_6

    move p1, v1

    goto :goto_3

    :cond_6
    move p1, v0

    :goto_3
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z

    goto :goto_5

    .line 260
    :cond_7
    iget p1, p0, Lorg/telegram/messenger/camera/CameraSession;->displayOrientation:I

    if-ne p1, v4, :cond_8

    move p1, v1

    goto :goto_4

    :cond_8
    move p1, v0

    :goto_4
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :goto_5
    :try_start_5
    const-string/jumbo p1, "off"

    .line 265
    invoke-virtual {v3, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 266
    iget p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentZoom:F

    iget v4, p0, Lorg/telegram/messenger/camera/CameraSession;->maxZoom:I

    int-to-float v4, v4

    mul-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v3, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    :try_start_6
    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 274
    :try_start_7
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p1

    if-lez p1, :cond_9

    .line 275
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraSession;->meteringAreaSupported:Z

    goto :goto_6

    :catch_2
    move-exception p1

    .line 270
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    :goto_6
    return v1

    :catchall_0
    move-exception p1

    .line 280
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 580
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->destroyed:Z

    .line 582
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 584
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method public focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .line 422
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 427
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 429
    :try_start_2
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "auto"

    .line 433
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 435
    new-instance v3, Landroid/hardware/Camera$Area;

    const/16 v4, 0x3e8

    invoke-direct {v3, p1, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 438
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraSession;->meteringAreaSupported:Z

    if-eqz p1, :cond_0

    .line 439
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    new-instance v2, Landroid/hardware/Camera$Area;

    invoke-direct {v2, p2, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 445
    :cond_0
    :try_start_3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 446
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 448
    :try_start_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 453
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public getCurrentFlashMode()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .line 190
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentOrientation:I

    return v0
.end method

.method public getCurrentPictureSize()Landroid/hardware/Camera$Size;
    .locals 1

    .line 593
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .line 589
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 2

    .line 557
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraSession;->updateCameraInfo()V

    .line 558
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 560
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected getMaxZoom()I
    .locals 1

    .line 458
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->maxZoom:I

    return v0
.end method

.method public getNextFlashMode()Ljava/lang/String;
    .locals 5

    .line 167
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->availableFlashModes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    .line 168
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 169
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 172
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    return-object v0
.end method

.method public getWorldAngle()I
    .locals 1

    .line 202
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->diffOrientation:I

    return v0
.end method

.method public isFlipFront()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->flipFront:Z

    return v0
.end method

.method public isInitied()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    return v0
.end method

.method public isSameTakePictureOrientation()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z

    return v0
.end method

.method public onStartRecord()V
    .locals 1

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    return-void
.end method

.method public setCurrentFlashMode(Ljava/lang/String;)V
    .locals 3

    .line 147
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    .line 149
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v1, :cond_0

    const-string v1, "flashMode_front"

    goto :goto_0

    :cond_0
    const-string v1, "flashMode"

    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFlipFront(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraSession;->flipFront:Z

    return-void
.end method

.method public setInitied()V
    .locals 1

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 572
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setOptimizeForBarcode(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraSession;->optimizeForBarcode:Z

    .line 132
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public setTorchEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo p1, "torch"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "off"

    .line 155
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 158
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setZoom(F)V
    .locals 1

    .line 466
    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentZoom:F

    .line 467
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 468
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraSession;->useTorch:Z

    .line 470
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraSession;->isRound:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 471
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/camera/CameraSession;->configureRoundCamera(Z)Z

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    :goto_0
    return-void
.end method

.method public stopVideoRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    .line 505
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->useTorch:Z

    .line 506
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    return-void
.end method

.method public updateRotation()V
    .locals 7

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraSession;->updateCameraInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->destroyed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 299
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/camera/CameraSession;->displayOrientation:I

    .line 303
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "samsung"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v4, "sf2wifixx"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 306
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/camera/CameraSession;->displayOrientation:I

    const/16 v4, 0x5a

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_6

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    const/16 v1, 0x10e

    goto :goto_1

    :cond_5
    const/16 v1, 0xb4

    goto :goto_1

    :cond_6
    move v1, v4

    .line 321
    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraSession;->info:Landroid/hardware/Camera$CameraInfo;

    iget v6, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/2addr v6, v4

    if-eqz v6, :cond_7

    .line 322
    iput v3, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 324
    :cond_7
    iget v3, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_8

    .line 325
    iget v2, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    rsub-int v1, v2, 0x168

    .line 326
    rem-int/lit16 v1, v1, 0x168

    move v3, v1

    goto :goto_2

    .line 328
    :cond_8
    iget v2, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    move v3, v2

    .line 332
    :goto_2
    iput v3, p0, Lorg/telegram/messenger/camera/CameraSession;->currentOrientation:I

    if-eqz v0, :cond_9

    .line 335
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :catchall_0
    :cond_9
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentOrientation:I

    iget v1, p0, Lorg/telegram/messenger/camera/CameraSession;->displayOrientation:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/camera/CameraSession;->diffOrientation:I

    if-gez v0, :cond_a

    add-int/lit16 v0, v0, 0x168

    .line 340
    iput v0, p0, Lorg/telegram/messenger/camera/CameraSession;->diffOrientation:I

    :cond_a
    return-void

    :catchall_1
    move-exception v0

    .line 294
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
