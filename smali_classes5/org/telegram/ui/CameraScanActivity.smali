.class public Lorg/telegram/ui/CameraScanActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "CameraScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CameraScanActivity$QrResult;,
        Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;
    }
.end annotation


# instance fields
.field private averageProcessTime:F

.field private backShadowAlpha:F

.field private backgroundHandlerThread:Landroid/os/HandlerThread;

.field private bounds:Landroid/graphics/RectF;

.field private cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private cornerPaint:Landroid/graphics/Paint;

.field private currentType:I

.field private delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

.field private descriptionText:Landroid/widget/TextView;

.field private flashAnimator:Landroid/animation/AnimatorSet;

.field private flashButton:Landroid/widget/ImageView;

.field private fromBounds:Landroid/graphics/RectF;

.field private galleryButton:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;

.field private isAllowCustomScan:Z

.field private lastBoundsUpdate:J

.field private needGalleryButton:Z

.field private newRecognizedT:F

.field private normalBounds:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private processTimesCount:J

.field private qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private qrAppearingValue:F

.field private qrLoading:Z

.field private qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

.field private recognizeFailed:I

.field private recognizeIndex:I

.field private recognized:Z

.field private recognizedAnimator:Landroid/animation/ValueAnimator;

.field private recognizedMrzView:Landroid/widget/TextView;

.field private recognizedStart:J

.field private recognizedT:F

.field private recognizedText:Ljava/lang/String;

.field private requestShot:Ljava/lang/Runnable;

.field protected shownAsBottomSheet:Z

.field private sps:I

.field private titleTextView:Landroid/widget/TextView;

.field private useRecognizedBounds:F

.field private useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;


# direct methods
.method public static synthetic $r8$lambda$1sVQac29Uqqb5RBzR-seF-x5YLY(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->initCameraView()V

    return-void
.end method

.method public static synthetic $r8$lambda$3p7yzbuCSMu0S4W5GeiwvKFEQ8M(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/ui/CameraScanActivity$QrResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$14(Lorg/telegram/ui/CameraScanActivity$QrResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ag0ltqRppDRR5NRbj0Vshrwmf-o(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$onNoQrFound$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$At0nKdLAPoSyJgVyVIs1nlipf-I(Lorg/telegram/ui/CameraScanActivity;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CameraScanActivity;->lambda$initCameraView$7(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNB87E7bGn7Czyn5_UzFhOfOs-c(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$DKcf0eEIpGPv39U37-D9pFQtXkQ(Lorg/telegram/ui/CameraScanActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gwf8fNxZIQXNgtnvg_EC6d3cUew(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$HSeW62AltETS09ov5QLsN4dO8eU(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ia5oViW8zgoasm7f0zl5PfdRJrg(Lorg/telegram/ui/CameraScanActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$updateRecognized$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OKNEwwR0LRI9rlau6U4YA_TSiZk(Lorg/telegram/ui/CameraScanActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHASwBWUPkkZ9o5j5QQfbNRSrEE(Lorg/telegram/ui/CameraScanActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$15(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sxbto9lLdXrLUJe6DoIqSSxdV0M(Lorg/telegram/ui/CameraScanActivity;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CameraScanActivity;->lambda$updateRecognized$6(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$bzj9-ipw7V9JQnyQvD0g07wWjQk(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$h8v1QMMoLncbYidu-wfSmb6Y5VU(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->updateRecognized()V

    return-void
.end method

.method public static synthetic $r8$lambda$j1NW4BH_wAQFm7JewA8zTdLugNg(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$initCameraView$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$mEK37IXHkIT1nz0kJy3iEUbPzls(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$processShot$11(Lorg/telegram/messenger/MrzRecognizer$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZTTNFVofANVXMGQK_6joi5KnxE(Lorg/telegram/ui/CameraScanActivity;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CameraScanActivity;->lambda$initCameraView$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2SMU_1hrvLmURqE7dRM15kjdps(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uiSJWBUjtNjzDXFwfPvCgbMOnWM(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vIRWQauwSAhppIjghwrlzUGq_2E(Lorg/telegram/ui/CameraScanActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->lambda$createView$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 274
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScanCamera"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->backgroundHandlerThread:Landroid/os/HandlerThread;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->paint:Landroid/graphics/Paint;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cornerPaint:Landroid/graphics/Paint;

    .line 143
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->path:Landroid/graphics/Path;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 147
    iput v0, p0, Lorg/telegram/ui/CameraScanActivity;->backShadowAlpha:F

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lorg/telegram/ui/CameraScanActivity;->shownAsBottomSheet:Z

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v3, 0x0

    .line 151
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearingValue:F

    .line 153
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    .line 154
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    const-wide/16 v4, 0x0

    .line 155
    iput-wide v4, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    .line 161
    iput v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeFailed:I

    .line 162
    iput v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    .line 167
    iput-boolean v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    .line 170
    iput-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

    .line 171
    iput-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 809
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    .line 810
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->newRecognizedT:F

    .line 812
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    .line 989
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$7;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    .line 1022
    iput v3, p0, Lorg/telegram/ui/CameraScanActivity;->averageProcessTime:F

    .line 1023
    iput-wide v4, p0, Lorg/telegram/ui/CameraScanActivity;->processTimesCount:J

    .line 275
    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    .line 276
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 283
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/16 p1, 0x28

    .line 292
    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->sps:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x18

    .line 288
    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->sps:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 285
    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->sps:I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CameraScanActivity;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/ui/CameraScanActivity;->isAllowCustomScan:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/CameraScanActivity;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/CameraScanActivity;->isAllowCustomScan:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/CameraScanActivity;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/CameraScanActivity;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CameraScanActivity;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->updateNormalBounds()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/CameraScanActivity;)Z
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/RectF;
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CameraScanActivity;)F
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearingValue:F

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CameraScanActivity;)F
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/CameraScanActivity;->backShadowAlpha:F

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->cornerPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Path;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/CameraScanActivity;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/CameraScanActivity;)Landroid/os/Handler;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/CameraScanActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/CameraScanActivity;[BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;
    .locals 0

    .line 104
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/CameraScanActivity;->tryReadQr([BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/CameraScanActivity;)I
    .locals 0

    .line 104
    iget p0, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static createThresholdMatrix(I)Landroid/graphics/ColorMatrix;
    .locals 5

    .line 1176
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x42aa0000    # 85.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v4, 0x0

    aput v4, v1, v2

    int-to-float p0, p0

    const/high16 v2, -0x3c810000    # -255.0f

    mul-float/2addr p0, v2

    const/4 v2, 0x4

    aput p0, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v4, v1, v2

    const/16 v2, 0x9

    aput p0, v1, v2

    const/16 v2, 0xa

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v4, v1, v2

    const/16 v2, 0xe

    aput p0, v1, v2

    const/16 p0, 0xf

    aput v4, v1, p0

    const/16 p0, 0x10

    aput v4, v1, p0

    const/16 p0, 0x11

    aput v4, v1, p0

    const/16 p0, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, p0

    const/16 p0, 0x13

    aput v4, v1, p0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v0
.end method

.method private getBounds()Landroid/graphics/RectF;
    .locals 3

    .line 948
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->getRecognizedBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 949
    iget v1, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 950
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    .line 951
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->updateNormalBounds()V

    .line 953
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    invoke-static {v1, v0, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    :cond_1
    return-object v0
.end method

.method private getCodesFromFixedBitmap(Landroid/graphics/Bitmap;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 116
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    .line 122
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    new-instance p1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 126
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 127
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    return-object p1
.end method

.method private getRecognizedBounds()Landroid/graphics/RectF;
    .locals 4

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    return-object v0

    .line 922
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x42960000    # 75.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 923
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 925
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 927
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v1, v2, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    return-object v3
.end method

.method private initCameraView()V
    .locals 4

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 858
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    .line 859
    new-instance v0, Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v1, 0x1

    .line 860
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setUseMaxPreview(Z)V

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setOptimizeForBarcode(Z)V

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 888
    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 889
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private invert(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1141
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1143
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1144
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1145
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1147
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 1148
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1149
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v6, 0x14

    new-array v6, v6, [F

    .line 1150
    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1156
    invoke-virtual {v5, v3}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 1157
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1158
    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isQr()Z
    .locals 3

    .line 1362
    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    sget v2, Lcom/iMe/common/IdFabric$CustomType;->QR_CODE_SCANNER_CHAT_LINK:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static synthetic lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 3

    .line 698
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 701
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x4

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 703
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 704
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 708
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 709
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 713
    :cond_2
    new-instance p1, Lorg/telegram/ui/PhotoAlbumPickerActivity;

    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_QR:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v2, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;-><init>(IZZLorg/telegram/ui/ChatActivity;)V

    const/4 v0, 0x1

    .line 714
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setMaxSelectedPhotos(IZ)V

    .line 715
    invoke-virtual {p1, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setAllowSearchImages(Z)V

    .line 716
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$5;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V

    .line 756
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 778
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 7

    .line 766
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez p1, :cond_0

    return-void

    .line 769
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 772
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 773
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 774
    iput-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    .line 776
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    .line 777
    sget-object v1, Lorg/telegram/ui/Components/AnimationProperties;->SHAPE_DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [I

    iget-object v5, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    const/16 v5, 0x44

    goto :goto_0

    :cond_2
    const/16 v5, 0x22

    :goto_0
    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 778
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 779
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v3, [Landroid/animation/Animator;

    aput-object v0, v4, v6

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/CameraScanActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$6;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 791
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/camera/CameraSession;->setTorchEnabled(Z)V

    goto :goto_1

    .line 793
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 794
    invoke-virtual {p1, v6}, Lorg/telegram/messenger/camera/CameraSession;->setTorchEnabled(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$initCameraView$7(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x43fa0000    # 500.0f

    div-float/2addr p2, p1

    .line 872
    iput p2, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearingValue:F

    .line 873
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$initCameraView$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 876
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    .line 877
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 p1, 0x0

    .line 878
    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initCameraView$9()V
    .locals 3

    .line 863
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->startRecognizing()V

    .line 864
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 867
    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 870
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 871
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrAppearing:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 278
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

    .line 279
    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    return-void
.end method

.method private synthetic lambda$onNoQrFound$10()V
    .locals 3

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1017
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processShot$11(Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 3

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->rawMRZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    if-eqz v0, :cond_0

    .line 1040
    invoke-interface {v0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->didFindMrzInfo(Lorg/telegram/messenger/MrzRecognizer$Result;)V

    .line 1042
    :cond_0
    new-instance p1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    const-wide/16 v0, 0x4b0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$processShot$12()V
    .locals 2

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->didFindQr(Ljava/lang/String;)V

    .line 1068
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$processShot$13()V
    .locals 2

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 1064
    :cond_0
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processShot$14(Lorg/telegram/ui/CameraScanActivity$QrResult;)V
    .locals 0

    .line 1074
    iget-object p1, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lorg/telegram/ui/CameraScanActivity;->updateRecognizedBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method private synthetic lambda$processShot$15(Ljava/lang/String;)V
    .locals 1

    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    if-eqz v0, :cond_0

    .line 1097
    invoke-interface {v0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->didFindQr(Ljava/lang/String;)V

    .line 1099
    :cond_0
    iget p1, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 1100
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$processShot$16()V
    .locals 3

    .line 1105
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1109
    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1110
    iput-boolean v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1112
    iget-boolean v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-nez v0, :cond_1

    .line 1113
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$processShot$17()V
    .locals 1

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/CameraScanActivity;->processShot(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateRecognized$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 826
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 828
    iget p1, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 829
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    sub-float v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 831
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 832
    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/CameraScanActivity;->backShadowAlpha:F

    .line 833
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateRecognized$6(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 845
    iget-boolean p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    const/high16 p3, 0x43fa0000    # 500.0f

    if-eqz p1, :cond_0

    div-float/2addr p2, p3

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p2, p3

    sub-float p2, p1, p2

    :goto_0
    iput p2, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    .line 846
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private monochrome(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1166
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1167
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1168
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1170
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {p2}, Lorg/telegram/ui/CameraScanActivity;->createThresholdMatrix(I)Landroid/graphics/ColorMatrix;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p2, 0x0

    .line 1171
    invoke-virtual {v1, p1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private onNoQrFound()V
    .locals 1

    .line 1014
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showAsSheet(Landroid/app/Activity;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 210
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    const/4 v9, 0x0

    aput-object v0, v4, v9

    .line 211
    new-instance v0, Lorg/telegram/ui/CameraScanActivity$1;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p2

    move v6, p4

    move v7, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/CameraScanActivity$1;-><init>(Landroid/content/Context;Z[Lorg/telegram/ui/ActionBar/INavigationLayout;IZZLorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)V

    .line 264
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->setUseLightStatusBar(Z)V

    .line 265
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v9}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 266
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, -0x1000000

    invoke-static {p0, p1, v9}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 267
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->setUseLightStatusBar(Z)V

    .line 268
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 269
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v0
.end method

.method public static showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Landroid/app/Activity;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method private startRecognizing()V
    .locals 3

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->backgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1009
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity;->backgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->handler:Landroid/os/Handler;

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private tryReadQr([BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v9, p6

    const/4 v10, 0x0

    .line 1193
    :try_start_0
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 1195
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    const/4 v2, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v9, :cond_0

    .line 1198
    new-instance v1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v1

    .line 1199
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1200
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1202
    :cond_0
    new-instance v1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/vision/Frame$Builder;->setImageData(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v1

    .line 1203
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    .line 1204
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    .line 1206
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1208
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v9, :cond_1

    .line 1209
    invoke-direct {v0, v9}, Lorg/telegram/ui/CameraScanActivity;->getCodesFromFixedBitmap(Landroid/graphics/Bitmap;)Landroid/util/SparseArray;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_5

    .line 1212
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1213
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 1214
    iget-object v4, v1, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 1215
    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    if-eqz v1, :cond_4

    array-length v5, v1

    if-nez v5, :cond_2

    goto :goto_2

    .line 1223
    :cond_2
    array-length v5, v1

    move v6, v13

    move v7, v14

    :goto_1
    if-ge v12, v5, :cond_3

    aget-object v8, v1, v12

    .line 1224
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1225
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1226
    iget v9, v8, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1227
    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1229
    :cond_3
    invoke-virtual {v11, v14, v7, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_a

    :cond_4
    :goto_2
    move-object v11, v10

    goto/16 :goto_a

    :cond_5
    if-eqz v9, :cond_13

    .line 1232
    invoke-direct {v0, v9}, Lorg/telegram/ui/CameraScanActivity;->invert(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1233
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1234
    new-instance v2, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v2

    .line 1235
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1236
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1237
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1238
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 1239
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 1240
    iget-object v2, v1, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 1241
    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    if-eqz v1, :cond_8

    array-length v5, v1

    if-nez v5, :cond_6

    goto :goto_4

    .line 1248
    :cond_6
    array-length v5, v1

    move v6, v13

    move v7, v14

    :goto_3
    if-ge v12, v5, :cond_7

    aget-object v8, v1, v12

    .line 1249
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1250
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1251
    iget v9, v8, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1252
    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1254
    :cond_7
    invoke-virtual {v11, v14, v7, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_5

    :cond_8
    :goto_4
    move-object v11, v10

    :goto_5
    move v1, v4

    move-object v4, v2

    goto :goto_7

    :cond_9
    const/16 v2, 0x5a

    .line 1257
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/CameraScanActivity;->monochrome(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1258
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1259
    new-instance v3, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v2

    .line 1260
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1261
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1262
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1263
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 1264
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 1265
    iget-object v2, v1, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 1266
    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    if-eqz v1, :cond_8

    array-length v5, v1

    if-nez v5, :cond_a

    goto :goto_4

    .line 1273
    :cond_a
    array-length v5, v1

    move v6, v13

    move v7, v14

    :goto_6
    if-ge v12, v5, :cond_b

    aget-object v8, v1, v12

    .line 1274
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1275
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1276
    iget v9, v8, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1277
    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1279
    :cond_b
    invoke-virtual {v11, v14, v7, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_5

    :cond_c
    move v1, v4

    move-object v4, v10

    :goto_7
    move v2, v3

    move v3, v1

    goto/16 :goto_a

    .line 1288
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

    if-eqz v1, :cond_12

    if-eqz v9, :cond_e

    .line 1291
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v15, v1, [I

    const/4 v3, 0x0

    .line 1292
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v1, p6

    move-object v2, v15

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1293
    new-instance v1, Lcom/google/zxing/RGBLuminanceSource;

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3, v15}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 1294
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1295
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_8

    .line 1297
    :cond_e
    new-instance v1, Lcom/google/zxing/PlanarYUVLuminanceSource;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v18

    const/16 v23, 0x0

    move-object v15, v1

    move-object/from16 v16, p1

    move/from16 v19, p3

    move/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, p5

    invoke-direct/range {v15 .. v23}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    .line 1299
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v3

    .line 1302
    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity;->qrReader:Lcom/google/zxing/qrcode/QRCodeReader;

    new-instance v5, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v6, v1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v5, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1

    if-nez v1, :cond_f

    .line 1304
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    return-object v10

    .line 1307
    :cond_f
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    .line 1308
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_10

    goto/16 :goto_2

    .line 1315
    :cond_10
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    array-length v5, v1

    move v6, v13

    move v7, v14

    :goto_9
    if-ge v12, v5, :cond_11

    aget-object v8, v1, v12

    .line 1316
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1317
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1318
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1319
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1321
    :cond_11
    invoke-virtual {v11, v14, v7, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a

    :cond_12
    move v3, v2

    :cond_13
    move-object v4, v10

    .line 1326
    :goto_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1327
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    return-object v10

    .line 1331
    :cond_14
    iget-boolean v1, v0, Lorg/telegram/ui/CameraScanActivity;->isAllowCustomScan:Z

    if-nez v1, :cond_16

    .line 1332
    iget-boolean v1, v0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    if-eqz v1, :cond_15

    .line 1333
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1334
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_b

    :cond_15
    const-string v1, "tg://login?token="

    .line 1336
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    iget v1, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v5, 0x3

    if-eq v1, v5, :cond_16

    .line 1337
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    return-object v10

    .line 1341
    :cond_16
    :goto_b
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$QrResult;

    invoke-direct {v1, v0, v10}, Lorg/telegram/ui/CameraScanActivity$QrResult;-><init>(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/ui/CameraScanActivity$1;)V

    if-eqz v11, :cond_17

    const/16 v5, 0x19

    .line 1343
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0xf

    .line 1344
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 1345
    iget v7, v11, Landroid/graphics/RectF;->left:F

    int-to-float v5, v5

    sub-float/2addr v7, v5

    iget v8, v11, Landroid/graphics/RectF;->top:F

    int-to-float v6, v6

    sub-float/2addr v8, v6

    iget v9, v11, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v5

    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    invoke-virtual {v11, v7, v8, v9, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1346
    iget v5, v11, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    div-float/2addr v5, v2

    iget v6, v11, Landroid/graphics/RectF;->top:F

    int-to-float v3, v3

    div-float/2addr v6, v3

    iget v7, v11, Landroid/graphics/RectF;->right:F

    div-float/2addr v7, v2

    iget v2, v11, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v2, v3

    invoke-virtual {v11, v5, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1351
    :cond_17
    iput-object v11, v1, Lorg/telegram/ui/CameraScanActivity$QrResult;->bounds:Landroid/graphics/RectF;

    .line 1352
    iput-object v4, v1, Lorg/telegram/ui/CameraScanActivity$QrResult;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1355
    :catchall_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    return-object v10
.end method

.method private updateNormalBounds()V
    .locals 9

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 935
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    .line 937
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 938
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 939
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 940
    iget-object v3, p0, Lorg/telegram/ui/CameraScanActivity;->normalBounds:Landroid/graphics/RectF;

    sub-int v4, v0, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v6, v0

    div-float/2addr v4, v6

    sub-int v7, v1, v2

    int-to-float v7, v7

    div-float/2addr v7, v5

    int-to-float v8, v1

    div-float/2addr v7, v8

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v5

    div-float/2addr v0, v6

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    div-float/2addr v1, v8

    invoke-virtual {v3, v4, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateRecognized()V
    .locals 5

    .line 814
    iget v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    .line 815
    iget-boolean v1, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/telegram/ui/CameraScanActivity;->newRecognizedT:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 818
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 824
    iget v3, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    aput v3, v0, v1

    const/4 v1, 0x1

    iget v3, p0, Lorg/telegram/ui/CameraScanActivity;->newRecognizedT:F

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    .line 825
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 835
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43960000    # 300.0f

    iget v3, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedT:F

    iget v4, p0, Lorg/telegram/ui/CameraScanActivity;->newRecognizedT:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 836
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    .line 840
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 843
    :cond_2
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget-boolean v3, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    goto :goto_1

    :cond_3
    iget v3, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBounds:F

    sub-float v3, v2, v3

    :goto_1
    const/high16 v4, 0x43fa0000    # 500.0f

    mul-float/2addr v3, v4

    invoke-direct {v1, v3}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 844
    new-instance v1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->useRecognizedBoundsAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    return-void
.end method

.method private updateRecognizedBounds(Landroid/graphics/RectF;)V
    .locals 9

    .line 894
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 895
    iget-wide v2, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x4b

    if-nez v4, :cond_0

    sub-long/2addr v0, v5

    .line 897
    iput-wide v0, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 902
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    if-eqz v4, :cond_1

    sub-long v7, v0, v2

    cmp-long v5, v7, v5

    if-gez v5, :cond_1

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x42960000    # 75.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 904
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 905
    iget-object v3, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    invoke-static {v3, v4, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 908
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    .line 910
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->fromBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 912
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 913
    iput-wide v0, p0, Lorg/telegram/ui/CameraScanActivity;->lastBoundsUpdate:J

    .line 915
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 310
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 311
    iget-boolean v2, v0, Lorg/telegram/ui/CameraScanActivity;->shownAsBottomSheet:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 313
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 314
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 317
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 318
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 320
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 321
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionModeTop()V

    .line 324
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/CameraScanActivity$2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/CameraScanActivity$2;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 333
    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x7f000000

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity;->cornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity;->cornerPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 337
    new-instance v2, Lorg/telegram/ui/CameraScanActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/CameraScanActivity$3;-><init>(Lorg/telegram/ui/CameraScanActivity;Landroid/content/Context;)V

    .line 495
    sget-object v5, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda4;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 498
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v6, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda9;

    invoke-direct {v6, v0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    const-wide/16 v7, 0x1c2

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 501
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CameraScanActivity;->initCameraView()V

    .line 504
    :goto_1
    iget v5, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const v6, 0x22ffffff

    if-nez v5, :cond_3

    .line 505
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 506
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 508
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 510
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 511
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 512
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v6, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    const/high16 v5, -0x1000000

    .line 513
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 514
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 517
    :goto_2
    iget v5, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const-string v7, "AuthAnotherClientScan"

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eq v5, v8, :cond_4

    if-ne v5, v9, :cond_5

    .line 518
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v10, Lorg/telegram/messenger/R$string;->AuthAnotherClientScan:I

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 521
    :cond_5
    new-instance v5, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v5, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 522
    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRoundedEffect()Landroid/graphics/CornerPathEffect;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 v11, 0x28

    .line 523
    invoke-static {v3, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 524
    new-instance v11, Lorg/telegram/ui/CameraScanActivity$4;

    invoke-direct {v11, v0, v1, v5}, Lorg/telegram/ui/CameraScanActivity$4;-><init>(Lorg/telegram/ui/CameraScanActivity;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v11, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    .line 604
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 605
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 607
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 609
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    .line 610
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 612
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 613
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 615
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    .line 616
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    const/16 v12, 0x51

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 618
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 620
    iget v5, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    if-nez v5, :cond_6

    .line 621
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PassportScanPassport:I

    const-string v3, "PassportScanPassport"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PassportScanPassportInfo:I

    const-string v3, "PassportScanPassportInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_7

    .line 627
    :cond_6
    sget v12, Lcom/iMe/common/IdFabric$CustomType;->QR_CODE_SCANNER_CHAT_LINK:I

    if-ne v5, v12, :cond_7

    .line 628
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->dialogs_qr_scanner_chat_link_hint:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    .line 631
    :cond_7
    iget-boolean v12, v0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    if-eqz v12, :cond_8

    goto/16 :goto_5

    :cond_8
    if-eq v5, v10, :cond_b

    if-ne v5, v9, :cond_9

    goto/16 :goto_4

    .line 637
    :cond_9
    sget v5, Lorg/telegram/messenger/R$string;->AuthAnotherClientInfo5:I

    const-string v7, "AuthAnotherClientInfo5"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    .line 638
    sget v5, Lorg/telegram/messenger/R$string;->AuthAnotherClientInfo4:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    .line 639
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 641
    sget v5, Lorg/telegram/messenger/R$string;->AuthAnotherClientDownloadClientUrl:I

    const-string v12, "AuthAnotherClientDownloadClientUrl"

    .line 642
    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    sget v5, Lorg/telegram/messenger/R$string;->AuthAnotherWebClientUrl:I

    const-string v12, "AuthAnotherWebClientUrl"

    .line 643
    invoke-static {v12, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string v12, "https://apps.apple.com/us/app/ime-messenger/id1450480822"

    aput-object v12, v5, v4

    .line 646
    sget-object v12, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    aput-object v12, v5, v10

    const-string v12, "https://imem.app/desktop"

    aput-object v12, v5, v8

    move v12, v4

    :goto_3
    if-ge v12, v9, :cond_a

    .line 653
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2a

    .line 654
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v6, v15, 0x1

    .line 655
    invoke-virtual {v13, v14, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-eq v15, v3, :cond_a

    if-eq v13, v3, :cond_a

    if-eq v15, v13, :cond_a

    .line 658
    iget-object v14, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v9, v13, 0x1

    const-string v14, " "

    .line 659
    invoke-virtual {v7, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 660
    invoke-virtual {v7, v15, v6, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 663
    new-instance v13, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    aget-object v14, v5, v12

    invoke-direct {v13, v14, v10}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;Z)V

    sub-int/2addr v9, v10

    const/16 v14, 0x21

    invoke-virtual {v7, v13, v6, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 664
    new-instance v13, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v15, "fonts/rmedium.ttf"

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, v13, v6, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v12, v12, 0x1

    const v6, 0x22ffffff

    const/4 v9, 0x3

    goto :goto_3

    .line 670
    :cond_a
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 672
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 673
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 674
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 675
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 635
    :cond_b
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->AuthAnotherClientScan:I

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 679
    iget v3, v0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_c

    .line 680
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    const v5, -0x66000001

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 682
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v3, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 683
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v6, v4, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 684
    iget-boolean v3, v0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    if-eqz v3, :cond_d

    goto :goto_6

    .line 687
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AuthAnotherClientNotFound:I

    const-string v5, "AuthAnotherClientNotFound"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->recognizedMrzView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 691
    iget-boolean v3, v0, Lorg/telegram/ui/CameraScanActivity;->needGalleryButton:Z

    const/16 v4, 0x3c

    if-eqz v3, :cond_e

    .line 692
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    .line 693
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 694
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->qr_gallery:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 695
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const v6, 0x22ffffff

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const v7, 0x44ffffff    # 2047.9999f

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawableFromDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 697
    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->galleryButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    :cond_e
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    .line 761
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 762
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->qr_flashlight:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 763
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const v4, 0x22ffffff

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 765
    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity;->flashButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 801
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 803
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 805
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public destroy(ZLjava/lang/Runnable;)V
    .locals 1

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 984
    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    .line 986
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->backgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/CameraScanActivity;->isQr()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1372
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v3, v2

    move/from16 v10, v17

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity;->titleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/CameraScanActivity;->descriptionText:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 960
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 962
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object p1

    const/4 p2, 0x0

    .line 963
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const/4 v1, 0x1

    invoke-static {p2, p3, v0, p1, v1}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 964
    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/CameraScanActivity;->tryReadQr([BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 966
    iget-object p2, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    if-eqz p2, :cond_0

    .line 967
    iget-object p1, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->text:Ljava/lang/String;

    invoke-interface {p2, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->didFindQr(Ljava/lang/String;)V

    .line 969
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 972
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 298
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->destroy(ZLjava/lang/Runnable;)V

    .line 300
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->visionQrReader:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->release()V

    :cond_1
    return-void
.end method

.method public processShot(Landroid/graphics/Bitmap;)V
    .locals 14

    .line 1025
    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_0

    return-void

    .line 1028
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    .line 1030
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getPreviewSize()Lorg/telegram/messenger/camera/Size;

    move-result-object v7

    .line 1031
    iget v4, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v4, :cond_2

    .line 1032
    invoke-static {p1, v13}, Lorg/telegram/messenger/MrzRecognizer;->recognize(Landroid/graphics/Bitmap;Z)Lorg/telegram/messenger/MrzRecognizer$Result;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1033
    iget-object v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    iget v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthDay:I

    if-eqz v4, :cond_b

    iget v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryDay:I

    if-nez v4, :cond_1

    iget-boolean v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->doesNotExpire:Z

    if-eqz v4, :cond_b

    :cond_1
    iget v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    if-eqz v4, :cond_b

    .line 1034
    iput-boolean v12, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    .line 1035
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 1036
    new-instance v4, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1047
    :cond_2
    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    div-float/2addr v4, v5

    float-to-int v10, v4

    .line 1048
    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    sub-int/2addr v4, v10

    div-int/lit8 v8, v4, 0x2

    .line 1049
    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, v10

    div-int/lit8 v9, v4, 0x2

    const/4 v6, 0x0

    move-object v5, p0

    move-object v11, p1

    .line 1051
    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/CameraScanActivity;->tryReadQr([BLorg/telegram/messenger/camera/Size;IIILandroid/graphics/Bitmap;)Lorg/telegram/ui/CameraScanActivity$QrResult;

    move-result-object p1

    .line 1052
    iget-boolean v4, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-eqz v4, :cond_3

    .line 1053
    iget v5, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    add-int/2addr v5, v12

    iput v5, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    :cond_3
    if-eqz p1, :cond_5

    .line 1056
    iput v13, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeFailed:I

    .line 1057
    iget-object v5, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->text:Ljava/lang/String;

    iput-object v5, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 1059
    iput-boolean v12, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    .line 1060
    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    new-instance v6, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-interface {v4, v5, v6}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;->processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    .line 1071
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedStart:J

    .line 1072
    new-instance v4, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1074
    :cond_4
    new-instance v4, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/CameraScanActivity;Lorg/telegram/ui/CameraScanActivity$QrResult;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    .line 1076
    iget v4, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeFailed:I

    add-int/2addr v4, v12

    iput v4, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeFailed:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_6

    .line 1077
    iget-boolean v4, p0, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    if-nez v4, :cond_6

    .line 1078
    iput-boolean v13, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    .line 1079
    iput v13, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    const/4 p1, 0x0

    .line 1080
    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    .line 1081
    new-instance p1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1082
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1087
    :cond_6
    :goto_0
    iget v4, p0, Lorg/telegram/ui/CameraScanActivity;->recognizeIndex:I

    if-nez v4, :cond_7

    if-eqz p1, :cond_7

    iget-object p1, p1, Lorg/telegram/ui/CameraScanActivity$QrResult;->bounds:Landroid/graphics/RectF;

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    if-eqz p1, :cond_8

    .line 1089
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedStart:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long p1, v4, v6

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/CameraScanActivity;->qrLoading:Z

    if-nez p1, :cond_a

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 1091
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v4, 0x3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    if-eqz p1, :cond_9

    iget p1, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    if-eq p1, v4, :cond_9

    .line 1092
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/CameraScanActivity;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 1094
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognizedText:Ljava/lang/String;

    .line 1095
    new-instance v5, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda17;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/CameraScanActivity;Ljava/lang/String;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1103
    iget p1, p0, Lorg/telegram/ui/CameraScanActivity;->currentType:I

    if-ne p1, v4, :cond_b

    .line 1104
    new-instance p1, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1117
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-eqz p1, :cond_b

    const-wide/16 v4, 0x10

    const/16 p1, 0x3e8

    .line 1118
    iget v6, p0, Lorg/telegram/ui/CameraScanActivity;->sps:I

    div-int/2addr p1, v6

    int-to-long v6, p1

    iget p1, p0, Lorg/telegram/ui/CameraScanActivity;->averageProcessTime:F

    float-to-long v8, p1

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1119
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0}, Lorg/telegram/ui/CameraScanActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/CameraScanActivity;)V

    invoke-virtual {p1, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1127
    :catchall_0
    invoke-direct {p0}, Lorg/telegram/ui/CameraScanActivity;->onNoQrFound()V

    .line 1129
    :cond_b
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 1131
    iget p1, p0, Lorg/telegram/ui/CameraScanActivity;->averageProcessTime:F

    iget-wide v0, p0, Lorg/telegram/ui/CameraScanActivity;->processTimesCount:J

    long-to-float v6, v0

    mul-float/2addr p1, v6

    long-to-float v4, v4

    add-float/2addr p1, v4

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/telegram/ui/CameraScanActivity;->processTimesCount:J

    long-to-float v4, v0

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/CameraScanActivity;->averageProcessTime:F

    const-wide/16 v4, 0x1e

    .line 1132
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/CameraScanActivity;->processTimesCount:J

    .line 1134
    iget-boolean p1, p0, Lorg/telegram/ui/CameraScanActivity;->recognized:Z

    if-nez p1, :cond_c

    .line 1135
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->requestShot:Ljava/lang/Runnable;

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_c
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity;->delegate:Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;

    return-void
.end method
