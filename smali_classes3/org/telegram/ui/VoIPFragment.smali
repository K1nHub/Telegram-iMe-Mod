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

.field animationIndex:I

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
    .locals 4

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    .line 113
    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-array v1, v0, [Landroid/widget/ImageView;

    .line 129
    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    new-array v0, v0, [Lorg/telegram/messenger/Emoji$EmojiDrawable;

    .line 130
    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Lorg/telegram/messenger/Emoji$EmojiDrawable;

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayPaint:Landroid/graphics/Paint;

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 168
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    const/4 v1, -0x1

    .line 184
    iput v1, p0, Lorg/telegram/ui/VoIPFragment;->animationIndex:I

    .line 190
    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v2, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 198
    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v2, p0, Lorg/telegram/ui/VoIPFragment;->navigationBarAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 204
    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v2, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    .line 230
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 420
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    .line 421
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    .line 422
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 423
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 424
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing()Z

    .line 425
    iput v1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 426
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 427
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 428
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 429
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->getFullscreenTextureView()Lorg/telegram/ui/Components/voip/VoIPTextureView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartDistance:F

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartDistance:F

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterX:F

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterX:F

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterX:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterX:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterY:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterY:F

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterY:F

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterY:F

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/VoIPFragment;I)I
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/VoIPFragment;I)I
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VoIPFragment;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VoIPFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    return-void
.end method

.method static synthetic access$2702(Lorg/telegram/ui/VoIPFragment;I)I
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->onBackPressed()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/VoIPFragment;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPWindowView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/VoIPFragment;)Lorg/webrtc/TextureViewRenderer;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    return-void
.end method

.method static synthetic access$4102(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/VoIPFragment;
    .locals 0

    .line 100
    sput-object p0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/AcceptDeclineView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/VoIPFragment;)Landroid/view/WindowInsets;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->finishZoom()V

    return-void
.end method

.method private checkEmojiLoaded(Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 1932
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

    .line 1938
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 1940
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1941
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 1943
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1944
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/16 v5, 0x1e

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1945
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

    .line 993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 996
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

    .line 999
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

    .line 366
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_2

    .line 367
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 369
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    sget-object v3, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v3, v3, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v3, :cond_0

    .line 370
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    sub-int/2addr v0, v3

    .line 372
    :cond_0
    sget-object v3, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-boolean v4, v3, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v4, :cond_1

    .line 373
    iget-object v4, v3, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v5, v3, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v3, v3, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v0, v6}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    if-lt v1, v2, :cond_1

    .line 374
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 376
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 380
    :cond_1
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 381
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 382
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 383
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    :cond_2
    const/4 v0, 0x0

    .line 385
    sput-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-void
.end method

.method private destroy()V
    .locals 2

    .line 433
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 437
    :cond_0
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 438
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 439
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private expandEmoji(Z)V
    .locals 7

    .line 1324
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eq v0, p1, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1327
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x96

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 1329
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1330
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1331
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    .line 1332
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x80

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 1334
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    .line 1335
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

    .line 1336
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xfa

    .line 1337
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1338
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1339
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1340
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1341
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1342
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1344
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1346
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1347
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1348
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1349
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1350
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    iget-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4, p1}, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;->setShowBlackout(ZZ)V

    .line 1352
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

    .line 1354
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1355
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1356
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1357
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1358
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1360
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    .line 1361
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/VoIPFragment$14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$14;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1371
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1373
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/VoIPFragment$15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$15;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1378
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    :goto_2
    return-void
.end method

.method private fillNavigationBar(ZZ)V
    .locals 4

    .line 1719
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_4

    .line 1723
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 1724
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1726
    :cond_2
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBarValue:F

    .line 1727
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1728
    :cond_4
    iget-boolean p2, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBar:Z

    if-eq p1, p2, :cond_7

    .line 1729
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    .line 1730
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    .line 1732
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBarValue:F

    aput v3, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_6
    aput v0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    .line 1733
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->navigationBarAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1734
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1735
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1736
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->naviagtionBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1738
    :cond_7
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBar:Z

    return-void
.end method

.method private finishZoom()V
    .locals 6

    .line 1013
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1014
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1015
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    .line 1017
    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 1018
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    .line 1019
    iget v4, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    .line 1020
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2, v3, v4}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/VoIPFragment;FFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$9;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1040
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1042
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    .line 1043
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

    .line 1006
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0

    .line 1009
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/VoIPFragment;
    .locals 1

    .line 389
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-object v0
.end method

.method private initRenderers()V
    .locals 5

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$10;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 1059
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

    .line 1072
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

    .line 1287
    invoke-virtual/range {p18 .. p18}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v1

    .line 1288
    iput v3, v0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 1289
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    if-eqz p1, :cond_0

    mul-float v4, p2, v3

    mul-float v5, p3, v1

    add-float/2addr v4, v5

    .line 1293
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1294
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1295
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p4, v3

    mul-float v6, p5, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1296
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p6, v3

    mul-float v6, p7, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1297
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p8, v3

    mul-float v6, p9, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1298
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p10, v3

    mul-float v6, p11, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    mul-float v4, p12, v3

    mul-float v5, p13, v1

    add-float/2addr v4, v5

    .line 1302
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1303
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    mul-float v5, p14, v3

    mul-float v6, p15, v1

    add-float/2addr v5, v6

    mul-float v6, p16, v3

    mul-float v7, p17, v1

    add-float/2addr v6, v7

    .line 1307
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1308
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1309
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v8, 0x4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v1

    mul-float v8, v8, v2

    div-float/2addr v8, v4

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    .line 1310
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    if-nez v2, :cond_1

    .line 1311
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setScreenshareMiniProgress(FZ)V

    .line 1314
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1315
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1316
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1317
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1318
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 0

    .line 957
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez p1, :cond_0

    .line 958
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$11()V
    .locals 1

    .line 968
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 969
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 709
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 711
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;->setBackground(Lorg/telegram/messenger/ImageReceiver$BitmapHolder;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(FZ)V
    .locals 1

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setScreenshareMiniProgress(FZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 4

    .line 725
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

    .line 726
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 727
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 729
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    const/4 p1, 0x1

    .line 730
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 731
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 732
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 733
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 4

    .line 753
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 754
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 755
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    .line 758
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 759
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 760
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 761
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 4

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 795
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 796
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz p1, :cond_1

    .line 797
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 2

    .line 948
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 951
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 952
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

    .line 1021
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    mul-float p1, p1, p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p4

    mul-float v1, v1, v0

    add-float/2addr p1, v1

    .line 1022
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    mul-float p2, p2, p4

    .line 1023
    iput p2, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    mul-float p3, p3, p4

    .line 1024
    iput p3, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    .line 1025
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 191
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    .line 192
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 199
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBarValue:F

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 206
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-nez v1, :cond_0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 208
    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    .line 209
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 210
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$28()V
    .locals 1

    .line 2292
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$requestInlinePermissions$30(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2400
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-eqz p1, :cond_0

    .line 2401
    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setFrontalCameraAction$27(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 2

    .line 2183
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2185
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2187
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2188
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamSwitchedToBack:I

    const-string v1, "AccDescrVoipCamSwitchedToBack"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2190
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamSwitchedToFront:I

    const-string v1, "AccDescrVoipCamSwitchedToFront"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2192
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2194
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setMicrohoneAction$23(Landroid/view/View;)V
    .locals 5

    .line 2072
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2074
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 2075
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    .line 2078
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrVoipMicOff:I

    const-string v4, "AccDescrVoipMicOff"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2080
    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrVoipMicOn:I

    const-string v4, "AccDescrVoipMicOn"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2082
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x0

    .line 2084
    invoke-virtual {v0, v1, p1, v2}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 2085
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 2086
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setSpeakerPhoneAction$26(Landroid/view/View;)V
    .locals 2

    .line 2163
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2164
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

    .line 2113
    iget-object p1, p1, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->cameraAlertWasShowed:Z

    .line 2114
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    return-void
.end method

.method private synthetic lambda$setVideoAction$25(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 2

    .line 2106
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x66

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    if-ge p2, v0, :cond_1

    .line 2109
    iget-object p2, p1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez p2, :cond_1

    iget-object p2, p1, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    iget-boolean p2, p2, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->cameraAlertWasShowed:Z

    if-nez p2, :cond_1

    .line 2110
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2111
    sget v0, Lorg/telegram/messenger/R$string;->VoipSwitchToVideoCall:I

    const-string v1, "VoipSwitchToVideoCall"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2112
    sget v0, Lorg/telegram/messenger/R$string;->VoipSwitch:I

    const-string v1, "VoipSwitch"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2116
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2117
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0

    .line 2119
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$show$3(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 298
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 299
    invoke-direct {p0, p2}, Lorg/telegram/ui/VoIPFragment;->setInsets(Landroid/view/WindowInsets;)V

    :cond_0
    const/16 p0, 0x1e

    if-lt p1, p0, :cond_1

    .line 302
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 304
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showErrorDialog$29(Landroid/content/DialogInterface;)V
    .locals 0

    .line 2393
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$startTransitionFromPiP$13(Landroid/animation/Animator;)V
    .locals 5

    const/4 v0, 0x0

    .line 1172
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1173
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->finish()V

    .line 1175
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

    .line 1176
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

    .line 1177
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

    .line 1178
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

    .line 1179
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

    .line 1180
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

    .line 1181
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

    .line 1182
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

    .line 1183
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

    .line 1185
    new-instance v0, Lorg/telegram/ui/VoIPFragment$13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$13;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1196
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1197
    invoke-virtual {p1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1198
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private synthetic lambda$startTransitionFromPiP$14()V
    .locals 4

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x1

    .line 1153
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFragment;->createPiPTransition(Z)Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1160
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1161
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1162
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1163
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1164
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1165
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1166
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1167
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1168
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1170
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iput-boolean v0, v2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToPip:Z

    .line 1171
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/animation/Animator;)V

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static synthetic lambda$updateButtons$22(Landroid/view/View;)V
    .locals 0

    .line 2048
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2049
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$16()V
    .locals 1

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$17(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1469
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$18([ZLandroid/content/DialogInterface;I)V
    .locals 3

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 1471
    aput-boolean p3, p1, p2

    const/16 p1, 0x11

    .line 1472
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 1473
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-class v1, Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1474
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v2, "user_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "is_outgoing"

    .line 1475
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "start_incall_activity"

    .line 1476
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "video_call"

    .line 1477
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "can_video_call"

    .line 1478
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1479
    iget p2, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    const-string p3, "account"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1481
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1483
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateViewState$19([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 1489
    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 1490
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$20()V
    .locals 1

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$21()V
    .locals 1

    .line 1512
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private onBackPressed()V
    .locals 3

    .line 332
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->dismiss(ZZ)V

    return-void

    .line 339
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v0, :cond_2

    .line 340
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    .line 342
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 343
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 344
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void

    .line 347
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz v0, :cond_3

    .line 348
    invoke-direct {p0, v1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    goto :goto_0

    .line 350
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    return-void

    .line 353
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v0, :cond_6

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 355
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFragment;->switchToPip()V

    goto :goto_0

    .line 357
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->requestInlinePermissions()V

    goto :goto_0

    .line 360
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_7
    :goto_0
    return-void
.end method

.method public static onPause()V
    .locals 1

    .line 2317
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2318
    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFragment;->onPauseInternal()V

    .line 2320
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2321
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->onPause()V

    :cond_1
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2275
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2276
    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 p2, 0x0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 2283
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2284
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void

    .line 2287
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, p2

    if-nez v0, :cond_1

    .line 2288
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    goto :goto_0

    .line 2290
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2291
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall()V

    .line 2292
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    new-instance p3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda22;

    invoke-direct {p3, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;I)V

    return-void

    :cond_2
    :goto_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_4

    .line 2298
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_3

    .line 2299
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void

    .line 2302
    :cond_3
    array-length p1, p3

    if-lez p1, :cond_4

    aget p1, p3, p2

    if-nez p1, :cond_4

    .line 2303
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    :cond_4
    return-void
.end method

.method public static onResume()V
    .locals 1

    .line 2326
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2327
    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFragment;->onResumeInternal()V

    .line 2329
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2330
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->onResume()V

    :cond_1
    return-void
.end method

.method private requestInlinePermissions()V
    .locals 2

    .line 2398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2399
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayPermissionDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 2403
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_0
    return-void
.end method

.method private setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 8

    .line 2170
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/16 v1, 0x1e

    const-string v2, "VoipFlip"

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 2171
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

    .line 2172
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 2173
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 2175
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2176
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2177
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

    .line 2179
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

    .line 2182
    :goto_0
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method private setInsets(Landroid/view/WindowInsets;)V
    .locals 3

    .line 395
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    .line 396
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 401
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

    .line 402
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

    .line 403
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

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setInsets(Landroid/view/WindowInsets;)V

    .line 412
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setInsets(Landroid/view/WindowInsets;)V

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 414
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-eqz p1, :cond_0

    .line 415
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

    .line 2065
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2066
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

    .line 2068
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

    .line 2070
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    move/from16 v3, p3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setMuted(ZZ)V

    .line 2071
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

    .line 2150
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v0

    const/4 v9, 0x0

    const/16 v1, 0x1e

    const/4 v2, -0x1

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 2151
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

    .line 2152
    invoke-virtual {p1, v9, v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setChecked(ZZ)V

    goto :goto_0

    .line 2153
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v0

    const-string v3, "VoipSpeaker"

    if-eqz v0, :cond_1

    .line 2154
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

    .line 2155
    invoke-virtual {p1, v10, v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setChecked(ZZ)V

    goto :goto_0

    .line 2157
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

    .line 2158
    invoke-virtual {p1, v9, v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setChecked(ZZ)V

    .line 2160
    :goto_0
    invoke-virtual {p1, v10}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setCheckableForAccessibility(Z)V

    .line 2161
    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2162
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda13;

    move-object v1, p0

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setVideoAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 9

    .line 2093
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/4 v7, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2096
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x1e

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    .line 2099
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_3

    .line 2100
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

    .line 2102
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

    .line 2104
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setCrossOffset(F)V

    .line 2105
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2123
    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_4

    .line 2125
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

    .line 2126
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 2127
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_4
    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/VoIPFragment;->show(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public static show(Landroid/app/Activity;ZI)V
    .locals 7

    .line 241
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 242
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 244
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 245
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 246
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 248
    sput-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    .line 250
    :cond_1
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 253
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 254
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

    .line 257
    :cond_4
    new-instance v2, Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v2, p2}, Lorg/telegram/ui/VoIPFragment;-><init>(I)V

    .line 258
    iput-object p0, v2, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    .line 259
    sput-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    .line 260
    new-instance p2, Lorg/telegram/ui/VoIPFragment$1;

    xor-int/lit8 v3, v0, 0x1

    invoke-direct {p2, p0, v3, v2}, Lorg/telegram/ui/VoIPFragment$1;-><init>(Landroid/app/Activity;ZLorg/telegram/ui/VoIPFragment;)V

    .line 283
    sget-object v3, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    const-string v3, "power"

    .line 285
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 287
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_5

    .line 288
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    goto :goto_1

    .line 290
    :cond_5
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 292
    :goto_1
    sget-object v6, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    xor-int/2addr v1, v3

    iput-boolean v1, v6, Lorg/telegram/ui/VoIPFragment;->screenWasWakeup:Z

    .line 293
    iget-boolean v1, v6, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 294
    iput-object p2, v2, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-lt v4, v5, :cond_6

    .line 297
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, v2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_6
    const-string v1, "window"

    .line 309
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 310
    invoke-virtual {p2}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->createWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz p1, :cond_8

    const/16 p1, 0x1a

    if-lt v4, p1, :cond_7

    const/16 p1, 0x7f6

    .line 313
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    :cond_7
    const/16 p1, 0x7d3

    .line 315
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 318
    :cond_8
    :goto_2
    invoke-interface {v1, p2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    invoke-virtual {v2, p0}, Lorg/telegram/ui/VoIPFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    .line 320
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    .line 323
    iput p0, v2, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 324
    invoke-virtual {v2}, Lorg/telegram/ui/VoIPFragment;->startTransitionFromPiP()V

    goto :goto_3

    :cond_9
    const/high16 p0, 0x3f800000    # 1.0f

    .line 326
    iput p0, v2, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 327
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

    .line 1954
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 1956
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1957
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1958
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 1959
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1960
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1962
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    if-nez p1, :cond_4

    .line 1964
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1965
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1966
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VoIPFragment$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$19;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1971
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1975
    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1976
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

    .line 1866
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1867
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1868
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1870
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1871
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

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1873
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1874
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

    .line 1875
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 1880
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 1883
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1884
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1885
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1886
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1888
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

    .line 2384
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2387
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->VoipFailed:I

    const-string v2, "VoipFailed"

    .line 2388
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 2389
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    .line 2390
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 2391
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 2392
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2393
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showFloatingLayout(IZ)V
    .locals 10

    .line 1783
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

    .line 1784
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    :cond_1
    if-nez p2, :cond_2

    .line 1786
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 1787
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1788
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

    .line 1792
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

    .line 1793
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_3

    .line 1794
    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1795
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 1797
    :cond_3
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v4, [Landroid/animation/Animator;

    .line 1798
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    .line 1799
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    aput v9, v8, v5

    aput v2, v8, v4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 1798
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1801
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

    .line 1802
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v1, [F

    .line 1803
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

    .line 1804
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v7

    aput v7, v1, v5

    aput v3, v1, v4

    invoke-static {v2, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1802
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1807
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    .line 1808
    new-instance v0, Lorg/telegram/ui/VoIPFragment$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$17;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1818
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1819
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x32

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1820
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto/16 :goto_5

    .line 1823
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 1827
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
    const/4 v6, 0x0

    :goto_1
    if-eqz p2, :cond_b

    .line 1831
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

    .line 1832
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-ne p2, v0, :cond_9

    .line 1833
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1834
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1835
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1836
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1838
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_a

    .line 1839
    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1840
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 1842
    :cond_a
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    .line 1843
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_0

    .line 1844
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v5

    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    .line 1845
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v4

    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    .line 1846
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1843
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1848
    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v7, 0x96

    .line 1849
    invoke-virtual {p2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 1852
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1854
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

    .line 1855
    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    .line 1856
    iput-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 1858
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    if-ne p1, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_3

    :cond_f
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p2, v0, v6}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setFloatingMode(ZZ)V

    if-eq p1, v1, :cond_10

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    .line 1859
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 1861
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

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1743
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    if-nez p1, :cond_1

    .line 1746
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v6, :cond_1

    .line 1747
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

    .line 1748
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

    .line 1749
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

    .line 1750
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

    .line 1751
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

    .line 1752
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

    .line 1753
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

    .line 1754
    iget v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    aput v6, v0, v2

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 1755
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1756
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1759
    iput-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1761
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v6, :cond_2

    .line 1762
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/HintView;->hide()V

    .line 1763
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

    .line 1764
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

    .line 1765
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

    .line 1766
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

    .line 1767
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

    .line 1768
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

    .line 1769
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

    .line 1770
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    aput v3, v0, v2

    aput v7, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 1771
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1774
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1777
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->requestFullscreen(Z)V

    .line 1779
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

    .line 2208
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2210
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2212
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_0

    .line 2213
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamOn:I

    const-string v2, "AccDescrVoipCamOn"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2215
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamOff:I

    const-string v2, "AccDescrVoipCamOff"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2217
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2219
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-nez v1, :cond_7

    .line 2220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    if-lt v1, v2, :cond_5

    .line 2221
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-nez v1, :cond_4

    .line 2222
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->createCaptureDevice(Z)V

    .line 2223
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2224
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    .line 2226
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 2227
    new-instance v0, Lorg/telegram/ui/VoIPFragment$21;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, v4}, Lorg/telegram/ui/VoIPFragment$21;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    .line 2248
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_3

    .line 2249
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->setBottomPadding(I)V

    .line 2251
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    return-void

    .line 2255
    :cond_5
    iput-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    .line 2256
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2257
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V

    .line 2259
    :cond_6
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->requestVideoCall(Z)V

    const/4 v1, 0x2

    .line 2260
    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    goto :goto_1

    .line 2263
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->saveCameraLastBitmap()V

    .line 2264
    invoke-virtual {v0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2265
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_8

    .line 2266
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->clearCamera()V

    .line 2269
    :cond_8
    :goto_1
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 2270
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_9
    return-void
.end method

.method private updateButtons(Z)V
    .locals 12

    .line 1980
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1984
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 1985
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 1986
    new-instance v3, Lorg/telegram/ui/VoIPFragment$20;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VoIPFragment$20;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v4, 0x96

    .line 2003
    invoke-virtual {v3, v4, v5}, Landroid/transition/Visibility;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v7}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v8, Landroid/transition/ChangeBounds;

    invoke-direct {v8}, Landroid/transition/ChangeBounds;-><init>()V

    .line 2004
    invoke-virtual {v8, v4, v5}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 2005
    const-class v3, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v2, v3, v1}, Landroid/transition/TransitionSet;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 2006
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-static {v3, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2009
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

    .line 2029
    :cond_2
    sget-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v2, :cond_3

    return-void

    .line 2032
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v2, :cond_5

    .line 2033
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v2, v2, v9

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2034
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v2, :cond_6

    .line 2035
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2036
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 2039
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v2, v2, v9

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2040
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2041
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2043
    :cond_6
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2044
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2046
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

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v7

    sget-object v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda20;->INSTANCE:Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda20;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 2010
    :cond_7
    :goto_1
    iget-object v10, v0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    const/16 v11, 0x8

    if-eqz v10, :cond_b

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v10, :cond_b

    if-ne v2, v5, :cond_b

    .line 2011
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v2, :cond_9

    .line 2012
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v2, v2, v9

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2013
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v2, :cond_a

    .line 2014
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 2017
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v2, v2, v9

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2018
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2020
    :cond_a
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2021
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Lorg/telegram/messenger/voip/VoIPService;Z)V

    goto :goto_3

    .line 2023
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2024
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2025
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v8

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2027
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_4
    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x4

    if-ge v9, v1, :cond_d

    .line 2056
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 2057
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v1, v1, v9

    iput v0, v1, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animationDelay:I

    add-int/lit8 v0, v0, 0x10

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2061
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSpeakerPhoneIcon()V

    return-void
.end method

.method private updateKeyView(Z)V
    .locals 6

    .line 1892
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 1895
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1901
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1902
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getEncryptionKey()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1903
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getGA()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1904
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1906
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 1911
    :cond_2
    array-length v0, v1

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    .line 1912
    invoke-static {v0}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    .line 1914
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    .line 1915
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v3

    if-eqz v3, :cond_3

    const/16 v4, 0x16

    .line 1917
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v2, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1918
    invoke-virtual {v3}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->preload()V

    .line 1919
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1920
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1921
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1923
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Lorg/telegram/messenger/Emoji$EmojiDrawable;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1925
    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->checkEmojiLoaded(Z)V

    return-void
.end method

.method private updateSpeakerPhoneIcon()V
    .locals 2

    .line 2132
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2136
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2137
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_bluetooth:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2138
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2139
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2141
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2142
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_menu_headset:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2144
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_menu_phone:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateSystemBarColors()V
    .locals 4

    .line 2309
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    const/high16 v2, 0x42cc0000    # 102.0f

    mul-float v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v2, -0x1000000

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2310
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/VoIPFragment;->fillNaviagtionBarValue:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2311
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2312
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateViewState()V
    .locals 19

    move-object/from16 v0, p0

    .line 1384
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v1, :cond_4c

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v1, :cond_0

    goto/16 :goto_28

    :cond_0
    const/4 v1, 0x0

    .line 1387
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    .line 1388
    iget v2, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1394
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    .line 1396
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

    .line 1435
    :pswitch_0
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipBusy:I

    const-string v11, "VoipBusy"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1436
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setRetryMod(Z)V

    .line 1437
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    .line 1438
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    const/4 v5, 0x0

    :goto_1
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 1426
    :pswitch_1
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipRinging:I

    const-string v11, "VoipRinging"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 1399
    :pswitch_2
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    const/16 v5, 0x18

    .line 1400
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 1401
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setRetryMod(Z)V

    if-eqz v3, :cond_3

    .line 1402
    iget-object v10, v3, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v10, :cond_3

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v10, :cond_3

    .line 1403
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v10, :cond_2

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    .line 1408
    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v12, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    const-string v13, "VoipInVideoCallBranding"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1409
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    const/16 v12, 0x3c

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 1411
    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v11, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    const-string v12, "VoipInCallBranding"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1412
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v10, v9}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 1429
    :pswitch_3
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipRequesting:I

    const-string v11, "VoipRequesting"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 1423
    :pswitch_4
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipWaiting:I

    const-string v11, "VoipWaiting"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 1420
    :pswitch_5
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipExchangingKeys:I

    const-string v11, "VoipExchangingKeys"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 1449
    :pswitch_6
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->saveCameraLastBitmap()V

    .line 1450
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda24;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v10, 0xc8

    invoke-static {v5, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    .line 1453
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipFailed:I

    const-string v11, "VoipFailed"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1454
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    const-string v12, "ERROR_UNKNOWN"

    if-eqz v5, :cond_5

    .line 1455
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getLastError()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object v5, v12

    .line 1456
    :goto_4
    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    const-wide/16 v13, 0x3e8

    if-nez v12, :cond_d

    const-string v12, "ERROR_INCOMPATIBLE"

    .line 1457
    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1458
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1459
    sget v10, Lorg/telegram/messenger/R$string;->VoipPeerIncompatible:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v1

    const-string v5, "VoipPeerIncompatible"

    invoke-static {v5, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1460
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_6
    const-string v12, "ERROR_PEER_OUTDATED"

    .line 1461
    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1462
    iget-boolean v5, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-eqz v5, :cond_7

    .line 1463
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1464
    sget v12, Lorg/telegram/messenger/R$string;->VoipPeerVideoOutdated:I

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v5, v13, v1

    const-string v5, "VoipPeerVideoOutdated"

    invoke-static {v5, v12, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v12, v4, [Z

    .line 1466
    new-instance v13, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;

    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {v13, v14}, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1467
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v10

    .line 1468
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    sget v10, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v11, "Cancel"

    .line 1469
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v5, v10, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    sget v10, Lorg/telegram/messenger/R$string;->VoipPeerVideoOutdatedMakeVoice:I

    const-string v11, "VoipPeerVideoOutdatedMakeVoice"

    .line 1470
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda7;

    invoke-direct {v11, v0, v12}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/VoIPFragment;[Z)V

    invoke-virtual {v5, v10, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    .line 1486
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    .line 1487
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1488
    new-instance v10, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0, v12}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/VoIPFragment;[Z)V

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_5

    .line 1494
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1495
    sget v10, Lorg/telegram/messenger/R$string;->VoipPeerOutdated:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v1

    const-string v5, "VoipPeerOutdated"

    invoke-static {v5, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1496
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_8
    const-string v10, "ERROR_PRIVACY"

    .line 1498
    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1499
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1500
    sget v10, Lorg/telegram/messenger/R$string;->CallNotAvailable:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v5, v11, v1

    const-string v5, "CallNotAvailable"

    invoke-static {v5, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1501
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    const-string v10, "ERROR_AUDIO_IO"

    .line 1502
    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v5, "Error initializing audio hardware"

    .line 1503
    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    const-string v10, "ERROR_LOCALIZED"

    .line 1504
    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1505
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    goto :goto_5

    :cond_b
    const-string v10, "ERROR_CONNECTION_SERVICE"

    .line 1506
    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1507
    sget v5, Lorg/telegram/messenger/R$string;->VoipErrorUnknown:I

    const-string v10, "VoipErrorUnknown"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1509
    :cond_c
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda21;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {v5, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 1512
    :cond_d
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda26;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {v5, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 1442
    :cond_e
    invoke-direct {v0, v2}, Lorg/telegram/ui/VoIPFragment;->updateKeyView(Z)V

    .line 1444
    iget v5, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-ne v5, v6, :cond_f

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_7

    .line 1417
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipConnecting:I

    const-string v11, "VoipConnecting"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    :goto_5
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    const/4 v12, 0x0

    :goto_7
    const/4 v13, 0x0

    .line 1516
    :goto_8
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-eqz v14, :cond_11

    return-void

    :cond_11
    if-eqz v3, :cond_15

    .line 1521
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result v14

    if-ne v14, v8, :cond_12

    const/4 v14, 0x1

    goto :goto_9

    :cond_12
    const/4 v14, 0x0

    :goto_9
    iput-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    .line 1522
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v14

    if-eq v14, v8, :cond_14

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v14

    if-ne v14, v4, :cond_13

    goto :goto_a

    :cond_13
    const/4 v14, 0x0

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v14, 0x1

    :goto_b
    iput-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v14, :cond_15

    .line 1523
    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez v14, :cond_15

    .line 1524
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    :cond_15
    if-eqz v2, :cond_16

    .line 1529
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->saveRelativePosition()V

    .line 1530
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->saveRelativePosition()V

    .line 1533
    :cond_16
    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    const-wide/16 v6, 0xfa

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v14, :cond_19

    .line 1534
    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-nez v14, :cond_17

    .line 1535
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    :cond_17
    if-eqz v2, :cond_18

    .line 1538
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_c

    .line 1540
    :cond_18
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1541
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1543
    :goto_c
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v14, v14, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v14}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v14

    if-nez v14, :cond_19

    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->enterFromPiP:Z

    if-nez v14, :cond_19

    .line 1544
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    .line 1548
    :cond_19
    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v14, :cond_1c

    iget-boolean v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v14, :cond_1a

    goto :goto_d

    .line 1551
    :cond_1a
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/VoIPFragment;->fillNavigationBar(ZZ)V

    .line 1552
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_1b

    .line 1554
    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_e

    .line 1556
    :cond_1b
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1557
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_e

    .line 1549
    :cond_1c
    :goto_d
    invoke-direct {v0, v4, v2}, Lorg/telegram/ui/VoIPFragment;->fillNavigationBar(ZZ)V

    .line 1561
    :goto_e
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v6, :cond_1d

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v7, :cond_1e

    .line 1562
    :cond_1d
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    :cond_1e
    if-eqz v6, :cond_1f

    .line 1565
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_f

    :cond_1f
    const/4 v6, 0x0

    .line 1567
    :goto_f
    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/VoIPFragment;->showCallingUserAvatarMini(ZZ)V

    .line 1568
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_20

    const/4 v7, 0x0

    goto :goto_10

    :cond_20
    const/16 v7, 0x87

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/16 v10, 0xc

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v7, v10

    :goto_10
    add-int/2addr v5, v7

    .line 1569
    invoke-direct {v0, v11, v2}, Lorg/telegram/ui/VoIPFragment;->showAcceptDeclineView(ZZ)V

    .line 1570
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v10, :cond_22

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    if-eqz v10, :cond_21

    goto :goto_11

    :cond_21
    const/4 v10, 0x0

    goto :goto_12

    :cond_22
    :goto_11
    const/4 v10, 0x1

    :goto_12
    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 1571
    iget v7, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v10, 0x3

    if-ne v7, v10, :cond_24

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v7, :cond_23

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v7, :cond_24

    :cond_23
    const/4 v7, 0x1

    goto :goto_13

    :cond_24
    const/4 v7, 0x0

    :goto_13
    iput-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-nez v7, :cond_25

    .line 1572
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v7, :cond_25

    .line 1573
    invoke-direct {v0, v4}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    .line 1576
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

    .line 1577
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xbb8

    invoke-static {v7, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1578
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    goto :goto_14

    :cond_26
    if-eqz v3, :cond_27

    .line 1579
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1580
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1581
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1583
    :cond_27
    :goto_14
    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v7, :cond_28

    const/16 v7, 0x32

    .line 1584
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v5, v7

    :cond_28
    const/16 v7, 0x50

    const/16 v10, 0x10

    move v14, v5

    const-wide/16 v4, 0x96

    if-eqz v2, :cond_2d

    .line 1588
    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v11, :cond_2a

    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v11, :cond_29

    goto :goto_15

    .line 1595
    :cond_29
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_16

    .line 1589
    :cond_2a
    :goto_15
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_2b

    .line 1590
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1591
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1593
    :cond_2b
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1597
    :goto_16
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

    goto :goto_17

    :cond_2c
    const/4 v7, 0x0

    :goto_17
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

    goto :goto_1a

    .line 1599
    :cond_2d
    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v11, :cond_2e

    .line 1600
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1602
    :cond_2e
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    iget-boolean v15, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-eqz v15, :cond_2f

    const/4 v15, 0x0

    goto :goto_18

    :cond_2f
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_18
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1603
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    iget-boolean v15, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v15, :cond_30

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_19

    :cond_30
    const/4 v7, 0x0

    :goto_19
    sub-int/2addr v10, v7

    int-to-float v7, v10

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1606
    :goto_1a
    iget v7, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v10, 0xa

    const/16 v11, 0xb

    if-eq v7, v10, :cond_31

    if-eq v7, v11, :cond_31

    .line 1607
    invoke-direct {v0, v2}, Lorg/telegram/ui/VoIPFragment;->updateButtons(Z)V

    :cond_31
    if-eqz v12, :cond_32

    .line 1611
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showTimer(Z)V

    .line 1614
    :cond_32
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v7, v13, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showReconnect(ZZ)V

    if-eqz v2, :cond_33

    .line 1617
    iget v7, v0, Lorg/telegram/ui/VoIPFragment;->statusLayoutAnimateToOffset:I

    if-eq v14, v7, :cond_34

    .line 1618
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

    goto :goto_1b

    .line 1621
    :cond_33
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    int-to-float v10, v14

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1623
    :cond_34
    :goto_1b
    iput v14, v0, Lorg/telegram/ui/VoIPFragment;->statusLayoutAnimateToOffset:I

    .line 1624
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v10, :cond_36

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v10, :cond_35

    goto :goto_1c

    :cond_35
    const/4 v10, 0x0

    goto :goto_1d

    :cond_36
    :goto_1c
    const/4 v10, 0x1

    :goto_1d
    invoke-virtual {v7, v10, v2}, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;->setShowBlackout(ZZ)V

    .line 1625
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

    goto :goto_1e

    :cond_38
    const/4 v11, 0x0

    :goto_1e
    iput-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    const/4 v7, 0x0

    if-eqz v3, :cond_45

    .line 1629
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v10, :cond_39

    .line 1630
    iget-object v10, v3, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    .line 1632
    :cond_39
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v12

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setIsScreencast(Z)V

    .line 1633
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v12

    invoke-virtual {v10, v12}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 1634
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v10, :cond_3a

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v10

    if-nez v10, :cond_3a

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    goto :goto_1f

    :cond_3a
    move-object v10, v7

    :goto_1f
    if-eqz v6, :cond_3b

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    goto :goto_20

    :cond_3b
    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v12, v12, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    :goto_20
    invoke-virtual {v3, v10, v12}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    if-eqz v2, :cond_3c

    .line 1637
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->beforeLayoutChanges()V

    .line 1639
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

    .line 1640
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteAudioState()I

    move-result v10

    if-nez v10, :cond_3f

    .line 1641
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

    goto :goto_21

    .line 1643
    :cond_3f
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 1645
    :goto_21
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result v4

    if-nez v4, :cond_40

    .line 1646
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

    goto :goto_23

    .line 1648
    :cond_40
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    goto :goto_23

    .line 1651
    :cond_41
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteAudioState()I

    move-result v4

    if-nez v4, :cond_42

    .line 1652
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

    goto :goto_22

    .line 1654
    :cond_42
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 1656
    :goto_22
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 1659
    :goto_23
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

    .line 1660
    iput-boolean v4, v3, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    .line 1661
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    goto :goto_24

    .line 1662
    :cond_43
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_44

    .line 1663
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_44
    :goto_24
    if-eqz v2, :cond_45

    .line 1667
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->animateLayoutChanges()V

    .line 1671
    :cond_45
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->getChildsHight()I

    move-result v3

    .line 1673
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setBottomOffset(IZ)V

    .line 1674
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setBottomOffset(IZ)V

    .line 1675
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    .line 1676
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    .line 1678
    iget-boolean v3, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v3, :cond_48

    .line 1679
    iget-boolean v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v3, :cond_47

    iget-boolean v3, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v3, :cond_46

    goto :goto_25

    .line 1682
    :cond_46
    invoke-direct {v0, v8, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    const/4 v3, 0x1

    goto :goto_26

    :cond_47
    :goto_25
    const/4 v3, 0x1

    .line 1680
    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    goto :goto_26

    :cond_48
    const/4 v3, 0x1

    .line 1685
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    :goto_26
    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v6, :cond_4a

    .line 1688
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4a

    .line 1689
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setIsActive(Z)V

    .line 1690
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_49

    .line 1691
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1692
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1693
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1694
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1696
    :cond_49
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1697
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

    .line 1698
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_27

    :cond_4a
    if-nez v6, :cond_4b

    .line 1699
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 1700
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setIsActive(Z)V

    .line 1701
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

    .line 1708
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1709
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1712
    :cond_4b
    :goto_27
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->restoreRelativePosition()V

    .line 1713
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->restoreRelativePosition()V

    .line 1715
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateSpeakerPhoneIcon()V

    :cond_4c
    :goto_28
    return-void

    nop

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

    .line 1205
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1207
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1211
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

    .line 1212
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->yOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1214
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    .line 1215
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v7

    .line 1216
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1225
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->isExpanding()Z

    move-result v2

    const v4, 0x3ecccccd    # 0.4f

    if-eqz v2, :cond_1

    const v14, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v14, 0x3e800000    # 0.25f

    .line 1227
    :goto_0
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v6, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v14

    sub-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v12, v0, v2

    .line 1228
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v8, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v14

    sub-float/2addr v2, v8

    div-float/2addr v2, v6

    sub-float v11, v1, v2

    .line 1229
    iget-boolean v2, v15, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    const/4 v10, 0x4

    const/high16 v19, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 1230
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 1231
    iget-boolean v9, v15, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    .line 1232
    iget-object v9, v15, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    int-to-float v2, v2

    div-float/2addr v9, v2

    mul-float v9, v9, v14

    mul-float v9, v9, v4

    .line 1233
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v8, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v9

    sub-float/2addr v2, v8

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 1234
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    add-float/2addr v0, v2

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    mul-float v2, v2, v4

    sub-float/2addr v0, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 1235
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v8, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v9

    sub-float/2addr v2, v8

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    .line 1236
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    add-float/2addr v1, v2

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    mul-float v2, v2, v4

    sub-float/2addr v1, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_1
    move v6, v0

    move v8, v1

    move v4, v9

    goto :goto_2

    .line 1245
    :cond_3
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v14

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 1246
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v14

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    move v6, v0

    move v8, v1

    move v4, v14

    const/4 v2, 0x1

    .line 1249
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

    .line 1250
    :goto_3
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v19

    div-float v10, v0, v4

    const/high16 v22, 0x3f800000    # 1.0f

    .line 1254
    iget-boolean v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_6

    .line 1255
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move v1, v0

    goto :goto_5

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_5
    if-eqz p1, :cond_8

    if-eqz v2, :cond_7

    .line 1260
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1261
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1262
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1263
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1264
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1265
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1267
    :cond_7
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1268
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1269
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1270
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1271
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v19

    div-float/2addr v13, v14

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    .line 1273
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1274
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setScaleX(F)V

    .line 1275
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setScaleY(F)V

    .line 1276
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 1277
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    const/4 v0, 0x2

    new-array v0, v0, [F

    if-eqz p1, :cond_9

    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_9
    const/16 v21, 0x0

    :goto_7
    const/16 v23, 0x0

    aput v21, v0, v23

    if-eqz p1, :cond_a

    const/16 v20, 0x0

    goto :goto_8

    :cond_a
    const/high16 v20, 0x3f800000    # 1.0f

    :goto_8
    const/16 v21, 0x1

    aput v20, v0, v21

    .line 1279
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1281
    :goto_9
    iput v13, v15, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 1282
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    .line 1286
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

    .line 512
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/VoIPFragment;->touchSlop:F

    .line 513
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 515
    new-instance v8, Lorg/telegram/ui/VoIPFragment$2;

    invoke-direct {v8, v0, v7}, Lorg/telegram/ui/VoIPFragment$2;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 670
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 671
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/high16 v10, -0x1000000

    .line 672
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 673
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    .line 674
    iput-object v8, v0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    const/4 v11, 0x1

    .line 675
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 676
    new-instance v1, Lorg/telegram/ui/VoIPFragment$3;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$3;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    .line 686
    new-instance v12, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZZZ)V

    iput-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 687
    iget-object v1, v12, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v2, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v1, v2}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 688
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    .line 689
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    .line 690
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FIT:I

    iput v3, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    .line 693
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 694
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 697
    new-instance v1, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    invoke-direct {v1, v3, v5}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 698
    sget-object v3, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;->PORTRAIT:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;

    invoke-static {v3}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;->ofDeviceScreen(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;

    move-result-object v3

    .line 699
    new-instance v5, Lorg/telegram/ui/VoIPFragment$4;

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPFragment$4;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->startDithering(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;Lorg/telegram/ui/Components/BackgroundGradientDrawable$Listener;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 705
    new-instance v3, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-direct {v3, v7}, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    const/16 v5, 0x8

    .line 706
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda29;

    invoke-direct {v6, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 715
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6, v9}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v13, 0x0

    invoke-virtual {v3, v6, v13, v1, v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 717
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    .line 718
    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda30;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setDelegate(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;)V

    .line 719
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    .line 720
    iput-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 721
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-direct {v1, v7, v11, v9}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 722
    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setIsCamera(Z)V

    .line 723
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    .line 724
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setOnTapListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 737
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 739
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    .line 740
    iput-boolean v11, v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->alwaysFloating:Z

    .line 741
    invoke-virtual {v1, v11, v9}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setFloatingMode(ZZ)V

    .line 742
    new-instance v1, Lorg/webrtc/TextureViewRenderer;

    invoke-direct {v1, v7}, Lorg/webrtc/TextureViewRenderer;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    .line 743
    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    .line 744
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v9}, Lorg/webrtc/TextureViewRenderer;->setIsCamera(Z)V

    .line 745
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v1, v3}, Lorg/webrtc/TextureViewRenderer;->setFpsReduction(F)V

    .line 746
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v2}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 748
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v2, -0xe4e0dd

    .line 749
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 750
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v6, -0x2

    const/16 v12, 0x11

    invoke-static {v3, v6, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v2, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setOnTapListener(Landroid/view/View$OnClickListener;)V

    .line 764
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 768
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->overlayBackground:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 771
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    .line 772
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

    .line 773
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    const/16 v2, 0x8c

    const/16 v6, 0x50

    invoke-static {v3, v2, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v8, v1, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    .line 776
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

    .line 777
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    const/16 v4, 0x30

    invoke-static {v3, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    new-instance v1, Lorg/telegram/ui/VoIPFragment$5;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$5;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    .line 787
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 788
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x1e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v9, v9, v9, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 789
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 791
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    .line 802
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

    .line 803
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 804
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 805
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 806
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 809
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v1

    .line 810
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 811
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    const/16 v19, 0x16

    const/16 v20, 0x16

    if-nez v1, :cond_0

    const/16 v21, 0x0

    goto :goto_1

    :cond_0
    const/16 v21, 0x4

    :goto_1
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 813
    :cond_1
    new-instance v1, Lorg/telegram/ui/VoIPFragment$6;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$6;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    .line 839
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 840
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 841
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 843
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    .line 844
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

    .line 845
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v6, 0x2

    div-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 846
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 848
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/high16 v4, 0x41c00000    # 24.0f

    .line 849
    invoke-virtual {v1, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 850
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
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

    .line 852
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
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

    .line 854
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 855
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 856
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 857
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

    .line 859
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    .line 860
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 861
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 864
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 865
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v9, v9, v9, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 867
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v18, 0x87

    const/16 v19, 0x87

    const/16 v22, 0x44

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    const/16 v18, -0x2

    const/16 v20, 0x1

    const/16 v22, 0x11

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    const/16 v18, -0x1

    const/16 v20, 0x11

    const/16 v21, 0x18

    const/16 v22, 0x20

    const/16 v23, 0x18

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 872
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 874
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v6, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v1

    .line 875
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->bottomButtons:[Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 877
    :cond_2
    new-instance v1, Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    .line 878
    new-instance v4, Lorg/telegram/ui/VoIPFragment$7;

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPFragment$7;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setListener(Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;)V

    .line 919
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->screenWasWakeup:Z

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setScreenWasWakeup(Z)V

    .line 921
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    const/16 v4, 0x50

    const/4 v6, -0x2

    invoke-static {v3, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    const/16 v6, 0xba

    invoke-static {v3, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/16 v4, 0x4c

    .line 925
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 926
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 927
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

    .line 928
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$string;->Back:I

    const-string v10, "Back"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/16 v6, 0x33

    const/16 v10, 0x38

    invoke-static {v10, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    new-instance v1, Lorg/telegram/ui/VoIPFragment$8;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$8;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    .line 943
    sget v6, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    const-string v12, "VoipSpeaker"

    invoke-static {v12, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 945
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

    .line 946
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/16 v3, 0x35

    invoke-static {v10, v10, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->isLockOnScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 962
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 965
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    const/16 v3, 0x50

    .line 966
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 967
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda27;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->setOnViewsUpdated(Ljava/lang/Runnable;)V

    .line 971
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

    .line 973
    new-instance v1, Lorg/telegram/ui/Components/HintView;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    .line 974
    sget v3, Lorg/telegram/messenger/R$string;->TapToTurnCamera:I

    const-string v4, "TapToTurnCamera"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 975
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

    .line 976
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HintView;->setBottomOffset(I)V

    .line 977
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 979
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 981
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 983
    iget-boolean v2, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez v2, :cond_5

    .line 984
    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v1, :cond_4

    const/4 v9, 0x1

    :cond_4
    iput-boolean v9, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 986
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

    .line 455
    sget p2, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    if-ne p1, p2, :cond_0

    .line 456
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 p2, 0x11

    if-ne p1, p2, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 457
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 458
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 460
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->initRenderers()V

    .line 461
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    goto :goto_0

    .line 463
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 464
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->updateKeyView(Z)V

    goto :goto_0

    .line 465
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    if-ne p1, p2, :cond_2

    .line 466
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 479
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

    .line 493
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 494
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public onMediaStateUpdated(II)V
    .locals 0

    .line 484
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 485
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 486
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 488
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public onPauseInternal()V
    .locals 9

    .line 2335
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2338
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 2339
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    goto :goto_0

    .line 2341
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 2344
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result v3

    .line 2346
    iget-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 2347
    sget-object v4, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v4, v4, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    if-lt v1, v2, :cond_1

    .line 2348
    sget-object v6, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v6, v6, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v6, :cond_1

    .line 2349
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v6

    sub-int/2addr v4, v6

    .line 2351
    :cond_1
    sget-object v6, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v7, v6, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v8, v6, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v6, v6, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v7, v8, v6, v4, v5}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    if-lt v1, v2, :cond_2

    .line 2352
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_2

    .line 2353
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 2354
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 2358
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    .line 2359
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 2361
    invoke-virtual {v0, v5, v1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    :cond_4
    return-void
.end method

.method public onResumeInternal()V
    .locals 4

    .line 2367
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2368
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->finish()V

    .line 2370
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2372
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    .line 2373
    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2375
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    goto :goto_0

    .line 2377
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    .line 2380
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

    .line 2201
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2204
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->dismiss(ZZ)V

    return-void
.end method

.method public onScreenOnChange(Z)V
    .locals 0

    return-void
.end method

.method public onSignalBarsCountChanged(I)V
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setSignalBarCount(I)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 444
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-eq v0, p1, :cond_0

    .line 445
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 446
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-eqz p1, :cond_0

    .line 448
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method public onVideoAvailableChange(Z)V
    .locals 1

    .line 499
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    if-eqz p1, :cond_0

    .line 500
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 501
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 503
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public startTransitionFromPiP()V
    .locals 3

    const/4 v0, 0x1

    .line 1139
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->enterFromPiP:Z

    .line 1140
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1141
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1142
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    .line 1143
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    .line 1145
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1146
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 1147
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    .line 1148
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1149
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->prepareForTransition()V

    .line 1150
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/VoIPFragment;->animationIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->animationIndex:I

    .line 1151
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public switchToPip()V
    .locals 7

    .line 1076
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

    .line 1079
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    .line 1080
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1081
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 1082
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    sget-object v4, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v4, v4, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v4, :cond_1

    .line 1083
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1085
    :cond_1
    sget-object v4, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v5, v4, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v6, v4, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v4, v4, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v5, v6, v4, v1, v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    if-lt v2, v3, :cond_2

    .line 1086
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_2

    .line 1087
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 1088
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 1091
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1095
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

    .line 1096
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

    .line 1097
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

    .line 1098
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

    .line 1099
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

    .line 1100
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

    .line 1101
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

    .line 1102
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

    .line 1103
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

    .line 1105
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1106
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    const/4 v0, 0x0

    .line 1107
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFragment;->createPiPTransition(Z)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 1113
    :cond_4
    iget v1, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->animationIndex:I

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/VoIPFragment;->animationIndex:I

    .line 1114
    new-instance v1, Lorg/telegram/ui/VoIPFragment$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$12;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1133
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1134
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1135
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_5
    :goto_0
    return-void
.end method
