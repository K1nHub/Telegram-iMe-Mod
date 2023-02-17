.class public Lorg/telegram/messenger/camera/CameraView;
.super Landroid/widget/FrameLayout;
.source "CameraView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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
.field private static final FRAGMENT_SCREEN_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final MSG_AUDIOFRAME_AVAILABLE:I = 0x3

.field private static final MSG_START_RECORDING:I = 0x0

.field private static final MSG_STOP_RECORDING:I = 0x1

.field private static final MSG_VIDEOFRAME_AVAILABLE:I = 0x2

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final audioSampleRate:I = 0xac44


# instance fields
.field private blurredStubView:Landroid/widget/ImageView;

.field private cameraFile:Ljava/io/File;

.field private cameraSession:Lorg/telegram/messenger/camera/CameraSession;

.field private cameraTexture:[I

.field cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

.field private clipBottom:I

.field private clipTop:I

.field private cx:I

.field private cy:I

.field private delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

.field firstFrameRendered:Z

.field flipAnimator:Landroid/animation/ValueAnimator;

.field flipHalfReached:Z

.field private focusAreaSize:I

.field private focusProgress:F

.field private fpsLimit:I

.field info:Lorg/telegram/messenger/camera/CameraInfo;

.field private inited:Z

.field private initialFrontface:Z

.field private innerAlpha:F

.field private innerPaint:Landroid/graphics/Paint;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isFrontface:Z

.field private lastDrawTime:J

.field private lastHeight:I

.field private lastWidth:I

.field private final layoutLock:Ljava/lang/Object;

.field private mMVPMatrix:[F

.field private mSTMatrix:[F

.field private matrix:Landroid/graphics/Matrix;

.field private measurementsCount:I

.field private mirror:Z

.field private moldSTMatrix:[F

.field nextFrameTimeNs:J

.field private oldCameraTexture:[I

.field onRecordingFinishRunnable:Ljava/lang/Runnable;

.field private optimizeForBarcode:Z

.field private outerAlpha:F

.field private outerPaint:Landroid/graphics/Paint;

.field private pictureSize:Lorg/telegram/messenger/camera/Size;

.field private position:[I

.field private previewSize:Lorg/telegram/messenger/camera/Size;

.field recordFile:Ljava/io/File;

.field private volatile surfaceHeight:I

.field private volatile surfaceWidth:I

.field private takePictureProgress:F

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureView:Landroid/view/TextureView;

.field private txform:Landroid/graphics/Matrix;

.field private final updateRotationMatrix:Ljava/lang/Runnable;

.field private useMaxPreview:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private videoEncoder:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;


# direct methods
.method public static synthetic $r8$lambda$8TftNZtd0AkhQL8qoGse07li71A(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$9-_dTyTnolfA0ZzPUzPWzoqJwGU(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$TXvvitMtTdB34XDGTTMRvcGBKNg(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$onSurfaceTextureDestroyed$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZGZwNOQDlrwhCm4oLoaMe-cpZcA(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$m5aGqLo7D50G-d6Mfhavehw8RrU(Lorg/telegram/messenger/camera/CameraView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$4(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 106
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 124
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    const/16 v1, 0x10

    new-array v3, v1, [F

    .line 126
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[F

    new-array v3, v1, [F

    .line 127
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->mSTMatrix:[F

    new-array v1, v1, [F

    .line 128
    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->moldSTMatrix:[F

    const/4 v1, -0x1

    .line 173
    iput v1, p0, Lorg/telegram/messenger/camera/CameraView;->fpsLimit:I

    const/4 v3, 0x0

    .line 276
    iput v3, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    .line 283
    iput v1, p0, Lorg/telegram/messenger/camera/CameraView;->lastWidth:I

    iput v1, p0, Lorg/telegram/messenger/camera/CameraView;->lastHeight:I

    .line 491
    new-instance v3, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->updateRotationMatrix:Ljava/lang/Runnable;

    .line 641
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 688
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->position:[I

    new-array v3, v2, [I

    .line 689
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraTexture:[I

    new-array v2, v2, [I

    .line 690
    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->oldCameraTexture:[I

    .line 254
    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->initialFrontface:Z

    .line 255
    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    .line 256
    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 257
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    const/16 v2, 0x11

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    .line 260
    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 p1, 0x60

    .line 262
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    .line 263
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/camera/CameraView;)Landroid/view/TextureView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/camera/CameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/camera/CameraView;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->fpsLimit:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraView$VideoRecorder;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->videoEncoder:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$VideoRecorder;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->videoEncoder:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/camera/CameraView;)[F
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->moldSTMatrix:[F

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->onFirstFrameRendered()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraView;)[F
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->mSTMatrix:[F

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/Size;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/camera/CameraView;)[I
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->oldCameraTexture:[I

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/camera/CameraView;ILjava/lang/String;)I
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->loadShader(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/camera/CameraView;)[I
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraTexture:[I

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/camera/CameraView;)[F
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[F

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/camera/CameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/camera/CameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/camera/CameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/camera/CameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/camera/CameraView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->createCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/camera/CameraView;)Ljava/lang/Object;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    return-object p0
.end method

.method private calculateTapArea(FFF)Landroid/graphics/Rect;
    .locals 3

    .line 528
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    int-to-float v0, v0

    mul-float v0, v0, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    float-to-int p1, p1

    .line 530
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

    .line 531
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-direct {p0, p2, v2, v0}, Lorg/telegram/messenger/camera/CameraView;->clamp(III)I

    move-result p2

    .line 533
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 534
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 536
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
    .locals 5

    .line 503
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    .line 508
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    .line 510
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 511
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v3, :cond_1

    .line 512
    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    int-to-float v0, v0

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float v4, v0, v3

    int-to-float v1, v1

    div-float v3, v1, v3

    .line 514
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    .line 515
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 516
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 518
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 520
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->updateRotationMatrix:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 522
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

.method private createCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1165
    new-instance v0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/camera/CameraView;Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createCamera$2()V
    .locals 1

    .line 1185
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    .line 1186
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraView camera initied"

    .line 1187
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1189
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->setInitied()V

    .line 1190
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createCamera$3()V
    .locals 2

    .line 1192
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V

    return-void
.end method

.method private synthetic lambda$createCamera$4(Landroid/graphics/SurfaceTexture;)V
    .locals 8

    .line 1166
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-nez v0, :cond_0

    return-void

    .line 1169
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraView create camera session"

    .line 1170
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1172
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-nez v0, :cond_2

    .line 1173
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize()V

    .line 1175
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-nez v0, :cond_3

    return-void

    .line 1178
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1180
    new-instance v0, Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->info:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    const/16 v6, 0x100

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;IZ)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    .line 1181
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 1182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1184
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    new-instance v2, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    new-instance v3, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/telegram/messenger/camera/CameraController;->open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 9

    .line 492
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-eqz v0, :cond_0

    .line 493
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->access$2700(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->access$2700(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v0

    .line 495
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v0, :cond_0

    .line 497
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[F

    const/4 v4, 0x0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSurfaceTextureDestroyed$0()V
    .locals 1

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2

    .line 1149
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 1150
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1151
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    .line 1153
    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1154
    aget p2, p2, v1

    if-nez p2, :cond_1

    .line 1155
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    .line 1156
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1158
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method private onFirstFrameRendered()V
    .locals 2

    .line 1137
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/camera/CameraView$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$3;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1144
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private updateCameraInfoSize()V
    .locals 9

    .line 393
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 397
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/camera/CameraInfo;

    .line 399
    iget-boolean v3, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-eqz v3, :cond_1

    iget v4, v2, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-nez v4, :cond_2

    :cond_1
    if-nez v3, :cond_3

    iget v3, v2, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-nez v3, :cond_3

    .line 400
    :cond_2
    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->info:Lorg/telegram/messenger/camera/CameraInfo;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->info:Lorg/telegram/messenger/camera/CameraInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const v0, 0x3faaaaab

    .line 409
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 416
    iget-boolean v2, p0, Lorg/telegram/messenger/camera/CameraView;->initialFrontface:Z

    const/16 v3, 0x780

    const/16 v4, 0x2d0

    const/16 v5, 0x9

    const/16 v6, 0x10

    const/16 v7, 0x3c0

    const/16 v8, 0x500

    if-eqz v2, :cond_6

    .line 417
    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v6, v5}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    const/16 v3, 0x500

    const/16 v7, 0x2d0

    goto :goto_2

    :cond_6
    sub-float/2addr v1, v0

    .line 421
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 422
    new-instance v0, Lorg/telegram/messenger/camera/Size;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 426
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    if-nez v1, :cond_7

    const/16 v3, 0x500

    const/16 v4, 0x3c0

    goto :goto_2

    :cond_7
    const/16 v4, 0x5a0

    const/16 v4, 0x3c0

    const/16 v7, 0x5a0

    goto :goto_2

    .line 434
    :cond_8
    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v6, v5}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 438
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    if-nez v1, :cond_9

    const/16 v3, 0x500

    goto :goto_2

    :cond_9
    const/16 v1, 0x438

    const/16 v7, 0x438

    .line 448
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->info:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v8, v4, v0}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 449
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->info:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v3, v7, v0}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    .line 451
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public destroy(ZLjava/lang/Runnable;)V
    .locals 3

    .line 591
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 593
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 672
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 675
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 676
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    const v3, 0x3dda740e

    add-float/2addr v0, v3

    .line 677
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 679
    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 683
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 603
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 604
    iget p3, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpl-float p3, p3, p4

    if-nez p3, :cond_0

    iget p3, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    cmpl-float p3, p3, v0

    if-nez p3, :cond_0

    iget p3, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_8

    :cond_0
    const/16 p3, 0x1e

    .line 605
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 607
    iget-wide v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x11

    cmp-long v9, v3, v5

    if-ltz v9, :cond_1

    cmp-long v5, v3, v7

    if-lez v5, :cond_2

    :cond_1
    move-wide v3, v7

    .line 611
    :cond_2
    iput-wide v1, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    .line 612
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    invoke-virtual {v2, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 613
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    invoke-virtual {v2, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v5, 0x42fe0000    # 127.0f

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 614
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    invoke-virtual {v1, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 615
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v5, v5

    int-to-float p3, p3

    sub-float v6, p4, v1

    mul-float v6, v6, p3

    add-float/2addr v6, p3

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 616
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v5, v5

    mul-float p3, p3, v1

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 618
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    cmpg-float p3, p1, p4

    if-gez p3, :cond_4

    long-to-float p3, v3

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr p3, v0

    add-float/2addr p1, p3

    .line 619
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    cmpl-float p1, p1, p4

    if-lez p1, :cond_3

    .line 621
    iput p4, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 623
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 624
    :cond_4
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    const/high16 p3, 0x43160000    # 150.0f

    cmpl-float p4, p1, v0

    if-eqz p4, :cond_6

    long-to-float p4, v3

    div-float/2addr p4, p3

    sub-float/2addr p1, p4

    .line 625
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 627
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    .line 629
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 630
    :cond_6
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    cmpl-float p4, p1, v0

    if-eqz p4, :cond_8

    long-to-float p4, v3

    div-float/2addr p4, p3

    sub-float/2addr p1, p4

    .line 631
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    .line 633
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    .line 635
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_8
    :goto_0
    return p2
.end method

.method public focusToPoint(II)V
    .locals 1

    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(IIZ)V

    return-void
.end method

.method public focusToPoint(IIZ)V
    .locals 5

    int-to-float v0, p1

    int-to-float v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 550
    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 551
    invoke-direct {p0, v0, v1, v4}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v1, :cond_0

    .line 554
    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/camera/CameraSession;->focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 558
    iput p3, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 559
    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    .line 560
    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    .line 561
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    .line 562
    iput p2, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    .line 564
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public getCameraSession()Lorg/telegram/messenger/camera/CameraSession;
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPreviewSize()Lorg/telegram/messenger/camera/Size;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    return-object v0
.end method

.method public getTextureHeight(FF)F
    .locals 2

    .line 312
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-nez v0, :cond_0

    goto :goto_2

    .line 317
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    .line 322
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    goto :goto_1

    .line 318
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    .line 319
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    :goto_1
    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p2, v0

    .line 324
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    return p1

    :cond_3
    :goto_2
    return p2
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public hasFrontFaceCamera()Z
    .locals 4

    .line 351
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 352
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 353
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

.method public isFrontface()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    return v0
.end method

.method public isInited()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 279
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 280
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 330
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 331
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 286
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 287
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 288
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v2, :cond_4

    .line 290
    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastWidth:I

    const/4 v4, 0x1

    if-ne v3, v0, :cond_0

    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastHeight:I

    if-eq v3, v1, :cond_1

    :cond_0
    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    if-le v3, v4, :cond_1

    .line 291
    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->updateRotation()V

    .line 293
    :cond_1
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    .line 294
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 298
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    .line 299
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    goto :goto_1

    .line 295
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    .line 296
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v3

    .line 301
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

    .line 302
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    mul-float v2, v2, v4

    float-to-int v2, v2

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 303
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    mul-float v4, v4, v3

    float-to-int v3, v4

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 305
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 306
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    .line 307
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->lastWidth:I

    .line 308
    iput v1, p0, Lorg/telegram/messenger/camera/CameraView;->lastHeight:I

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 378
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize()V

    .line 380
    iput p3, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceHeight:I

    .line 381
    iput p2, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceWidth:I

    .line 383
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 384
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    const-string p2, "CameraView start create thread"

    .line 385
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 387
    :cond_0
    new-instance p2, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;-><init>(Lorg/telegram/messenger/camera/CameraView;Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    .line 388
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 463
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->shutdown(I)V

    .line 465
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    new-instance v1, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 467
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz p1, :cond_1

    .line 468
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :cond_1
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 456
    iput p3, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceHeight:I

    .line 457
    iput p2, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceWidth:I

    .line 458
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 475
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 476
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    if-eqz p1, :cond_0

    .line 477
    invoke-interface {p1}, Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;->onCameraInit()V

    :cond_0
    const/4 p1, 0x1

    .line 479
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    :cond_1
    return-void
.end method

.method public runHaptic()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 650
    fill-array-data v1, :array_0

    .line 652
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 654
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

    .line 660
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 662
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 663
    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 665
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

    .line 488
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipBottom:I

    return-void
.end method

.method public setClipTop(I)V
    .locals 0

    .line 484
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    return-void
.end method

.method public setFpsLimit(I)V
    .locals 0

    .line 2073
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->fpsLimit:I

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->mirror:Z

    return-void
.end method

.method public setOptimizeForBarcode(Z)V
    .locals 1

    .line 270
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->optimizeForBarcode:Z

    .line 271
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 272
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSession;->setOptimizeForBarcode(Z)V

    :cond_0
    return-void
.end method

.method public setRecordFile(Ljava/io/File;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->recordFile:Ljava/io/File;

    return-void
.end method

.method public setUseMaxPreview(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->useMaxPreview:Z

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    :cond_0
    return-void
.end method

.method public startRecording(Ljava/io/File;Ljava/lang/Runnable;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->startRecording(Ljava/io/File;)Z

    .line 162
    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->onRecordingFinishRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    return p1
.end method

.method public startSwitchingAnimation()V
    .locals 8

    .line 177
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 181
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 184
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 185
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 186
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 192
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    .line 196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->flipHalfReached:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 199
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    .line 200
    new-instance v1, Lorg/telegram/messenger/camera/CameraView$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$1;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/messenger/camera/CameraView$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$2;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :catchall_0
    move-exception v1

    .line 196
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startTakePictureAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 644
    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    .line 645
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 646
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->runHaptic()V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->stopRecording()V

    return-void
.end method

.method public switchCamera()V
    .locals 5

    .line 361
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    .line 363
    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    :cond_0
    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    .line 366
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    .line 367
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize()V

    .line 368
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->reinitForNewCamera()V

    return-void
.end method
