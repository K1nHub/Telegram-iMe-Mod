.class public Lorg/telegram/ui/SecretMediaViewer;
.super Ljava/lang/Object;
.source "SecretMediaViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;,
        Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;,
        Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/SecretMediaViewer;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private animateFromRadius:[I

.field private animateToClipBottom:F

.field private animateToClipBottomOrigin:F

.field private animateToClipHorizontal:F

.field private animateToClipTop:F

.field private animateToClipTopOrigin:F

.field private animateToRadius:Z

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animationStartTime:J

.field private animationValue:F

.field private aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private blackPaint:Landroid/graphics/Paint;

.field private canDragDown:Z

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private clipBottom:F

.field private clipBottomOrigin:F

.field private clipHorizontal:F

.field private clipTop:F

.field private clipTopOrigin:F

.field private closeAfterAnimation:Z

.field private closeTime:J

.field private closeVideoAfterWatch:Z

.field private containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

.field private currentAccount:I

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentDialogId:J

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private currentRadii:[F

.field private currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isPhotoVisible:Z

.field private isPlaying:Z

.field private isVideo:Z

.field private isVisible:Z

.field private lastInsets:Ljava/lang/Object;

.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private openTime:J

.field private parentActivity:Landroid/app/Activity;

.field private photoAnimationEndRunnable:Ljava/lang/Runnable;

.field private photoAnimationInProgress:I

.field private photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

.field private photoTransitionAnimationStartTime:J

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private playerRetryPlayCount:I

.field private roundRectPath:Landroid/graphics/Path;

.field private scale:F

.field private scroller:Lorg/telegram/ui/Components/Scroller;

.field private secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

.field private textureUploaded:Z

.field private translationX:F

.field private translationY:F

.field private useOvershootForScale:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoTextureView:Landroid/view/TextureView;

.field private videoWatchedOneTime:Z

.field private wasLightNavigationBar:Z

.field private wasNavigationBarColor:I

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method public static synthetic $r8$lambda$1e9irS6DedSXADnrwqlWBJtJ6EU(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->lambda$onPhotoClosed$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$5pEmxdQrGrxzVV-5s40GHfbQ_5g(Lorg/telegram/ui/SecretMediaViewer;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SecretMediaViewer;->lambda$setParentActivity$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ds9PLSkt913N5sESt5mr4YsupfU(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->lambda$closePhoto$4(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HoHDlo12Tvqq4Nq3ZZCPy3YbHmw(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->lambda$openMedia$2(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M5orKigSHy_5WWN8H4EfsnmeKEE(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->lambda$closePhoto$3(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kUb5qzJUt85f1z3FfodGZtHm0_w(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->lambda$openMedia$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 276
    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;-><init>(Lorg/telegram/ui/SecretMediaViewer;I)V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    .line 277
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->blackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 292
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 309
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 311
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    .line 326
    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 979
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->roundRectPath:Landroid/graphics/Path;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SecretMediaViewer;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/SecretMediaViewer;Landroid/graphics/Canvas;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1002(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/SecretMediaViewer;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/SecretMediaViewer;->playerRetryPlayCount:I

    return p0
.end method

.method static synthetic access$1210(Lorg/telegram/ui/SecretMediaViewer;)I
    .locals 2

    .line 74
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->playerRetryPlayCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->playerRetryPlayCount:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/SecretMediaViewer;Ljava/io/File;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->lastInsets:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/SecretMediaViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/SecretMediaViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/SecretMediaViewer;)F
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/SecretMediaViewer;F)F
    .locals 0

    .line 74
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    return p1
.end method

.method static synthetic access$1902(Lorg/telegram/ui/SecretMediaViewer;F)F
    .locals 0

    .line 74
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/SecretMediaViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/SecretMediaViewer;F)F
    .locals 0

    .line 74
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/SecretMediaViewer;F)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/SecretMediaViewer;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/SecretMediaViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->blackPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/SecretMediaViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/SecretMediaViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SecretMediaViewer;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/SecretMediaViewer;)Landroid/app/Activity;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lorg/telegram/ui/SecretMediaViewer;->isPlaying:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isPlaying:Z

    return p1
.end method

.method private animateTo(FFFZ)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1601
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZI)V

    return-void
.end method

.method private animateTo(FFFZI)V
    .locals 1

    .line 1605
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    .line 1608
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 1609
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    .line 1610
    iput p2, p0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    .line 1611
    iput p3, p0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 1612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 1613
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    const/4 p4, 0x2

    new-array p4, p4, [F

    .line 1614
    fill-array-data p4, :array_0

    const-string v0, "animationValue"

    .line 1615
    invoke-static {p0, v0, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, p2, p3

    .line 1614
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1617
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1618
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1619
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/SecretMediaViewer$9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SecretMediaViewer$9;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1626
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkMinMax(Z)V
    .locals 5

    .line 1584
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1585
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1586
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1587
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    .line 1589
    :cond_0
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_0

    .line 1592
    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_2

    :goto_2
    move v1, v3

    goto :goto_3

    .line 1594
    :cond_2
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    goto :goto_2

    .line 1597
    :cond_3
    :goto_3
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    return-void
.end method

.method private checkPhotoAnimation()Z
    .locals 6

    .line 1176
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1177
    iget-wide v2, p0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1179
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 1180
    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1182
    :cond_0
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1185
    :cond_1
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private getContainerViewHeight()I
    .locals 1

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth()I
    .locals 1

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lorg/telegram/ui/SecretMediaViewer;
    .locals 2

    .line 337
    sget-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    if-nez v0, :cond_1

    .line 339
    const-class v1, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v1

    .line 340
    :try_start_0
    sget-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {v0}, Lorg/telegram/ui/SecretMediaViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    .line 344
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

.method public static hasInstance()Z
    .locals 1

    .line 350
    sget-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$closePhoto$3(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 4

    const/4 v0, 0x0

    .line 1293
    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    .line 1294
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1295
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 1296
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1298
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1299
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method private synthetic lambda$closePhoto$4(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 4

    .line 1334
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    if-nez v0, :cond_0

    return-void

    .line 1337
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 1338
    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1340
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1341
    iput v3, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1342
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    .line 1343
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1344
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$onPhotoClosed$5()V
    .locals 2

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1373
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    .line 1374
    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 1376
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1378
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1380
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1383
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1385
    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    return-void
.end method

.method private synthetic lambda$openMedia$1(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    .line 871
    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    const/4 v1, 0x0

    .line 872
    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 874
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 876
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    if-nez p1, :cond_1

    return-void

    .line 879
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    .line 880
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 882
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 883
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeAfterAnimation:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 884
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    :cond_3
    return-void
.end method

.method private synthetic lambda$openMedia$2(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 904
    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    .line 905
    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->lastInsets:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsets;

    .line 634
    iput-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->lastInsets:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 635
    invoke-virtual {p1}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 636
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 638
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    .line 639
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1

    .line 641
    :cond_2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 982
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    if-nez v2, :cond_0

    return-void

    .line 996
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    .line 997
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 998
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 1001
    :cond_1
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->useOvershootForScale:Z

    if-eqz v2, :cond_3

    .line 1005
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    const v7, 0x3f666666    # 0.9f

    cmpg-float v8, v2, v7

    if-gez v8, :cond_2

    div-float/2addr v2, v7

    .line 1007
    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    const v9, 0x3f828f5c    # 1.02f

    mul-float/2addr v8, v9

    sub-float/2addr v8, v7

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    goto :goto_0

    .line 1010
    :cond_2
    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    const v9, 0x3ca3d700    # 0.01999998f

    mul-float/2addr v9, v8

    sub-float/2addr v2, v7

    const v7, 0x3dccccd0    # 0.100000024f

    div-float/2addr v2, v7

    sub-float v2, v6, v2

    mul-float/2addr v9, v2

    add-float v7, v8, v9

    move v2, v6

    .line 1012
    :goto_0
    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    sub-float/2addr v9, v8

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 1013
    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    sub-float/2addr v10, v9

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    .line 1014
    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    sub-float/2addr v11, v10

    mul-float/2addr v11, v2

    add-float/2addr v10, v11

    .line 1015
    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    sub-float/2addr v12, v11

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    .line 1016
    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    sub-float/2addr v13, v12

    mul-float/2addr v13, v2

    add-float/2addr v12, v13

    .line 1017
    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    sub-float/2addr v14, v13

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    .line 1018
    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    iget v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    sub-float/2addr v15, v14

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    goto :goto_1

    .line 1020
    :cond_3
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    sub-float/2addr v7, v2

    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    .line 1021
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    sub-float/2addr v9, v2

    mul-float/2addr v9, v8

    add-float/2addr v2, v9

    .line 1022
    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    sub-float/2addr v10, v9

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    .line 1023
    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    sub-float/2addr v11, v10

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    .line 1024
    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    sub-float/2addr v12, v11

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    .line 1025
    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    sub-float/2addr v13, v12

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    .line 1026
    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    sub-float/2addr v14, v13

    mul-float/2addr v14, v8

    add-float/2addr v13, v14

    .line 1027
    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    iget v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    sub-float/2addr v15, v14

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    move v8, v2

    .line 1030
    :goto_1
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    move v2, v8

    goto :goto_2

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    .line 1034
    :goto_2
    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_3

    .line 1036
    :cond_5
    iget-wide v7, v0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-eqz v2, :cond_6

    .line 1037
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1038
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1039
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 1040
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 1041
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    .line 1042
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    .line 1043
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    .line 1044
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 1045
    iput-wide v9, v0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 1046
    invoke-direct {v0, v2}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1047
    iput-boolean v5, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 1048
    iput-boolean v5, v0, Lorg/telegram/ui/SecretMediaViewer;->useOvershootForScale:Z

    .line 1050
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1051
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1052
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v2

    int-to-float v2, v2

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v2

    int-to-float v2, v2

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_7

    .line 1053
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1055
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v2

    int-to-float v2, v2

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v2

    int-to-float v2, v2

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    .line 1056
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1058
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1061
    :cond_9
    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 1062
    iget v8, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1063
    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1064
    iget v10, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 1065
    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 1066
    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    .line 1067
    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    .line 1068
    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    .line 1069
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-nez v2, :cond_a

    move v2, v8

    goto :goto_3

    :cond_a
    const/high16 v2, -0x40800000    # -1.0f

    .line 1075
    :goto_3
    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    if-eqz v15, :cond_e

    .line 1076
    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    const/16 v5, 0x8

    if-nez v15, :cond_b

    new-array v15, v5, [F

    .line 1077
    iput-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    .line 1079
    :cond_b
    iget-boolean v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToRadius:Z

    if-eqz v15, :cond_c

    iget v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    goto :goto_4

    :cond_c
    iget v15, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    sub-float v15, v6, v15

    :goto_4
    const/4 v3, 0x0

    const/16 v17, 0x1

    :goto_5
    if-ge v3, v5, :cond_f

    .line 1082
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    add-int/lit8 v18, v3, 0x1

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    div-int/lit8 v19, v3, 0x2

    aget v6, v6, v19

    int-to-float v6, v6

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v6, v6, v19

    invoke-static {v6, v4, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    aput v6, v5, v18

    aput v6, v5, v3

    .line 1083
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v4

    if-lez v5, :cond_d

    const/16 v17, 0x0

    :cond_d
    add-int/lit8 v3, v3, 0x2

    const/16 v5, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_e
    const/16 v17, 0x1

    .line 1092
    :cond_f
    iget v3, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_11

    .line 1093
    iget v3, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_10

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    if-nez v3, :cond_10

    .line 1094
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v3, v5

    .line 1095
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/high16 v6, 0x42fe0000    # 127.0f

    const/high16 v15, 0x437f0000    # 255.0f

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v15

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    goto :goto_6

    .line 1097
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 1099
    :goto_6
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    if-nez v2, :cond_11

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v3, v9, v2

    if-lez v3, :cond_11

    sub-float/2addr v9, v2

    .line 1100
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v9, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v3

    sub-float v3, v2, v3

    .line 1103
    iget v9, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    goto :goto_7

    :cond_11
    move v5, v4

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1107
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    const/16 v16, 0x1

    goto :goto_8

    :cond_12
    const/16 v16, 0x0

    .line 1108
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v7, v5

    .line 1110
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v9

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v8

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1111
    invoke-virtual {v1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1113
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v2

    .line 1114
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v5

    if-eqz v16, :cond_13

    .line 1115
    iget-boolean v6, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    if-eqz v6, :cond_13

    int-to-float v6, v2

    int-to-float v8, v5

    div-float/2addr v6, v8

    .line 1117
    iget-object v8, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v9}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v6, v8

    .line 1118
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v8, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_13

    .line 1119
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v2

    .line 1120
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v5

    .line 1124
    :cond_13
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v2, v2

    div-float/2addr v8, v2

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v2, v6

    float-to-int v2, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    neg-int v6, v2

    .line 1128
    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    div-float/2addr v14, v7

    add-float v8, v6, v14

    neg-int v9, v5

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    div-float/2addr v10, v7

    add-float/2addr v10, v9

    div-int/lit8 v15, v2, 0x2

    int-to-float v15, v15

    sub-float/2addr v15, v14

    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    div-float/2addr v11, v7

    sub-float v11, v14, v11

    invoke-virtual {v1, v8, v10, v15, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    if-nez v17, :cond_14

    .line 1130
    iget-object v10, v0, Lorg/telegram/ui/SecretMediaViewer;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 1131
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float/2addr v12, v7

    add-float/2addr v12, v9

    div-float/2addr v13, v7

    sub-float/2addr v14, v13

    invoke-virtual {v10, v8, v12, v15, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1132
    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->roundRectPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/SecretMediaViewer;->currentRadii:[F

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v8, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1133
    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_14
    if-eqz v16, :cond_15

    .line 1136
    iget-boolean v7, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    if-eqz v7, :cond_15

    iget-boolean v7, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    if-eqz v7, :cond_15

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_16

    .line 1137
    :cond_15
    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1138
    iget-object v7, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v2, v2

    int-to-float v5, v5

    invoke-virtual {v7, v6, v9, v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1139
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_16
    if-eqz v16, :cond_18

    .line 1142
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    if-nez v2, :cond_17

    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    .line 1143
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    .line 1144
    iput v4, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlphaLastTime:J

    .line 1147
    :cond_17
    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1148
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    iget v4, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setAlpha(F)V

    .line 1149
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1150
    iget-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    if-eqz v2, :cond_18

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_18

    .line 1151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1152
    iget-wide v4, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlphaLastTime:J

    sub-long v4, v2, v4

    .line 1153
    iput-wide v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlphaLastTime:J

    .line 1154
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    long-to-float v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1155
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1156
    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    .line 1157
    iput v3, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1161
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 2

    const/4 p1, 0x0

    .line 1366
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    const/4 v0, 0x0

    .line 1367
    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 1368
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    .line 1369
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 1370
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    new-instance p1, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private preparePlayer(Ljava/io/File;)V
    .locals 6

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 419
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v2, 0x4

    .line 420
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance v0, Landroid/view/TextureView;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    .line 424
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    .line 428
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_2

    .line 431
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 432
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SecretMediaViewer$1;-><init>(Lorg/telegram/ui/SecretMediaViewer;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 514
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "other"

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 515
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1415
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    const/4 v1, 0x0

    if-nez v0, :cond_28

    iget-wide v2, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 1419
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    if-eqz v0, :cond_1

    .line 1420
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    .line 1421
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1422
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    .line 1423
    invoke-direct {p0, v1}, Lorg/telegram/ui/SecretMediaViewer;->checkMinMax(Z)V

    return v2

    .line 1427
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v6, 0x2

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    goto/16 :goto_c

    .line 1455
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x3

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-ne v0, v6, :cond_15

    .line 1456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    if-eqz v0, :cond_3

    .line 1457
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    .line 1458
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartDistance:F

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 1459
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v0

    div-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v2

    div-int/2addr v2, v6

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1460
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v0

    div-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v2

    div-int/2addr v2, v6

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float v3, v2, v3

    mul-float/2addr v0, v3

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1461
    invoke-direct {p0, v2}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1462
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_d

    .line 1463
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 1465
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1467
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v6, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v11, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    sub-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1469
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v0, v11

    if-gtz v11, :cond_5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_6

    .line 1470
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    .line 1472
    :cond_6
    iget-boolean v7, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-nez v7, :cond_8

    iget v7, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_8

    const/16 v7, 0x1e

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_8

    div-float/2addr v6, v3

    cmpl-float v0, v6, v0

    if-lez v0, :cond_8

    .line 1473
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    .line 1474
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    .line 1476
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    if-eqz p1, :cond_7

    .line 1477
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    :cond_7
    return v2

    .line 1480
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-eqz v0, :cond_9

    .line 1481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1482
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_d

    .line 1483
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    if-nez v0, :cond_14

    iget-wide v6, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_14

    .line 1484
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    .line 1485
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 1486
    iget-boolean v4, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-nez v4, :cond_b

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_a

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_b

    :cond_a
    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_28

    .line 1487
    :cond_b
    iget-boolean v4, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-nez v4, :cond_c

    .line 1490
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1491
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    move v0, v10

    move v3, v0

    .line 1494
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 1495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    .line 1496
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1497
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_d

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_e

    :cond_d
    div-float/2addr v0, v8

    .line 1500
    :cond_e
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v4, v2, v10

    if-nez v4, :cond_10

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpl-float v5, v4, v10

    if-nez v5, :cond_10

    .line 1501
    iget v5, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float v6, v5, v3

    cmpg-float v6, v6, v4

    if-gez v6, :cond_f

    .line 1502
    iput v4, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    goto :goto_1

    :cond_f
    sub-float/2addr v5, v3

    cmpl-float v4, v5, v2

    if-lez v4, :cond_11

    .line 1505
    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    goto :goto_1

    .line 1509
    :cond_10
    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v5, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_12

    cmpl-float v2, v4, v2

    if-lez v2, :cond_11

    goto :goto_0

    :cond_11
    move v10, v3

    goto :goto_1

    :cond_12
    :goto_0
    div-float v10, v3, v8

    :goto_1
    sub-float/2addr p1, v0

    .line 1514
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1515
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float p1, p1, v9

    if-eqz p1, :cond_13

    .line 1516
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float/2addr p1, v10

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1518
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_d

    .line 1521
    :cond_14
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    .line 1522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 1523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    goto/16 :goto_d

    .line 1526
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v7, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_28

    .line 1527
    :cond_16
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    if-eqz v0, :cond_1d

    .line 1528
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    .line 1529
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpg-float v0, p1, v9

    if-gez v0, :cond_17

    .line 1530
    invoke-direct {p0, v9}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1531
    invoke-direct {p0, v9, v10, v10, v2}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto :goto_6

    :cond_17
    cmpl-float p1, p1, v8

    if-lez p1, :cond_1c

    .line 1533
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v0

    div-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v3

    div-int/2addr v3, v6

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float v3, v8, v3

    mul-float/2addr v0, v3

    sub-float/2addr p1, v0

    .line 1534
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v3

    div-int/2addr v3, v6

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v4

    div-int/2addr v4, v6

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float v4, v8, v4

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 1535
    invoke-direct {p0, v8}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1536
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v4, p1, v3

    if-gez v4, :cond_18

    :goto_2
    move p1, v3

    goto :goto_3

    .line 1538
    :cond_18
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v4, p1, v3

    if-lez v4, :cond_19

    goto :goto_2

    .line 1541
    :cond_19
    :goto_3
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_1a

    :goto_4
    move v0, v3

    goto :goto_5

    .line 1543
    :cond_1a
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v4, v0, v3

    if-lez v4, :cond_1b

    goto :goto_4

    .line 1546
    :cond_1b
    :goto_5
    invoke-direct {p0, v8, p1, v0, v2}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto :goto_6

    .line 1548
    :cond_1c
    invoke-direct {p0, v2}, Lorg/telegram/ui/SecretMediaViewer;->checkMinMax(Z)V

    .line 1550
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    goto/16 :goto_d

    .line 1551
    :cond_1d
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-eqz v0, :cond_1f

    .line 1552
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1e

    .line 1553
    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    goto :goto_7

    .line 1555
    :cond_1e
    invoke-direct {p0, v9, v10, v10, v1}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    .line 1557
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    goto/16 :goto_d

    .line 1558
    :cond_1f
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-eqz p1, :cond_28

    .line 1559
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1560
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1561
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v3}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1562
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1563
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 1564
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_20

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v3, v3, v9

    if-nez v3, :cond_20

    const/16 v3, 0x3e8

    .line 1565
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1567
    :cond_20
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_21

    :goto_8
    move p1, v3

    goto :goto_9

    .line 1569
    :cond_21
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_22

    goto :goto_8

    .line 1572
    :cond_22
    :goto_9
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_23

    :goto_a
    move v0, v3

    goto :goto_b

    .line 1574
    :cond_23
    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_24

    goto :goto_a

    .line 1577
    :cond_24
    :goto_b
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto/16 :goto_d

    .line 1428
    :cond_25
    :goto_c
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    .line 1429
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1430
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 1432
    :cond_26
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-nez v0, :cond_28

    .line 1433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v6, :cond_27

    .line 1434
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartDistance:F

    .line 1435
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    .line 1436
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    div-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    .line 1437
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    div-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    .line 1438
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    .line 1439
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    .line 1440
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    .line 1441
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1442
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_28

    .line 1443
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_d

    .line 1445
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 1446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 1447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    .line 1448
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    .line 1449
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 1450
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_28

    .line 1451
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_28
    :goto_d
    return v1
.end method

.method private releasePlayer()V
    .locals 4

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 520
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->playerRetryPlayCount:I

    const/4 v3, 0x1

    .line 521
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 522
    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 525
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 529
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 531
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_2

    .line 532
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 533
    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 535
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 536
    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    .line 538
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->isPlaying:Z

    return-void
.end method

.method private toggleActionBar(ZZ)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 916
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 918
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 919
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 922
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 923
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    aput v1, v5, v0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    .line 925
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-nez p1, :cond_2

    .line 927
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/SecretMediaViewer$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SecretMediaViewer$6;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 938
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 939
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 941
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-nez p1, :cond_5

    .line 943
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateMinMax(F)V
    .locals 3

    .line 1390
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 1391
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    div-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    neg-int v2, v0

    int-to-float v2, v2

    .line 1393
    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    int-to-float v0, v0

    .line 1394
    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    goto :goto_0

    .line 1396
    :cond_0
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    :goto_0
    if-lez p1, :cond_1

    neg-int v0, p1

    int-to-float v0, v0

    .line 1399
    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    int-to-float p1, p1

    .line 1400
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    goto :goto_1

    .line 1402
    :cond_1
    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    :goto_1
    return-void
.end method


# virtual methods
.method public closePhoto(ZZ)Z
    .locals 18

    move-object/from16 v0, p0

    .line 1201
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    if-eqz v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->checkPhotoAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    .line 1205
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1206
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1207
    iget-boolean v3, v0, Lorg/telegram/ui/SecretMediaViewer;->wasLightNavigationBar:Z

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 1208
    iget v3, v0, Lorg/telegram/ui/SecretMediaViewer;->wasNavigationBarColor:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;I)V

    .line 1211
    :cond_1
    iget v1, v0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1212
    iget v1, v0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1213
    iget v1, v0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1215
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 1217
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1218
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1219
    iput-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1221
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/SecretMediaViewer;->closeTime:J

    .line 1223
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v7, :cond_4

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v6, :cond_3

    goto :goto_0

    .line 1226
    :cond_3
    invoke-interface {v1, v5, v3, v2, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    goto :goto_1

    :cond_4
    :goto_0
    move-object v1, v3

    .line 1228
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v5, :cond_5

    .line 1229
    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_5
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz p1, :cond_e

    .line 1233
    iput v7, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1234
    iget-object v10, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1236
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/16 v10, 0x15

    if-eqz v1, :cond_9

    .line 1238
    iget-object v11, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_9

    if-nez p2, :cond_9

    .line 1239
    iget-object v11, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11, v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1241
    iget-object v11, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v11

    .line 1243
    iget v12, v11, Landroid/graphics/RectF;->right:F

    iget v13, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    .line 1244
    iget v13, v11, Landroid/graphics/RectF;->bottom:F

    iget v14, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v14

    .line 1245
    sget-object v14, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v15, v14, Landroid/graphics/Point;->x:I

    .line 1246
    iget v14, v14, Landroid/graphics/Point;->y:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_6

    sget v16, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_6
    move/from16 v16, v2

    :goto_2
    add-int v14, v14, v16

    int-to-float v5, v15

    div-float v5, v12, v5

    int-to-float v6, v14

    div-float v6, v13, v6

    .line 1247
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    .line 1248
    iget v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v5, v5

    iget v6, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    const/high16 v17, 0x40000000    # 2.0f

    div-float v12, v12, v17

    add-float/2addr v5, v12

    div-int/2addr v15, v8

    int-to-float v12, v15

    sub-float/2addr v5, v12

    iput v5, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    .line 1249
    iget v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v5, v5

    iget v12, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v12

    div-float v12, v13, v17

    add-float/2addr v5, v12

    div-int/2addr v14, v8

    int-to-float v12, v14

    sub-float/2addr v5, v12

    iput v5, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 1250
    iget-object v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    .line 1251
    iget v5, v11, Landroid/graphics/RectF;->top:F

    iget-object v6, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    new-array v6, v8, [I

    .line 1253
    iget-object v12, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1254
    aget v12, v6, v4

    if-lt v3, v10, :cond_7

    move v14, v2

    goto :goto_3

    :cond_7
    sget v14, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_3
    sub-int/2addr v12, v14

    int-to-float v12, v12

    iget v14, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v14, v14

    iget v15, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v15

    sub-float/2addr v12, v14

    iget v14, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    int-to-float v14, v14

    add-float/2addr v12, v14

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    int-to-float v5, v5

    .line 1255
    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    .line 1256
    iget v12, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v12, v12

    iget v11, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v11

    float-to-int v11, v13

    int-to-float v11, v11

    add-float/2addr v12, v11

    aget v6, v6, v4

    iget-object v11, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v6, v11

    if-lt v3, v10, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_4
    sub-int/2addr v6, v3

    int-to-float v3, v6

    sub-float/2addr v12, v3

    iget v3, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    int-to-float v3, v3

    add-float/2addr v12, v3

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 1257
    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 1259
    iput v9, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    .line 1260
    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    .line 1261
    iput v9, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    .line 1262
    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    .line 1264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 1265
    iput-boolean v4, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    goto :goto_7

    .line 1267
    :cond_9
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v10, :cond_a

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_5

    :cond_a
    move v5, v2

    :goto_5
    add-int/2addr v3, v5

    .line 1268
    iget v5, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    cmpl-float v5, v5, v9

    if-ltz v5, :cond_b

    goto :goto_6

    :cond_b
    neg-int v3, v3

    :goto_6
    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 1270
    :goto_7
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToRadius:Z

    .line 1271
    iget-boolean v3, v0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    const-string v5, "animationValue"

    const/4 v6, 0x5

    if-eqz v3, :cond_c

    .line 1272
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    .line 1273
    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    .line 1274
    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v10, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    sget-object v11, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v12, v4, [I

    aput v2, v12, v2

    .line 1275
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v6, v2

    new-array v10, v8, [F

    fill-array-data v10, :array_0

    .line 1276
    invoke-static {v0, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v4, [F

    aput v9, v11, v2

    .line 1277
    invoke-static {v5, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v8

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v4, [F

    aput v9, v11, v2

    .line 1278
    invoke-static {v5, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v7

    new-array v5, v4, [F

    aput v9, v5, v2

    const-string v2, "videoCrossfadeAlpha"

    .line 1279
    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v6, v5

    .line 1274
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_8

    .line 1282
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setManualAlphaAnimator(Z)V

    .line 1283
    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v10, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    sget-object v11, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v12, v4, [I

    aput v2, v12, v2

    .line 1284
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v6, v2

    new-array v10, v8, [F

    fill-array-data v10, :array_1

    .line 1285
    invoke-static {v0, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v4

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v4, [F

    aput v9, v11, v2

    .line 1286
    invoke-static {v5, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v8

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v4, [F

    aput v9, v11, v2

    .line 1287
    invoke-static {v5, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v7

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    new-array v7, v4, [F

    aput v9, v7, v2

    const-string v2, "currentAlpha"

    .line 1288
    invoke-static {v5, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v6, v5

    .line 1283
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1292
    :goto_8
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1302
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1303
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1304
    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/SecretMediaViewer$7;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$7;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    .line 1320
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_d

    .line 1321
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1323
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_9

    .line 1325
    :cond_e
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    .line 1326
    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v11, v4, [F

    const v12, 0x3f666666    # 0.9f

    aput v12, v11, v2

    .line 1327
    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v4, [F

    aput v12, v11, v2

    .line 1328
    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    sget-object v10, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v11, v4, [I

    aput v2, v11, v2

    .line 1329
    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v4, [F

    aput v9, v11, v2

    .line 1330
    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v5, v7

    .line 1326
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1332
    iput v8, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1333
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    .line 1346
    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1347
    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$8;

    invoke-direct {v1, v0}, Lorg/telegram/ui/SecretMediaViewer$8;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    .line 1357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_f

    .line 1358
    iget-object v1, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1360
    :cond_f
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :goto_9
    return v4

    :cond_10
    :goto_a
    return v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public destroyPhotoViewer()V
    .locals 3

    .line 953
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 954
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 955
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 956
    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    const/4 v0, 0x0

    .line 957
    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 958
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v1, :cond_0

    .line 959
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    .line 960
    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 962
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 963
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 965
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 966
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 967
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 969
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 971
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 974
    :cond_2
    :goto_0
    sput-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 356
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_4

    const/4 p1, 0x2

    .line 357
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_1

    return-void

    .line 364
    :cond_1
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    return-void

    .line 368
    :cond_2
    aget-object p1, p3, v0

    check-cast p1, Ljava/util/ArrayList;

    .line 369
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 370
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    if-nez p1, :cond_3

    .line 371
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    goto/16 :goto_3

    .line 373
    :cond_3
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    move-result p1

    if-nez p1, :cond_c

    .line 374
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeAfterAnimation:Z

    goto/16 :goto_3

    .line 378
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    if-ne p1, p2, :cond_a

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    if-nez p1, :cond_5

    goto :goto_2

    .line 382
    :cond_5
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 383
    iget-wide v2, p0, Lorg/telegram/ui/SecretMediaViewer;->currentDialogId:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_6

    return-void

    .line 386
    :cond_6
    aget-object p1, p3, v1

    check-cast p1, Landroid/util/SparseArray;

    move p2, v0

    .line 387
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_c

    .line 388
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    .line 389
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move v2, v0

    .line 390
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 391
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 392
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_7

    .line 393
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput p3, p1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_9
    :goto_2
    return-void

    .line 399
    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    if-ne p1, p2, :cond_c

    .line 400
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 401
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne p2, p1, :cond_c

    .line 402
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    if-nez p1, :cond_b

    .line 403
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    goto :goto_3

    .line 405
    :cond_b
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    move-result p1

    if-nez p1, :cond_c

    .line 406
    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->closeAfterAnimation:Z

    :cond_c
    :goto_3
    return-void
.end method

.method public getAnimationValue()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1637
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    return v0
.end method

.method public getCloseTime()J
    .locals 2

    .line 1193
    iget-wide v0, p0, Lorg/telegram/ui/SecretMediaViewer;->closeTime:J

    return-wide v0
.end method

.method public getCurrentMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getOpenTime()J
    .locals 2

    .line 1189
    iget-wide v0, p0, Lorg/telegram/ui/SecretMediaViewer;->openTime:J

    return-wide v0
.end method

.method public getVideoCrossfadeAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1166
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    return v0
.end method

.method public isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 911
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVisible()Z
    .locals 1

    .line 949
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1686
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    return v3

    .line 1689
    :cond_1
    iget-wide v5, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 1693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v4, 0x40400000    # 3.0f

    div-float v3, v4, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 1694
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float/2addr p1, v3

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    div-float v3, v4, v3

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    .line 1695
    invoke-direct {p0, v4}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1696
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v3, v0, p1

    if-gez v3, :cond_3

    :goto_0
    move v0, p1

    goto :goto_1

    .line 1698
    :cond_3
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v3, v0, p1

    if-lez v3, :cond_4

    goto :goto_0

    .line 1701
    :cond_4
    :goto_1
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v3, v1, p1

    if-gez v3, :cond_5

    :goto_2
    move v1, p1

    goto :goto_3

    .line 1703
    :cond_5
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v3, v1, p1

    if-lez v3, :cond_6

    goto :goto_2

    .line 1706
    :cond_6
    :goto_3
    invoke-direct {p0, v4, v0, v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto :goto_4

    .line 1708
    :cond_7
    invoke-direct {p0, v1, v4, v4, v2}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    .line 1710
    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    return v2

    :cond_8
    :goto_5
    return v3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1667
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 1668
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    float-to-int v5, p1

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    float-to-int v6, p1

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    float-to-int v7, p1

    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    float-to-int v8, p1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    .line 1670
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1677
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1680
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openMedia(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/Runnable;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v11, "window"

    .line 694
    iget-object v3, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v3, :cond_15

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez v2, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 697
    invoke-interface {v2, v0, v12, v13, v14}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v15

    if-nez v15, :cond_1

    return-void

    .line 704
    :cond_1
    iput-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/SecretMediaViewer;->openTime:J

    const-wide/16 v2, 0x0

    .line 706
    iput-wide v2, v1, Lorg/telegram/ui/SecretMediaViewer;->closeTime:J

    .line 707
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 708
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    .line 709
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    .line 710
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v10, 0x4

    if-eqz v2, :cond_2

    .line 711
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 713
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    const/4 v2, 0x0

    .line 715
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchStartDistance:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 716
    iput v3, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    .line 717
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    .line 718
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    .line 719
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    .line 720
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    .line 721
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 722
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    .line 723
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    .line 724
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 725
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    .line 726
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    .line 727
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 728
    iget v4, v1, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {v1, v4}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 729
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    invoke-virtual {v4, v13}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 730
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 731
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v4, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 732
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 733
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    .line 734
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    .line 735
    iput-boolean v13, v1, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    .line 736
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    .line 737
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v13}, Lorg/telegram/messenger/ImageReceiver;->setManualAlphaAnimator(Z)V

    .line 739
    iget-object v4, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v4

    .line 741
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 742
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    .line 743
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 744
    iget v7, v7, Landroid/graphics/Point;->y:I

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_3

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_3
    move v9, v13

    :goto_0
    add-int/2addr v7, v9

    int-to-float v9, v8

    div-float v9, v5, v9

    int-to-float v13, v7

    div-float v13, v6, v13

    .line 745
    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v1, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 747
    iget-object v9, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    if-eqz v9, :cond_4

    .line 748
    array-length v9, v9

    new-array v9, v9, [I

    iput-object v9, v1, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    const/4 v9, 0x0

    .line 749
    :goto_1
    iget-object v13, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    array-length v3, v13

    if-ge v9, v3, :cond_5

    .line 750
    iget-object v3, v1, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    aget v13, v13, v9

    aput v13, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    .line 753
    :cond_4
    iput-object v12, v1, Lorg/telegram/ui/SecretMediaViewer;->animateFromRadius:[I

    .line 755
    :cond_5
    iget v3, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v3, v3

    iget v9, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v5, v13

    add-float/2addr v3, v5

    const/4 v5, 0x2

    div-int/2addr v8, v5

    int-to-float v8, v8

    sub-float/2addr v3, v8

    iput v3, v1, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 756
    iget v3, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v3, v3

    iget v8, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    div-float v8, v6, v13

    add-float/2addr v3, v8

    div-int/2addr v7, v5

    int-to-float v7, v7

    sub-float/2addr v3, v7

    iput v3, v1, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 757
    iget-object v3, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    sub-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, v1, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    .line 758
    iget v3, v4, Landroid/graphics/RectF;->top:F

    iget-object v7, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v7

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    new-array v7, v5, [I

    .line 760
    iget-object v8, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 761
    aget v8, v7, v14

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v10, :cond_6

    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2
    sub-int/2addr v8, v13

    int-to-float v8, v8

    iget v13, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v13, v13

    iget v5, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v5

    sub-float/2addr v8, v13

    iget v5, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    int-to-float v5, v5

    add-float/2addr v8, v5

    iput v8, v1, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    int-to-float v3, v3

    .line 762
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v1, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 763
    iget v5, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v4

    float-to-int v4, v6

    int-to-float v4, v4

    add-float/2addr v5, v4

    aget v4, v7, v14

    iget-object v6, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    if-lt v9, v10, :cond_7

    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_3
    sub-int/2addr v4, v6

    int-to-float v4, v4

    sub-float/2addr v5, v4

    iget v4, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    int-to-float v4, v4

    add-float/2addr v5, v4

    iput v5, v1, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 764
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 766
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    .line 767
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/SecretMediaViewer;->clipTopOrigin:F

    .line 768
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    .line 769
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Lorg/telegram/ui/SecretMediaViewer;->clipBottomOrigin:F

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 772
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    .line 773
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 774
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 775
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottomOrigin:F

    .line 776
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    .line 777
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    .line 778
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTopOrigin:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 779
    iput v2, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    .line 780
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->animateToRadius:Z

    .line 781
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 783
    iget v2, v1, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 784
    iget v2, v1, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 785
    iget v2, v1, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 786
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/SecretMediaViewer;->currentDialogId:J

    const/4 v2, 0x0

    .line 787
    invoke-direct {v1, v14, v2}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    .line 789
    iput-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 790
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    .line 791
    iget-object v3, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v3, :cond_8

    .line 792
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    .line 793
    iput-object v12, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 795
    :cond_8
    iget-object v3, v15, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getThumbBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const-wide/16 v17, 0x3e8

    if-eqz v2, :cond_10

    .line 797
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 798
    iget-object v3, v1, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->DisappearingGif:I

    const-string v5, "DisappearingGif"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    if-eqz v4, :cond_9

    .line 801
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_4

    .line 803
    :cond_9
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    :goto_4
    move-object v3, v2

    .line 805
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    iget-object v5, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v5, :cond_a

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    iget-object v6, v6, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_a
    move-object v5, v12

    :goto_5
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v9, 0x2

    move v12, v9

    move-object/from16 v9, p1

    move v12, v10

    const/16 v16, 0x4

    move v10, v13

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 806
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    int-to-long v3, v3

    mul-long v20, v3, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    int-to-long v3, v0

    const/16 v24, 0x0

    move-object/from16 v19, v2

    move-wide/from16 v22, v3

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->access$2700(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V

    goto/16 :goto_9

    :cond_b
    move v12, v10

    const/16 v16, 0x4

    .line 808
    iput v14, v1, Lorg/telegram/ui/SecretMediaViewer;->playerRetryPlayCount:I

    .line 809
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->DisappearingVideo:I

    const-string v4, "DisappearingVideo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 810
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 812
    invoke-direct {v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V

    goto :goto_6

    .line 814
    :cond_c
    iget v2, v1, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 815
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".enc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v2, v3

    .line 819
    :cond_d
    invoke-direct {v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V

    .line 821
    :goto_6
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    .line 822
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v5, :cond_e

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    iget-object v6, v6, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    :goto_7
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 823
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    int-to-long v2, v2

    mul-long v2, v2, v17

    .line 824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, v1, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getTimeDifference()I

    move-result v6

    int-to-long v6, v6

    mul-long v6, v6, v17

    add-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 826
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v4

    int-to-long v4, v4

    mul-long v4, v4, v17

    cmp-long v2, v4, v2

    if-lez v2, :cond_f

    .line 828
    iget-object v3, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->access$2700(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V

    goto/16 :goto_9

    .line 830
    :cond_f
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    int-to-long v3, v3

    mul-long v18, v3, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    int-to-long v3, v0

    const/16 v22, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v20, v3

    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->access$2700(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V

    goto :goto_9

    :cond_10
    move v12, v10

    const/16 v16, 0x4

    .line 834
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->DisappearingPhoto:I

    const-string v4, "DisappearingPhoto"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 836
    iget-object v3, v1, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v2, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v2, :cond_11

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, v1, Lorg/telegram/ui/SecretMediaViewer;->currentThumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    iget-object v6, v6, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v6, v2

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    :goto_8
    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v9

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 837
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    int-to-long v3, v3

    mul-long v20, v3, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    int-to-long v3, v0

    const/16 v24, 0x0

    move-object/from16 v19, v2

    move-wide/from16 v22, v3

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->access$2700(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V

    .line 840
    :goto_9
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 841
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 842
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 845
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 848
    :cond_12
    :goto_a
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 849
    iget-object v2, v1, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 851
    iput-boolean v14, v1, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    .line 853
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 854
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v12, :cond_13

    .line 855
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/SecretMediaViewer;->wasNavigationBarColor:I

    .line 856
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getLightNavigationBar(Landroid/view/Window;)Z

    move-result v3

    iput-boolean v3, v1, Lorg/telegram/ui/SecretMediaViewer;->wasLightNavigationBar:Z

    const/4 v3, 0x0

    .line 857
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    const/high16 v3, -0x1000000

    .line 858
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;I)V

    .line 861
    :cond_13
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    .line 862
    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    .line 863
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v6, [F

    fill-array-data v7, :array_1

    .line 864
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v14

    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    sget-object v5, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v7, v6, [I

    fill-array-data v7, :array_2

    .line 865
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v1, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v6, [F

    fill-array-data v7, :array_3

    .line 866
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    new-array v4, v6, [F

    fill-array-data v4, :array_4

    const-string v6, "animationValue"

    .line 867
    invoke-static {v1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v16

    .line 862
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 869
    iput v5, v1, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 870
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda2;

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;)V

    iput-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 887
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 888
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/SecretMediaViewer$5;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SecretMediaViewer$5;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    const/16 v0, 0x12

    if-lt v2, v0, :cond_14

    .line 899
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 901
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 902
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->access$2902(Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;I)I

    .line 903
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, v15}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->access$3002(Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 907
    iget-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_15
    :goto_b
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAnimationValue(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1631
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    .line 1632
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 12

    .line 542
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentAccount:I

    .line 543
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    return-void

    .line 547
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    .line 549
    new-instance v0, Lorg/telegram/ui/Components/Scroller;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    .line 551
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SecretMediaViewer$2;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    .line 609
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 613
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SecretMediaViewer$3;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v2, 0x0

    .line 623
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 626
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 627
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x33

    .line 628
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 629
    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_1

    .line 631
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 632
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    new-instance v6, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 644
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/16 v6, 0x500

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 647
    :cond_1
    new-instance v5, Landroid/view/GestureDetector;

    iget-object v6, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 648
    invoke-virtual {v5, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 650
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v5, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 651
    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 652
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 653
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v6, 0x7f000000

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 654
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-lt v0, v4, :cond_2

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 655
    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v6, 0x40ffffff    # 7.9999995f

    invoke-virtual {v5, v6, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 656
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 657
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v5, 0x46

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleRightMargin(I)V

    .line 658
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, -0x2

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/SecretMediaViewer$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/SecretMediaViewer$4;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 668
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    .line 669
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/16 v5, 0x77

    const/16 v6, 0x30

    const/16 v7, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 672
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x3

    .line 673
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 674
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x30

    .line 675
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x63

    .line 676
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v4, :cond_3

    const v0, -0x7ffefef8

    .line 678
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    .line 683
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 685
    :goto_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 686
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 687
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForceCrossfade(Z)V

    return-void
.end method

.method public setVideoCrossfadeAlpha(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1171
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1172
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
