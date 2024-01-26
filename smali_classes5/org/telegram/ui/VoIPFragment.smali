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

.field private final backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

.field private bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field private bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

.field bottomShadow:Landroid/view/View;

.field private bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

.field private bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

.field private buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

.field callingUser:Lorg/telegram/tgnet/TLRPC$User;

.field callingUserIsVideo:Z

.field private callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

.field private callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

.field private callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

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

.field emojiRationalLayout:Landroid/widget/LinearLayout;

.field emojiRationalTextView:Landroid/widget/TextView;

.field emojiRationalTopTextView:Landroid/widget/TextView;

.field emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

.field encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

.field enterFromPiP:Z

.field private enterTransitionProgress:F

.field fillNaviagtionBarValue:F

.field private fragmentView:Landroid/view/ViewGroup;

.field private gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

.field hideEmojiLayout:Landroid/widget/FrameLayout;

.field hideEmojiTextView:Landroid/widget/TextView;

.field hideUIRunnable:Ljava/lang/Runnable;

.field hideUiRunnableWaiting:Z

.field private isFinished:Z

.field private isInPinchToZoomTouchMode:Z

.field private isNearEar:Z

.field private isVideoCall:Z

.field lastContentTapTime:J

.field private lastInsets:Landroid/view/WindowInsets;

.field private lockOnScreen:Z

.field notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

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

.field private previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

.field private previousState:I

.field rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

.field private screenWasWakeup:Z

.field private selectedRating:I

.field private signalBarWasReceived:Z

.field private speakerPhoneIcon:Landroid/widget/ImageView;

.field statusLayout:Landroid/widget/LinearLayout;

.field private statusLayoutAnimateToOffset:I

.field private statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

.field statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field stopAnimatingBgRunnable:Ljava/lang/Runnable;

.field private switchingToPip:Z

.field tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field topShadow:Landroid/view/View;

.field touchSlop:F

.field uiVisibilityAlpha:F

.field uiVisibilityAnimator:Landroid/animation/ValueAnimator;

.field private uiVisible:Z

.field private voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

.field private voIpSnowView:Lorg/telegram/ui/Components/voip/VoIpSnowView;

.field private wasEstablished:Z

.field private windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

.field zoomBackAnimator:Landroid/animation/ValueAnimator;

.field private zoomStarted:Z


# direct methods
.method public static synthetic $r8$lambda$4PWgvTWs7q0br0-_NBE6h2PZcgA(Lorg/telegram/ui/VoIPFragment;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/VoIPFragment;->lambda$finishZoom$15(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6HlF0UcO65Cx5YyqydbnBntfiHM(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$20(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7OJhrfhDTzHkZX8awP91GLBLnpk(Lorg/telegram/ui/VoIPFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$showErrorDialog$41(Landroid/content/DialogInterface;)V

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

.method public static synthetic $r8$lambda$Dcu_mvRydQi_qhcQLCcVjeNvNsY(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H7lw5QT5n-jRcdN82l7DzfjNTwA(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$checkEmojiLoaded$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$HFjCVmObK_Ieor04cWjPHh__T1Y(Lorg/telegram/ui/VoIPFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ip4XJt2_J_-QSt5VFRX6sbGx8XM(Lorg/telegram/ui/VoIPFragment;IIILandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/VoIPFragment;->lambda$runAcceptCallAnimation$13(IIILandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KMHlT20-luxP5R89UbdpgALu01U(Lorg/telegram/ui/VoIPFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$26(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LmT833TmoN5iv1UsXD6lAwbLoDU(Lorg/telegram/ui/VoIPFragment;ILorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/VoIPFragment;->lambda$setSpeakerPhoneAction$37(ILorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NxIkpJeM5ZiAzrL_hhw0t6nKPEM(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PY3nTOOiRKpVMz5QonCL921GrX8(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QPCYHjDbDlsdJTxug3_Z5UqH3_I()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->lambda$onRequestPermissionsResultInternal$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$QwCwi9wMOjAunWjSS9gRQ8fLqzg(Lorg/telegram/ui/VoIPFragment;ZFFFFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Lorg/telegram/ui/VoIPFragment;->lambda$createPiPTransition$18(ZFFFFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TPlFj9Edlc3RYQ6bnbsH0CefAQ0(Lorg/telegram/ui/VoIPFragment;[ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$27([ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TSs5_UvEg49IJO7uE9CDfLCQR0o(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$UgEDibR28MIFN94Z6bGMoX85KM0(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$23(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UueVJKqKgBWmV7xZu74My-hTS4k(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$V374XwgTL_LzKNfD2z0CDFQ6x58(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->lambda$setFrontalCameraAction$38(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Landroid/view/View;)V

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

.method public static synthetic $r8$lambda$WatZLSsEJizBXMas4-hyZW5qLGE(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$_FZpQMlND9EK_aTp_0EjyWM78vk(Lorg/telegram/ui/VoIPFragment;[ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$28([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_rX6IH0fir8MZkssMzOEvHPgaUs(Lorg/telegram/ui/VoIPFragment;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$startTransitionFromPiP$16(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aXC24FMJw6jE6b_TXwQGKXG9EnU(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$updateButtons$33(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c92kQjQn0o_z1pUF4o3E0_jIaEQ(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->lambda$setVideoAction$35(Lorg/telegram/messenger/voip/VoIPService;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cXD3B1LshsLFiyXvSmGFX9afzpo(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_8TxNxL8zjy8UevbtewjQ8QoLY(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$setVideoAction$36(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$crRACgHwCZ4OddBLyxqIbgWIk8M(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$runAcceptCallAnimation$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$eNBCbQ-gj26s0MJEI4-bZJKJq7I(Lorg/telegram/ui/VoIPFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$requestInlinePermissions$42(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gM3HC_CHWDlkcRfScocpG4VRQ4g(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$onRequestPermissionsResultInternal$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$h8VfP5Ixb4jVIRiQWn1auk3S4NI(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$m19u_F0szYpkDNS4srDTZA3eJa8(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$qnLrFpZ5PXz1NPhSBxGqNT3CFWQ(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$setMicrohoneAction$34(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBD7sC_i66cg7N4D7GqJFW-oUpo(Lorg/telegram/ui/VoIPFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$onSignalBarsCountChanged$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rVNcxLuVRR_TB3BakwpGWWSpiSQ(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->startWaitingFoHideUi()V

    return-void
.end method

.method public static synthetic $r8$lambda$sWYQOabblpkrA8Q_SuiAqUjQAUo(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$t5npkSCb3NdTw8q5DMHUSIt_us8(Lorg/telegram/ui/VoIPFragment;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$5(FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$tzme2oFvjDSpFF0pLmWni20A86A(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$startTransitionFromPiP$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$wPwVTFC50WPXTK9wUxwn6QBS5H8(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$21(Lorg/telegram/messenger/voip/VoIPService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ww__auE0xWP8E5ILfxmV3_rHL7U(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$createView$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$xuWTkeGPhAYYjJs5GLJtdWOzW9E(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->lambda$updateViewState$22()V

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

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/ui/Components/BackupImageView;

    .line 168
    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    new-array v0, v0, [Lorg/telegram/messenger/Emoji$EmojiDrawable;

    .line 169
    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Lorg/telegram/messenger/Emoji$EmojiDrawable;

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayPaint:Landroid/graphics/Paint;

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 209
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    .line 225
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 232
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 240
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    .line 251
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->stopAnimatingBgRunnable:Ljava/lang/Runnable;

    .line 274
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 485
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    .line 486
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    .line 487
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 488
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 489
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing()Z

    const/4 v0, -0x1

    .line 490
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 491
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 492
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 493
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 494
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 495
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 496
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->nearEarEvent:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->finishZoom()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->getFullscreenTextureView()Lorg/telegram/ui/Components/voip/VoIPTextureView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartDistance:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartDistance:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterX:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterX:F

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterX:F

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterX:F

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterY:F

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchStartCenterY:F

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterY:F

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchCenterY:F

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/VoIPFragment;I)I
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pointerId1:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/VoIPFragment;I)I
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pointerId2:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VoIPFragment;)F
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/VoIPFragment;F)F
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VoIPFragment;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VoIPFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/VoIPFragment;Z)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    return-void
.end method

.method static synthetic access$2902(Lorg/telegram/ui/VoIPFragment;I)I
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->onBackPressed()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/VoIPFragment;)Landroid/widget/TextView;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/VoIPFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->runAcceptCallAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPWindowView;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/AcceptDeclineView;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/VoIPFragment;)I
    .locals 0

    .line 127
    iget p0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/VoIPFragment;)Lorg/webrtc/TextureViewRenderer;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    return-void
.end method

.method static synthetic access$4302(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/VoIPFragment;
    .locals 0

    .line 127
    sput-object p0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->startWaitingFoHideUi()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/ImageWithWavesView;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/VoIPFragment;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/VoIPFragment;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isInPinchToZoomTouchMode:Z

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

    .line 2414
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
    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    .line 2420
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 2422
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2423
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 2425
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2426
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 2427
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 2428
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2432
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 1291
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

    .line 1294
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
    .locals 5

    .line 437
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_1

    .line 438
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 440
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-boolean v2, v1, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, v1, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v3, v1, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v0, v4}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    .line 442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 444
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 448
    :cond_0
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 449
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 450
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 451
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    :cond_1
    const/4 v0, 0x0

    .line 453
    sput-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-void
.end method

.method private destroy()V
    .locals 2

    .line 500
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 504
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 505
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 506
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 507
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 508
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->nearEarEvent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private expandEmoji(Z)V
    .locals 10

    .line 1598
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eq v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1601
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIpCoverView;->onEmojiExpanded(Z)V

    const/16 v0, 0x78

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 1604
    sget p1, Lorg/telegram/messenger/SharedConfig;->callEncryptionHintDisplayedCount:I

    const/4 v6, 0x2

    if-ge p1, v6, :cond_1

    .line 1605
    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->incrementCallEncryptionHintDisplayed(I)V

    .line 1607
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 1608
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1609
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1611
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 1612
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/16 v7, 0x30

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1615
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1616
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1617
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1618
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1619
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1620
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v6, 0x154

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1622
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v6, 0x3fdc28f6    # 1.72f

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/16 v6, 0x8c

    .line 1623
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1624
    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v7, 0x190

    .line 1625
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1626
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1628
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1629
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1630
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1631
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1632
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1633
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1634
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/VoIPFragment$16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$16;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1644
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1646
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const-wide/16 v6, 0xfa

    if-nez p1, :cond_4

    .line 1647
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v8, 0x32

    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1650
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1651
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v8, 0xe6

    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v8, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v9, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-direct {v8, v9}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1653
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1654
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1655
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v8, 0x118

    .line 1656
    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1657
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1659
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1660
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/VoIPFragment$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$17;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1672
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1674
    :goto_0
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 1675
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_5
    :goto_1
    return-void
.end method

.method private finishZoom()V
    .locals 6

    .line 1308
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1309
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->zoomStarted:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1310
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    .line 1312
    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 1313
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    .line 1314
    iget v4, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    .line 1315
    new-instance v5, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2, v3, v4}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/VoIPFragment;FFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$11;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1334
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1337
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->canZoomGesture:Z

    .line 1338
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

    .line 1301
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0

    .line 1304
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/VoIPFragment;
    .locals 1

    .line 457
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    return-object v0
.end method

.method private initRenderers()V
    .locals 5

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$12;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPFragment$13;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    sget-object v3, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    new-instance v4, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v4}, Lorg/webrtc/GlRectDrawer;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    return-void
.end method

.method private synthetic lambda$checkEmojiLoaded$32()V
    .locals 3

    .line 2433
    sget v0, Lorg/telegram/messenger/SharedConfig;->callEncryptionHintDisplayedCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2434
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->incrementCallEncryptionHintDisplayed(I)V

    .line 2435
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    const/16 v2, 0x24

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2436
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method private synthetic lambda$createPiPTransition$18(ZFFFFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 7

    move-object v0, p0

    .line 1566
    invoke-virtual/range {p18 .. p18}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v1

    .line 1567
    iput v3, v0, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 1568
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    if-eqz p1, :cond_0

    mul-float v4, p2, v3

    mul-float v5, p3, v1

    add-float/2addr v4, v5

    .line 1572
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1573
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1574
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p4, v3

    mul-float v6, p5, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1575
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p6, v3

    mul-float v6, p7, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1576
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p8, v3

    mul-float v6, p9, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1577
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    mul-float v5, p10, v3

    mul-float v6, p11, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    mul-float v4, p12, v3

    mul-float v5, p13, v1

    add-float/2addr v4, v5

    .line 1581
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1582
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    mul-float v5, p14, v3

    mul-float v6, p15, v1

    add-float/2addr v5, v6

    mul-float v3, v3, p16

    mul-float v6, p17, v1

    add-float/2addr v3, v6

    .line 1586
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1587
    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1588
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    mul-float/2addr v5, v2

    div-float/2addr v5, v4

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    .line 1589
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    if-nez v2, :cond_1

    .line 1590
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setScreenshareMiniProgress(FZ)V

    .line 1592
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 3

    .line 1115
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1118
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1120
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->startWaitingFoHideUi()V

    .line 1122
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1124
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 1129
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;ZLjava/lang/Integer;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;)V
    .locals 0

    .line 1134
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez p1, :cond_0

    .line 1135
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$12()V
    .locals 1

    .line 1145
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 1146
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method private synthetic lambda$createView$5(FZ)V
    .locals 1

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setScreenshareMiniProgress(FZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 4

    .line 810
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

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 812
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 814
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    const/4 p1, 0x1

    .line 815
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 816
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 817
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 818
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 4

    .line 838
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 839
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 840
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    .line 843
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 844
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 845
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 846
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 4

    .line 874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 877
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 878
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz p1, :cond_1

    return-void

    .line 879
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 880
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 4

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 892
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 893
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz p1, :cond_1

    .line 894
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$finishZoom$15(FFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1316
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

    .line 1317
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    mul-float/2addr p2, p4

    .line 1318
    iput p2, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationX:F

    mul-float/2addr p3, p4

    .line 1319
    iput p3, p0, Lorg/telegram/ui/VoIPFragment;->pinchTranslationY:F

    .line 1320
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 233
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    .line 234
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 242
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 243
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 245
    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    .line 246
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 247
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    .line 252
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setMute(ZZ)V

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->pause()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onRequestPermissionsResultInternal$39()V
    .locals 1

    .line 2857
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2858
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$40()V
    .locals 1

    .line 2864
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$onSignalBarsCountChanged$4(I)V
    .locals 2

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setSignalBarCount(I)V

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 557
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->showToBadConnection()V

    .line 558
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showBadConnection(ZZ)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->hideBadConnection()V

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showBadConnection(ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$requestInlinePermissions$42(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2969
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-eqz p1, :cond_0

    .line 2970
    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$runAcceptCallAnimation$13(IIILandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1227
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    int-to-float p1, p1

    mul-float/2addr p1, p5

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    int-to-float p1, p2

    add-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, p5

    sub-float/2addr p1, p2

    float-to-int p1, p1

    .line 1231
    iput p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1232
    iput p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1233
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$runAcceptCallAnimation$14()V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1258
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 1259
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 1260
    aget v4, v0, v3

    .line 1261
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1262
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v1

    sub-int v6, v2, v6

    const/16 v7, 0x2a

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1263
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v3

    sub-int v6, v4, v6

    const/16 v8, 0x2c

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1264
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1265
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v1

    sub-int v6, v2, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1266
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v3

    sub-int v6, v4, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1267
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1268
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v1

    sub-int v6, v2, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1269
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    aget v6, v0, v3

    sub-int v6, v4, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1270
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1271
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v1, v0, v1

    sub-int/2addr v2, v1

    const/16 v1, 0x31

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v2, v1

    const/16 v1, 0x3c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1272
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    aget v0, v0, v3

    sub-int/2addr v4, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1275
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v4, 0xc8

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1281
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$setFrontalCameraAction$38(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Landroid/view/View;)V
    .locals 3

    .line 2714
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2716
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 2717
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2718
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2720
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2721
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamSwitchedToBack:I

    const-string v2, "AccDescrVoipCamSwitchedToBack"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2723
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamSwitchedToFront:I

    const-string v2, "AccDescrVoipCamSwitchedToFront"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2725
    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2727
    :cond_1
    sget-object p3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->CAMERA:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 2728
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setMicrohoneAction$34(Landroid/view/View;)V
    .locals 6

    .line 2592
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2594
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 2595
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2596
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 2597
    iget-object v4, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    .line 2600
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrVoipMicOff:I

    const-string v5, "AccDescrVoipMicOff"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2602
    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrVoipMicOn:I

    const-string v5, "AccDescrVoipMicOn"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2604
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2606
    :cond_1
    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 2607
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 2608
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setSpeakerPhoneAction$37(ILorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 2

    .line 2692
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 2693
    iget-object p4, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p4, 0x0

    .line 2694
    iput-boolean p4, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2695
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p4, p1}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;ZLjava/lang/Integer;)V

    const/4 p1, 0x1

    .line 2696
    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setVideoAction$35(Lorg/telegram/messenger/voip/VoIPService;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2640
    iget-object p1, p1, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->cameraAlertWasShowed:Z

    .line 2641
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    return-void
.end method

.method private synthetic lambda$setVideoAction$36(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 2

    .line 2631
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 2632
    iput-boolean p2, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2633
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2634
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x66

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    if-ge p2, v0, :cond_1

    .line 2636
    iget-object p2, p1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez p2, :cond_1

    iget-object p2, p1, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    iget-boolean p2, p2, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->cameraAlertWasShowed:Z

    if-nez p2, :cond_1

    .line 2637
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2638
    sget v0, Lorg/telegram/messenger/R$string;->VoipSwitchToVideoCall:I

    const-string v1, "VoipSwitchToVideoCall"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2639
    sget v0, Lorg/telegram/messenger/R$string;->VoipSwitch:I

    const-string v1, "VoipSwitch"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2643
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2644
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0

    .line 2646
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$show$3(Lorg/telegram/ui/VoIPFragment;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 369
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 370
    invoke-direct {p0, p2}, Lorg/telegram/ui/VoIPFragment;->setInsets(Landroid/view/WindowInsets;)V

    :cond_0
    const/16 p0, 0x1e

    if-lt p1, p0, :cond_1

    .line 373
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 375
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showErrorDialog$41(Landroid/content/DialogInterface;)V
    .locals 0

    .line 2962
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$startTransitionFromPiP$16(Landroid/animation/Animator;)V
    .locals 5

    const/4 v0, 0x0

    .line 1458
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1459
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->finish()V

    .line 1461
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

    .line 1462
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

    .line 1463
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

    .line 1464
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

    .line 1465
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

    .line 1466
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

    .line 1467
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

    .line 1468
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

    .line 1470
    new-instance v0, Lorg/telegram/ui/VoIPFragment$15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$15;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1481
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1482
    invoke-virtual {p1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1483
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private synthetic lambda$startTransitionFromPiP$17()V
    .locals 4

    .line 1444
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x1

    .line 1446
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFragment;->createPiPTransition(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 1447
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1448
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1449
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1450
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1451
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1452
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1453
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1454
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1456
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iput-boolean v0, v2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToPip:Z

    .line 1457
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/animation/Animator;)V

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$updateButtons$33(Landroid/view/View;)V
    .locals 0

    .line 2561
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2562
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 2563
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2564
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$19()V
    .locals 1

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$20(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    .line 1775
    new-instance p2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1776
    iget p2, p0, Lorg/telegram/ui/VoIPFragment;->selectedRating:I

    if-lez p2, :cond_0

    .line 1777
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->sendCallRating(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$21(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 2

    .line 1774
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/voip/EndCloseLayout;->switchToClose(Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method private synthetic lambda$updateViewState$22()V
    .locals 1

    .line 1793
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$23(Lorg/telegram/messenger/voip/VoIPService;Landroid/view/View;)V
    .locals 0

    .line 1793
    new-instance p2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda33;

    invoke-direct {p2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1794
    iget p2, p0, Lorg/telegram/ui/VoIPFragment;->selectedRating:I

    if-lez p2, :cond_0

    .line 1795
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->sendCallRating(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$24(I)V
    .locals 0

    .line 1801
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->selectedRating:I

    return-void
.end method

.method private synthetic lambda$updateViewState$25()V
    .locals 1

    .line 1835
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$26(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1855
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$27([ZLandroid/content/DialogInterface;I)V
    .locals 3

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 1857
    aput-boolean p3, p1, p2

    const/16 p1, 0x11

    .line 1858
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 1859
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-class v1, Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1860
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v2, "user_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "is_outgoing"

    .line 1861
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "start_incall_activity"

    .line 1862
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "video_call"

    .line 1863
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "can_video_call"

    .line 1864
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1865
    iget p2, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    const-string p3, "account"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1867
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1869
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateViewState$28([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 1875
    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 1876
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewState$29()V
    .locals 1

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$30()V
    .locals 1

    .line 1898
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void
.end method

.method private synthetic lambda$updateViewState$31()V
    .locals 2

    .line 2117
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->isAppearing:Z

    .line 2118
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private onBackPressed()V
    .locals 3

    .line 403
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->dismiss(ZZ)V

    return-void

    .line 410
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v0, :cond_2

    .line 411
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    .line 413
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 414
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 415
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void

    .line 418
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz v0, :cond_3

    .line 419
    invoke-direct {p0, v1}, Lorg/telegram/ui/VoIPFragment;->expandEmoji(Z)V

    goto :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    return-void

    .line 424
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v0, :cond_6

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 426
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFragment;->switchToPip()V

    goto :goto_0

    .line 428
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->requestInlinePermissions()V

    goto :goto_0

    .line 431
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    :cond_7
    :goto_0
    return-void
.end method

.method public static onPause()V
    .locals 1

    .line 2889
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2890
    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFragment;->onPauseInternal()V

    .line 2892
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2893
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->onPause()V

    :cond_1
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2843
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2844
    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/VoIPFragment;->onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 p2, 0x0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 2851
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2852
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void

    .line 2855
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, p2

    if-nez v0, :cond_1

    .line 2856
    sget-object v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda37;->INSTANCE:Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda37;

    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPFragment;->runAcceptCallAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2862
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2863
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall()V

    .line 2864
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    new-instance p3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda26;

    invoke-direct {p3, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;I)V

    return-void

    :cond_2
    :goto_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_4

    .line 2870
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_3

    .line 2871
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    return-void

    .line 2874
    :cond_3
    array-length p1, p3

    if-lez p1, :cond_4

    aget p1, p3, p2

    if-nez p1, :cond_4

    .line 2875
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->toggleCameraInput()V

    :cond_4
    return-void
.end method

.method public static onResume()V
    .locals 1

    .line 2898
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 2899
    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFragment;->onResumeInternal()V

    .line 2901
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2902
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->onResume()V

    :cond_1
    return-void
.end method

.method private requestInlinePermissions()V
    .locals 2

    .line 2967
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2968
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayPermissionDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 2972
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_0
    return-void
.end method

.method private runAcceptCallAnimation(Ljava/lang/Runnable;)V
    .locals 14

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 1191
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->stopAnimations()V

    .line 1194
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    new-array v0, v1, [I

    .line 1203
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->stopAnimations()V

    .line 1206
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v3, Lorg/telegram/messenger/R$drawable;->calls_decline:I

    const/4 v4, -0x1

    const v5, -0xfe2d4

    sget v0, Lorg/telegram/messenger/R$string;->VoipEndCall2:I

    const-string v6, "VoipEndCall2"

    invoke-static {v6, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    sget-object v2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->SPEAKER:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    sget-object v2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->MICRO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    sget-object v2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1216
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1219
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v8

    const/16 v0, 0x34

    .line 1220
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/16 v0, 0x18

    .line 1221
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v0, 0x3e

    .line 1222
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 1224
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v1, [F

    .line 1225
    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 1226
    new-instance v12, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda2;

    move-object v5, v12

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/VoIPFragment;IIILandroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1236
    iget-object v5, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v7, 0x4

    new-array v8, v7, [F

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v4

    aput v9, v8, v1

    const/4 v10, 0x3

    aput v9, v8, v10

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1237
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v7, [F

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v13

    aput v13, v12, v3

    aput v9, v12, v4

    aput v9, v12, v1

    aput v9, v12, v10

    invoke-static {v6, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1238
    iget-object v8, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v7, [F

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v3

    iget-object v13, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v4

    aput v2, v12, v1

    aput v2, v12, v10

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v11, v7, v3

    aput-object v5, v7, v4

    aput-object v6, v7, v1

    aput-object v2, v7, v10

    .line 1239
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x190

    .line 1240
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1241
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1242
    new-instance v1, Lorg/telegram/ui/VoIPFragment$10;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VoIPFragment$10;-><init>(Lorg/telegram/ui/VoIPFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1254
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1256
    new-instance p1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v0, 0x85

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 2

    .line 2702
    iget-boolean p3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez p3, :cond_0

    .line 2703
    sget-object p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->CAMERA:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    const/4 p2, 0x0

    .line 2704
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    .line 2705
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    const/4 p3, 0x1

    .line 2707
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2708
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2709
    sget-object v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->CAMERA:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingCamera()Z

    move-result v1

    xor-int/2addr p3, v1

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    goto :goto_0

    .line 2711
    :cond_1
    sget-object p3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->CAMERA:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingCamera()Z

    move-result v0

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 2713
    :goto_0
    new-instance p3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda43;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    :goto_1
    return-void
.end method

.method private setInsets(Landroid/view/WindowInsets;)V
    .locals 2

    .line 463
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    .line 464
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 465
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 466
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 467
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 468
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x87

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 469
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x5d

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 471
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x76

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 473
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x17c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 474
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 475
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setInsets(Landroid/view/WindowInsets;)V

    .line 477
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setInsets(Landroid/view/WindowInsets;)V

    .line 478
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 479
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-eqz p1, :cond_0

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->setBottomPadding(I)V

    :cond_0
    return-void
.end method

.method private setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 2

    .line 2589
    sget-object v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->MICRO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    .line 2590
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p2

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setMuted(ZZ)V

    .line 2591
    new-instance p2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda40;

    invoke-direct {p2, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    return-void
.end method

.method private setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 3

    .line 2679
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object p3

    .line 2680
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 p3, 0x2

    .line 2682
    sget-object v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->BLUETOOTH:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    move v2, p3

    goto :goto_0

    .line 2683
    :cond_0
    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2685
    sget-object p3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->SPEAKER:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p3, v1}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    goto :goto_0

    .line 2688
    :cond_1
    sget-object p3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->SPEAKER:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p3, v2}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    move v2, v1

    .line 2690
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2691
    new-instance p3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda41;

    invoke-direct {p3, p0, v2, p1, p2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/VoIPFragment;ILorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    return-void
.end method

.method private setVideoAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 3

    .line 2615
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2618
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2621
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v0, :cond_3

    .line 2622
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2623
    sget-object v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, v0, v2, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;ZZ)V

    goto :goto_2

    .line 2625
    :cond_2
    sget-object v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, v0, v2, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;ZZ)V

    goto :goto_2

    .line 2628
    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, v0, v1, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;ZZ)V

    .line 2630
    :goto_2
    new-instance p3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda42;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setOnBtnClickedListener(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView$OnBtnClickedListener;)V

    .line 2650
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_3

    .line 2652
    :cond_4
    sget-object p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;->VIDEO:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setType(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V

    const/4 p2, 0x0

    .line 2653
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2654
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_3
    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/VoIPFragment;->show(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public static show(Landroid/app/Activity;ZI)V
    .locals 7

    .line 285
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 286
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 288
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 289
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 290
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v0}, Lorg/telegram/ui/VoIPFragment;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 292
    sput-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    .line 294
    :cond_1
    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 297
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 298
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

    .line 301
    :cond_4
    new-instance v2, Lorg/telegram/ui/VoIPFragment;

    invoke-direct {v2, p2}, Lorg/telegram/ui/VoIPFragment;-><init>(I)V

    .line 302
    iput-object p0, v2, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    .line 303
    sput-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    .line 304
    new-instance p2, Lorg/telegram/ui/VoIPFragment$1;

    xor-int/lit8 v3, v0, 0x1

    invoke-direct {p2, p0, v3, v2}, Lorg/telegram/ui/VoIPFragment$1;-><init>(Landroid/app/Activity;ZLorg/telegram/ui/VoIPFragment;)V

    .line 354
    sget-object v3, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    const-string v3, "power"

    .line 356
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 358
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_5

    .line 359
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    goto :goto_1

    .line 361
    :cond_5
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 363
    :goto_1
    sget-object v6, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    xor-int/2addr v1, v3

    iput-boolean v1, v6, Lorg/telegram/ui/VoIPFragment;->screenWasWakeup:Z

    .line 364
    iget-boolean v1, v6, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 365
    iput-object p2, v2, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-lt v4, v5, :cond_6

    .line 368
    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, v2}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_6
    const-string v1, "window"

    .line 380
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 381
    invoke-virtual {p2}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->createWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz p1, :cond_8

    const/16 p1, 0x1a

    if-lt v4, p1, :cond_7

    const/16 p1, 0x7f6

    .line 384
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    :cond_7
    const/16 p1, 0x7d3

    .line 386
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 389
    :cond_8
    :goto_2
    invoke-interface {v1, p2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    invoke-virtual {v2, p0}, Lorg/telegram/ui/VoIPFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    .line 391
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    .line 394
    iput p0, v2, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 395
    invoke-virtual {v2}, Lorg/telegram/ui/VoIPFragment;->startTransitionFromPiP()V

    goto :goto_3

    :cond_9
    const/high16 p0, 0x3f800000    # 1.0f

    .line 397
    iput p0, v2, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 398
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

    .line 2444
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

    .line 2446
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2447
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2448
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 2449
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2450
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2452
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    if-nez p1, :cond_4

    .line 2454
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2455
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2456
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VoIPFragment$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$22;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2461
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2465
    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2466
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
    .locals 9

    .line 2308
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    const-wide/16 v6, 0x96

    const p1, 0x3dcccccd    # 0.1f

    if-eqz v0, :cond_3

    .line 2310
    iget-object v8, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 2311
    iget-object v8, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2312
    iget-object v8, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2313
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    .line 2315
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2316
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 2318
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2319
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/16 p2, 0x87

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2320
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    :cond_2
    if-eqz p2, :cond_6

    .line 2324
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2325
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2326
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2327
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_6

    .line 2330
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2331
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2332
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2333
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/VoIPFragment$21;

    invoke-direct {p2, p0}, Lorg/telegram/ui/VoIPFragment$21;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    .line 2334
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2339
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 2342
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2343
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2344
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2345
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2346
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2347
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2349
    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    if-eqz v0, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_7
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2953
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2956
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->VoipFailed:I

    const-string v2, "VoipFailed"

    .line 2957
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 2958
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    .line 2959
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 2960
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 2961
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2962
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showFloatingLayout(IZ)V
    .locals 10

    .line 2226
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

    .line 2227
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    :cond_1
    if-nez p2, :cond_2

    .line 2229
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 2230
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2231
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

    .line 2235
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

    .line 2236
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_3

    .line 2237
    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2238
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 2240
    :cond_3
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v4, [Landroid/animation/Animator;

    .line 2241
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    .line 2242
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    aput v9, v8, v5

    aput v2, v8, v4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 2241
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2244
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

    .line 2245
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v1, [F

    .line 2246
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

    .line 2247
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v7

    aput v7, v1, v5

    aput v3, v1, v4

    invoke-static {v2, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 2245
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2250
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    .line 2251
    new-instance v0, Lorg/telegram/ui/VoIPFragment$20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$20;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2261
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2262
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x32

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2263
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto/16 :goto_5

    .line 2266
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 2270
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

    .line 2274
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

    .line 2275
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-ne p2, v0, :cond_9

    .line 2276
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2277
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2278
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2279
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2281
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_a

    .line 2282
    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2283
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 2285
    :cond_a
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    .line 2286
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_0

    .line 2287
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v5

    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    .line 2288
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v4

    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    .line 2289
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v1

    .line 2286
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2291
    iput-object p2, p0, Lorg/telegram/ui/VoIPFragment;->cameraShowingAnimator:Landroid/animation/Animator;

    const-wide/16 v7, 0x96

    .line 2292
    invoke-virtual {p2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 2295
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2297
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

    .line 2298
    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    .line 2299
    iput-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 2301
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

    .line 2302
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 2304
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
    .locals 11

    .line 2179
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2180
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    if-nez p1, :cond_1

    .line 2184
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x96

    .line 2186
    iget-object v7, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2187
    iget-object v7, p0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2188
    iget-object v7, p0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2189
    iget-object v7, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2190
    iget-object v7, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2191
    iget-object v7, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2192
    iget-object v7, p0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2193
    iget-object v7, p0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    new-array v0, v0, [F

    .line 2194
    iget v7, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    aput v7, v0, v2

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 2195
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2196
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2197
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2198
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2199
    iput-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 2200
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2201
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    goto/16 :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 2202
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v6, :cond_2

    .line 2203
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2204
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2205
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2206
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2207
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

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

    .line 2208
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

    .line 2209
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

    .line 2210
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

    .line 2211
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

    .line 2212
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

    .line 2213
    iget v3, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAlpha:F

    aput v3, v0, v2

    aput v7, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 2214
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->statusbarAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2215
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2216
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2217
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_2
    move v6, v2

    .line 2220
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    .line 2221
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->requestFullscreen(Z)V

    .line 2222
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

    int-to-long v0, v6

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startWaitingFoHideUi()V
    .locals 3

    .line 1679
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1682
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    .line 1683
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    .line 1685
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    :cond_0
    return-void
.end method

.method private toggleCameraInput()V
    .locals 6

    .line 2742
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2744
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2746
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_0

    .line 2747
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamOn:I

    const-string v2, "AccDescrVoipCamOn"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2749
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVoipCamOff:I

    const-string v2, "AccDescrVoipCamOff"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2751
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2753
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-nez v1, :cond_7

    .line 2754
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v1, v2, :cond_5

    .line 2755
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-nez v1, :cond_4

    .line 2756
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->createCaptureDevice(Z)V

    .line 2757
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2758
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    .line 2760
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    new-array v0, v4, [I

    .line 2762
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 2763
    new-instance v1, Lorg/telegram/ui/VoIPFragment$24;

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    aget v3, v0, v3

    int-to-float v3, v3

    aget v0, v0, v5

    int-to-float v0, v0

    invoke-direct {v1, p0, v2, v3, v0}, Lorg/telegram/ui/VoIPFragment$24;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;FF)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    .line 2816
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_3

    .line 2817
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->setBottomPadding(I)V

    .line 2819
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    return-void

    .line 2823
    :cond_5
    iput-boolean v5, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    .line 2824
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2825
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V

    .line 2827
    :cond_6
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->requestVideoCall(Z)V

    .line 2828
    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    goto :goto_1

    .line 2831
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->saveCameraLastBitmap()V

    .line 2832
    invoke-virtual {v0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2833
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_8

    .line 2834
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->clearCamera()V

    .line 2837
    :cond_8
    :goto_1
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 2838
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_9
    return-void
.end method

.method private updateButtons(Z)V
    .locals 10

    .line 2470
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2474
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 2475
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 2476
    new-instance v3, Lorg/telegram/ui/VoIPFragment$23;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VoIPFragment$23;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v4, 0xfa

    .line 2507
    invoke-virtual {v3, v4, v5}, Landroid/transition/Visibility;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v7}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v8, Landroid/transition/ChangeBounds;

    invoke-direct {v8}, Landroid/transition/ChangeBounds;-><init>()V

    .line 2508
    invoke-virtual {v8, v4, v5}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 2509
    const-class v3, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v2, v3, v1}, Landroid/transition/TransitionSet;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 2510
    const-class v3, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v2, v3, v1}, Landroid/transition/TransitionSet;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 2511
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-static {v3, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 2514
    :cond_1
    iget v2, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v3, 0xb

    const/16 v4, 0x8

    if-ne v2, v3, :cond_2

    .line 2515
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2516
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2517
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2518
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    if-eq v2, v7, :cond_8

    const/16 v9, 0x11

    if-ne v2, v9, :cond_3

    goto/16 :goto_1

    .line 2542
    :cond_3
    sget-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v2, :cond_4

    return-void

    .line 2545
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v2, :cond_6

    .line 2546
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2547
    iget-boolean v2, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v2, :cond_7

    .line 2548
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2549
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 2552
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2553
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2554
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2556
    :cond_7
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, v8}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2557
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2559
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_decline:I

    const/4 v2, -0x1

    const v3, -0xfe2d4

    sget v4, Lorg/telegram/messenger/R$string;->VoipEndCall2:I

    const-string v5, "VoipEndCall2"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIILjava/lang/String;ZZ)V

    .line 2560
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v1, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 2523
    :cond_8
    :goto_1
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v1, :cond_c

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v1, :cond_c

    if-ne v2, v7, :cond_c

    .line 2524
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v1, :cond_a

    .line 2525
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setFrontalCameraAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2526
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v1, :cond_b

    .line 2527
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 2530
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setSpeakerPhoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2531
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2533
    :cond_b
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, v8}, Lorg/telegram/ui/VoIPFragment;->setVideoAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 2534
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/VoIPFragment;->setMicrohoneAction(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/messenger/voip/VoIPService;Z)V

    goto :goto_3

    .line 2536
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2537
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2538
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2540
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2570
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 2571
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iput v8, v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->animationDelay:I

    const/16 v8, 0x10

    .line 2574
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 2575
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iput v8, v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->animationDelay:I

    add-int/lit8 v8, v8, 0x10

    .line 2578
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 2579
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iput v8, v0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->animationDelay:I

    add-int/lit8 v8, v8, 0x10

    .line 2582
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 2583
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    iput v8, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animationDelay:I

    .line 2585
    :cond_10
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateSpeakerPhoneIcon()V

    return-void
.end method

.method private updateKeyView(Z)V
    .locals 9

    .line 2353
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 2356
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2362
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2363
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getEncryptionKey()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2364
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getGA()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2365
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2367
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 2372
    :cond_2
    array-length v0, v1

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    .line 2373
    invoke-static {v0}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v0

    .line 2375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2376
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_5

    .line 2378
    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    .line 2379
    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v5

    if-eqz v5, :cond_4

    const/16 v6, 0x28

    .line 2381
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v2, v2, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2382
    invoke-virtual {v5}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->preload()V

    const/4 v6, 0x1

    new-array v7, v6, [I

    .line 2384
    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8, v6}, Landroid/text/TextPaint;-><init>(I)V

    const/16 v6, 0x1c

    .line 2385
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2386
    aget-object v6, v0, v4

    .line 2387
    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v6, v8, v2, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2388
    invoke-virtual {p0, v6, v7}, Lorg/telegram/ui/VoIPFragment;->replaceEmojiToLottieFrame(Ljava/lang/CharSequence;[I)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    .line 2389
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_3

    .line 2391
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2393
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v6, v6, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2395
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/VoIPFragment;->emojiDrawables:[Lorg/telegram/messenger/Emoji$EmojiDrawable;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2397
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 2398
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2399
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v0, v0, v2

    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v4, 0x11

    iget v5, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IILorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 2400
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2403
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2404
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v0, v0, v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2407
    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPFragment;->checkEmojiLoaded(Z)V

    return-void
.end method

.method private updateSpeakerPhoneIcon()V
    .locals 3

    .line 2659
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2663
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v1

    .line 2664
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2665
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_bluetooth:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2666
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2667
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2669
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2670
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_menu_headset:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2672
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_menu_phone:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateSystemBarColors()V
    .locals 4

    .line 2881
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

    .line 2882
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

    .line 2883
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2884
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateViewState()V
    .locals 21

    move-object/from16 v0, p0

    .line 1691
    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v1, :cond_64

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-eqz v1, :cond_0

    goto/16 :goto_31

    :cond_0
    const/4 v1, 0x0

    .line 1694
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    .line 1695
    iget v2, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1700
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    .line 1702
    iget v6, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const-string v8, "VoipConnecting"

    const/16 v9, 0x50

    const/16 v10, 0x10

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x2

    move-object/from16 v16, v8

    const-wide/16 v7, 0xfa

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eq v6, v4, :cond_17

    if-eq v6, v14, :cond_17

    if-eq v6, v12, :cond_14

    if-eq v6, v13, :cond_a

    if-eq v6, v11, :cond_14

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_6

    .line 1739
    :pswitch_0
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v12, Lorg/telegram/messenger/R$string;->VoipBusy:I

    const-string v11, "VoipBusy"

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1740
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setRetryMod(Z)V

    .line 1741
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    .line 1742
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    :goto_1
    move v6, v1

    move v13, v6

    move v11, v4

    goto/16 :goto_8

    .line 1728
    :pswitch_1
    iget v6, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    if-eq v6, v10, :cond_18

    .line 1729
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v11, Lorg/telegram/messenger/R$string;->VoipRinging:I

    const-string v12, "VoipRinging"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_6

    .line 1705
    :pswitch_2
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    .line 1706
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setRetryMod(Z)V

    if-eqz v5, :cond_2

    .line 1707
    iget-object v6, v5, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v6, :cond_2

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v6, :cond_2

    .line 1708
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v11, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    const-string v12, "VoipInVideoCallBranding"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1709
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    const/16 v11, 0x3c

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 1711
    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v11, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    const-string v12, "VoipInCallBranding"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1712
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 1733
    :pswitch_3
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v11, Lorg/telegram/messenger/R$string;->VoipRequesting:I

    const-string v12, "VoipRequesting"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_6

    .line 1725
    :pswitch_4
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v11, Lorg/telegram/messenger/R$string;->VoipWaiting:I

    const-string v12, "VoipWaiting"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_6

    .line 1720
    :pswitch_5
    iget v6, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/16 v11, 0xc

    if-eq v6, v11, :cond_18

    .line 1721
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v12, Lorg/telegram/messenger/R$string;->VoipExchangingKeys:I

    const-string v6, "VoipExchangingKeys"

    invoke-static {v6, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_6

    :pswitch_6
    if-eqz v5, :cond_3

    .line 1758
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->hasRate()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v1

    .line 1759
    :goto_2
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->saveCameraLastBitmap()V

    if-eqz v6, :cond_9

    .line 1760
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v6, :cond_9

    .line 1761
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    const/16 v11, 0x8

    if-eqz v6, :cond_4

    new-array v6, v14, [I

    .line 1764
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    .line 1765
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1766
    aget v10, v6, v1

    sub-int/2addr v12, v10

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    const/16 v16, 0x34

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    sub-int v10, v10, v16

    div-int/2addr v10, v14

    sub-int/2addr v12, v10

    const/16 v10, 0x34

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v12, v10

    .line 1767
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1768
    iput v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1769
    iput v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1770
    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    aget v6, v6, v4

    int-to-float v6, v6

    invoke-virtual {v12, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1771
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v6, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1772
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1773
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v13, 0x50

    invoke-virtual {v6, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1774
    new-instance v6, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda36;

    invoke-direct {v6, v0, v5}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v13, 0x2

    invoke-static {v6, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 1781
    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1782
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v13, 0x12

    .line 1783
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v13, 0x12

    .line 1784
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v13, 0x24

    .line 1785
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1786
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-lt v14, v10, :cond_5

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v10, :cond_5

    .line 1787
    invoke-virtual {v10}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v10

    add-int/2addr v13, v10

    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1789
    :cond_5
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1790
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1791
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1792
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    new-instance v10, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda19;

    invoke-direct {v10, v0, v5}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/VoIPFragment;Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v6, v10, v1}, Lorg/telegram/ui/Components/voip/EndCloseLayout;->switchToClose(Landroid/view/View$OnClickListener;Z)V

    .line 1800
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1801
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    new-instance v10, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda38;

    invoke-direct {v10, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/voip/RateCallLayout;->show(Lorg/telegram/ui/Components/voip/RateCallLayout$OnRateSelected;)V

    .line 1802
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz v6, :cond_6

    .line 1803
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    .line 1804
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v13, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-direct {v13, v14}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1805
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1806
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const v13, 0x3f333333    # 0.7f

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/16 v13, 0x78

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v13, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-direct {v13, v14}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1808
    :cond_6
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    array-length v10, v6

    move v13, v1

    :goto_4
    if-ge v13, v10, :cond_7

    aget-object v14, v6, v13

    .line 1809
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v14, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1811
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v12, 0x46

    invoke-virtual {v6, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v10, Lorg/telegram/ui/VoIPFragment$18;

    invoke-direct {v10, v0}, Lorg/telegram/ui/VoIPFragment$18;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1817
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1818
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1819
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1820
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v6, v1, v4}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showReconnect(ZZ)V

    .line 1821
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v6, v1, v4}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showBadConnection(ZZ)V

    .line 1822
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setDrawCallIcon()V

    .line 1823
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->onNeedRating()V

    .line 1824
    invoke-direct {v0, v4}, Lorg/telegram/ui/VoIPFragment;->updateButtons(Z)V

    .line 1825
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1826
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1827
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1828
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1829
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1830
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-eqz v6, :cond_8

    .line 1831
    invoke-virtual {v6, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->dismiss(ZZ)V

    .line 1833
    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_6

    .line 1835
    :cond_9
    new-instance v6, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda28;

    invoke-direct {v6, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v11, 0xc8

    invoke-static {v6, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_6

    .line 1839
    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v11, Lorg/telegram/messenger/R$string;->VoipFailed:I

    const-string v12, "VoipFailed"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    .line 1840
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 1841
    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getLastError()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_b
    const-string v6, "ERROR_UNKNOWN"

    :goto_5
    const-string v13, "ERROR_UNKNOWN"

    .line 1842
    invoke-static {v6, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    const-string v13, "ERROR_INCOMPATIBLE"

    .line 1843
    invoke-static {v6, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1844
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1845
    sget v11, Lorg/telegram/messenger/R$string;->VoipPeerIncompatible:I

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v6, v12, v1

    const-string v6, "VoipPeerIncompatible"

    invoke-static {v6, v11, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1846
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_c
    const-string v13, "ERROR_PEER_OUTDATED"

    .line 1847
    invoke-static {v6, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1848
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-eqz v6, :cond_d

    .line 1849
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    .line 1850
    sget v13, Lorg/telegram/messenger/R$string;->VoipPeerVideoOutdated:I

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v6, v14, v1

    const-string v6, "VoipPeerVideoOutdated"

    invoke-static {v6, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v13, v4, [Z

    .line 1852
    new-instance v14, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-direct {v14, v10}, Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1853
    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v10

    .line 1854
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v10, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    sget v10, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v11, "Cancel"

    .line 1855
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda4;

    invoke-direct {v11, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v6, v10, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    sget v10, Lorg/telegram/messenger/R$string;->VoipPeerVideoOutdatedMakeVoice:I

    const-string v11, "VoipPeerVideoOutdatedMakeVoice"

    .line 1856
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda7;

    invoke-direct {v11, v0, v13}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/VoIPFragment;[Z)V

    invoke-virtual {v6, v10, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v6

    .line 1872
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    .line 1873
    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1874
    new-instance v10, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0, v13}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/VoIPFragment;[Z)V

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_6

    .line 1880
    :cond_d
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    .line 1881
    sget v10, Lorg/telegram/messenger/R$string;->VoipPeerOutdated:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v6, v11, v1

    const-string v6, "VoipPeerOutdated"

    invoke-static {v6, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1882
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_e
    const-string v10, "ERROR_PRIVACY"

    .line 1884
    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1885
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1886
    sget v10, Lorg/telegram/messenger/R$string;->CallNotAvailable:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v6, v11, v1

    const-string v6, "CallNotAvailable"

    invoke-static {v6, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1887
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_f
    const-string v10, "ERROR_AUDIO_IO"

    .line 1888
    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v6, "Error initializing audio hardware"

    .line 1889
    invoke-direct {v0, v6}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_10
    const-string v10, "ERROR_LOCALIZED"

    .line 1890
    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1891
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    goto :goto_6

    :cond_11
    const-string v10, "ERROR_CONNECTION_SERVICE"

    .line 1892
    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1893
    sget v6, Lorg/telegram/messenger/R$string;->VoipErrorUnknown:I

    const-string v10, "VoipErrorUnknown"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/VoIPFragment;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1895
    :cond_12
    new-instance v6, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda27;

    invoke-direct {v6, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v10, 0x3e8

    invoke-static {v6, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 1898
    :cond_13
    new-instance v6, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda24;

    invoke-direct {v6, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v10, 0x3e8

    invoke-static {v6, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 1746
    :cond_14
    invoke-direct {v0, v2}, Lorg/telegram/ui/VoIPFragment;->updateKeyView(Z)V

    .line 1747
    iget v6, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v10, 0x5

    if-ne v6, v10, :cond_16

    .line 1748
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->wasEstablished:Z

    if-nez v6, :cond_15

    .line 1749
    iget v11, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    if-eq v11, v10, :cond_15

    .line 1750
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v11, Lorg/telegram/messenger/R$string;->VoipConnecting:I

    move-object/from16 v12, v16

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    :cond_15
    move v11, v1

    goto :goto_7

    .line 1753
    :cond_16
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->wasEstablished:Z

    move v6, v1

    move v11, v6

    move v13, v4

    goto :goto_8

    :cond_17
    move-object/from16 v12, v16

    .line 1717
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipConnecting:I

    invoke-static {v12, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->setText(Ljava/lang/String;ZZ)V

    :cond_18
    :goto_6
    move v6, v1

    move v11, v6

    :goto_7
    move v13, v11

    .line 1902
    :goto_8
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-eqz v10, :cond_19

    return-void

    .line 1906
    :cond_19
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v10, :cond_1b

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v10, :cond_1a

    goto :goto_9

    :cond_1a
    move v14, v1

    goto :goto_a

    :cond_1b
    :goto_9
    move v14, v4

    :goto_a
    if-eqz v5, :cond_1f

    .line 1908
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result v10

    const/4 v12, 0x2

    if-ne v10, v12, :cond_1c

    move v10, v4

    goto :goto_b

    :cond_1c
    move v10, v1

    :goto_b
    iput-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    .line 1909
    invoke-virtual {v5, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v10

    if-eq v10, v12, :cond_1e

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v10

    if-ne v10, v4, :cond_1d

    goto :goto_c

    :cond_1d
    move v10, v1

    goto :goto_d

    :cond_1e
    :goto_c
    move v10, v4

    :goto_d
    iput-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v10, :cond_1f

    .line 1910
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez v10, :cond_1f

    .line 1911
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    :cond_1f
    if-eqz v2, :cond_20

    .line 1916
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->saveRelativePosition()V

    .line 1917
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->saveRelativePosition()V

    .line 1920
    :cond_20
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v10, :cond_23

    .line 1921
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    if-nez v10, :cond_21

    .line 1922
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {v10, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_21
    if-eqz v2, :cond_22

    .line 1925
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_e

    .line 1927
    :cond_22
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1928
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v10, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1930
    :goto_e
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v10}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v10

    if-nez v10, :cond_23

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->enterFromPiP:Z

    if-nez v10, :cond_23

    .line 1931
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    .line 1935
    :cond_23
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v10, :cond_26

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v10, :cond_24

    goto :goto_f

    .line 1938
    :cond_24
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v2, :cond_25

    .line 1940
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_10

    .line 1942
    :cond_25
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1943
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_10

    .line 1936
    :cond_26
    :goto_f
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1947
    :goto_10
    iget-boolean v12, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v12, :cond_27

    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v10, :cond_28

    .line 1948
    :cond_27
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    :cond_28
    if-eqz v12, :cond_29

    .line 1951
    iget-boolean v10, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v10, :cond_29

    move v10, v4

    goto :goto_11

    :cond_29
    move v10, v1

    .line 1953
    :goto_11
    invoke-direct {v0, v2, v14}, Lorg/telegram/ui/VoIPFragment;->showCallingUserAvatarMini(ZZ)V

    .line 1954
    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2a

    move/from16 v17, v1

    goto :goto_12

    :cond_2a
    const/16 v12, 0x87

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/16 v17, 0xc

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    add-int v12, v12, v17

    move/from16 v17, v12

    .line 1955
    :goto_12
    invoke-direct {v0, v11, v2}, Lorg/telegram/ui/VoIPFragment;->showAcceptDeclineView(ZZ)V

    .line 1956
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    iget-boolean v12, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v12, :cond_2c

    iget-boolean v12, v0, Lorg/telegram/ui/VoIPFragment;->deviceIsLocked:Z

    if-eqz v12, :cond_2b

    goto :goto_13

    :cond_2b
    move v12, v1

    goto :goto_14

    :cond_2c
    :goto_13
    move v12, v4

    :goto_14
    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->setLockOnScreen(Z)V

    .line 1957
    iget v11, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2e

    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v11, :cond_2d

    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v11, :cond_2e

    :cond_2d
    move v11, v4

    goto :goto_15

    :cond_2e
    move v11, v1

    :goto_15
    iput-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-nez v11, :cond_2f

    .line 1958
    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v11, :cond_2f

    .line 1959
    invoke-direct {v0, v4}, Lorg/telegram/ui/VoIPFragment;->showUi(Z)V

    .line 1962
    :cond_2f
    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v11, :cond_30

    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->canHideUI:Z

    if-eqz v11, :cond_30

    iget-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    if-nez v11, :cond_30

    if-eqz v5, :cond_30

    .line 1963
    iget-object v11, v0, Lorg/telegram/ui/VoIPFragment;->hideUIRunnable:Ljava/lang/Runnable;

    move/from16 v20, v10

    const-wide/16 v9, 0xbb8

    invoke-static {v11, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1964
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->hideUiRunnableWaiting:Z

    goto :goto_16

    :cond_30
    move/from16 v20, v10

    :goto_16
    const/16 v9, 0xb

    const-wide/16 v10, 0x96

    if-eqz v2, :cond_36

    .line 1968
    iget v12, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-ne v12, v9, :cond_31

    .line 1969
    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_18

    .line 1971
    :cond_31
    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v4, :cond_33

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-nez v4, :cond_32

    goto :goto_17

    .line 1978
    :cond_32
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_18

    .line 1972
    :cond_33
    :goto_17
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_34

    .line 1973
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1974
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1976
    :cond_34
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1981
    :goto_18
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/16 v12, 0x10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v12, v12

    iget-boolean v15, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v15, :cond_35

    const/16 v15, 0x50

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    goto :goto_19

    :cond_35
    move v15, v1

    :goto_19
    sub-int/2addr v12, v15

    int-to-float v12, v12

    invoke-virtual {v4, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1c

    .line 1983
    :cond_36
    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-nez v4, :cond_37

    .line 1984
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1986
    :cond_37
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    iget-boolean v15, v0, Lorg/telegram/ui/VoIPFragment;->lockOnScreen:Z

    if-eqz v15, :cond_38

    move v15, v3

    goto :goto_1a

    :cond_38
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_1a
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1987
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    const/16 v15, 0x10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    neg-int v15, v15

    iget-boolean v12, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    if-eqz v12, :cond_39

    const/16 v12, 0x50

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    goto :goto_1b

    :cond_39
    move v12, v1

    :goto_1b
    sub-int/2addr v15, v12

    int-to-float v12, v15

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1990
    :goto_1c
    iget v4, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 v12, 0xa

    if-eq v4, v12, :cond_3a

    if-eq v4, v9, :cond_3a

    .line 1991
    invoke-direct {v0, v2}, Lorg/telegram/ui/VoIPFragment;->updateButtons(Z)V

    :cond_3a
    if-eqz v13, :cond_3b

    .line 1995
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showTimer(Z)V

    .line 1998
    :cond_3b
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {v4, v6, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showReconnect(ZZ)V

    .line 2000
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3c

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz v4, :cond_3c

    const/16 v4, 0x18

    .line 2001
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int v17, v17, v4

    .line 2002
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 2004
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_3c

    const/16 v12, 0x14

    .line 2006
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v4, v6

    mul-int/2addr v13, v4

    add-int v17, v17, v13

    .line 2011
    :cond_3c
    iget v4, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-ne v4, v9, :cond_3d

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v4, :cond_3d

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-nez v4, :cond_3d

    const/16 v4, 0x18

    .line 2012
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v17, v17, v4

    .line 2015
    :cond_3d
    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v4, :cond_3e

    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v4, :cond_3f

    :cond_3e
    const/16 v4, 0x3c

    .line 2016
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v17, v17, v4

    :cond_3f
    move/from16 v4, v17

    if-eqz v2, :cond_43

    .line 2020
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->emojiExpanded:Z

    if-eqz v6, :cond_41

    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v6, :cond_40

    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v6, :cond_41

    .line 2021
    :cond_40
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v12, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1d

    .line 2023
    :cond_41
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2025
    :goto_1d
    iget v6, v0, Lorg/telegram/ui/VoIPFragment;->statusLayoutAnimateToOffset:I

    if-eq v4, v6, :cond_44

    .line 2026
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v12, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-ne v12, v9, :cond_42

    goto :goto_1e

    :cond_42
    const-wide/16 v7, 0x0

    :goto_1e
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1f

    .line 2029
    :cond_43
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2031
    :cond_44
    :goto_1f
    iput v4, v0, Lorg/telegram/ui/VoIPFragment;->statusLayoutAnimateToOffset:I

    if-eqz v5, :cond_45

    .line 2032
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    goto :goto_20

    :cond_45
    move v4, v1

    .line 2033
    :goto_20
    iget v6, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-eq v6, v9, :cond_48

    const/16 v7, 0x11

    if-eq v6, v7, :cond_48

    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v6, :cond_46

    if-eqz v4, :cond_47

    :cond_46
    iget-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v4, :cond_48

    :cond_47
    const/4 v4, 0x1

    goto :goto_21

    :cond_48
    move v4, v1

    :goto_21
    iput-boolean v4, v0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    const/4 v4, 0x0

    if-eqz v5, :cond_56

    .line 2037
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v6, :cond_49

    .line 2038
    iget-object v6, v5, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    .line 2040
    :cond_49
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setIsScreencast(Z)V

    .line 2041
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v6, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 2042
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v6, :cond_4a

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->isScreencast()Z

    move-result v6

    if-nez v6, :cond_4a

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v6, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    goto :goto_22

    :cond_4a
    move-object v6, v4

    :goto_22
    if-eqz v20, :cond_4b

    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    goto :goto_23

    :cond_4b
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    :goto_23
    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    if-eqz v2, :cond_4c

    .line 2045
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->beforeLayoutChanges()V

    .line 2047
    :cond_4c
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 2048
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v7, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    sget v8, Lorg/telegram/messenger/R$string;->VoipMyMicrophoneState:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "self-muted"

    invoke-virtual {v6, v7, v8, v9, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_24

    .line 2050
    :cond_4d
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    const-string v7, "self-muted"

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 2052
    :goto_24
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    const-string v7, "video"

    const-string v8, "muted"

    if-nez v6, :cond_4e

    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v6, :cond_52

    :cond_4e
    iget v6, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v9, 0x3

    if-eq v6, v9, :cond_4f

    const/4 v9, 0x5

    if-ne v6, v9, :cond_52

    :cond_4f
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    cmp-long v6, v12, v18

    if-lez v6, :cond_52

    .line 2053
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteAudioState()I

    move-result v6

    if-nez v6, :cond_50

    .line 2054
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v9, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    sget v12, Lorg/telegram/messenger/R$string;->VoipUserMicrophoneIsOff:I

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    iget-object v13, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->ellipsize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v15, v1

    const-string v13, "VoipUserMicrophoneIsOff"

    invoke-static {v13, v12, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v9, v12, v8, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_25

    .line 2056
    :cond_50
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 2058
    :goto_25
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteVideoState()I

    move-result v6

    if-nez v6, :cond_51

    .line 2059
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v8, Lorg/telegram/messenger/R$drawable;->calls_camera_mini:I

    sget v9, Lorg/telegram/messenger/R$string;->VoipUserCameraIsOff:I

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    iget-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->ellipsize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v13, v1

    const-string v12, "VoipUserCameraIsOff"

    invoke-static {v12, v9, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v7, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_27

    .line 2061
    :cond_51
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    goto :goto_27

    .line 2064
    :cond_52
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getRemoteAudioState()I

    move-result v6

    if-nez v6, :cond_53

    .line 2065
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    sget v9, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    sget v12, Lorg/telegram/messenger/R$string;->VoipUserMicrophoneIsOff:I

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    iget-object v13, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->ellipsize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v15, v1

    const-string v13, "VoipUserMicrophoneIsOff"

    invoke-static {v13, v12, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v9, v12, v8, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->addNotification(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_26

    .line 2067
    :cond_53
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 2069
    :goto_26
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->removeNotification(Ljava/lang/String;)V

    .line 2072
    :goto_27
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_54

    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v6, :cond_54

    iget-object v6, v5, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v6, :cond_54

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-nez v6, :cond_54

    iget-object v6, v5, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    iget-boolean v7, v6, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    if-nez v7, :cond_54

    const/4 v7, 0x1

    .line 2073
    iput-boolean v7, v6, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;->tapToVideoTooltipWasShowed:Z

    .line 2074
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    const/4 v8, 0x6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    neg-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 2075
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getX()F

    move-result v8

    add-float/2addr v7, v8

    const/16 v8, 0xe

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v6, v3, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2076
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_28

    .line 2077
    :cond_54
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_55

    .line 2078
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_55
    :goto_28
    if-eqz v2, :cond_56

    .line 2082
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->animateLayoutChanges()V

    .line 2086
    :cond_56
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->getChildsHight()I

    move-result v6

    .line 2088
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v7, v6, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setBottomOffset(IZ)V

    .line 2089
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v7, v6, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setBottomOffset(IZ)V

    .line 2090
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    .line 2091
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-boolean v7, v0, Lorg/telegram/ui/VoIPFragment;->uiVisible:Z

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setUiVisible(Z)V

    .line 2093
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v6, :cond_59

    .line 2094
    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v6, :cond_58

    iget-boolean v6, v0, Lorg/telegram/ui/VoIPFragment;->cameraForceExpanded:Z

    if-eqz v6, :cond_57

    goto :goto_29

    :cond_57
    const/4 v6, 0x2

    .line 2097
    invoke-direct {v0, v6, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    const/4 v6, 0x1

    goto :goto_2a

    :cond_58
    :goto_29
    const/4 v6, 0x1

    .line 2095
    invoke-direct {v0, v6, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    goto :goto_2a

    :cond_59
    const/4 v6, 0x1

    .line 2100
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/VoIPFragment;->showFloatingLayout(IZ)V

    :goto_2a
    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v20, :cond_5b

    .line 2103
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5b

    .line 2104
    iget-object v7, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setIsActive(Z)V

    .line 2105
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_5a

    .line 2106
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2107
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2108
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2109
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2111
    :cond_5a
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2112
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->isAppearing:Z

    .line 2113
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2114
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2115
    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda21;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    .line 2116
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2119
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2120
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_5b
    if-nez v20, :cond_5c

    .line 2121
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5c

    .line 2122
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setIsActive(Z)V

    .line 2123
    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/VoIPFragment$19;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$19;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 2130
    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2131
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2134
    :cond_5c
    :goto_2b
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->restoreRelativePosition()V

    .line 2135
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->restoreRelativePosition()V

    .line 2137
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateSpeakerPhoneIcon()V

    .line 2139
    iget v2, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5e

    .line 2140
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/voip/VoIpCoverView;->onConnected()V

    .line 2141
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->onConnected()V

    .line 2142
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isConnectedCalled()Z

    move-result v2

    if-nez v2, :cond_5e

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 2144
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 2145
    iget v3, v0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5d

    const/4 v7, 0x1

    goto :goto_2c

    :cond_5d
    move v7, v1

    .line 2146
    :goto_2c
    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    aget v4, v2, v1

    const/16 v6, 0x6a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    const/4 v6, 0x1

    aget v2, v2, v6

    const/16 v8, 0x6a

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v2, v8

    invoke-virtual {v3, v4, v2, v7}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->switchToCallConnected(IIZ)V

    goto :goto_2d

    :cond_5e
    const/4 v6, 0x1

    .line 2149
    :goto_2d
    iget-boolean v2, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v2, :cond_60

    iget-boolean v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v2, :cond_5f

    goto :goto_2e

    :cond_5f
    move v4, v1

    goto :goto_2f

    :cond_60
    :goto_2e
    move v4, v6

    .line 2150
    :goto_2f
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->voIpSnowView:Lorg/telegram/ui/Components/voip/VoIpSnowView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/voip/VoIpSnowView;->setState(Z)V

    .line 2151
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/voip/VoIpCoverView;->setState(Z)V

    .line 2152
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->setHasVideo(Z)V

    .line 2154
    iget-boolean v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v2, :cond_61

    if-nez v14, :cond_61

    iget-boolean v2, v0, Lorg/telegram/ui/VoIPFragment;->isNearEar:Z

    if-eqz v2, :cond_61

    .line 2155
    iput-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->isNearEar:Z

    if-eqz v5, :cond_61

    .line 2157
    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->playStartRecordSound()V

    :cond_61
    if-nez v4, :cond_62

    .line 2162
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_63

    .line 2163
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2164
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_30

    .line 2167
    :cond_62
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_63

    .line 2168
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2169
    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2172
    :cond_63
    :goto_30
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->stopAnimatingBgRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2173
    iget v1, v0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_64

    .line 2174
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->stopAnimatingBgRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_64
    :goto_31
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
    .locals 24

    move-object/from16 v15, p0

    .line 1490
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1492
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1496
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

    .line 1497
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->yOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1499
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    .line 1500
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v7

    .line 1501
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1510
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->isExpanding()Z

    move-result v2

    const v4, 0x3ecccccd    # 0.4f

    if-eqz v2, :cond_1

    move v14, v4

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3e800000    # 0.25f

    move v14, v2

    .line 1512
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

    .line 1513
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

    .line 1514
    iget-boolean v2, v15, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    const/4 v10, 0x4

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 1515
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 1516
    iget-boolean v13, v15, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v13, :cond_2

    if-eqz v2, :cond_2

    .line 1517
    iget-object v13, v15, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    int-to-float v2, v2

    div-float/2addr v13, v2

    mul-float/2addr v13, v14

    mul-float/2addr v13, v4

    .line 1518
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v9, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v13

    sub-float/2addr v2, v9

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 1519
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

    .line 1520
    iget-object v2, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v9, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v13

    sub-float/2addr v2, v9

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    .line 1521
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
    move/from16 v13, v18

    move/from16 v0, v19

    move v1, v0

    const/4 v2, 0x0

    :goto_1
    move v6, v0

    move v9, v1

    move v4, v13

    goto :goto_2

    .line 1530
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

    .line 1531
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

    move v9, v1

    move v4, v14

    const/4 v2, 0x1

    .line 1534
    :goto_2
    iget-boolean v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move v13, v0

    goto :goto_3

    :cond_4
    move/from16 v13, v18

    .line 1535
    :goto_3
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v19

    div-float v10, v0, v4

    const/high16 v21, 0x3f800000    # 1.0f

    .line 1539
    iget-boolean v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_6

    .line 1540
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v0, v19

    goto :goto_4

    :cond_5
    move/from16 v0, v18

    :goto_4
    move v1, v0

    goto :goto_5

    :cond_6
    move/from16 v1, v19

    :goto_5
    if-eqz p1, :cond_8

    if-eqz v2, :cond_7

    .line 1545
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1546
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1547
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1548
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1549
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setCornerRadius(F)V

    .line 1550
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1552
    :cond_7
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1553
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1554
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1555
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1556
    iget-object v0, v15, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/16 v22, 0x6

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v19

    div-float/2addr v8, v14

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [F

    if-eqz p1, :cond_9

    move/from16 v8, v19

    goto :goto_6

    :cond_9
    move/from16 v8, v18

    :goto_6
    const/16 v22, 0x0

    aput v8, v0, v22

    if-eqz p1, :cond_a

    move/from16 v8, v18

    goto :goto_7

    :cond_a
    move/from16 v8, v19

    :goto_7
    const/16 v20, 0x1

    aput v8, v0, v20

    .line 1558
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    if-eqz p1, :cond_b

    move/from16 v0, v18

    goto :goto_8

    :cond_b
    move/from16 v0, v19

    .line 1560
    :goto_8
    iput v0, v15, Lorg/telegram/ui/VoIPFragment;->enterTransitionProgress:F

    .line 1561
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    .line 1565
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda3;

    move-object/from16 p1, v0

    move/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v8

    move v8, v9

    move v9, v13

    move/from16 v18, v11

    move/from16 v11, v21

    move/from16 v20, v12

    move/from16 v12, v19

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v15, v16

    move/from16 v16, v20

    invoke-direct/range {v0 .. v18}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/VoIPFragment;ZFFFFFFFFFFFFFFFF)V

    move-object/from16 v1, p1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 602
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/VoIPFragment;->touchSlop:F

    .line 603
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 605
    new-instance v8, Lorg/telegram/ui/VoIPFragment$2;

    invoke-direct {v8, v0, v7}, Lorg/telegram/ui/VoIPFragment$2;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 773
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 774
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/high16 v10, -0x1000000

    .line 775
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 776
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateSystemBarColors()V

    .line 777
    iput-object v8, v0, Lorg/telegram/ui/VoIPFragment;->fragmentView:Landroid/view/ViewGroup;

    const/4 v11, 0x1

    .line 778
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 780
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    .line 781
    new-instance v12, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZZZ)V

    iput-object v12, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 782
    iget-object v1, v12, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v2, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v1, v2}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 783
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    .line 784
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    .line 785
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FIT:I

    iput v3, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    .line 788
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpCoverView;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v4, v5}, Lorg/telegram/ui/Components/voip/VoIpCoverView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->voIpCoverView:Lorg/telegram/ui/Components/voip/VoIpCoverView;

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpSnowView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIpSnowView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->voIpSnowView:Lorg/telegram/ui/Components/voip/VoIpSnowView;

    const/16 v4, 0xdc

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 793
    new-instance v1, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    invoke-direct {v1, v4, v6}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 794
    sget-object v4, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;->PORTRAIT:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;

    invoke-static {v4}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;->ofDeviceScreen(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes$Orientation;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;

    move-result-object v4

    .line 795
    new-instance v6, Lorg/telegram/ui/VoIPFragment$3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/VoIPFragment$3;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v4, v6}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->startDithering(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;Lorg/telegram/ui/Components/BackgroundGradientDrawable$Listener;)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    .line 802
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    .line 803
    new-instance v4, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda39;

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setDelegate(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;)V

    .line 804
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    .line 805
    iput-boolean v11, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraIsFullscreen:Z

    .line 806
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-direct {v1, v7, v11, v9}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 807
    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setIsCamera(Z)V

    .line 808
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    .line 809
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    new-instance v6, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda12;

    invoke-direct {v6, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setOnTapListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 822
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 824
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    .line 825
    iput-boolean v11, v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->alwaysFloating:Z

    .line 826
    invoke-virtual {v1, v11, v9}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setFloatingMode(ZZ)V

    .line 827
    new-instance v1, Lorg/webrtc/TextureViewRenderer;

    invoke-direct {v1, v7}, Lorg/webrtc/TextureViewRenderer;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    .line 828
    invoke-virtual {v1, v11}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    .line 829
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v9}, Lorg/webrtc/TextureViewRenderer;->setIsCamera(Z)V

    .line 830
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-virtual {v1, v6}, Lorg/webrtc/TextureViewRenderer;->setFpsReduction(F)V

    .line 831
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v2}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 833
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v2, -0xe4e0dd

    .line 834
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 836
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v6, -0x2

    const/16 v12, 0x11

    invoke-static {v3, v6, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v1, v2, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setOnTapListener(Landroid/view/View$OnClickListener;)V

    .line 849
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 851
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserCameraFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v8, v1, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniFloatingLayout:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 854
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    .line 855
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v15, v5, [I

    aput v9, v15, v9

    const/16 v6, 0x7f

    invoke-static {v10, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    aput v6, v15, v11

    invoke-direct {v13, v14, v15}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 856
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomShadow:Landroid/view/View;

    const/16 v6, 0xa0

    const/16 v13, 0x50

    invoke-static {v3, v6, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v8, v1, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    .line 859
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v5, [I

    const/16 v5, 0x66

    invoke-static {v10, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    aput v5, v4, v9

    aput v9, v4, v11

    invoke-direct {v14, v15, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 860
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->topShadow:Landroid/view/View;

    const/16 v4, 0x30

    invoke-static {v3, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    new-instance v1, Lorg/telegram/ui/VoIPFragment$4;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$4;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    .line 869
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 870
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x1e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v9, v9, v9, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 871
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 872
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    sget v4, Lorg/telegram/messenger/R$string;->VoipHintEncryptionKey:I

    const-string v5, "VoipHintEncryptionKey"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda13;

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    new-instance v1, Lorg/telegram/ui/Components/voip/HideEmojiTextView;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v4}, Lorg/telegram/ui/Components/voip/HideEmojiTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiTextView:Landroid/widget/TextView;

    .line 885
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    .line 886
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 888
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 898
    new-instance v1, Lorg/telegram/ui/Components/voip/EmojiRationalLayout;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v4}, Lorg/telegram/ui/Components/voip/EmojiRationalLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    .line 899
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 901
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    .line 902
    sget v4, Lorg/telegram/messenger/R$string;->VoipCallEncryptionEndToEnd:I

    const-string v6, "VoipCallEncryptionEndToEnd"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v1, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 904
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 905
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 906
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 908
    new-instance v1, Lorg/telegram/ui/VoIPFragment$5;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$5;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    .line 917
    invoke-virtual {v1, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 918
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 919
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 920
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/16 v6, 0x12c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v4, v6, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 921
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->CallEmojiKeyTooltip:I

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v1, v10, v9

    const-string v1, "CallEmojiKeyTooltip"

    invoke-static {v1, v6, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 924
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTopTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 925
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalTextView:Landroid/widget/TextView;

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x0

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v6, v10, v12, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v1, v9

    :goto_0
    const/4 v4, 0x4

    const/4 v6, 0x6

    if-ge v1, v4, :cond_1

    .line 929
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    new-instance v10, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v10, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    aput-object v10, v4, v1

    .line 930
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 931
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->emojiViews:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v10, v10, v1

    const/16 v19, 0x19

    const/16 v20, 0x19

    if-nez v1, :cond_0

    move/from16 v21, v9

    goto :goto_1

    :cond_0
    move/from16 v21, v6

    :goto_1
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    :cond_1
    new-instance v1, Lorg/telegram/ui/VoIPFragment$6;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$6;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    .line 959
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 960
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 961
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 963
    new-instance v1, Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    .line 964
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 965
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 966
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10, v9}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/4 v12, 0x0

    iget-object v14, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v10, v12, v1, v14}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 967
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/16 v4, 0x87

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v10, 0x2

    div-int/2addr v4, v10

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setRoundRadius(I)V

    .line 969
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/high16 v4, 0x41e00000    # 28.0f

    .line 970
    invoke-virtual {v1, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 971
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 972
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v10, 0x14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v1, v4, v10, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 973
    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 975
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 976
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 977
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 978
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 979
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->callingUserTitle:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x1

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v23, 0x8

    const/16 v24, 0x6

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v4}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    const/4 v4, 0x4

    .line 982
    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 983
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 985
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 986
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 987
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v9, v9, v9, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 989
    new-instance v1, Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/EndCloseLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    .line 990
    new-instance v1, Lorg/telegram/ui/Components/voip/RateCallLayout;

    iget-object v4, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v4}, Lorg/telegram/ui/Components/voip/RateCallLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    .line 991
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 992
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 994
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    const/16 v18, 0xcc

    const/16 v19, 0xcc

    const/16 v22, 0x5d

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->statusLayout:Landroid/widget/LinearLayout;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    const/16 v22, 0x87

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->hideEmojiLayout:Landroid/widget/FrameLayout;

    const/16 v18, -0x2

    const/16 v20, 0x1

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiRationalLayout:Landroid/widget/LinearLayout;

    const/16 v18, 0x130

    const/16 v20, 0x31

    const/16 v22, 0x76

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->emojiLayout:Landroid/widget/LinearLayout;

    const/16 v18, -0x2

    const/16 v20, 0x1

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->endCloseLayout:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    const/16 v18, -0x1

    const/16 v19, 0x34

    const/16 v20, 0x5

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->rateCallLayout:Lorg/telegram/ui/Components/voip/RateCallLayout;

    const/16 v19, -0x2

    const/16 v20, 0x3

    const/16 v22, 0x17c

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    .line 1003
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v10}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    .line 1004
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v10}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    .line 1005
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v10}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    .line 1006
    new-instance v1, Lorg/telegram/ui/VoIPFragment$7;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$7;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/16 v1, 0x96

    .line 1014
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    const/16 v12, 0x64

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v10, v14}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1015
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1016
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1017
    iget-object v10, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    int-to-long v14, v1

    invoke-virtual {v10, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v14, 0xfa

    invoke-virtual {v1, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1018
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1019
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1020
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1021
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v10, 0xa6

    int-to-long v9, v10

    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1022
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1023
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1024
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1025
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v9, 0xb6

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1026
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1027
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1028
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1029
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/16 v9, 0xc6

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1031
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->bottomSpeakerBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1032
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->bottomVideoBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1033
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->bottomMuteBtn:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1034
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    iget-object v9, v0, Lorg/telegram/ui/VoIPFragment;->bottomEndCallBtn:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1036
    new-instance v1, Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    .line 1037
    new-instance v9, Lorg/telegram/ui/VoIPFragment$8;

    invoke-direct {v9, v0}, Lorg/telegram/ui/VoIPFragment$8;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->setListener(Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;)V

    .line 1083
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    const v9, 0x3f933333    # 1.15f

    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleX(F)V

    .line 1084
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 1086
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->buttonsLayout:Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    const/4 v9, -0x2

    invoke-static {v3, v9, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v12, 0x1b

    :goto_2
    move/from16 v24, v12

    .line 1088
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->acceptDeclineView:Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    const/16 v19, -0x1

    const/16 v20, 0xba

    const/16 v21, 0x50

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v22, v24

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/16 v9, 0x4c

    .line 1091
    invoke-static {v3, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_call_minimize_shadow:I

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1093
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/16 v9, 0x10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v1, v10, v12, v14, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1094
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$string;->Back:I

    const-string v10, "Back"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1095
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    const/16 v9, 0x33

    const/16 v10, 0x38

    invoke-static {v10, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    new-instance v1, Lorg/telegram/ui/VoIPFragment$9;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/VoIPFragment$9;-><init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    .line 1109
    sget v9, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    const-string v12, "VoipSpeaker"

    invoke-static {v12, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/16 v9, 0x4c

    invoke-static {v3, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1111
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v9, v12, v14, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1112
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    const/16 v3, 0x35

    invoke-static {v10, v10, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1114
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->speakerPhoneIcon:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->isLockOnScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1142
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    iget-object v2, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    .line 1143
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1144
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda32;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->setOnViewsUpdated(Ljava/lang/Runnable;)V

    .line 1148
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->notificationsLayout:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    const/16 v19, -0x1

    const/16 v20, 0xc8

    const/16 v21, 0x50

    const/16 v22, 0x10

    const/16 v23, 0x0

    const/16 v24, 0x10

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpHintView;

    const/4 v2, 0x3

    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-direct {v1, v7, v2, v3, v11}, Lorg/telegram/ui/Components/voip/VoIpHintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Z)V

    .line 1151
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1152
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 1153
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda29;

    invoke-direct {v2, v0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    .line 1154
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1155
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setHideByTouch(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/high16 v2, 0x43a00000    # 320.0f

    .line 1156
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1157
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/16 v2, 0xa

    .line 1158
    invoke-virtual {v1, v2, v6, v2, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/high16 v3, 0x41000000    # 8.0f

    .line 1159
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1160
    sget v3, Lorg/telegram/messenger/R$string;->TapToTurnCamera:I

    const-string v4, "TapToTurnCamera"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1161
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->tapToVideoTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v22, 0x13

    const/16 v24, 0x13

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpHintView;

    iget-object v3, v0, Lorg/telegram/ui/VoIPFragment;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    const/4 v4, 0x0

    invoke-direct {v1, v7, v11, v3, v4}, Lorg/telegram/ui/Components/voip/VoIpHintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Z)V

    .line 1164
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1165
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const-wide/16 v9, 0xfa0

    .line 1166
    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1167
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setHideByTouch(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/high16 v3, 0x43a00000    # 320.0f

    .line 1168
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1169
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 1170
    invoke-virtual {v1, v2, v6, v2, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    .line 1171
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1172
    sget v2, Lorg/telegram/messenger/R$string;->VoipHintEncryptionKey:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1173
    iget-object v1, v0, Lorg/telegram/ui/VoIPFragment;->encryptionTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 1177
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1179
    iget-boolean v2, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez v2, :cond_5

    .line 1180
    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->video:Z

    if-eqz v1, :cond_4

    move v9, v11

    goto :goto_3

    :cond_4
    move v9, v4

    :goto_3
    iput-boolean v9, v0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 1182
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
    .locals 2

    .line 524
    sget p2, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    if-ne p1, p2, :cond_0

    .line 525
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    const/16 p2, 0x11

    if-ne p1, p2, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserMiniTextureRenderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 529
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->initRenderers()V

    .line 530
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    goto :goto_0

    .line 532
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 533
    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPFragment;->updateKeyView(Z)V

    goto :goto_0

    .line 534
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    if-ne p1, p2, :cond_2

    .line 535
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    goto :goto_0

    .line 536
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_3

    .line 537
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 p3, 0x41700000    # 15.0f

    mul-float/2addr p2, p3

    float-to-double p2, p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setAmplitude(D)V

    goto :goto_0

    .line 538
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->nearEarEvent:I

    if-ne p1, p2, :cond_4

    .line 539
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isNearEar:Z

    if-eqz p1, :cond_4

    .line 541
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserPhotoViewMini:Lorg/telegram/ui/Components/voip/ImageWithWavesView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/voip/ImageWithWavesView;->setMute(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 569
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

    .line 583
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 584
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public onMediaStateUpdated(II)V
    .locals 0

    .line 574
    iget p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 575
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 576
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 578
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public onPauseInternal()V
    .locals 9

    .line 2907
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2910
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 2911
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    goto :goto_0

    .line 2913
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 2916
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result v3

    .line 2918
    iget-boolean v4, p0, Lorg/telegram/ui/VoIPFragment;->canSwitchToPip:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 2919
    sget-object v4, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v4, v4, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 2920
    sget-object v6, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v7, v6, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v8, v6, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v6, v6, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v7, v8, v6, v4, v5}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    if-lt v1, v2, :cond_1

    .line 2921
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_1

    .line 2922
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 2923
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 2927
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    .line 2928
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2930
    invoke-virtual {v0, v5, v1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    :cond_3
    return-void
.end method

.method public onResumeInternal()V
    .locals 4

    .line 2936
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2937
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->finish()V

    .line 2939
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2941
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    .line 2942
    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2944
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    goto :goto_0

    .line 2946
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish()V

    .line 2949
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

    .line 2735
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2738
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->dismiss(ZZ)V

    return-void
.end method

.method public onScreenOnChange(Z)V
    .locals 0

    return-void
.end method

.method public onSignalBarsCountChanged(I)V
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 551
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->signalBarWasReceived:Z

    .line 553
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->statusTextView:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->gradientLayout:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isConnectedCalled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->signalBarWasReceived:Z

    if-eqz v0, :cond_1

    .line 554
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/VoIPFragment;I)V

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 513
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    if-eq v0, p1, :cond_0

    .line 514
    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    .line 515
    iput p1, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    .line 516
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    if-eqz p1, :cond_0

    .line 517
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    :cond_0
    return-void
.end method

.method public onVideoAvailableChange(Z)V
    .locals 1

    .line 589
    iget v0, p0, Lorg/telegram/ui/VoIPFragment;->currentState:I

    iput v0, p0, Lorg/telegram/ui/VoIPFragment;->previousState:I

    if-eqz p1, :cond_0

    .line 590
    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 591
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPFragment;->isVideoCall:Z

    .line 593
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    return-void
.end method

.method public replaceEmojiToLottieFrame(Ljava/lang/CharSequence;[I)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 5

    .line 2977
    instance-of v0, p1, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2980
    :cond_0
    check-cast p1, Landroid/text/Spannable;

    .line 2981
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v2, Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 2982
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {p1, v3, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_4

    if-nez p2, :cond_1

    move p2, v3

    goto :goto_0

    .line 2984
    :cond_1
    aget p2, p2, v3

    :goto_0
    array-length v2, v0

    sub-int/2addr p2, v2

    if-nez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    array-length p1, p1

    :goto_1
    sub-int/2addr p2, p1

    if-lez p2, :cond_3

    goto :goto_2

    .line 2988
    :cond_3
    array-length p1, v0

    if-lez p1, :cond_4

    aget-object p1, v0, v3

    .line 2989
    iget p2, p0, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/messenger/Emoji$EmojiSpan;->emoji:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public startTransitionFromPiP()V
    .locals 3

    const/4 v0, 0x1

    .line 1431
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->enterFromPiP:Z

    .line 1432
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1433
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1434
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    .line 1435
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    .line 1437
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1438
    invoke-direct {p0}, Lorg/telegram/ui/VoIPFragment;->updateViewState()V

    .line 1439
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    .line 1440
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1441
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->prepareForTransition()V

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1443
    new-instance v0, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPFragment$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public switchToPip()V
    .locals 6

    .line 1371
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1374
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->isFinished:Z

    .line 1375
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1376
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 1377
    sget-object v2, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v3, v2, Lorg/telegram/ui/VoIPFragment;->activity:Landroid/app/Activity;

    iget v4, v2, Lorg/telegram/ui/VoIPFragment;->currentAccount:I

    iget-object v2, v2, Lorg/telegram/ui/VoIPFragment;->windowView:Lorg/telegram/ui/Components/voip/VoIPWindowView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3, v4, v2, v1, v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->show(Landroid/app/Activity;IIII)V

    .line 1378
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v1, :cond_1

    .line 1379
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    .line 1380
    sget-object v1, Lorg/telegram/ui/VoIPFragment;->instance:Lorg/telegram/ui/VoIPFragment;

    iget-object v1, v1, Lorg/telegram/ui/VoIPFragment;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->bottomInset:I

    .line 1383
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->getInstance()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 1387
    :cond_2
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

    .line 1388
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

    .line 1389
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

    .line 1390
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

    .line 1391
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

    .line 1392
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

    .line 1393
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

    .line 1394
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

    .line 1395
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

    .line 1397
    sput-boolean v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    .line 1398
    iput-boolean v0, p0, Lorg/telegram/ui/VoIPFragment;->switchingToPip:Z

    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPFragment;->createPiPTransition(Z)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 1405
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1406
    new-instance v1, Lorg/telegram/ui/VoIPFragment$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPFragment$14;-><init>(Lorg/telegram/ui/VoIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1425
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1426
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1427
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_4
    :goto_0
    return-void
.end method
