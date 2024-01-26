.class public Lorg/telegram/messenger/camera/CameraView;
.super Landroid/widget/FrameLayout;
.source "CameraView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lorg/telegram/messenger/camera/CameraController$ICameraView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraView$EncoderHandler;,
        Lorg/telegram/messenger/camera/CameraView$VideoRecorder;,
        Lorg/telegram/messenger/camera/CameraView$CameraGLThread;,
        Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;
    }
.end annotation


# static fields
.field private static final MSG_AUDIOFRAME_AVAILABLE:I = 0x3

.field private static final MSG_START_RECORDING:I = 0x0

.field private static final MSG_STOP_RECORDING:I = 0x1

.field private static final MSG_VIDEOFRAME_AVAILABLE:I = 0x2

.field private static final audioSampleRate:I = 0xac44


# instance fields
.field public WRITE_TO_FILE_IN_BACKGROUND:Z

.field private blurredStubView:Landroid/widget/ImageView;

.field bounds:Landroid/graphics/Rect;

.field private cameraFile:Ljava/io/File;

.field private cameraMatrix:[[F

.field private cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

.field private cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

.field private cameraTexture:[[I

.field protected cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

.field private clipBottom:I

.field private clipTop:I

.field private closingDualCamera:Z

.field private cx:I

.field private cy:I

.field private delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

.field protected dual:Z

.field private dualCameraAppeared:Z

.field private dualMatrix:Landroid/graphics/Matrix;

.field firstFrame2Rendered:Z

.field firstFrameRendered:Z

.field flipAnimator:Landroid/animation/ValueAnimator;

.field flipHalfReached:Z

.field flipping:Z

.field private focusAreaSize:I

.field private focusProgress:F

.field private fpsLimit:I

.field info:[Lorg/telegram/messenger/camera/CameraInfo;

.field private initFirstCameraAfterSecond:Z

.field private inited:Z

.field private initialFrontface:Z

.field private innerAlpha:F

.field private innerPaint:Landroid/graphics/Paint;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isFrontface:Z

.field public isStory:Z

.field private volatile lastCrossfadeValue:F

.field private lastDrawTime:J

.field private lastDualSwitchTime:J

.field private lastHeight:I

.field private volatile lastShapeTo:F

.field private lastWidth:I

.field private final layoutLock:Ljava/lang/Object;

.field private lazy:Z

.field private mMVPMatrix:[[F

.field private mSTMatrix:[[F

.field private matrix:Landroid/graphics/Matrix;

.field private measurementsCount:I

.field private mirror:Z

.field private moldSTMatrix:[[F

.field nextFrameTimeNs:J

.field private oldCameraTexture:[I

.field onRecordingFinishRunnable:Ljava/lang/Runnable;

.field private optimizeForBarcode:Z

.field private outerAlpha:F

.field private outerPaint:Landroid/graphics/Paint;

.field private pictureSize:[Lorg/telegram/messenger/camera/Size;

.field private volatile pixelDualH:F

.field private volatile pixelDualW:F

.field private volatile pixelH:F

.field private volatile pixelW:F

.field private position:[I

.field private previewSize:[Lorg/telegram/messenger/camera/Size;

.field recordFile:Ljava/io/File;

.field private shape:Ljava/lang/Integer;

.field private volatile shapeValue:F

.field private volatile surfaceHeight:I

.field private volatile surfaceWidth:I

.field private takePictureProgress:F

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureInited:Z

.field private textureView:Landroid/view/TextureView;

.field private textureViewAnimator:Landroid/animation/ValueAnimator;

.field private thumbDrawable:Landroid/graphics/drawable/Drawable;

.field private toggleDualUntil:J

.field public toggledDualAsSave:Z

.field private txform:Landroid/graphics/Matrix;

.field private final updateRotationMatrix:Ljava/lang/Runnable;

.field private useMaxPreview:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private videoEncoder:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public static synthetic $r8$lambda$9drE045OTMM9AThIqLVuvqSIjxQ(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$toggleDual$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$BfzHlU6KvU8UO6NdnT7zAuqqDS4(Lorg/telegram/messenger/camera/CameraView;ILorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$9(ILorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JiLw9Ng8POmM_Hy-aAhna0gHwB8(Lorg/telegram/messenger/camera/CameraView;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->lambda$enableDualInternal$1(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K3UHszkKtGJyX2BCpMzn_Q_46M8(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$Kxh2Icj1XGPcgICi5w5CIg8b5K8(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$10(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MDuaWQzZGflrMqZicYjONBoE0Dw(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$switchCamera$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$PYrkOgfi2dGe8UUprNVzR7pREi4(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$enableDualInternal$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$bs5fTaxnLcVSPU1pJQUJdiHCk6w(Lorg/telegram/messenger/camera/CameraView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->lambda$showTexture$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cx_dKk48LozjAvu_YBEncQLo_LE(Lorg/telegram/messenger/camera/CameraView;ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$11(ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dFXQqOyBb5GEfE72GaMqrKpblyE(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$resetCamera$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ga6_S0qQsun0Zxjr3esdafveH50(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$8(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iV87AY-WBlCtUc7--3NxpMujyK4(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$onSurfaceTextureDestroyed$5()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 6

    .line 392
    const-class v0, F

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/telegram/messenger/camera/Size;

    .line 106
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-array v3, v2, [Lorg/telegram/messenger/camera/Size;

    .line 107
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    new-array v3, v2, [Lorg/telegram/messenger/camera/CameraInfo;

    .line 108
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    new-array v3, v2, [Lorg/telegram/messenger/camera/CameraSession;

    .line 113
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    .line 119
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    .line 120
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 127
    iput v3, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 133
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 146
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    new-array v4, v2, [I

    .line 148
    fill-array-data v4, :array_0

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[[F

    new-array v4, v2, [I

    .line 149
    fill-array-data v4, :array_1

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->mSTMatrix:[[F

    new-array v4, v2, [I

    .line 150
    fill-array-data v4, :array_2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->moldSTMatrix:[[F

    new-array v4, v2, [I

    .line 154
    fill-array-data v4, :array_3

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraMatrix:[[F

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->lastCrossfadeValue:F

    .line 180
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    const/4 v0, -0x1

    .line 182
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->fpsLimit:I

    .line 254
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    .line 411
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->textureInited:Z

    .line 429
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    .line 469
    iput v1, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    .line 476
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->lastWidth:I

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->lastHeight:I

    .line 832
    new-instance v1, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->updateRotationMatrix:Ljava/lang/Runnable;

    .line 999
    iput v3, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    new-array v1, v2, [I

    .line 1054
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->position:[I

    new-array v1, v2, [I

    .line 1055
    fill-array-data v1, :array_4

    const-class v3, I

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraTexture:[[I

    new-array v1, v5, [I

    .line 1056
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->oldCameraTexture:[I

    .line 393
    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->initialFrontface:Z

    .line 394
    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    .line 395
    iput-boolean p3, p0, Lorg/telegram/messenger/camera/CameraView;->lazy:Z

    if-nez p3, :cond_0

    .line 396
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->initTexture()V

    :cond_0
    xor-int/lit8 p2, p3, 0x1

    .line 399
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 401
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/16 p1, 0x11

    .line 402
    invoke-static {v0, v0, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 p1, 0x60

    .line 404
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    .line 405
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 406
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 407
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 408
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x10
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/messenger/camera/CameraView;)Landroid/view/TextureView;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/camera/CameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/camera/CameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/camera/CameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/camera/CameraView;Landroid/graphics/SurfaceTexture;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->createCamera(Landroid/graphics/SurfaceTexture;I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/camera/CameraView;)[[F
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraMatrix:[[F

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->lastShapeTo:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/messenger/camera/CameraView;F)F
    .locals 0

    .line 101
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->lastShapeTo:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/camera/CameraView;)Ljava/lang/Object;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/messenger/camera/CameraView;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/camera/CameraView;J)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/camera/CameraView;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->fpsLimit:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraView$VideoRecorder;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->videoEncoder:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$VideoRecorder;
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->videoEncoder:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->shapeValue:F

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/camera/CameraView;F)F
    .locals 0

    .line 101
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->shapeValue:F

    return p1
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->lastCrossfadeValue:F

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/camera/CameraView;F)F
    .locals 0

    .line 101
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->lastCrossfadeValue:F

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/messenger/camera/CameraView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->pixelW:F

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->pixelH:F

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->pixelDualW:F

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->pixelDualH:F

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/camera/CameraView;)[[F
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->moldSTMatrix:[[F

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/camera/CameraView;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->onFirstFrameRendered(I)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/camera/CameraView;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/Size;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/CameraSession;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/camera/CameraView;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->videoWidth:I

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/messenger/camera/CameraView;I)I
    .locals 0

    .line 101
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->videoWidth:I

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/camera/CameraView;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->videoHeight:I

    return p0
.end method

.method static synthetic access$3602(Lorg/telegram/messenger/camera/CameraView;I)I
    .locals 0

    .line 101
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->videoHeight:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/camera/CameraView;)Landroid/graphics/Matrix;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/camera/CameraView;)[[F
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->mSTMatrix:[[F

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/camera/CameraView;ILjava/lang/String;)I
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->loadShader(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/camera/CameraView;)[[I
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraTexture:[[I

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/camera/CameraView;)[[F
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[[F

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/camera/CameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/messenger/camera/CameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method private addToDualWait(J)V
    .locals 5

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 362
    iget-wide v2, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    add-long/2addr v0, p1

    .line 363
    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    goto :goto_0

    :cond_0
    add-long/2addr v2, p1

    .line 365
    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    :goto_0
    return-void
.end method

.method private calculateTapArea(FFF)Landroid/graphics/Rect;
    .locals 3

    .line 873
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    float-to-int p1, p1

    .line 875
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lorg/telegram/messenger/camera/CameraView;->clamp(III)I

    move-result p1

    float-to-int p2, p2

    sub-int/2addr p2, v0

    .line 876
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-direct {p0, p2, v2, v0}, Lorg/telegram/messenger/camera/CameraView;->clamp(III)I

    move-result p2

    .line 878
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 879
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 881
    new-instance p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p1, p2, p3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private checkPreviewMatrix()V
    .locals 6

    .line 848
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    .line 853
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    .line 855
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 856
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v5, v4, v1

    if-eqz v5, :cond_1

    .line 857
    aget-object v1, v4, v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    int-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float v4, v0, v1

    int-to-float v2, v2

    div-float v1, v2, v1

    .line 859
    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float/2addr v2, v1

    .line 860
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 861
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 863
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-eqz v0, :cond_3

    .line 864
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 865
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->updateRotationMatrix:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 867
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->updateRotationMatrix:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private clamp(III)I
    .locals 0

    if-le p1, p3, :cond_0

    return p3

    :cond_0
    if-ge p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method private createCamera(Landroid/graphics/SurfaceTexture;I)V
    .locals 1

    .line 1937
    new-instance v0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/camera/CameraView;ILandroid/graphics/SurfaceTexture;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enableDualInternal()V
    .locals 6

    .line 265
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 266
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    .line 270
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v3, v3, v1

    new-instance v4, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v3, v2, v2, v4}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 274
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v4, v3, v1

    if-ne v0, v4, :cond_1

    .line 275
    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    .line 277
    :cond_1
    aput-object v2, v3, v1

    const-wide/16 v0, 0x190

    .line 278
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void

    .line 281
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v4, "samsung"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->toggledDualAsSave:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    .line 286
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v4, v4, v3

    new-instance v5, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/camera/CameraView;Landroid/os/Handler;)V

    invoke-virtual {v1, v4, v2, v2, v5}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 298
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aput-object v2, v0, v3

    return-void

    .line 301
    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    .line 302
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 304
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/4 v4, 0x6

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v1, v5, v1

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v1, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_5
    const-wide/16 v0, 0x320

    .line 306
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void
.end method

.method private synthetic lambda$createCamera$10(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V
    .locals 1

    .line 1975
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;I)V

    return-void
.end method

.method private synthetic lambda$createCamera$11(ILandroid/graphics/SurfaceTexture;)V
    .locals 9

    .line 1938
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-nez v0, :cond_0

    return-void

    .line 1942
    :cond_0
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_1

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraView create camera session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1945
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    .line 1946
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    .line 1948
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v1, p1

    if-nez v2, :cond_3

    return-void

    .line 1951
    :cond_3
    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1953
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    new-instance v8, Lorg/telegram/messenger/camera/CameraSession;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v3, v2, p1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v4, v2, p1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v5, v2, p1

    const/16 v6, 0x100

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;IZ)V

    aput-object v8, v1, p1

    .line 1954
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v1, v1, p1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraSession;->setCurrentFlashMode(Ljava/lang/String;)V

    .line 1955
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;I)V

    .line 1956
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1958
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v2, p1

    new-instance v3, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1, v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/camera/CameraView;ILorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    new-instance v4, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v0, p1}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V

    invoke-virtual {v1, v2, p2, v3, v4}, Lorg/telegram/messenger/camera/CameraController;->open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createCamera$8(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 2

    const/4 v0, 0x0

    .line 1970
    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    .line 1971
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->reinitForNewCamera()V

    const-wide/16 v0, 0x15e

    .line 1972
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void
.end method

.method private synthetic lambda$createCamera$9(ILorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 2

    .line 1959
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 1960
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraView camera initied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1963
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->setInitied()V

    .line 1964
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1967
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->initFirstCameraAfterSecond:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1968
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->initFirstCameraAfterSecond:Z

    .line 1969
    new-instance p1, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$enableDualInternal$0()V
    .locals 1

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    .line 272
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->enableDualInternal()V

    return-void
.end method

.method private synthetic lambda$enableDualInternal$1(Landroid/os/Handler;)V
    .locals 5

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initFirstCameraAfterSecond:Z

    .line 292
    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    if-eqz p1, :cond_0

    .line 294
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v0, v3, v0

    iget v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    const-wide/16 v0, 0x4b0

    .line 296
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 11

    .line 833
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 836
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->access$4100(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)[Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 837
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->access$4100(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)[Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v3

    .line 838
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[[F

    aget-object v4, v4, v2

    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v3, :cond_0

    .line 840
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[[F

    aget-object v5, v4, v2

    const/4 v6, 0x0

    int-to-float v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onSurfaceTextureDestroyed$5()V
    .locals 1

    const/4 v0, 0x0

    .line 770
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    return-void
.end method

.method private synthetic lambda$resetCamera$4()V
    .locals 2

    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    .line 647
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    .line 649
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    .line 651
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->reinitForNewCamera()V

    return-void

    :catchall_0
    move-exception v0

    .line 649
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$showTexture$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 808
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 809
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$switchCamera$3()V
    .locals 2

    const/4 v0, 0x0

    .line 624
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    .line 625
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    .line 627
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    .line 629
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->reinitForNewCamera()V

    return-void

    :catchall_0
    move-exception v0

    .line 627
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$toggleDual$2()V
    .locals 4

    const/4 v0, 0x0

    .line 335
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    .line 336
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    const-wide/16 v1, 0x190

    .line 337
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    .line 338
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2

    .line 1921
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 1922
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1923
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    .line 1925
    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1926
    aget p2, p2, v1

    if-nez p2, :cond_1

    .line 1927
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    .line 1928
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1930
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p1, v1

    :cond_1
    return p1
.end method

.method private onFirstFrameRendered(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1901
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    .line 1902
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 1903
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/camera/CameraView$4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/camera/CameraView$4;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    .line 1909
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1912
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->onDualCameraSuccess()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCameraInfoSize(I)V
    .locals 11

    .line 686
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 690
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 691
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/camera/CameraInfo;

    .line 692
    iget v5, v3, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    .line 693
    :goto_1
    iget-boolean v6, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-ne p1, v4, :cond_2

    xor-int/lit8 v6, v6, 0x1

    :cond_2
    if-ne v5, v6, :cond_3

    .line 698
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aput-object v3, v0, p1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v0, v0, p1

    if-nez v0, :cond_5

    return-void

    :cond_5
    const v0, 0x3faaaaab

    .line 707
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 714
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->square()Z

    move-result v3

    const/16 v5, 0x780

    const/16 v6, 0x3c0

    const/16 v7, 0x2d0

    const/16 v8, 0x500

    if-eqz v3, :cond_6

    .line 715
    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v4, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    move v5, v7

    move v6, v5

    move v8, v6

    goto :goto_5

    .line 718
    :cond_6
    iget-boolean v3, p0, Lorg/telegram/messenger/camera/CameraView;->initialFrontface:Z

    const/16 v4, 0x9

    const/16 v9, 0x10

    if-eqz v3, :cond_7

    .line 719
    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v9, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    move v6, v7

    :goto_3
    move v5, v8

    goto :goto_5

    :cond_7
    sub-float/2addr v2, v0

    .line 723
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    .line 724
    new-instance v0, Lorg/telegram/messenger/camera/Size;

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 728
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-nez v2, :cond_8

    move v7, v6

    goto :goto_3

    :cond_8
    const/16 v2, 0x5a0

    move v7, v2

    goto :goto_5

    .line 736
    :cond_9
    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v9, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 740
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-nez v2, :cond_a

    move v5, v8

    :goto_4
    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_5

    .line 744
    :cond_a
    iget-boolean v2, p0, Lorg/telegram/messenger/camera/CameraView;->isStory:Z

    if-eqz v2, :cond_b

    move v5, v8

    :cond_b
    if-eqz v2, :cond_c

    move v6, v7

    goto :goto_4

    :cond_c
    const/16 v2, 0x438

    move v6, v2

    goto :goto_4

    .line 750
    :goto_5
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/messenger/camera/CameraView;->isStory:Z

    invoke-static {v3, v8, v6, v0, v4}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object v3

    aput-object v3, v2, p1

    .line 751
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v5, v7, v0, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    aput-object v0, v2, p1

    .line 753
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_d

    .line 754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "camera preview "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 756
    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public destroy(ZLjava/lang/Runnable;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 948
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 949
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 950
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v2, v0

    if-nez p1, :cond_0

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3, p2}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1029
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1032
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1033
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    const v3, 0x3dda740e

    add-float/2addr v0, v3

    .line 1034
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1036
    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    goto :goto_0

    .line 1038
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1040
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 961
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 962
    iget p3, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p3, p3, p4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget p3, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    cmpl-float p3, p3, v0

    if-nez p3, :cond_0

    iget p3, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_8

    :cond_0
    const/16 p3, 0x1e

    .line 963
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    .line 964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 965
    iget-wide v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const-wide/16 v6, 0x11

    if-ltz v5, :cond_1

    cmp-long v5, v3, v6

    if-lez v5, :cond_2

    :cond_1
    move-wide v3, v6

    .line 969
    :cond_2
    iput-wide v1, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    .line 970
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    invoke-virtual {v2, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 971
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    invoke-virtual {v2, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v5, 0x42fe0000    # 127.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 972
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    invoke-virtual {v1, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 973
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v5, v5

    int-to-float p3, p3

    sub-float v6, p4, v1

    mul-float/2addr v6, p3

    add-float/2addr v6, p3

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 974
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v5, v5

    mul-float/2addr p3, v1

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 976
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    cmpg-float p3, p1, p4

    if-gez p3, :cond_4

    long-to-float p3, v3

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr p3, v0

    add-float/2addr p1, p3

    .line 977
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    cmpl-float p1, p1, p4

    if-lez p1, :cond_3

    .line 979
    iput p4, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 981
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 982
    :cond_4
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    cmpl-float p3, p1, v0

    const/high16 p4, 0x43160000    # 150.0f

    if-eqz p3, :cond_6

    long-to-float p3, v3

    div-float/2addr p3, p4

    sub-float/2addr p1, p3

    .line 983
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 985
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    .line 987
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 988
    :cond_6
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    cmpl-float p3, p1, v0

    if-eqz p3, :cond_8

    long-to-float p3, v3

    div-float/2addr p3, p4

    sub-float/2addr p1, p3

    .line 989
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    .line 991
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    .line 993
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_8
    :goto_0
    return p2
.end method

.method public dualToggleShape()V
    .locals 4

    .line 562
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    const-string v2, "dualshape"

    if-nez v1, :cond_1

    .line 567
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    .line 569
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    .line 570
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    .line 572
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public focusToPoint(II)V
    .locals 1

    const/4 v0, 0x1

    .line 917
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(IIZ)V

    return-void
.end method

.method public focusToPoint(IIIIIZ)V
    .locals 3

    int-to-float p2, p2

    int-to-float p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 899
    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 900
    invoke-direct {p0, p2, p3, v2}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object p2

    .line 902
    iget-object p3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, p3, p1

    if-eqz v2, :cond_0

    .line 903
    aget-object p1, p3, p1

    invoke-virtual {p1, v1, p2}, Lorg/telegram/messenger/camera/CameraSession;->focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    if-eqz p6, :cond_1

    const/4 p1, 0x0

    .line 906
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 907
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    .line 908
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    .line 909
    iput p4, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    .line 910
    iput p5, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    .line 912
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public focusToPoint(IIZ)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    move v6, p3

    .line 895
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(IIIIIZ)V

    return-void
.end method

.method public getCameraSession()Lorg/telegram/messenger/camera/CameraSession;
    .locals 1

    const/4 v0, 0x0

    .line 935
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession(I)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    return-object v0
.end method

.method public getCameraSession(I)Lorg/telegram/messenger/camera/CameraSession;
    .locals 1

    .line 939
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCameraSessionRecording()Lorg/telegram/messenger/camera/CameraSession;
    .locals 1

    .line 943
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method

.method public getDualPosition()Landroid/graphics/Matrix;
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDualShape()I
    .locals 3

    .line 577
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "dualshape"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    .line 580
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 956
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPreviewSize()Lorg/telegram/messenger/camera/Size;
    .locals 2

    .line 658
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextureHeight(FF)F
    .locals 3

    .line 512
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 517
    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    .line 522
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    goto :goto_1

    .line 518
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    .line 519
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    :goto_1
    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p2, v0

    .line 524
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    return p1

    :cond_3
    :goto_2
    return p2
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1051
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1048
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->videoWidth:I

    return v0
.end method

.method public hasFrontFaceCamera()Z
    .locals 4

    .line 551
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 552
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 553
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/camera/CameraInfo;

    iget v3, v3, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public initTexture()V
    .locals 4

    .line 413
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 418
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureInited:Z

    return-void
.end method

.method public isDual()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    return v0
.end method

.method public isFrontface()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    return v0
.end method

.method public isInited()Z
    .locals 1

    .line 931
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 472
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 473
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 433
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 435
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v0

    .line 436
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    int-to-float v1, v1

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v2, v3

    .line 437
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    .line 438
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    float-to-int v4, v4

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    .line 439
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    sub-float/2addr v6, v1

    float-to-int v2, v6

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    .line 440
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    .line 441
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    float-to-int v1, v5

    .line 437
    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 443
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDualCameraSuccess()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 530
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 531
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 479
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 480
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 481
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v4, v2, v3

    if-eqz v4, :cond_4

    .line 483
    iget v4, p0, Lorg/telegram/messenger/camera/CameraView;->lastWidth:I

    const/4 v5, 0x1

    if-ne v4, v0, :cond_0

    iget v4, p0, Lorg/telegram/messenger/camera/CameraView;->lastHeight:I

    if-eq v4, v1, :cond_1

    :cond_0
    iget v4, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    if-le v4, v5, :cond_1

    .line 484
    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->updateRotation()V

    .line 486
    :cond_1
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    .line 487
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v2

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 491
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    .line 492
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    goto :goto_1

    .line 488
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    .line 489
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v3

    .line 494
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 495
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 496
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 498
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 499
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    .line 500
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->lastWidth:I

    .line 501
    iput v1, p0, Lorg/telegram/messenger/camera/CameraView;->lastHeight:I

    .line 503
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->pixelW:F

    .line 504
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->pixelH:F

    .line 505
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->pixelDualW:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_5

    .line 506
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->pixelDualW:F

    .line 507
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->pixelDualH:F

    :cond_5
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x0

    .line 664
    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    .line 665
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 666
    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    .line 669
    :cond_0
    iput p3, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceHeight:I

    .line 670
    iput p2, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceWidth:I

    .line 672
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 673
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_1

    const-string p2, "CameraView start create thread"

    .line 674
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 676
    :cond_1
    new-instance p2, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;-><init>(Lorg/telegram/messenger/camera/CameraView;Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    .line 677
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 768
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 769
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->shutdown(I)V

    .line 770
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    new-instance v1, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 772
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object p1, p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 773
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2, v1, v1}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    .line 775
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    if-eqz p1, :cond_2

    .line 776
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v3, v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :cond_2
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 761
    iput p3, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceHeight:I

    .line 762
    iput p2, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceWidth:I

    .line 763
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 783
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 784
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    if-eqz p1, :cond_0

    .line 785
    invoke-interface {p1}, Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;->onCameraInit()V

    :cond_0
    const/4 p1, 0x1

    .line 787
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    .line 788
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->lazy:Z

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 790
    invoke-virtual {p0, p1, p1}, Lorg/telegram/messenger/camera/CameraView;->showTexture(ZZ)V

    :cond_1
    return-void
.end method

.method public pauseAsTakingPicture()V
    .locals 3

    .line 3043
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x258

    .line 3044
    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->pause(J)V

    :cond_0
    return-void
.end method

.method protected receivedAmplitude(D)V
    .locals 0

    return-void
.end method

.method public resetCamera()V
    .locals 5

    .line 637
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 638
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    aget-object v0, v0, v1

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 639
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    .line 645
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v2, v1

    new-instance v4, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v2, v3, v3, v4}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 653
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aput-object v3, v0, v1

    :cond_2
    return-void
.end method

.method public runHaptic()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 1010
    fill-array-data v1, :array_0

    .line 1011
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 1012
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    .line 1018
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 1019
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1020
    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 1022
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z

    :goto_0
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1
    .end array-data
.end method

.method public setClipBottom(I)V
    .locals 0

    .line 829
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipBottom:I

    return-void
.end method

.method public setClipTop(I)V
    .locals 0

    .line 825
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    return-void
.end method

.method public setFpsLimit(I)V
    .locals 0

    .line 3039
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->fpsLimit:I

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 535
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->mirror:Z

    return-void
.end method

.method public setOptimizeForBarcode(Z)V
    .locals 2

    .line 423
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->optimizeForBarcode:Z

    .line 424
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 425
    aget-object p1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSession;->setOptimizeForBarcode(Z)V

    :cond_0
    return-void
.end method

.method public setRecordFile(Ljava/io/File;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->recordFile:Ljava/io/File;

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 457
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 459
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 461
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    if-nez p1, :cond_2

    .line 462
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 463
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 465
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setUseMaxPreview(Z)V
    .locals 0

    .line 547
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->useMaxPreview:Z

    return-void
.end method

.method public setZoom(F)V
    .locals 3

    .line 921
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 922
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    :cond_0
    return-void
.end method

.method public showTexture(ZZ)V
    .locals 4

    .line 797
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 803
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    .line 806
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getAlpha()F

    move-result v3

    aput v3, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    aput v0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    .line 807
    new-instance v0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 811
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/messenger/camera/CameraView$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/camera/CameraView$3;-><init>(Lorg/telegram/messenger/camera/CameraView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 818
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 820
    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method protected square()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startRecording(Ljava/io/File;Ljava/lang/Runnable;)Z
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    .line 169
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->startRecording(Ljava/io/File;)Z

    .line 170
    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->onRecordingFinishRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    return p1
.end method

.method public startSwitchingAnimation()V
    .locals 8

    .line 186
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 190
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 194
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 199
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->flipHalfReached:Z

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 203
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    .line 204
    new-instance v1, Lorg/telegram/messenger/camera/CameraView$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$1;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/messenger/camera/CameraView$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$2;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startTakePictureAnimation(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1002
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    .line 1003
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz p1, :cond_0

    .line 1005
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->runHaptic()V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->stopRecording()V

    return-void
.end method

.method public switchCamera()V
    .locals 7

    .line 586
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 589
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 590
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/messenger/camera/CameraView;->lastDualSwitchTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1a4

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_0

    .line 593
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastDualSwitchTime:J

    .line 594
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v3, v0, v2

    .line 595
    aget-object v4, v0, v1

    aput-object v4, v0, v2

    .line 596
    aput-object v3, v0, v1

    .line 598
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v0, v2

    .line 599
    aget-object v4, v0, v1

    aput-object v4, v0, v2

    .line 600
    aput-object v3, v0, v1

    .line 602
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v0, v2

    .line 603
    aget-object v4, v0, v1

    aput-object v4, v0, v2

    .line 604
    aput-object v3, v0, v1

    .line 606
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v3, v0, v2

    .line 607
    aget-object v4, v0, v1

    aput-object v4, v0, v2

    .line 608
    aput-object v3, v0, v1

    .line 610
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    .line 612
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 614
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void

    .line 618
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->startSwitchingAnimation()V

    .line 619
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v3, v0, v2

    if-eqz v3, :cond_5

    .line 620
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    aget-object v0, v0, v2

    const/4 v4, 0x0

    if-ne v3, v0, :cond_4

    .line 621
    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    .line 623
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v3, v3, v2

    new-instance v5, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v3, v4, v4, v5}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 631
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aput-object v4, v0, v2

    .line 633
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public toggleDual()V
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->toggleDual(Z)V

    return-void
.end method

.method public toggleDual(Z)V
    .locals 5

    if-nez p1, :cond_2

    .line 314
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    if-eq p1, v0, :cond_2

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    const-wide/16 v0, 0xc8

    .line 317
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    .line 318
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 320
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v0, p1, v1

    if-eqz v0, :cond_3

    .line 321
    aget-object p1, p1, v1

    const-string/jumbo v0, "off"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSession;->setCurrentFlashMode(Ljava/lang/String;)V

    .line 323
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->enableDualInternal()V

    goto :goto_1

    .line 325
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, p1, v0

    if-eqz v2, :cond_9

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 329
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, p1, v0

    if-eqz v2, :cond_7

    .line 330
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    .line 331
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    aget-object p1, p1, v0

    const/4 v3, 0x0

    if-ne v2, p1, :cond_6

    .line 332
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSession;

    .line 334
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aget-object v2, v2, v0

    new-instance v4, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {p1, v2, v3, v3, v4}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 343
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSession;

    aput-object v3, p1, v0

    .line 344
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aput-object v3, p1, v0

    .line 345
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    aput-object v3, p1, v0

    .line 346
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aput-object v3, p1, v0

    goto :goto_0

    .line 348
    :cond_7
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    .line 350
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    if-nez p1, :cond_8

    .line 351
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {p1}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 353
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    .line 357
    :cond_8
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->toggledDualAsSave:Z

    return-void

    .line 326
    :cond_9
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    return-void
.end method

.method public updateDualPosition()V
    .locals 4

    .line 374
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
