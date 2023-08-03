.class public Lorg/telegram/ui/Components/InstantCameraView;
.super Landroid/widget/FrameLayout;
.source "InstantCameraView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InstantCameraView$Delegate;,
        Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;,
        Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;,
        Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;,
        Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;,
        Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
    }
.end annotation


# static fields
.field private static final ALLOW_BIG_CAMERA_WHITELIST:[I


# instance fields
.field public WRITE_TO_FILE_IN_BACKGROUND:Z

.field private animationTranslationY:F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private aspectRatio:Lorg/telegram/messenger/camera/Size;

.field private blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

.field private cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

.field private cameraFile:Ljava/io/File;

.field private volatile cameraReady:Z

.field private cameraSession:Lorg/telegram/messenger/camera/CameraSession;

.field private cameraTexture:[I

.field private cameraTextureAlpha:F

.field private cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

.field private cancelled:Z

.field private currentAccount:I

.field private delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

.field public drawBlur:Z

.field private encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

.field private file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field finishZoomTransition:Landroid/animation/ValueAnimator;

.field private flipAnimationInProgress:Z

.field private isFrontface:Z

.field isInPinchToZoomTouchMode:Z

.field private isMessageTransition:Z

.field private isSecretChat:Z

.field private iv:[B

.field private key:[B

.field private lastBitmap:Landroid/graphics/Bitmap;

.field private final mMVPMatrix:[F

.field private final mSTMatrix:[F

.field maybePinchToZoomTouchMode:Z

.field private final moldSTMatrix:[F

.field private muteAnimation:Landroid/animation/AnimatorSet;

.field private muteImageView:Landroid/widget/ImageView;

.field private needDrawFlickerStub:Z

.field private oldCameraTexture:[I

.field private oldTexturePreviewSize:Lorg/telegram/messenger/camera/Size;

.field private oldTextureTextureBuffer:Ljava/nio/FloatBuffer;

.field public opened:Z

.field private paint:Landroid/graphics/Paint;

.field private panTranslationY:F

.field private parentView:Landroid/view/View;

.field private pictureSize:Lorg/telegram/messenger/camera/Size;

.field pinchScale:F

.field pinchStartDistance:F

.field private pointerId1:I

.field private pointerId2:I

.field private position:[I

.field private previewSize:Lorg/telegram/messenger/camera/Size;

.field private progress:F

.field private progressTimer:Ljava/util/Timer;

.field private recordStartTime:J

.field private recordedTime:J

.field private recording:Z

.field private recordingGuid:I

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scaleX:F

.field private scaleY:F

.field private selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

.field private size:J

.field private switchCameraButton:Landroid/widget/ImageView;

.field switchCameraDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

.field private textureView:Landroid/view/TextureView;

.field private textureViewSize:I

.field private updateTextureViewSize:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;


# direct methods
.method public static synthetic $r8$lambda$4AOS4xppWpMOB_jmIf33X380lgM(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$5(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4bqLZrJ6TFeOSExeIyHx-p--BR0(Lorg/telegram/ui/Components/InstantCameraView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lp3qcsePO2ENQUPGJfCebl-Zfcg(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$P1XHwyXkJ6q7QNfKXdkVd5mzSRo(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$chooseOptimalSize$2(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UA-ZDZ9C-bl61_G1vX6lpHkaS1g(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$finishZoom$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nSaOwzuT398yheZThkQBis9ntj8(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$startAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xr5PfxYc2SA8zJKrTl0_FD121gY(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 252
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/InstantCameraView;->ALLOW_BIG_CAMERA_WHITELIST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x110a8f8c
        -0x5319aae7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 260
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 147
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    const/4 v3, 0x0

    .line 153
    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    const/4 v4, 0x1

    .line 157
    iput-boolean v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 171
    iput-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    new-array v6, v4, [I

    .line 172
    iput-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTexture:[I

    new-array v6, v4, [I

    .line 173
    iput-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I

    const/high16 v6, 0x3f800000    # 1.0f

    .line 174
    iput v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    .line 189
    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x10

    if-eqz v6, :cond_0

    new-instance v6, Lorg/telegram/messenger/camera/Size;

    const/16 v10, 0x9

    invoke-direct {v6, v9, v10}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v6, v8, v7}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    :goto_0
    iput-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    new-array v6, v9, [F

    .line 198
    iput-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->mMVPMatrix:[F

    new-array v6, v9, [F

    .line 199
    iput-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->mSTMatrix:[F

    new-array v6, v9, [F

    .line 200
    iput-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->moldSTMatrix:[F

    .line 250
    iput-boolean v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->drawBlur:Z

    .line 261
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAboveAverage()Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    .line 262
    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 263
    invoke-interface/range {p2 .. p2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getFragmentView()Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->parentView:Landroid/view/View;

    const/4 v6, 0x0

    .line 264
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move-object/from16 v9, p2

    .line 266
    iput-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    .line 267
    invoke-interface/range {p2 .. p2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getClassGuid()I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    .line 268
    invoke-interface/range {p2 .. p2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isSecretChat()Z

    move-result v9

    iput-boolean v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->isSecretChat:Z

    .line 269
    new-instance v9, Lorg/telegram/ui/Components/InstantCameraView$1;

    invoke-direct {v9, v0, v4}, Lorg/telegram/ui/Components/InstantCameraView$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView;I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    .line 276
    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 277
    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 278
    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    .line 283
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    const/high16 v10, -0x1000000

    if-lt v7, v9, :cond_1

    .line 284
    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$2;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    .line 297
    new-instance v5, Lorg/telegram/ui/Components/InstantCameraView$3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/InstantCameraView$3;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 304
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 305
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    goto :goto_1

    .line 307
    :cond_1
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 308
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 309
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 311
    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$4;

    invoke-direct {v11, v0, v1, v7, v9}, Lorg/telegram/ui/Components/InstantCameraView$4;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    .line 337
    invoke-virtual {v11, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 338
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v7, v5, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 341
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    const/16 v9, 0x11

    invoke-direct {v5, v7, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    .line 344
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 345
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$string;->AccDescrSwitchCamera:I

    const-string v7, "AccDescrSwitchCamera"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    const/16 v11, 0x3e

    const/16 v12, 0x3e

    const/16 v13, 0x53

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    .line 391
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 392
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->video_mute:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 394
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/16 v3, 0x30

    invoke-static {v3, v3, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v3, 0x28

    .line 397
    invoke-static {v10, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$7;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Lorg/telegram/ui/Components/InstantCameraView$7;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    .line 416
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    invoke-direct {v1, v4, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    .line 419
    new-instance v1, Lorg/telegram/ui/Components/BlurBehindDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->parentView:Landroid/view/View;

    invoke-direct {v1, v3, v0, v6, v2}, Lorg/telegram/ui/Components/BlurBehindDrawable;-><init>(Landroid/view/View;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->needDrawFlickerStub:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleX:F

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 0

    .line 131
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleX:F

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleY:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 0

    .line 131
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleY:F

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->mSTMatrix:[F

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->loadShader(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTexture:[I

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->mMVPMatrix:[F

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->createCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->moldSTMatrix:[F

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 0

    .line 131
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return p1
.end method

.method static synthetic access$2516(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 1

    .line 131
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTextureTextureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTextureTextureBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTexturePreviewSize:Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTexturePreviewSize:Lorg/telegram/messenger/camera/Size;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isSecretChat:Z

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)Ljava/lang/String;
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->createFragmentShader(Lorg/telegram/messenger/camera/Size;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    return p1
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/InstantCameraView;J)J
    .locals 0

    .line 131
    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/InstantCameraView;)[B
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/InstantCameraView;)[B
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    return-wide v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->startProgressTimer()V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    return-wide v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    return-object p0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraSession;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p1
.end method

.method private allowBigSizeCamera()Z
    .locals 6

    .line 1095
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1098
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAboveAverage()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1101
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLegacyDevicePerformanceClass()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    return v1

    .line 1105
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 1106
    :goto_0
    sget-object v4, Lorg/telegram/ui/Components/InstantCameraView;->ALLOW_BIG_CAMERA_WHITELIST:[I

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 1107
    aget v4, v4, v3

    if-ne v4, v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static allowBigSizeCameraDebug()Z
    .locals 6

    .line 1115
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLegacyDevicePerformanceClass()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    .line 1119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 1120
    :goto_0
    sget-object v4, Lorg/telegram/ui/Components/InstantCameraView;->ALLOW_BIG_CAMERA_WHITELIST:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 1121
    aget v4, v4, v3

    if-ne v4, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 451
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    return v3

    .line 454
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private chooseOptimalSize(Ljava/util/ArrayList;)Lorg/telegram/messenger/camera/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;)",
            "Lorg/telegram/messenger/camera/Size;"
        }
    .end annotation

    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->allowBigSizeCamera()Z

    move-result v1

    const/16 v2, 0x4b0

    if-eqz v1, :cond_0

    const/16 v1, 0x5a0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1058
    :goto_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v1, 0x0

    move v3, v1

    .line 1062
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1063
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    iget v4, v4, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    iget v5, v5, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gt v4, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    iget v4, v4, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    iget v5, v5, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x140

    if-lt v4, v5, :cond_2

    .line 1064
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1067
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->allowBigSizeCamera()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 1080
    :cond_4
    sget-object p1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda6;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1091
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/camera/Size;

    return-object p1

    .line 1069
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object p1, v0

    .line 1074
    :cond_6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x1e0

    if-eqz v0, :cond_7

    const/16 v0, 0x280

    .line 1075
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    invoke-static {p1, v0, v2, v3, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v0, 0x10e

    .line 1077
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    invoke-static {p1, v2, v0, v3, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object p1

    return-object p1
.end method

.method private createCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1129
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createFragmentShader(Lorg/telegram/messenger/camera/Size;)Ljava/lang/String;
    .locals 1

    .line 2920
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsLow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->allowBigSizeCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform vec2 resolution;\nuniform vec2 preview;\nuniform float alpha;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec2 coord = resolution * 0.5;\n   float radius = 0.51 * resolution.x;\n   float d = length(coord - gl_FragCoord.xy) - radius;\n   float t = clamp(d, 0.0, 1.0);\n   if (t == 0.0) {\n       vec2 c_textureSize = preview;\n       vec2 c_onePixel = (1.0 / c_textureSize);\n       vec2 uv = vTextureCoord;\n       vec2 pixel = uv * c_textureSize + 0.5;\n       vec2 frac = fract(pixel);\n       pixel = (floor(pixel) / c_textureSize) - vec2(c_onePixel);\n       vec4 tl = texture2D(sTexture, pixel + vec2(0.0         , 0.0));\n       vec4 tr = texture2D(sTexture, pixel + vec2(c_onePixel.x, 0.0));\n       vec4 bl = texture2D(sTexture, pixel + vec2(0.0         , c_onePixel.y));\n       vec4 br = texture2D(sTexture, pixel + vec2(c_onePixel.x, c_onePixel.y));\n       vec4 x1 = mix(tl, tr, frac.x);\n       vec4 x2 = mix(bl, br, frac.x);\n       gl_FragColor = mix(x1, x2, frac.y) * alpha;   } else {\n       gl_FragColor = vec4(1, 1, 1, alpha);\n   }\n}\n"

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform float alpha;\nuniform vec2 preview;\nuniform vec2 resolution;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec4 textColor = texture2D(sTexture, vTextureCoord);\n   vec2 coord = resolution * 0.5;\n   float radius = 0.51 * resolution.x;\n   float d = length(coord - gl_FragCoord.xy) - radius;\n   float t = clamp(d, 0.0, 1.0);\n   vec3 color = mix(textColor.rgb, vec3(1, 1, 1), t);\n   gl_FragColor = vec4(color * alpha, alpha);\n}\n"

    return-object p1
.end method

.method private initCamera()Z
    .locals 11

    .line 984
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    move v3, v1

    .line 989
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 990
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/CameraInfo;

    .line 991
    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 994
    :cond_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v5

    if-nez v5, :cond_4

    .line 995
    :cond_3
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    .line 1001
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    if-nez v0, :cond_6

    .line 1002
    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    .line 1004
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    if-nez v0, :cond_7

    return v1

    .line 1008
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v0

    .line 1009
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v2

    .line 1010
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView;->chooseOptimalSize(Ljava/util/ArrayList;)Lorg/telegram/messenger/camera/Size;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 1011
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->chooseOptimalSize(Ljava/util/ArrayList;)Lorg/telegram/messenger/camera/Size;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    .line 1012
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    iget v4, v4, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v3, v3, Lorg/telegram/messenger/camera/Size;->mWidth:I

    const/4 v5, 0x1

    if-eq v4, v3, :cond_f

    .line 1014
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_2
    if-ltz v3, :cond_b

    .line 1015
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    .line 1016
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_3
    if-ltz v6, :cond_9

    .line 1017
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/camera/Size;

    .line 1018
    iget v8, v4, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    iget v10, v9, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-lt v8, v10, :cond_8

    iget v10, v4, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v9, v9, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-lt v10, v9, :cond_8

    iget v9, v7, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v8, v9, :cond_8

    iget v8, v7, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v10, v8, :cond_8

    .line 1019
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 1020
    iput-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    move v1, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_b
    :goto_5
    if-nez v1, :cond_f

    .line 1031
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_6
    if-ltz v3, :cond_f

    .line 1032
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    .line 1033
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_7
    if-ltz v6, :cond_d

    .line 1034
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/camera/Size;

    .line 1035
    iget v8, v4, Lorg/telegram/messenger/camera/Size;->mWidth:I

    const/16 v9, 0x168

    if-lt v8, v9, :cond_c

    iget v10, v4, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-lt v10, v9, :cond_c

    iget v9, v7, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v8, v9, :cond_c

    iget v8, v7, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v10, v8, :cond_c

    .line 1036
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 1037
    iput-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    move v1, v5

    goto :goto_8

    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1048
    :cond_f
    :goto_9
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_10

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preview w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    iget v1, v1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    iget v1, v1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_10
    return v5
.end method

.method private static synthetic lambda$chooseOptimalSize$2(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 3

    .line 1081
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget p0, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1082
    iget v1, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v2, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget p1, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p1, v0, p0

    if-gez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createCamera$3()V
    .locals 5

    const-string v0, " h = "

    .line 1141
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 1144
    :try_start_0
    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1145
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1146
    :cond_0
    new-instance v3, Lorg/telegram/messenger/camera/Size;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v1}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change preview size to w = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1150
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1154
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1155
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1156
    :cond_2
    new-instance v3, Lorg/telegram/messenger/camera/Size;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v1}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change picture size to w = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    move v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1161
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1163
    :cond_3
    :goto_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    const-string v0, "camera initied"

    .line 1164
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1166
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->setInitied()V

    if-eqz v2, :cond_5

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_5

    .line 1169
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->reinitForNewCamera()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$createCamera$4()V
    .locals 2

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createCamera$5(Landroid/graphics/SurfaceTexture;)V
    .locals 8

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-nez v0, :cond_0

    return-void

    .line 1133
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "create camera session"

    .line 1134
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1137
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1138
    new-instance v0, Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    const/16 v6, 0x100

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    .line 1139
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 1140
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/telegram/messenger/camera/CameraController;->openRound(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$finishZoom$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3105
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    .line 3106
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 348
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->switchCamera()V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_1

    .line 353
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_1
    const/4 p1, 0x1

    .line 355
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 356
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 357
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 358
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$5;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 375
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$6;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$startAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 745
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    .line 746
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2

    .line 1182
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 1183
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1184
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    .line 1186
    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1187
    aget p2, p2, v1

    if-nez p2, :cond_1

    .line 1188
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    .line 1189
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1191
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p1, v1

    :cond_1
    return p1
.end method

.method private saveLastCameraBitmap()V
    .locals 9

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 881
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x32

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    const/4 v4, 0x7

    const/4 v5, 0x1

    .line 884
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 886
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v2, :cond_0

    const-string v2, "icthumb_back.jpg"

    goto :goto_0

    :cond_0
    const-string v2, "icthumb.jpg"

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 887
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x57

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 889
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private startProgressTimer()V
    .locals 7

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1202
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1203
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1205
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1208
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    .line 1209
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$11;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x11

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopProgressTimer()V
    .locals 1

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1228
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1229
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1231
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .line 959
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    .line 962
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-eqz v2, :cond_0

    const-string v2, "icthumb_back.jpg"

    goto :goto_0

    :cond_0
    const-string v2, "icthumb.jpg"

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    :catchall_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 968
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->needDrawFlickerStub:Z

    .line 969
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 972
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_2

    .line 973
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 974
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    .line 975
    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    .line 977
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    .line 978
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->initCamera()Z

    .line 979
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->reinitForNewCamera()V

    return-void
.end method

.method private updateTranslationY()V
    .locals 3

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->panTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->panTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public blurFullyDrawing()Z
    .locals 1

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->isFullyDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->opened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel(Z)V
    .locals 7

    .line 898
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 901
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 903
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_1

    return-void

    .line 906
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    const/4 v0, 0x0

    .line 907
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    .line 908
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 909
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz p1, :cond_3

    .line 910
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    .line 911
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(I)V

    .line 912
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    .line 914
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-eqz p1, :cond_5

    .line 915
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    const-string p1, "delete camera file by cancel"

    .line 916
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 918
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 919
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-static {p1}, Lorg/telegram/messenger/AutoDeleteMediaTask;->unlockFile(Ljava/io/File;)V

    .line 920
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    .line 922
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    .line 923
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    .line 924
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->show(Z)V

    .line 925
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public cancelBlur()V
    .locals 2

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->show(Z)V

    .line 1248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public changeVideoPreviewState(IF)V
    .locals 3

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 795
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->startProgressTimer()V

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 798
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    .line 799
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 801
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    long-to-float p1, v1

    mul-float/2addr p2, p1

    float-to-long p1, p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public destroy(ZLjava/lang/Runnable;)V
    .locals 3

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 507
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

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

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 490
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 491
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 492
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 493
    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    const/4 p1, 0x2

    .line 494
    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    const/4 p1, 0x5

    .line 495
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    .line 496
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 497
    aget-object p1, p3, p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    const/4 p1, 0x4

    .line 498
    aget-object p1, p3, p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    :cond_0
    return-void
.end method

.method public finishZoom()V
    .locals 4

    .line 3096
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 3100
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v2, v1, v0

    .line 3103
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    .line 3104
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3109
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$13;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3118
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3119
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3120
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public getCameraContainer()Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;
    .locals 1

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    return-object v0
.end method

.method public getCameraRect()Lorg/telegram/ui/Components/Rect;
    .locals 5

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 787
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public getMuteImageView()Landroid/view/View;
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getSwitchButtonView()Landroid/view/View;
    .locals 1

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public hideCamera(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 941
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 942
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 943
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 944
    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    .line 945
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    .line 946
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 948
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    .line 949
    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 951
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 954
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public invalidateBlur()V
    .locals 1

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    if-eqz v0, :cond_0

    .line 1242
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 478
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 479
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 484
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 485
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 513
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->drawBlur:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    .line 518
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    .line 519
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v7, v3

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 520
    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v2, :cond_1

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v2, v2

    const v3, 0x476a6000    # 60000.0f

    div-float/2addr v2, v3

    .line 522
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    .line 523
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 526
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 528
    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    if-nez v2, :cond_2

    .line 529
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 531
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    mul-float v9, v3, v2

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 532
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 534
    :cond_3
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    float-to-int v2, v0

    const/4 v3, 0x3

    .line 535
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    float-to-int v3, v1

    const/4 v4, 0x2

    .line 536
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 538
    iget-boolean v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->isMessageTransition:Z

    if-eqz v4, :cond_4

    .line 539
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v5

    invoke-virtual {p1, v4, v5, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    .line 541
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    int-to-float v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v0, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v1, v6

    invoke-virtual {p1, v4, v5, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 543
    :goto_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 544
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    add-int/2addr v1, v2

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    add-int/2addr v5, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v5, v4

    invoke-virtual {v0, v2, v3, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 545
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 546
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 462
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 463
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 424
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->updateTextureViewSize:Z

    if-eqz v0, :cond_2

    .line 426
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 427
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    goto :goto_0

    .line 429
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    .line 431
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    if-eq v0, v1, :cond_1

    .line 432
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    :cond_1
    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->updateTextureViewSize:Z

    .line 444
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPanTranslationUpdate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 1252
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->panTranslationY:F

    .line 1253
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->onPanTranslationUpdate(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 468
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 469
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    .line 471
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    .line 473
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->checkSizes()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 3022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    if-eqz v0, :cond_4

    .line 3023
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    .line 3024
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isMuted()Z

    move-result v0

    xor-int/2addr v0, v6

    .line 3025
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 3026
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_0

    .line 3027
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3029
    :cond_0
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v2, [Landroid/animation/Animator;

    .line 3030
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v6, [F

    if-eqz v0, :cond_1

    move v12, v4

    goto :goto_0

    :cond_1
    move v12, v1

    :goto_0
    aput v12, v11, v5

    .line 3031
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v5

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v11, v6, [F

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v0, :cond_2

    move v13, v4

    goto :goto_1

    :cond_2
    move v13, v12

    :goto_1
    aput v13, v11, v5

    .line 3032
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v6, [F

    if-eqz v0, :cond_3

    move v12, v4

    :cond_3
    aput v12, v11, v5

    .line 3033
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v8, v3

    .line 3030
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3034
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/Components/InstantCameraView$12;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/InstantCameraView$12;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3042
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0xb4

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3043
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3044
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3050
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_5

    goto/16 :goto_5

    .line 3065
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    if-eqz v0, :cond_b

    const/4 v0, -0x1

    move v3, v0

    move v7, v3

    move v2, v5

    .line 3068
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v2, v8, :cond_8

    .line 3069
    iget v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v8, v9, :cond_6

    move v3, v2

    .line 3072
    :cond_6
    iget v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v8, v9, :cond_7

    move v7, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    if-eq v3, v0, :cond_a

    if-ne v7, v0, :cond_9

    goto :goto_3

    .line 3082
    :cond_9
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v8, v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v2, v0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchStartDistance:F

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchScale:F

    sub-float/2addr p1, v4

    .line 3083
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3085
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    goto :goto_4

    .line 3077
    :cond_a
    :goto_3
    iput-boolean v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    .line 3079
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->finishZoom()V

    return v5

    .line 3086
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v6, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_e

    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    if-eqz p1, :cond_e

    .line 3087
    iput-boolean v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    .line 3088
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->finishZoom()V

    :cond_e
    :goto_4
    return v6

    .line 3051
    :cond_f
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->maybePinchToZoomTouchMode:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v0, :cond_10

    .line 3052
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchStartDistance:F

    .line 3054
    iput v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchScale:F

    .line 3056
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    .line 3057
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    .line 3058
    iput-boolean v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    .line 3060
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_11

    .line 3061
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->maybePinchToZoomTouchMode:Z

    :cond_11
    return v6
.end method

.method public resetCameraFile()V
    .locals 1

    const/4 v0, 0x0

    .line 1266
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    return-void
.end method

.method public send(IZI)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 806
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-nez v2, :cond_0

    return-void

    .line 809
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    .line 810
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 811
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 812
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_1
    const/4 v2, 0x4

    const/4 v5, 0x0

    if-ne v1, v2, :cond_9

    .line 815
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 816
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "file not found :( round video"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 818
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_7

    .line 819
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 820
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 821
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    .line 822
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    .line 823
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v8, v6

    .line 824
    iget-wide v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-ltz v4, :cond_3

    goto :goto_0

    :cond_3
    move-wide v10, v12

    .line 825
    :goto_0
    iget-wide v14, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v4, v14, v12

    if-ltz v4, :cond_4

    move-wide v6, v14

    :cond_4
    sub-long/2addr v6, v10

    .line 826
    iput-wide v6, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 827
    iget-wide v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    long-to-double v10, v10

    long-to-double v6, v6

    div-double/2addr v6, v8

    mul-double/2addr v10, v6

    double-to-long v6, v10

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 828
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const v2, 0xf4240

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 829
    iget-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v4, v2, v12

    const-wide/16 v6, 0x3e8

    if-lez v4, :cond_5

    mul-long/2addr v2, v6

    .line 830
    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 832
    :cond_5
    iget-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v4, v2, v12

    if-lez v4, :cond_6

    mul-long/2addr v2, v6

    .line 833
    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 835
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    goto :goto_1

    .line 837
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 839
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 840
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 841
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 842
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 843
    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v18}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-interface/range {v6 .. v12}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    if-eqz p3, :cond_8

    .line 845
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    .line 847
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    goto/16 :goto_5

    .line 849
    :cond_9
    iget-wide v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const-wide/16 v8, 0x320

    cmp-long v6, v6, v8

    if-gez v6, :cond_a

    move v6, v3

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    iput-boolean v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    .line 850
    iput-boolean v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v6, :cond_b

    goto :goto_3

    :cond_b
    if-ne v1, v7, :cond_c

    move v2, v8

    goto :goto_3

    :cond_c
    const/4 v2, 0x5

    .line 857
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v6, :cond_f

    .line 858
    iget v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v9, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    new-array v10, v8, [Ljava/lang/Object;

    iget v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v3

    invoke-virtual {v6, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 860
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v2, :cond_d

    move v1, v5

    goto :goto_4

    :cond_d
    if-ne v1, v7, :cond_e

    move v1, v8

    goto :goto_4

    :cond_e
    move v1, v3

    .line 867
    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    .line 868
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(I)V

    .line 869
    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    .line 871
    :cond_f
    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v1, :cond_10

    .line 872
    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioRecordTooShort:I

    new-array v4, v7, [Ljava/lang/Object;

    iget v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v3

    iget-wide v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 873
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    .line 874
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    :cond_10
    :goto_5
    return-void
.end method

.method public setIsMessageTransition(Z)V
    .locals 0

    .line 1262
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isMessageTransition:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 552
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->clear()V

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    const/16 v0, 0x80

    if-nez p1, :cond_2

    .line 574
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 576
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 579
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public showCamera(Z)V
    .locals 6

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    return-void

    .line 589
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 590
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->avd_flip:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 591
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->vd_flip:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 599
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 600
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    .line 603
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 605
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v3, "icthumb_back.jpg"

    goto :goto_1

    :cond_3
    const-string v3, "icthumb.jpg"

    :goto_1
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :catchall_0
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 612
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 614
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->icplaceholder:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    :goto_2
    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 619
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    goto :goto_3

    .line 621
    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    .line 622
    :goto_3
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    const-wide/16 v3, 0x0

    .line 623
    iput-wide v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const/4 p1, 0x0

    .line 624
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    .line 625
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    .line 626
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 627
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 628
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    .line 629
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    .line 630
    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->needDrawFlickerStub:Z

    .line 632
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->initCamera()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 635
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 636
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 639
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_5

    .line 637
    :cond_9
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 643
    :cond_a
    :goto_5
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$8;

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p0, v1, v3}, Lorg/telegram/ui/Components/InstantCameraView$8;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    .line 653
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 654
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-static {p1}, Lorg/telegram/messenger/AutoDeleteMediaTask;->lockFile(Ljava/io/File;)V

    .line 656
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_b

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show round camera "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 660
    :cond_b
    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    .line 661
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$9;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->updateTextureViewSize:Z

    .line 707
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    .line 709
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    .line 710
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    return-void
.end method

.method public startAnimation(Z)V
    .locals 14

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 722
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    .line 724
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->showTemporary(Z)V

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 726
    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->opened:Z

    if-nez v2, :cond_2

    .line 727
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 728
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 730
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    .line 731
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    .line 733
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->opened:Z

    .line 734
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->parentView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 735
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 737
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->show(Z)V

    .line 738
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_4

    .line 741
    iget-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    const/4 v0, 0x2

    new-array v3, v0, [F

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_1
    const/4 v6, 0x0

    aput v5, v3, v6

    if-eqz p1, :cond_6

    move v5, v1

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    const/4 v7, 0x1

    aput v5, v3, v7

    .line 743
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 744
    new-instance v5, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 748
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    const/16 v8, 0xc

    new-array v8, v8, [Landroid/animation/Animator;

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    if-eqz p1, :cond_7

    move v12, v4

    goto :goto_3

    :cond_7
    move v12, v1

    :goto_3
    aput v12, v11, v6

    .line 749
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    aput v1, v11, v6

    .line 750
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    sget-object v10, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    new-array v11, v7, [I

    if-eqz p1, :cond_8

    const/16 v12, 0xff

    goto :goto_4

    :cond_8
    move v12, v6

    :goto_4
    aput v12, v11, v6

    .line 751
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x3

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    if-eqz p1, :cond_9

    move v12, v4

    goto :goto_5

    :cond_9
    move v12, v1

    :goto_5
    aput v12, v11, v6

    .line 752
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x4

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v11, v7, [F

    const v12, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_a

    move v13, v4

    goto :goto_6

    :cond_a
    move v13, v12

    :goto_6
    aput v13, v11, v6

    .line 753
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x5

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v7, [F

    if-eqz p1, :cond_b

    move v13, v4

    goto :goto_7

    :cond_b
    move v13, v12

    :goto_7
    aput v13, v11, v6

    .line 754
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x6

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v7, [F

    aput v2, v11, v6

    .line 755
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x7

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    if-eqz p1, :cond_c

    move v13, v4

    goto :goto_8

    :cond_c
    move v13, v1

    :goto_8
    aput v13, v11, v6

    .line 756
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v0

    const/16 v0, 0x8

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v11, v7, [F

    if-eqz p1, :cond_d

    move v13, v4

    goto :goto_9

    :cond_d
    move v13, v12

    :goto_9
    aput v13, v11, v6

    .line 757
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v0

    const/16 v0, 0x9

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v7, [F

    if-eqz p1, :cond_e

    goto :goto_a

    :cond_e
    move v4, v12

    :goto_a
    aput v4, v11, v6

    .line 758
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v8, v0

    const/16 v0, 0xa

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v7, [F

    aput v2, v7, v6

    .line 759
    invoke-static {v4, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v8, v0

    const/16 v0, 0xb

    aput-object v3, v8, v0

    .line 748
    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez p1, :cond_f

    .line 763
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$10;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_b

    .line 773
    :cond_f
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 775
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 777
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
