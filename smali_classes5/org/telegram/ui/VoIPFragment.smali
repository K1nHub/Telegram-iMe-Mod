.class public Lorg/telegram/ui/VoIPFragment;
.super Ljava/lang/Object;
.source "VoIPFragment.java"

# interfaces
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static instance:Lorg/telegram/ui/VoIPFragment;


# instance fields
.field private acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field activity:Landroid/app/Activity;

.field private backIcon:Landroid/widget/ImageView;

.field bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field bottomShadow:Landroid/view/View;

.field private buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

.field callingUser:Lorg/telegram/tgnet/TLRPC$User;

.field callingUserIsVideo:Z

.field private callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

.field private callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

.field private callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

.field private callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

.field private callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field private callingUserTitle:Landroid/widget/TextView;

.field cameraForceExpanded:Z

.field private cameraShowingAnimator:Landroid/animation/Animator;

.field private canHideUI:Z

.field private canSwitchToPip:Z

.field private canZoomGesture:Z

.field private final currentAccount:I

.field private currentState:I

.field private currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

.field private currentUserCameraIsFullscreen:Z

.field currentUserIsVideo:Z

.field private currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field private deviceIsLocked:Z

.field emojiDrawables:[Lorg/telegram/messenger/Emoji$EmojiDrawable;

.field private emojiExpanded:Z

.field emojiLayout:Landroid/widget/LinearLayout;

.field private emojiLoaded:Z

.field emojiRationalTextView:Landroid/widget/TextView;

.field emojiViews:[Landroid/widget/ImageView;

.field enterFromPiP:Z

.field private enterTransitionProgress:F

.field fillNaviagtionBar:Z

.field fillNaviagtionBarValue:F

.field private fragmentView:Landroid/view/ViewGroup;

.field hideUIRunnable:Ljava/lang/Runnable;

.field hideUiRunnableWaiting:Z

.field private isFinished:Z

.field private isInPinchToZoomTouchMode:Z

.field private isVideoCall:Z

.field lastContentTapTime:J

.field private lastInsets:Landroid/view/WindowInsets;

.field private lockOnScreen:Z

.field naviagtionBarAnimator:Landroid/animation/ValueAnimator;

.field navigationBarAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

.field overlayBottomPaint:Landroid/graphics/Paint;

.field overlayPaint:Landroid/graphics/Paint;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field pinchScale:F

.field private pinchStartCenterX:F

.field private pinchStartCenterY:F

.field private pinchStartDistance:F

.field private pinchTranslationX:F

.field private pinchTranslationY:F

.field private pointerId1:I

.field private pointerId2:I

.field private previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

.field private previousState:I

.field private screenWasWakeup:Z

.field private speakerPhoneIcon:Landroid/widget/ImageView;

.field statusLayout:Landroid/widget/LinearLayout;

.field private statusLayoutAnimateToOffset:I

.field private statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

.field statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private switchingToPip:Z

.field tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

.field topShadow:Landroid/view/View;

.field touchSlop:F

.field uiVisibilityAlpha:F

.field uiVisibilityAnimator:Landroid/animation/ValueAnimator;

.field private uiVisible:Z

.field private windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

.field zoomBackAnimator:Landroid/animation/ValueAnimator;

.field private zoomStarted:Z


# direct methods
.method public static synthetic $r8$lambda$0PN6FNSsN0aVjrNoEuPvcyJi2W8(Lorg/telegram/ui/VoIPFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$51K6w2K4s88DQNBm4RmaJQqW0XU(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$5mkfACZlnuAgjZt_bhXOvduBf1M(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$setFrontalCameraAction$27(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6RjI0RxBj9gnfF7A3j5U561ssGg(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$4(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$9dM3LKAkoQiXn5hx33mIBds1Zyw(Lorg/telegram/ui/VoIPFragment;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/VoIPFragment;->lambda$finishZoom$12(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A7maLfu0k8JUnrEUnblm4oHOtX0(Lorg/telegram/ui/VoIPFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CPSttF4GaiLQQiAH8ua7iZV3V8Q(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CYblccYRbvQ07nfEP1bxjcessS0(Lorg/telegram/ui/VoIPFragment;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$startTransitionFromPiP$13(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DIbLrgTFmTqDvnebZWkVhcP5uck(Lorg/telegram/ui/VoIPFragment;[ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$18([ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dcu_mvRydQi_qhcQLCcVjeNvNsY(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HD_eIDpUjCL7eCliXiUuDWADsG0(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$onRequestPermissionsResultInternal$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$HGeHNo6qTAnhziO5RJ8VmVWbQDY(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$setSpeakerPhoneAction$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IbGa3TIT10A0H9fgrydsq-m0goc(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$setVideoAction$25(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MCp6nP73u-4eHFcFE-9KexFccgY(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateButtons$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NocAoBIqS8-mIy0hwDPBJPVcFPU(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$startTransitionFromPiP$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$NxIkpJeM5ZiAzrL_hhw0t6nKPEM(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QCJaI3z0XU8-P2Jn0nDM4IqH5vE(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$TtalD22nkGfzdnVYctO10266eo8(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$setMicrohoneAction$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UZ-LZav-XoSns-89YVlu-f__GrU(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->lambda$setVideoAction$24(Lorg/telegram/messenger/voip/VoIPService;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VfxmxyPKbgU8TqBUdr_fgkmFba0(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VpWsnX-6jJFI2--g_QbRE09QDX0(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$cXD3B1LshsLFiyXvSmGFX9afzpo(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fiB7cwE3Ja8repy4VK38OYmP6_c(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$ki14klShORfBkaBVno6QSTf_wus(Lorg/telegram/ui/VoIPFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$showErrorDialog$29(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mzvhSD0prdnBDYwjR3gvSr__zRA(Lorg/telegram/ui/VoIPFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$requestInlinePermissions$30(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nl74mnL6zAXj9z9Tfm9L8MKoptY(Lorg/telegram/ui/VoIPFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$17(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pB3ZD5b180yyk64O9Be1Y9wENn0(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$qhmAufY-mIAowhwEWcF2nMXXz_I(Lorg/telegram/ui/VoIPFragment;[ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$19([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t5npkSCb3NdTw8q5DMHUSIt_us8(Lorg/telegram/ui/VoIPFragment;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$5(FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xO0jHmbZ6Ftn5G7I82JtRfZCj-E(Lorg/telegram/ui/VoIPFragment;ZFFFFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Lorg/telegram/ui/VoIPFragment;->lambda$createPiPTransition$15(ZFFFFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhW37BIWXXkUrHelVWE2n-u2IRg(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$show$3(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    .line 116
    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-array v1, v0, [Landroid/widget/ImageView;

    .line 132
    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    new-array v0, v0, [Lorg/telegram/messenger/Emoji$EmojiDrawable;

    .line 133
    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Lorg/telegram/messenger/Emoji$EmojiDrawable;

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayPaint:Landroid/graphics/Paint;

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 171
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    .line 187
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 193
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 201
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->navigationBarAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 207
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    .line 233
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 450
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    .line 451
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    .line 452
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 453
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 454
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing()Z

    const/4 v0, -0x1

    .line 455
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 456
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 457
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 458
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 459
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->finishZoom()V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->getFullscreenTextureView()Lorg/telegram/ui/Components/voip/VoIPTextureView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartDistance:F

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartDistance:F

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterX:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterX:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterX:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterX:F

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterY:F

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterY:F

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterY:F

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterY:F

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/VoIPFragment;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/VoIPFragment;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VoIPFragment;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VoIPFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    return-void
.end method

.method static synthetic access$2802(Lorg/telegram/ui/VoIPFragment;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->onBackPressed()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/VoIPFragment;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPWindowView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/VoIPFragment;)Lorg/webrtc/TextureViewRenderer;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    return-void
.end method

.method static synthetic access$4102(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/VoIPFragment;
    .locals 0

    .line 103
    sput-object p0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/AcceptDeclineView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/VoIPFragment;)Landroid/view/WindowInsets;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    return p1
.end method

.method private checkEmojiLoaded(Z)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 1957
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Lorg/telegram/messenger/Emoji$EmojiDrawable;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 1963
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 1965
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1966
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 1968
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1969
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/16 v5, 0x1e

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1970
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    mul-int/lit8 v4, v1, 0x14

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 1026
    :cond_0
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    return v3

    .line 1029
    :cond_1
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public static clearInstance()V
    .locals 7

    .line 396
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_2

    .line 397
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 399
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    sget-object v3, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v3, v3, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v3, :cond_0

    .line 400
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    sub-int/2addr v0, v3

    .line 402
    :cond_0
    sget-object v3, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-boolean v4, v3, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v4, :cond_1

    .line 403
    iget-object v4, v3, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v5, v3, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v3, v3, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v0, v6}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    if-lt v1, v2, :cond_1

    .line 404
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 406
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 410
    :cond_1
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 411
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 412
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 413
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    :cond_2
    const/4 v0, 0x0

    .line 415
    sput-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-void
.end method

.method private destroy()V
    .locals 2

    .line 463
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 467
    :cond_0
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 468
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 469
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private expandEmoji(Z)V
    .locals 7

    .line 1349
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eq v0, p1, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1352
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x96

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 1354
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1355
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1356
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    .line 1357
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x80

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 1359
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    .line 1360
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1361
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xfa

    .line 1362
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1363
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1364
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1365
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1366
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1367
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1369
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1371
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1372
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1373
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1374
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1375
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    iget-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4, p1}, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;->setShowBlackout(ZZ)V

    .line 1377
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 1379
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1380
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1381
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1382
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1383
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1385
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    .line 1386
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/VoIPFragment$14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$14;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1396
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1398
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/VoIPFragment$15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$15;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1403
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    :goto_2
    return-void
.end method

.method private fillNavigationBar(ZZ)V
    .locals 4

    .line 1744
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_4

    .line 1748
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 1749
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    move v0, v1

    .line 1751
    :cond_2
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBarValue:F

    .line 1752
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1753
    :cond_4
    iget-boolean p2, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBar:Z

    if-eq p1, p2, :cond_7

    .line 1754
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    .line 1755
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    .line 1757
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBarValue:F

    aput v3, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    move v0, v1

    :cond_6
    aput v0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->navigationBarAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1759
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1760
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1761
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1763
    :cond_7
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBar:Z

    return-void
.end method

.method private finishZoom()V
    .locals 6

    .line 1043
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1044
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1045
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    .line 1047
    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 1048
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    .line 1049
    iget v4, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    .line 1050
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2, v3, v4}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/VoIPFragment;FFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$9;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1068
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1072
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    .line 1073
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getFullscreenTextureView()Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 1

    .line 1036
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0

    .line 1039
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/VoIPFragment;
    .locals 1

    .line 419
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-object v0
.end method

.method private initRenderers()V
    .locals 5

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$10;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$11;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    sget-object v3, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    new-instance v4, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v4}, Lorg/webrtc/GlRectDrawer;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    return-void
.end method

.method private synthetic lambda$createPiPTransition$15(ZFFFFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 9

    move-object v0, p0

    .line 1312
    invoke-virtual/range {p18 .. p18}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v1

    .line 1313
    iput v3, v0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 1314
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    if-eqz p1, :cond_0

    mul-float v4, p2, v3

    mul-float v5, p3, v1

    add-float/2addr v4, v5

    .line 1318
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1319
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1320
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p4, v3

    mul-float v6, p5, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1321
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p6, v3

    mul-float v6, p7, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1322
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p8, v3

    mul-float v6, p9, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1323
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p10, v3

    mul-float v6, p11, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    mul-float v4, p12, v3

    mul-float v5, p13, v1

    add-float/2addr v4, v5

    .line 1327
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1328
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    mul-float v5, p14, v3

    mul-float v6, p15, v1

    add-float/2addr v5, v6

    mul-float v6, p16, v3

    mul-float v7, p17, v1

    add-float/2addr v6, v7

    .line 1332
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1333
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1334
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v8, 0x4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    mul-float/2addr v8, v2

    div-float/2addr v8, v4

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    .line 1335
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    if-nez v2, :cond_1

    .line 1336
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setScreenshareMiniProgress(FZ)V

    .line 1338
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1339
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1340
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1341
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1342
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1343
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 0

    .line 987
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez p1, :cond_0

    .line 988
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$11()V
    .locals 1

    .line 998
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 999
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 739
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 741
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;->setBackground(Lorg/telegram/messenger/ImageReceiver$BitmapHolder;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(FZ)V
    .locals 1

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setScreenshareMiniProgress(FZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 4

    .line 755
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 756
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 757
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 759
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    const/4 p1, 0x1

    .line 760
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 761
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 762
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 763
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 4

    .line 783
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 784
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 785
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    .line 788
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 789
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 790
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 791
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 4

    .line 822
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 825
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 826
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz p1, :cond_1

    .line 827
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 2

    .line 978
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 981
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 982
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$finishZoom$12(FFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1051
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    mul-float/2addr p1, p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p4

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    .line 1052
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    mul-float/2addr p2, p4

    .line 1053
    iput p2, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    mul-float/2addr p3, p4

    .line 1054
    iput p3, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    .line 1055
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 194
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    .line 195
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 202
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBarValue:F

    .line 203
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 209
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-nez v1, :cond_0

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 211
    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    .line 212
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 213
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$28()V
    .locals 1

    .line 2317
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$requestInlinePermissions$30(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2425
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-eqz p1, :cond_0

    .line 2426
    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setFrontalCameraAction$27(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 2

    .line 2208
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2210
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2212
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2213
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamSwitchedToBack:I

    const-string v1, "AccDescrVoipCamSwitchedToBack"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2215
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamSwitchedToFront:I

    const-string v1, "AccDescrVoipCamSwitchedToFront"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2217
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2219
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setMicrohoneAction$23(Landroid/view/View;)V
    .locals 5

    .line 2097
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2099
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 2100
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    .line 2103
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrVoipMicOff:I

    const-string v4, "AccDescrVoipMicOff"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2105
    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrVoipMicOn:I

    const-string v4, "AccDescrVoipMicOn"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2107
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x0

    .line 2109
    invoke-virtual {v0, v1, p1, v2}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 2110
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 2111
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setSpeakerPhoneAction$26(Landroid/view/View;)V
    .locals 2

    .line 2188
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2189
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setVideoAction$24(Lorg/telegram/messenger/voip/VoIPService;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2138
    iget-object p1, p1, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->cameraAlertWasShowed:Z

    .line 2139
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    return-void
.end method

.method private synthetic lambda$setVideoAction$25(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 2

    .line 2131
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x66

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    if-ge p2, v0, :cond_1

    .line 2134
    iget-object p2, p1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez p2, :cond_1

    iget-object p2, p1, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    iget-boolean p2, p2, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->cameraAlertWasShowed:Z

    if-nez p2, :cond_1

    .line 2135
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2136
    sget v0, Lorg/telegram/messenger/R$string;->VoipSwitchToVideoCall:I

    const-string v1, "VoipSwitchToVideoCall"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2137
    sget v0, Lorg/telegram/messenger/R$string;->VoipSwitch:I

    const-string v1, "VoipSwitch"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2141
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2142
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0

    .line 2144
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$show$3(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 328
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 329
    invoke-direct {p0, p2}, Lorg/telegram/ui/VoIPFragment;->setInsets(Landroid/view/WindowInsets;)V

    :cond_0
    const/16 p0, 0x1e

    if-lt p1, p0, :cond_1

    .line 332
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 334
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showErrorDialog$29(Landroid/content/DialogInterface;)V
    .locals 0

    .line 2418
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$startTransitionFromPiP$13(Landroid/animation/Animator;)V
    .locals 5

    const/4 v0, 0x0

    .line 1197
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1198
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->finish()V

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1205
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1210
    new-instance v0, Lorg/telegram/ui/VoIPFragment$13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$13;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1221
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1222
    invoke-virtual {p1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1223
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private synthetic lambda$startTransitionFromPiP$14()V
    .locals 4

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x1

    .line 1184
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFragment;->createPiPTransition(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 1185
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1186
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1187
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1188
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1189
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1190
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1191
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1192
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1193
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1195
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iput-boolean v0, v2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToPip:Z

    .line 1196
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/animation/Animator;)V

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static synthetic lambda$updateButtons$22(Landroid/view/View;)V
    .locals 0

    .line 2073
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2074
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$16()V
    .locals 1

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$17(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1494
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$18([ZLandroid/content/DialogInterface;I)V
    .locals 3

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 1496
    aput-boolean p3, p1, p2

    const/16 p1, 0x11

    .line 1497
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 1498
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-class v1, Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1499
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v2, "user_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "is_outgoing"

    .line 1500
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "start_incall_activity"

    .line 1501
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "video_call"

    .line 1502
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "can_video_call"

    .line 1503
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1504
    iget p2, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    const-string p3, "account"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1506
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1508
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateViewState$19([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 1514
    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 1515
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$20()V
    .locals 1

    .line 1534
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$21()V
    .locals 1

    .line 1537
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private onBackPressed()V
    .locals 3

    .line 362
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->dismiss(ZZ)V

    return-void

    .line 369
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v0, :cond_2

    .line 370
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    .line 372
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 373
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 374
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void

    .line 377
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz v0, :cond_3

    .line 378
    invoke-direct {p0, v1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    return-void

    .line 383
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v0, :cond_6

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFragment;->switchToPip()V

    goto :goto_0

    .line 387
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->requestInlinePermissions()V

    goto :goto_0

    .line 390
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_7
    :goto_0
    return-void
.end method

.method public static onPause()V
    .locals 1

    .line 2342
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2343
    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFragment;->onPauseInternal()V

    .line 2345
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2346
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->onPause()V

    :cond_1
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2300
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2301
    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 p2, 0x0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 2308
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2309
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void

    .line 2312
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, p2

    if-nez v0, :cond_1

    .line 2313
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    goto :goto_0

    .line 2315
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2316
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall()V

    .line 2317
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    new-instance p3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda22;

    invoke-direct {p3, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;I)V

    return-void

    :cond_2
    :goto_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_4

    .line 2323
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_3

    .line 2324
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void

    .line 2327
    :cond_3
    array-length p1, p3

    if-lez p1, :cond_4

    aget p1, p3, p2

    if-nez p1, :cond_4

    .line 2328
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    :cond_4
    return-void
.end method

.method public static onResume()V
    .locals 1

    .line 2351
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2352
    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFragment;->onResumeInternal()V

    .line 2354
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2355
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->onResume()V

    :cond_1
    return-void
.end method

.method private requestInlinePermissions()V
    .locals 2

    .line 2423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2424
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayPermissionDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 2428
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_0
    return-void
.end method

.method private setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 8

    .line 2195
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/16 v1, 0x1e

    const-string v2, "VoipFlip"

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 2196
    sget v4, Lorg/telegram/messenger/R$drawable;->calls_flip:I

    const/16 v0, 0x7f

    invoke-static {v3, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    sget v0, Lorg/telegram/messenger/R$string;->VoipFlip:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p1

    move v1, v4

    move v2, v5

    move-object v4, v6

    move v5, v7

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    const/4 v0, 0x0

    .line 2197
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 2198
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 2200
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2201
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2202
    sget v1, Lorg/telegram/messenger/R$drawable;->calls_flip:I

    const/high16 v3, -0x1000000

    const/4 v4, -0x1

    sget v0, Lorg/telegram/messenger/R$string;->VoipFlip:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    goto :goto_0

    .line 2204
    :cond_1
    sget v4, Lorg/telegram/messenger/R$drawable;->calls_flip:I

    const/4 v5, -0x1

    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    sget v0, Lorg/telegram/messenger/R$string;->VoipFlip:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p1

    move v1, v4

    move v2, v5

    move-object v4, v6

    move v5, v7

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 2207
    :goto_0
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method private setInsets(Landroid/view/WindowInsets;)V
    .locals 3

    .line 425
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    .line 426
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 427
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 428
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 429
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x44

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 437
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 440
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 441
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setInsets(Landroid/view/WindowInsets;)V

    .line 442
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setInsets(Landroid/view/WindowInsets;)V

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-eqz p1, :cond_0

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->setBottomPadding(I)V

    :cond_0
    return-void
.end method

.method private setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 15

    move-object v0, p0

    .line 2090
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2091
    sget v3, Lorg/telegram/messenger/R$drawable;->calls_unmute:I

    const/high16 v4, -0x1000000

    const/4 v5, -0x1

    sget v1, Lorg/telegram/messenger/R$string;->VoipUnmute:I

    const-string v2, "VoipUnmute"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v2, p1

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    goto :goto_0

    .line 2093
    :cond_0
    sget v9, Lorg/telegram/messenger/R$drawable;->calls_unmute:I

    const/4 v10, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    sget v1, Lorg/telegram/messenger/R$string;->VoipMute:I

    const-string v2, "VoipMute"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 2095
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    move/from16 v3, p3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setMuted(ZZ)V

    .line 2096
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 13

    move-object v7, p1

    move/from16 v8, p3

    .line 2175
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v0

    const/4 v9, 0x0

    const/16 v1, 0x1e

    const/4 v2, -0x1

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 2176
    sget v3, Lorg/telegram/messenger/R$drawable;->calls_bluetooth:I

    const/4 v4, -0x1

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    sget v0, Lorg/telegram/messenger/R$string;->VoipAudioRoutingBluetooth:I

    const-string v1, "VoipAudioRoutingBluetooth"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    move-object v0, p1

    move v1, v3

    move v2, v4

    move v3, v5

    move-object v4, v6

    move v5, v11

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 2177
    invoke-virtual {p1, v9, v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setChecked(ZZ)V

    goto :goto_0

    .line 2178
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v0

    const-string v3, "VoipSpeaker"

    if-eqz v0, :cond_1

    .line 2179
    sget v1, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    const/high16 v2, -0x1000000

    const/4 v4, -0x1

    sget v0, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    move v3, v4

    move-object v4, v5

    move v5, v6

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 2180
    invoke-virtual {p1, v10, v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setChecked(ZZ)V

    goto :goto_0

    .line 2182
    :cond_1
    sget v4, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    const/4 v5, -0x1

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    sget v0, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v0, p1

    move v1, v4

    move v2, v5

    move v3, v6

    move-object v4, v11

    move v5, v12

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 2183
    invoke-virtual {p1, v9, v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setChecked(ZZ)V

    .line 2185
    :goto_0
    invoke-virtual {p1, v10}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setCheckableForAccessibility(Z)V

    .line 2186
    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2187
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda13;

    move-object v1, p0

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setVideoAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 9

    .line 2118
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/4 v7, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2121
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v7

    :goto_1
    const/16 v1, 0x1e

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    .line 2124
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_3

    .line 2125
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$drawable;->calls_sharescreen:I

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->calls_video:I

    :goto_2
    move v3, v0

    const/4 v4, -0x1

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    sget v0, Lorg/telegram/messenger/R$string;->VoipStopVideo:I

    const-string v1, "VoipStopVideo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v0, p1

    move v1, v3

    move v2, v4

    move v3, v5

    move-object v4, v6

    move v5, v8

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    goto :goto_3

    .line 2127
    :cond_3
    sget v1, Lorg/telegram/messenger/R$drawable;->calls_video:I

    const/high16 v2, -0x1000000

    const/4 v3, -0x1

    sget v0, Lorg/telegram/messenger/R$string;->VoipStartVideo:I

    const-string v4, "VoipStartVideo"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    :goto_3
    const/high16 v0, 0x40600000    # 3.5f

    .line 2129
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setCrossOffset(F)V

    .line 2130
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2148
    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_4

    .line 2150
    :cond_4
    sget v3, Lorg/telegram/messenger/R$drawable;->calls_video:I

    const/16 v0, 0x7f

    invoke-static {v2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    const/4 v6, 0x0

    const-string v7, "Video"

    move-object v0, p1

    move v1, v3

    move v2, v4

    move v3, v5

    move-object v4, v7

    move v5, v6

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    const/4 v0, 0x0

    .line 2151
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 2152
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_4
    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/VoIPFragment;->show(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public static show(Landroid/app/Activity;ZI)V
    .locals 7

    .line 244
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 245
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 247
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 248
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 249
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 251
    sput-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    .line 253
    :cond_1
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 256
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 257
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_3

    .line 260
    :cond_4
    new-instance v2, Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v2, p2}, Lorg/telegram/ui/VoIPFragment;-><init>(I)V

    .line 261
    iput-object p0, v2, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    .line 262
    sput-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    .line 263
    new-instance p2, Lorg/telegram/ui/VoIPFragment$1;

    xor-int/lit8 v3, v0, 0x1

    invoke-direct {p2, p0, v3, v2}, Lorg/telegram/ui/VoIPFragment$1;-><init>(Landroid/app/Activity;ZLorg/telegram/ui/VoIPFragment;)V

    .line 313
    sget-object v3, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    const-string v3, "power"

    .line 315
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 317
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_5

    .line 318
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    goto :goto_1

    .line 320
    :cond_5
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 322
    :goto_1
    sget-object v6, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    xor-int/2addr v1, v3

    iput-boolean v1, v6, Lorg/telegram/ui/VoIPFragment;->screenWasWakeup:Z

    .line 323
    iget-boolean v1, v6, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 324
    iput-object p2, v2, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-lt v4, v5, :cond_6

    .line 327
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, v2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_6
    const-string v1, "window"

    .line 339
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 340
    invoke-virtual {p2}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->createWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz p1, :cond_8

    const/16 p1, 0x1a

    if-lt v4, p1, :cond_7

    const/16 p1, 0x7f6

    .line 343
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    :cond_7
    const/16 p1, 0x7d3

    .line 345
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 348
    :cond_8
    :goto_2
    invoke-interface {v1, p2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    invoke-virtual {v2, p0}, Lorg/telegram/ui/VoIPFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    .line 350
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    .line 353
    iput p0, v2, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 354
    invoke-virtual {v2}, Lorg/telegram/ui/VoIPFragment;->startTransitionFromPiP()V

    goto :goto_3

    :cond_9
    const/high16 p0, 0x3f800000    # 1.0f

    .line 356
    iput p0, v2, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 357
    invoke-direct {v2}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    :cond_a
    :goto_3
    return-void
.end method

.method private showAcceptDeclineView(ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 1979
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 1981
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1982
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1983
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 1984
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1985
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1987
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    if-nez p1, :cond_4

    .line 1989
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1990
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1991
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VoIPFragment$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$19;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1996
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2000
    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2001
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private showCallingUserAvatarMini(ZZ)V
    .locals 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const-wide/16 v4, 0x96

    const/16 p2, 0x87

    if-eqz p1, :cond_0

    .line 1891
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1892
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1893
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1896
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_3

    .line 1897
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1898
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1899
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/VoIPFragment$18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$18;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    .line 1900
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 1905
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 1908
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1909
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1910
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1911
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1913
    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2409
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2412
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->VoipFailed:I

    const-string v2, "VoipFailed"

    .line 2413
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 2414
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    .line 2415
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 2416
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 2417
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2418
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showFloatingLayout(IZ)V
    .locals 10

    .line 1808
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1809
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    :cond_1
    if-nez p2, :cond_2

    .line 1811
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 1812
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1813
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const/16 v0, 0x8

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    .line 1817
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_11

    .line 1818
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_3

    .line 1819
    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1820
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 1822
    :cond_3
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v4, [Landroid/animation/Animator;

    .line 1823
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    .line 1824
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    aput v9, v8, v5

    aput v2, v8, v4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 1823
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1826
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    new-array v0, v1, [Landroid/animation/Animator;

    .line 1827
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v1, [F

    .line 1828
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v8

    aput v8, v7, v5

    aput v3, v7, v4

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    .line 1829
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v7

    aput v7, v1, v5

    aput v3, v1, v4

    invoke-static {v2, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1827
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1832
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    .line 1833
    new-instance v0, Lorg/telegram/ui/VoIPFragment$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$17;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1843
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1844
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x32

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1845
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto/16 :goto_5

    .line 1848
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 1852
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    move v6, p2

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    :goto_1
    if-eqz p2, :cond_b

    .line 1856
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_c

    .line 1857
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-ne p2, v0, :cond_9

    .line 1858
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1859
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1860
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1861
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1863
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_a

    .line 1864
    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1865
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 1867
    :cond_a
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    .line 1868
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_0

    .line 1869
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v5

    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    .line 1870
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v4

    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    .line 1871
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1868
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1873
    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v7, 0x96

    .line 1874
    invoke-virtual {p2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 1877
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1879
    :cond_c
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v1, :cond_e

    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget v0, p2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1880
    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    .line 1881
    iput-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 1883
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    if-ne p1, v1, :cond_f

    move v0, v4

    goto :goto_3

    :cond_f
    move v0, v5

    :goto_3
    invoke-virtual {p2, v0, v6}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setFloatingMode(ZZ)V

    if-eq p1, v1, :cond_10

    goto :goto_4

    :cond_10
    move v4, v5

    .line 1884
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 1886
    :cond_11
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showUi(Z)V
    .locals 10

    .line 1767
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1768
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    if-nez p1, :cond_1

    .line 1771
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v6, :cond_1

    .line 1772
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/16 v7, 0x32

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1773
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1774
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1775
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1776
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1777
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1778
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    new-array v0, v0, [F

    .line 1779
    iget v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    aput v6, v0, v2

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 1780
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1781
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1782
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1784
    iput-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1785
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1786
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v6, :cond_2

    .line 1787
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/HintView;->hide()V

    .line 1788
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1789
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1790
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1791
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1792
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1793
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1794
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    new-array v0, v0, [F

    .line 1795
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    aput v3, v0, v2

    aput v7, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 1796
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1797
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1798
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1799
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1802
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    .line 1803
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->requestFullscreen(Z)V

    .line 1804
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x50

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    :cond_3
    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private toggleCameraInput()V
    .locals 5

    .line 2233
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2235
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2237
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_0

    .line 2238
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamOn:I

    const-string v2, "AccDescrVoipCamOn"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2240
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamOff:I

    const-string v2, "AccDescrVoipCamOff"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2242
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2244
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-nez v1, :cond_7

    .line 2245
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    if-lt v1, v2, :cond_5

    .line 2246
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-nez v1, :cond_4

    .line 2247
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->createCaptureDevice(Z)V

    .line 2248
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2249
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    .line 2251
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 2252
    new-instance v0, Lorg/telegram/ui/VoIPFragment$21;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, v4}, Lorg/telegram/ui/VoIPFragment$21;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    .line 2273
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_3

    .line 2274
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->setBottomPadding(I)V

    .line 2276
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    return-void

    .line 2280
    :cond_5
    iput-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    .line 2281
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2282
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V

    .line 2284
    :cond_6
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->requestVideoCall(Z)V

    const/4 v1, 0x2

    .line 2285
    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    goto :goto_1

    .line 2288
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->saveCameraLastBitmap()V

    .line 2289
    invoke-virtual {v0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2290
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_8

    .line 2291
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->clearCamera()V

    .line 2294
    :cond_8
    :goto_1
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 2295
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_9
    return-void
.end method

.method private updateButtons(Z)V
    .locals 12

    .line 2005
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2009
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 2010
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 2011
    new-instance v3, Lorg/telegram/ui/VoIPFragment$20;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VoIPFragment$20;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v4, 0x96

    .line 2028
    invoke-virtual {v3, v4, v5}, Landroid/transition/Visibility;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v7}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v8, Landroid/transition/ChangeBounds;

    invoke-direct {v8}, Landroid/transition/ChangeBounds;-><init>()V

    .line 2029
    invoke-virtual {v8, v4, v5}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 2030
    const-class v3, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v2, v3, v1}, Landroid/transition/TransitionSet;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 2031
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-static {v3, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2034
    :cond_1
    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v2, v5, :cond_7

    const/16 v10, 0x11

    if-ne v2, v10, :cond_2

    goto/16 :goto_1

    .line 2054
    :cond_2
    sget-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v2, :cond_3

    return-void

    .line 2057
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v2, :cond_5

    .line 2058
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v2, v2, v9

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2059
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v2, :cond_6

    .line 2060
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2061
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 2064
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v2, v2, v9

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2065
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2066
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2068
    :cond_6
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2069
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v7

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_decline:I

    const/4 v2, -0x1

    const v3, -0xfe2d4

    sget v4, Lorg/telegram/messenger/R$string;->VoipEndCall:I

    const-string v5, "VoipEndCall"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 2072
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v7

    sget-object v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda20;->INSTANCE:Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda20;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 2035
    :cond_7
    :goto_1
    iget-object v10, v0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    const/16 v11, 0x8

    if-eqz v10, :cond_b

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v10, :cond_b

    if-ne v2, v5, :cond_b

    .line 2036
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v2, :cond_9

    .line 2037
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v2, v2, v9

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2038
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v2, :cond_a

    .line 2039
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 2042
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v2, v2, v9

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2043
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2045
    :cond_a
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2046
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    goto :goto_3

    .line 2048
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v8

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2052
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_4
    move v0, v9

    :goto_5
    const/4 v1, 0x4

    if-ge v9, v1, :cond_d

    .line 2081
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 2082
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v1, v9

    iput v0, v1, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animationDelay:I

    add-int/lit8 v0, v0, 0x10

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2086
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSpeakerPhoneIcon()V

    return-void
.end method

.method private updateKeyView(Z)V
    .locals 6

    .line 1917
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 1920
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1926
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1927
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getEncryptionKey()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1928
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getGA()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1929
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1931
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 1936
    :cond_2
    array-length v0, v1

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    .line 1937
    invoke-static {v0}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    .line 1939
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    .line 1940
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v3

    if-eqz v3, :cond_3

    const/16 v4, 0x16

    .line 1942
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v2, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1943
    invoke-virtual {v3}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->preload()V

    .line 1944
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1945
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1946
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1948
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Lorg/telegram/messenger/Emoji$EmojiDrawable;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1950
    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->checkEmojiLoaded(Z)V

    return-void
.end method

.method private updateSpeakerPhoneIcon()V
    .locals 2

    .line 2157
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2161
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2162
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_bluetooth:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2163
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2164
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2166
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2167
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_menu_headset:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2169
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_menu_phone:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateSystemBarColors()V
    .locals 4

    .line 2334
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    const/high16 v2, 0x42cc0000    # 102.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, -0x1000000

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2335
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBarValue:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2336
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2337
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateViewState()V
    .locals 19

    move-object/from16 v0, p0

    .line 1409
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v1, :cond_4c

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v1, :cond_0

    goto/16 :goto_27

    :cond_0
    const/4 v1, 0x0

    .line 1412
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    .line 1413
    iget v2, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1419
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    .line 1421
    iget v5, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v5, v4, :cond_10

    if-eq v5, v8, :cond_10

    if-eq v5, v7, :cond_e

    const/4 v10, 0x4

    if-eq v5, v10, :cond_4

    if-eq v5, v6, :cond_e

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    .line 1460
    :pswitch_0
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipBusy:I

    const-string v11, "VoipBusy"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1461
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setRetryMod(Z)V

    .line 1462
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    .line 1463
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    move v5, v1

    move v10, v5

    :goto_1
    move v12, v10

    :goto_2
    move v13, v12

    move v11, v4

    goto/16 :goto_7

    .line 1451
    :pswitch_1
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipRinging:I

    const-string v11, "VoipRinging"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 1424
    :pswitch_2
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    const/16 v5, 0x18

    .line 1425
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 1426
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setRetryMod(Z)V

    if-eqz v3, :cond_3

    .line 1427
    iget-object v10, v3, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v10, :cond_3

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v10, :cond_3

    .line 1428
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v10, :cond_2

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v10, :cond_2

    move v10, v4

    goto :goto_3

    :cond_2
    move v10, v1

    .line 1433
    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v12, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    const-string v13, "VoipInVideoCallBranding"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1434
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    const/16 v12, 0x3c

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationY(F)V

    move v12, v1

    goto :goto_2

    .line 1436
    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v11, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    const-string v12, "VoipInCallBranding"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1437
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v10, v9}, Landroid/view/View;->setTranslationY(F)V

    move v10, v1

    goto :goto_1

    .line 1454
    :pswitch_3
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipRequesting:I

    const-string v11, "VoipRequesting"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 1448
    :pswitch_4
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipWaiting:I

    const-string v11, "VoipWaiting"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 1445
    :pswitch_5
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipExchangingKeys:I

    const-string v11, "VoipExchangingKeys"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 1474
    :pswitch_6
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->saveCameraLastBitmap()V

    .line 1475
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda24;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v10, 0xc8

    invoke-static {v5, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    .line 1478
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipFailed:I

    const-string v11, "VoipFailed"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1479
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    const-string v12, "ERROR_UNKNOWN"

    if-eqz v5, :cond_5

    .line 1480
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getLastError()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object v5, v12

    .line 1481
    :goto_4
    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    const-wide/16 v13, 0x3e8

    if-nez v12, :cond_d

    const-string v12, "ERROR_INCOMPATIBLE"

    .line 1482
    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1483
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1484
    sget v10, Lorg/telegram/messenger/R$string;->VoipPeerIncompatible:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v1

    const-string v5, "VoipPeerIncompatible"

    invoke-static {v5, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1485
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_6
    const-string v12, "ERROR_PEER_OUTDATED"

    .line 1486
    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1487
    iget-boolean v5, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-eqz v5, :cond_7

    .line 1488
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1489
    sget v12, Lorg/telegram/messenger/R$string;->VoipPeerVideoOutdated:I

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v5, v13, v1

    const-string v5, "VoipPeerVideoOutdated"

    invoke-static {v5, v12, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v12, v4, [Z

    .line 1491
    new-instance v13, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;

    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {v13, v14}, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1492
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v10

    .line 1493
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    sget v10, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v11, "Cancel"

    .line 1494
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v5, v10, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    sget v10, Lorg/telegram/messenger/R$string;->VoipPeerVideoOutdatedMakeVoice:I

    const-string v11, "VoipPeerVideoOutdatedMakeVoice"

    .line 1495
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda7;

    invoke-direct {v11, v0, v12}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/VoIPFragment;[Z)V

    invoke-virtual {v5, v10, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    .line 1511
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    .line 1512
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1513
    new-instance v10, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0, v12}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/VoIPFragment;[Z)V

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_5

    .line 1519
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1520
    sget v10, Lorg/telegram/messenger/R$string;->VoipPeerOutdated:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v1

    const-string v5, "VoipPeerOutdated"

    invoke-static {v5, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1521
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_8
    const-string v10, "ERROR_PRIVACY"

    .line 1523
    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1524
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1525
    sget v10, Lorg/telegram/messenger/R$string;->CallNotAvailable:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v1

    const-string v5, "CallNotAvailable"

    invoke-static {v5, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1526
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_9
    const-string v10, "ERROR_AUDIO_IO"

    .line 1527
    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v5, "Error initializing audio hardware"

    .line 1528
    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    const-string v10, "ERROR_LOCALIZED"

    .line 1529
    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1530
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    goto :goto_5

    :cond_b
    const-string v10, "ERROR_CONNECTION_SERVICE"

    .line 1531
    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1532
    sget v5, Lorg/telegram/messenger/R$string;->VoipErrorUnknown:I

    const-string v10, "VoipErrorUnknown"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1534
    :cond_c
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda21;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {v5, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 1537
    :cond_d
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda26;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {v5, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 1467
    :cond_e
    invoke-direct {v0, v2}, Lorg/telegram/ui/VoIPFragment;->updateKeyView(Z)V

    .line 1469
    iget v5, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-ne v5, v6, :cond_f

    move v5, v1

    move v10, v5

    move v11, v10

    move v12, v4

    goto :goto_6

    :cond_f
    move v5, v1

    move v10, v5

    move v11, v10

    move v13, v11

    move v12, v4

    goto :goto_7

    .line 1442
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipConnecting:I

    const-string v11, "VoipConnecting"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    :goto_5
    move v5, v1

    move v10, v5

    move v11, v10

    move v12, v11

    :goto_6
    move v13, v12

    .line 1541
    :goto_7
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-eqz v14, :cond_11

    return-void

    :cond_11
    if-eqz v3, :cond_15

    .line 1546
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result v14

    if-ne v14, v8, :cond_12

    move v14, v4

    goto :goto_8

    :cond_12
    move v14, v1

    :goto_8
    iput-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    .line 1547
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v14

    if-eq v14, v8, :cond_14

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v14

    if-ne v14, v4, :cond_13

    goto :goto_9

    :cond_13
    move v14, v1

    goto :goto_a

    :cond_14
    :goto_9
    move v14, v4

    :goto_a
    iput-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v14, :cond_15

    .line 1548
    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez v14, :cond_15

    .line 1549
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    :cond_15
    if-eqz v2, :cond_16

    .line 1554
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->saveRelativePosition()V

    .line 1555
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->saveRelativePosition()V

    .line 1558
    :cond_16
    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    const-wide/16 v6, 0xfa

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v14, :cond_19

    .line 1559
    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-nez v14, :cond_17

    .line 1560
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    :cond_17
    if-eqz v2, :cond_18

    .line 1563
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_b

    .line 1565
    :cond_18
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1566
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1568
    :goto_b
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v14, v14, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v14}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v14

    if-nez v14, :cond_19

    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->enterFromPiP:Z

    if-nez v14, :cond_19

    .line 1569
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    .line 1573
    :cond_19
    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v14, :cond_1c

    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v14, :cond_1a

    goto :goto_c

    .line 1576
    :cond_1a
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/VoIPFragment;->fillNavigationBar(ZZ)V

    .line 1577
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_1b

    .line 1579
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_d

    .line 1581
    :cond_1b
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1582
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_d

    .line 1574
    :cond_1c
    :goto_c
    invoke-direct {v0, v4, v2}, Lorg/telegram/ui/VoIPFragment;->fillNavigationBar(ZZ)V

    .line 1586
    :goto_d
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v6, :cond_1d

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v7, :cond_1e

    .line 1587
    :cond_1d
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    :cond_1e
    if-eqz v6, :cond_1f

    .line 1590
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v6, :cond_1f

    move v6, v4

    goto :goto_e

    :cond_1f
    move v6, v1

    .line 1592
    :goto_e
    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/VoIPFragment;->showCallingUserAvatarMini(ZZ)V

    .line 1593
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_20

    move v7, v1

    goto :goto_f

    :cond_20
    const/16 v7, 0x87

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/16 v10, 0xc

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v7, v10

    :goto_f
    add-int/2addr v5, v7

    .line 1594
    invoke-direct {v0, v11, v2}, Lorg/telegram/ui/VoIPFragment;->showAcceptDeclineView(ZZ)V

    .line 1595
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v10, :cond_22

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    if-eqz v10, :cond_21

    goto :goto_10

    :cond_21
    move v10, v1

    goto :goto_11

    :cond_22
    :goto_10
    move v10, v4

    :goto_11
    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 1596
    iget v7, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v10, 0x3

    if-ne v7, v10, :cond_24

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v7, :cond_23

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v7, :cond_24

    :cond_23
    move v7, v4

    goto :goto_12

    :cond_24
    move v7, v1

    :goto_12
    iput-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-nez v7, :cond_25

    .line 1597
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v7, :cond_25

    .line 1598
    invoke-direct {v0, v4}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    .line 1601
    :cond_25
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v7, :cond_26

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-eqz v7, :cond_26

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    if-nez v7, :cond_26

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v7

    if-nez v7, :cond_26

    .line 1602
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xbb8

    invoke-static {v7, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1603
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    goto :goto_13

    :cond_26
    if-eqz v3, :cond_27

    .line 1604
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1605
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1606
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1608
    :cond_27
    :goto_13
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v7, :cond_28

    const/16 v7, 0x32

    .line 1609
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v5, v7

    :cond_28
    const/16 v7, 0x50

    const/16 v10, 0x10

    move v14, v5

    const-wide/16 v4, 0x96

    if-eqz v2, :cond_2d

    .line 1613
    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v11, :cond_2a

    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v11, :cond_29

    goto :goto_14

    .line 1620
    :cond_29
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_15

    .line 1614
    :cond_2a
    :goto_14
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_2b

    .line 1615
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1616
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1618
    :cond_2b
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1622
    :goto_15
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    iget-boolean v15, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v15, :cond_2c

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_16

    :cond_2c
    move v7, v1

    :goto_16
    sub-int/2addr v10, v7

    int-to-float v7, v10

    invoke-virtual {v11, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_19

    .line 1624
    :cond_2d
    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v11, :cond_2e

    .line 1625
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1627
    :cond_2e
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    iget-boolean v15, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-eqz v15, :cond_2f

    move v15, v9

    goto :goto_17

    :cond_2f
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_17
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1628
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    iget-boolean v15, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v15, :cond_30

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_18

    :cond_30
    move v7, v1

    :goto_18
    sub-int/2addr v10, v7

    int-to-float v7, v10

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1631
    :goto_19
    iget v7, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v10, 0xa

    const/16 v11, 0xb

    if-eq v7, v10, :cond_31

    if-eq v7, v11, :cond_31

    .line 1632
    invoke-direct {v0, v2}, Lorg/telegram/ui/VoIPFragment;->updateButtons(Z)V

    :cond_31
    if-eqz v12, :cond_32

    .line 1636
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showTimer(Z)V

    .line 1639
    :cond_32
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v7, v13, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showReconnect(ZZ)V

    if-eqz v2, :cond_33

    .line 1642
    iget v7, v0, Lorg/telegram/ui/VoIPFragment;->statusLayoutAnimateToOffset:I

    if-eq v14, v7, :cond_34

    .line 1643
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    int-to-float v10, v14

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1a

    .line 1646
    :cond_33
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    int-to-float v10, v14

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1648
    :cond_34
    :goto_1a
    iput v14, v0, Lorg/telegram/ui/VoIPFragment;->statusLayoutAnimateToOffset:I

    .line 1649
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v10, :cond_36

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v10, :cond_35

    goto :goto_1b

    :cond_35
    move v10, v1

    goto :goto_1c

    :cond_36
    :goto_1b
    const/4 v10, 0x1

    :goto_1c
    invoke-virtual {v7, v10, v2}, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;->setShowBlackout(ZZ)V

    .line 1650
    iget v7, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-eq v7, v11, :cond_38

    const/16 v10, 0x11

    if-eq v7, v10, :cond_38

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v7, :cond_37

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v7, :cond_38

    :cond_37
    const/4 v11, 0x1

    goto :goto_1d

    :cond_38
    move v11, v1

    :goto_1d
    iput-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    const/4 v7, 0x0

    if-eqz v3, :cond_45

    .line 1654
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v10, :cond_39

    .line 1655
    iget-object v10, v3, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    .line 1657
    :cond_39
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v12

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setIsScreencast(Z)V

    .line 1658
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v12

    invoke-virtual {v10, v12}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 1659
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v10, :cond_3a

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v10

    if-nez v10, :cond_3a

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    goto :goto_1e

    :cond_3a
    move-object v10, v7

    :goto_1e
    if-eqz v6, :cond_3b

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    goto :goto_1f

    :cond_3b
    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v12, v12, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    :goto_1f
    invoke-virtual {v3, v10, v12}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    if-eqz v2, :cond_3c

    .line 1662
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->beforeLayoutChanges()V

    .line 1664
    :cond_3c
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const-string v12, "VoipUserMicrophoneIsOff"

    const-string v13, "video"

    const-string v14, "muted"

    if-nez v10, :cond_3d

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v10, :cond_41

    :cond_3d
    iget v10, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v15, 0x3

    if-eq v10, v15, :cond_3e

    const/4 v15, 0x5

    if-ne v10, v15, :cond_41

    :cond_3e
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v15

    const-wide/16 v17, 0x1f4

    cmp-long v10, v15, v17

    if-lez v10, :cond_41

    .line 1665
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteAudioState()I

    move-result v10

    if-nez v10, :cond_3f

    .line 1666
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v15, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    sget v11, Lorg/telegram/messenger/R$string;->VoipUserMicrophoneIsOff:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v12, v11, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v15, v4, v14, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_20

    .line 1668
    :cond_3f
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 1670
    :goto_20
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result v4

    if-nez v4, :cond_40

    .line 1671
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v5, Lorg/telegram/messenger/R$drawable;->calls_camera_mini:I

    sget v10, Lorg/telegram/messenger/R$string;->VoipUserCameraIsOff:I

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v1

    const-string v14, "VoipUserCameraIsOff"

    invoke-static {v14, v10, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10, v13, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_22

    .line 1673
    :cond_40
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    goto :goto_22

    .line 1676
    :cond_41
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteAudioState()I

    move-result v4

    if-nez v4, :cond_42

    .line 1677
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v5, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    sget v10, Lorg/telegram/messenger/R$string;->VoipUserMicrophoneIsOff:I

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Object;

    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v1

    invoke-static {v12, v10, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10, v14, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_21

    .line 1679
    :cond_42
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 1681
    :goto_21
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 1684
    :goto_22
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_43

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v4, :cond_43

    iget-object v4, v3, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v4, :cond_43

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-nez v4, :cond_43

    iget-object v3, v3, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    iget-boolean v4, v3, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    if-nez v4, :cond_43

    const/4 v4, 0x1

    .line 1685
    iput-boolean v4, v3, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    .line 1686
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    goto :goto_23

    .line 1687
    :cond_43
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_44

    .line 1688
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_44
    :goto_23
    if-eqz v2, :cond_45

    .line 1692
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->animateLayoutChanges()V

    .line 1696
    :cond_45
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->getChildsHight()I

    move-result v3

    .line 1698
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setBottomOffset(IZ)V

    .line 1699
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setBottomOffset(IZ)V

    .line 1700
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    .line 1701
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    .line 1703
    iget-boolean v3, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v3, :cond_48

    .line 1704
    iget-boolean v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v3, :cond_47

    iget-boolean v3, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v3, :cond_46

    goto :goto_24

    .line 1707
    :cond_46
    invoke-direct {v0, v8, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    const/4 v3, 0x1

    goto :goto_25

    :cond_47
    :goto_24
    const/4 v3, 0x1

    .line 1705
    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    goto :goto_25

    :cond_48
    const/4 v3, 0x1

    .line 1710
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    :goto_25
    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v6, :cond_4a

    .line 1713
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4a

    .line 1714
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setIsActive(Z)V

    .line 1715
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_49

    .line 1716
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1717
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1718
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1719
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1721
    :cond_49
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1722
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1723
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_26

    :cond_4a
    if-nez v6, :cond_4b

    .line 1724
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 1725
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setIsActive(Z)V

    .line 1726
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$16;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    .line 1733
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1734
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1737
    :cond_4b
    :goto_26
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->restoreRelativePosition()V

    .line 1738
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->restoreRelativePosition()V

    .line 1740
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateSpeakerPhoneIcon()V

    :cond_4c
    :goto_27
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createPiPTransition(Z)Landroid/animation/Animator;
    .locals 26

    move-object/from16 v15, p0

    .line 1230
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1232
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1236
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->xOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1237
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->yOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1239
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    .line 1240
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v7

    .line 1241
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1250
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->isExpanding()Z

    move-result v2

    const v4, 0x3ecccccd    # 0.4f

    if-eqz v2, :cond_1

    move v14, v4

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3e800000    # 0.25f

    move v14, v2

    .line 1252
    :goto_0
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v6, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v14

    sub-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v12, v0, v2

    .line 1253
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v8, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v14

    sub-float/2addr v2, v8

    div-float/2addr v2, v6

    sub-float v11, v1, v2

    .line 1254
    iget-boolean v2, v15, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    const/4 v10, 0x4

    const/high16 v19, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 1255
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 1256
    iget-boolean v9, v15, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    .line 1257
    iget-object v9, v15, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    int-to-float v2, v2

    div-float/2addr v9, v2

    mul-float/2addr v9, v14

    mul-float/2addr v9, v4

    .line 1258
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v8, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    sub-float/2addr v2, v8

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 1259
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    add-float/2addr v0, v2

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 1260
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v8, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    sub-float/2addr v2, v8

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    .line 1261
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    add-float/2addr v1, v2

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move/from16 v0, v19

    move v1, v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_1
    move v6, v0

    move v8, v1

    move v4, v9

    goto :goto_2

    .line 1270
    :cond_3
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 1271
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    move v6, v0

    move v8, v1

    move v4, v14

    const/4 v2, 0x1

    .line 1274
    :goto_2
    iget-boolean v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move v9, v0

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 1275
    :goto_3
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v19

    div-float v10, v0, v4

    const/high16 v22, 0x3f800000    # 1.0f

    .line 1279
    iget-boolean v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_6

    .line 1280
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v0, v19

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move v1, v0

    goto :goto_5

    :cond_6
    move/from16 v1, v19

    :goto_5
    if-eqz p1, :cond_8

    if-eqz v2, :cond_7

    .line 1285
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1286
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1287
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1288
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1289
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1290
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1292
    :cond_7
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1293
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1294
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1295
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1296
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v19

    div-float/2addr v13, v14

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    .line 1298
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1299
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setScaleX(F)V

    .line 1300
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setScaleY(F)V

    .line 1301
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 1302
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    const/4 v0, 0x2

    new-array v0, v0, [F

    if-eqz p1, :cond_9

    move/from16 v21, v19

    goto :goto_7

    :cond_9
    move/from16 v21, v13

    :goto_7
    const/16 v23, 0x0

    aput v21, v0, v23

    if-eqz p1, :cond_a

    move/from16 v20, v13

    goto :goto_8

    :cond_a
    move/from16 v20, v19

    :goto_8
    const/16 v21, 0x1

    aput v20, v0, v21

    .line 1304
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v13, v19

    .line 1306
    :goto_9
    iput v13, v15, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 1307
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    .line 1311
    new-instance v13, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda3;

    move-object/from16 v24, v0

    move-object v0, v13

    move/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v11

    move/from16 v11, v22

    move/from16 v21, v12

    move/from16 v12, v19

    move-object/from16 v25, v13

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v15, v16

    move/from16 v16, v21

    move/from16 v18, v20

    invoke-direct/range {v0 .. v18}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/VoIPFragment;ZFFFFFFFFFFFFFFFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 542
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/VoIPFragment;->touchSlop:F

    .line 543
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 545
    new-instance v8, Lorg/telegram/ui/VoIPFragment$2;

    invoke-direct {v8, v0, v7}, Lorg/telegram/ui/VoIPFragment$2;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 700
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 701
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/high16 v10, -0x1000000

    .line 702
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 703
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    .line 704
    iput-object v8, v0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    const/4 v11, 0x1

    .line 705
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 706
    new-instance v1, Lorg/telegram/ui/VoIPFragment$3;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$3;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    .line 716
    new-instance v12, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZZZ)V

    iput-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 717
    iget-object v1, v12, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v2, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v1, v2}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 718
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    .line 719
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    .line 720
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FIT:I

    iput v3, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    .line 723
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 724
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 727
    new-instance v1, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    invoke-direct {v1, v3, v5}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 728
    sget-object v3, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;->PORTRAIT:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;

    invoke-static {v3}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;->ofDeviceScreen(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;

    move-result-object v3

    .line 729
    new-instance v5, Lorg/telegram/ui/VoIPFragment$4;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$4;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->startDithering(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;Lorg/telegram/ui/Components/BackgroundGradientDrawable$Listener;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 735
    new-instance v3, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-direct {v3, v7}, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    const/16 v5, 0x8

    .line 736
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 738
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda29;

    invoke-direct {v6, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 745
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6, v9}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v13, 0x0

    invoke-virtual {v3, v6, v13, v1, v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 747
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    .line 748
    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda30;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setDelegate(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;)V

    .line 749
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    .line 750
    iput-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 751
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-direct {v1, v7, v11, v9}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 752
    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setIsCamera(Z)V

    .line 753
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    .line 754
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setOnTapListener(Landroid/view/View$OnClickListener;)V

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 769
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    .line 770
    iput-boolean v11, v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->alwaysFloating:Z

    .line 771
    invoke-virtual {v1, v11, v9}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setFloatingMode(ZZ)V

    .line 772
    new-instance v1, Lorg/webrtc/TextureViewRenderer;

    invoke-direct {v1, v7}, Lorg/webrtc/TextureViewRenderer;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    .line 773
    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    .line 774
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v9}, Lorg/webrtc/TextureViewRenderer;->setIsCamera(Z)V

    .line 775
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v1, v3}, Lorg/webrtc/TextureViewRenderer;->setFpsReduction(F)V

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v2}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 778
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v2, -0xe4e0dd

    .line 779
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 780
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v6, -0x2

    const/16 v12, 0x11

    invoke-static {v3, v6, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v2, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setOnTapListener(Landroid/view/View$OnClickListener;)V

    .line 794
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 796
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 798
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 801
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    .line 802
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v15, v4, [I

    aput v9, v15, v9

    const/16 v6, 0x7f

    invoke-static {v10, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    aput v6, v15, v11

    invoke-direct {v2, v14, v15}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 803
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    const/16 v2, 0x8c

    const/16 v6, 0x50

    invoke-static {v3, v2, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v8, v1, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    .line 806
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v6, v4, [I

    const/16 v4, 0x66

    invoke-static {v10, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    aput v4, v6, v9

    aput v9, v6, v11

    invoke-direct {v14, v15, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    const/16 v4, 0x30

    invoke-static {v3, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    new-instance v1, Lorg/telegram/ui/VoIPFragment$5;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$5;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    .line 817
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 818
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x1e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v9, v9, v9, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 819
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 821
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    .line 832
    sget v2, Lorg/telegram/messenger/R$string;->CallEmojiKeyTooltip:I

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const-string v6, "CallEmojiKeyTooltip"

    invoke-static {v6, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 834
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 835
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 836
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v9

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 839
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v1

    .line 840
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 841
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    const/16 v19, 0x16

    const/16 v20, 0x16

    if-nez v1, :cond_0

    move/from16 v21, v9

    goto :goto_1

    :cond_0
    move/from16 v21, v2

    :goto_1
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    :cond_1
    new-instance v1, Lorg/telegram/ui/VoIPFragment$6;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$6;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    .line 869
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 870
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 871
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 873
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    .line 874
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4, v11}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/16 v6, 0x87

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v12, v10}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v4, v13, v10, v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 875
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v6, 0x2

    div-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 876
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 878
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/high16 v4, 0x41c00000    # 24.0f

    .line 879
    invoke-virtual {v1, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 880
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 881
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v1, v4, v6, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 882
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    const v10, 0x3f2aaaab

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v12, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v1, v4, v6, v10, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 884
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 885
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 886
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 887
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    .line 890
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 891
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 894
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 895
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v9, v9, v9, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 897
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v18, 0x87

    const/16 v19, 0x87

    const/16 v22, 0x44

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    const/16 v18, -0x2

    const/16 v20, 0x1

    const/16 v22, 0x11

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    const/16 v18, -0x1

    const/16 v20, 0x11

    const/16 v21, 0x18

    const/16 v22, 0x20

    const/16 v23, 0x18

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    move v1, v9

    :goto_2
    if-ge v1, v2, :cond_2

    .line 904
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v6, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v1

    .line 905
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 907
    :cond_2
    new-instance v1, Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    .line 908
    new-instance v4, Lorg/telegram/ui/VoIPFragment$7;

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPFragment$7;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setListener(Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;)V

    .line 949
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->screenWasWakeup:Z

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setScreenWasWakeup(Z)V

    .line 951
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    const/16 v4, 0x50

    const/4 v6, -0x2

    invoke-static {v3, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    const/16 v6, 0xba

    invoke-static {v3, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 954
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/16 v4, 0x4c

    .line 955
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 956
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 957
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v1, v10, v12, v13, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 958
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$string;->Back:I

    const-string v10, "Back"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 959
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/16 v6, 0x33

    const/16 v10, 0x38

    invoke-static {v10, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    new-instance v1, Lorg/telegram/ui/VoIPFragment$8;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$8;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    .line 973
    sget v6, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    const-string v12, "VoipSpeaker"

    invoke-static {v12, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 975
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v6, v12, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 976
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/16 v3, 0x35

    invoke-static {v10, v10, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 986
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->isLockOnScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 992
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 995
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    const/16 v3, 0x50

    .line 996
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 997
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda27;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->setOnViewsUpdated(Ljava/lang/Runnable;)V

    .line 1001
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    const/4 v12, -0x1

    const/16 v13, 0xc8

    const/16 v14, 0x50

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    new-instance v1, Lorg/telegram/ui/Components/HintView;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    .line 1004
    sget v3, Lorg/telegram/messenger/R$string;->TapToTurnCamera:I

    const-string v4, "TapToTurnCamera"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x33

    const/16 v15, 0x13

    const/16 v17, 0x13

    const/16 v18, 0x8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HintView;->setBottomOffset(I)V

    .line 1007
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1009
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 1011
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1013
    iget-boolean v2, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez v2, :cond_5

    .line 1014
    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v1, :cond_4

    move v9, v11

    :cond_4
    iput-boolean v9, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 1016
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->initRenderers()V

    :cond_6
    return-object v8

    nop

    :array_0
    .array-data 4
        -0xe4cab2
        -0xdaa483
    .end array-data
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 485
    sget p2, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    if-ne p1, p2, :cond_0

    .line 486
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 p2, 0x11

    if-ne p1, p2, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 490
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->initRenderers()V

    .line 491
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    goto :goto_0

    .line 493
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 494
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->updateKeyView(Z)V

    goto :goto_0

    .line 495
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    if-ne p1, p2, :cond_2

    .line 496
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 509
    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPFragment;->updateButtons(Z)V

    return-void
.end method

.method public synthetic onCameraFirstFrameAvailable()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraFirstFrameAvailable(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    return-void
.end method

.method public onCameraSwitch(Z)V
    .locals 0

    .line 523
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 524
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public onMediaStateUpdated(II)V
    .locals 0

    .line 514
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 515
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 516
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 518
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public onPauseInternal()V
    .locals 9

    .line 2360
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2363
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 2364
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    goto :goto_0

    .line 2366
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 2369
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result v3

    .line 2371
    iget-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 2372
    sget-object v4, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v4, v4, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    if-lt v1, v2, :cond_1

    .line 2373
    sget-object v6, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v6, v6, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v6, :cond_1

    .line 2374
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v6

    sub-int/2addr v4, v6

    .line 2376
    :cond_1
    sget-object v6, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v7, v6, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v8, v6, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v6, v6, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v7, v8, v6, v4, v5}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    if-lt v1, v2, :cond_2

    .line 2377
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_2

    .line 2378
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 2379
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 2383
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    .line 2384
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 2386
    invoke-virtual {v0, v5, v1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    :cond_4
    return-void
.end method

.method public onResumeInternal()V
    .locals 4

    .line 2392
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2393
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->finish()V

    .line 2395
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2397
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    .line 2398
    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2400
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    goto :goto_0

    .line 2402
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    .line 2405
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    return-void
.end method

.method public onScreenCastStart()V
    .locals 2

    .line 2226
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2229
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->dismiss(ZZ)V

    return-void
.end method

.method public onScreenOnChange(Z)V
    .locals 0

    return-void
.end method

.method public onSignalBarsCountChanged(I)V
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setSignalBarCount(I)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 474
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-eq v0, p1, :cond_0

    .line 475
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 476
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 477
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-eqz p1, :cond_0

    .line 478
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method public onVideoAvailableChange(Z)V
    .locals 1

    .line 529
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    if-eqz p1, :cond_0

    .line 530
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 531
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 533
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public startTransitionFromPiP()V
    .locals 3

    const/4 v0, 0x1

    .line 1169
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->enterFromPiP:Z

    .line 1170
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1171
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1172
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    .line 1173
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    .line 1175
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1176
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 1177
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    .line 1178
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1179
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->prepareForTransition()V

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1181
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public switchToPip()V
    .locals 7

    .line 1106
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1109
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    .line 1110
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1111
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 1112
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    sget-object v4, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v4, v4, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v4, :cond_1

    .line 1113
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1115
    :cond_1
    sget-object v4, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v5, v4, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v6, v4, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v4, v4, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v5, v6, v4, v1, v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    if-lt v2, v3, :cond_2

    .line 1116
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_2

    .line 1117
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 1118
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 1121
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1125
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1126
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1127
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1128
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1129
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1130
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1131
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1132
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1133
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1135
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1136
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    const/4 v0, 0x0

    .line 1137
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFragment;->createPiPTransition(Z)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 1143
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1144
    new-instance v1, Lorg/telegram/ui/VoIPFragment$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$12;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1163
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1164
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1165
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_5
    :goto_0
    return-void
.end method
