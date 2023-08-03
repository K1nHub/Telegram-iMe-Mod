.class public Lorg/telegram/ui/Components/BotWebViewSheet;
.super Landroid/app/Dialog;
.source "BotWebViewSheet.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/ui/Components/SimpleFloatPropertyCompat<",
            "Lorg/telegram/ui/Components/BotWebViewSheet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarColor:I

.field private actionBarPaint:Landroid/graphics/Paint;

.field private actionBarShadow:Landroid/graphics/drawable/Drawable;

.field private actionBarTransitionProgress:F

.field private backgroundPaint:Landroid/graphics/Paint;

.field private botId:J

.field private buttonText:Ljava/lang/String;

.field private currentAccount:I

.field private dimPaint:Landroid/graphics/Paint;

.field private dismissed:Z

.field private frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private ignoreLayout:Z

.field private linePaint:Landroid/graphics/Paint;

.field private mainButton:Landroid/widget/TextView;

.field private mainButtonAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

.field private mainButtonProgressWasVisible:Z

.field private mainButtonWasVisible:Z

.field private needCloseConfirmation:Z

.field private overrideBackgroundColor:Z

.field private parentActivity:Landroid/app/Activity;

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private peerId:J

.field private pollRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

.field private queryId:J

.field private radialProgressAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

.field private radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private replyToMsgId:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private silent:Z

.field private springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

.field private wasLightStatusBar:Ljava/lang/Boolean;

.field private webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;


# direct methods
.method public static synthetic $r8$lambda$2ua-QXgLF91gsCjgP1sPkmAHIxA(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$8YBey_pgBHw2FhVb9k7ldP2QkMs(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bp0WxJdHloXeJPBLzS43Sp6pWnk(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$8(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CPy87Zl1ZXcMFanswDb43SNMzW0(Lorg/telegram/ui/Components/BotWebViewSheet;F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$static$1(Lorg/telegram/ui/Components/BotWebViewSheet;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$It2r5GK2lwddGl8RfStK1874bAA(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$14(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NhiGz9YmOezGFYILE2-sHvKMfig(Lorg/telegram/ui/Components/BotWebViewSheet;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$21(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OzktqmusNGHkZVwSdYetA7GCFNY(Lorg/telegram/ui/Components/BotWebViewSheet;)F
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$static$0(Lorg/telegram/ui/Components/BotWebViewSheet;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RDC7Fo9-9gnfxIV5IONgr_PMG0I(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SZ1yzHzUNivtPy3wHBuzzASMWUI(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$onCheckDismissByUser$22(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SjGQ54v9eJH3i4HUkNj3YQPz13I(Lorg/telegram/ui/Components/BotWebViewSheet;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$19(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vq8DJYIH0s0OyBcG6PtkI7fw2ro(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$12(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dugErpJD3Sa5oOkbeM1FUi0b_W4(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fzpFToAW30RaUKYuA6quv26rSyE(Lorg/telegram/ui/Components/BotWebViewSheet;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$15(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hKH9Dus7WRVBVQ9KUzrjSz-qBhE(Lorg/telegram/ui/Components/BotWebViewSheet;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$5(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$iGfutyI2l_0cPoWbum3Y8C0Pg4k(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$nhnEf6WEWaFFw-X6hDt3ik_oONo(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$18(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pQq_pmz_JbyI-nM9QhF1qsSQZgQ(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$16(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pqUXHkIUxCcldoif38vOM-tywfs(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$onCreate$13(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rbFocS0CgRwoy__8meqTQCpz-0k(Lorg/telegram/ui/Components/BotWebViewSheet;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$17(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$trbhBnjsTODfzY1qfn9nnjofCmU(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v29h5GS281N3r1w0ogkYSFlGGc8(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xw03_Bf8e95KgTKH-ZTCHetNJk8(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$yAv0OcxvWTSpoFFJyo7o7ujKcWc(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNC6kUJSOhWHO1v07W8MMxlzH_k(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$dismiss$23(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 84
    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    sget-object v1, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda21;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda21;

    sget-object v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda22;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda22;

    const-string v3, "actionBarTransitionProgress"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 91
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/BotWebViewSheet;->ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    .line 167
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    .line 115
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    .line 116
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarPaint:Landroid/graphics/Paint;

    .line 142
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    .line 168
    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 170
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$1;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    .line 205
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewContainer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v4

    invoke-direct {v1, p1, p2, v4}, Lorg/telegram/ui/Components/BotWebViewContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    .line 206
    new-instance v4, Lorg/telegram/ui/Components/BotWebViewSheet$2;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet$2;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/BotWebViewContainer;->setDelegate(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 429
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarColor:I

    .line 431
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$3;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 490
    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 495
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x31

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$4;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    .line 506
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 508
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 509
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 510
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x10

    .line 511
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 512
    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 513
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 514
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/16 v6, 0x30

    const/16 v7, 0x51

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 518
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$5;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v2, 0x12

    .line 531
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 532
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 533
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 534
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 535
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v6, 0x1c

    const/16 v7, 0x1c

    const/16 v8, 0x55

    const/16 v11, 0xa

    const/16 v12, 0xa

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 539
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarShadow:Landroid/graphics/drawable/Drawable;

    .line 541
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$6;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet$6;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 550
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 551
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 552
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateActionBarColors()V

    .line 553
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$7;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 561
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet$8;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x51

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 572
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 564
    invoke-virtual {v0, v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->setWebViewProgressListener(Landroidx/core/util/Consumer;)V

    .line 589
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollListener(Ljava/lang/Runnable;)V

    .line 612
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollEndListener(Ljava/lang/Runnable;)V

    .line 613
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;)V

    .line 618
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    .line 619
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setIsKeyboardVisible(Lorg/telegram/messenger/GenericProvider;)V

    .line 621
    new-instance p2, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 622
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->ignoreLayout:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/BotWebViewSheet;I)I
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->overrideBackgroundColor:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->overrideBackgroundColor:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/app/Activity;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonProgressWasVisible:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonProgressWasVisible:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/BotWebViewSheet;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonWasVisible:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/BotWebViewContainer;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonWasVisible:Z

    return p1
.end method

.method static synthetic access$2101(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/PasscodeView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/BotWebViewSheet;)F
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarShadow:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->needCloseConfirmation:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/BotWebViewSheet;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->botId:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/BotWebViewSheet;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->buttonText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/BotWebViewSheet;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarColor:I

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/BotWebViewSheet;I)I
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarColor:I

    return p1
.end method

.method private getColor(I)I
    .locals 1

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$dismiss$23(Ljava/lang/Runnable;)V
    .locals 0

    .line 1036
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 1038
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$10()V
    .locals 2

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 2

    .line 614
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->onCheckDismissByUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$12(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result p1

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss()V

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 153
    new-instance p1, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 4

    .line 143
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;-><init>()V

    .line 145
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 146
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->peerId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 147
    iget-wide v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->query_id:J

    .line 148
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->silent:Z

    .line 149
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->replyToMsgId:I

    if-eqz v1, :cond_0

    .line 150
    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->creteReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 151
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    .line 153
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$5(IZ)V
    .locals 1

    const/16 p2, 0x14

    .line 491
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-le p1, p2, :cond_0

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result p2

    neg-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    .line 514
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onMainButtonPressed()V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Float;)V
    .locals 2

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgressAnimated(F)V

    .line 575
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 576
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 577
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 578
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 579
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$9;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 585
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$new$9()V
    .locals 6

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42800000    # 64.0f

    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 596
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight()V

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    .line 602
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_2

    .line 603
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 607
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 608
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 609
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method private synthetic lambda$onCheckDismissByUser$22(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1011
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onCreate$13(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 718
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private synthetic lambda$requestWebView$14(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    .line 850
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    if-eqz v0, :cond_0

    .line 851
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    .line 852
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->query_id:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 854
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setWebView(Landroid/webkit/WebView;)V

    .line 856
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$15(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 849
    new-instance p3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$16(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    .line 876
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_simpleWebViewResultUrl;

    if-eqz v0, :cond_0

    .line 877
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_simpleWebViewResultUrl;

    const-wide/16 v0, 0x0

    .line 878
    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_simpleWebViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 880
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setWebView(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$17(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 875
    new-instance p3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$18(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    .line 907
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    if-eqz v0, :cond_0

    .line 908
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    .line 909
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->query_id:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 911
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setWebView(Landroid/webkit/WebView;)V

    .line 913
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$19(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 906
    new-instance p3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    if-nez p1, :cond_0

    .line 944
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_appWebViewResultUrl;

    const-wide/16 v0, 0x0

    .line 945
    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    .line 946
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_appWebViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 947
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setWebView(Landroid/webkit/WebView;)V

    .line 949
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 p2, 0xea60

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$21(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 942
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/ui/Components/BotWebViewSheet;)F
    .locals 0

    .line 84
    iget p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    return p0
.end method

.method private static synthetic lambda$static$1(Lorg/telegram/ui/Components/BotWebViewSheet;F)V
    .locals 1

    .line 85
    iput p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateLightStatusBar()V

    return-void
.end method

.method private updateActionBarColors()V
    .locals 4

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(IZ)V

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsSelectorColor(IZ)V

    return-void
.end method

.method private updateLightStatusBar()V
    .locals 5

    .line 668
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 669
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    const v1, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 671
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->wasLightStatusBar:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_1

    return-void

    .line 674
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->wasLightStatusBar:Ljava/lang/Boolean;

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v0

    if-eqz v2, :cond_2

    or-int/lit16 v0, v0, 0x2000

    goto :goto_1

    :cond_2
    and-int/lit16 v0, v0, -0x2001

    .line 683
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1045
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 1046
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1048
    iget-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 1049
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss()V

    goto :goto_0

    .line 1051
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_1

    .line 1052
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1053
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->updateFlickerBackgroundColor(I)V

    .line 1054
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateActionBarColors()V

    .line 1055
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateLightStatusBar()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 997
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss(Ljava/lang/Runnable;)V
    .locals 3

    .line 1025
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1028
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->destroyWebView()V

    .line 1032
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1033
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(FLjava/lang/Runnable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 733
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lorg/telegram/ui/Components/BotWebViewSheet;->ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x44960000    # 1200.0f

    .line 738
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 739
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 737
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 984
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    .line 989
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 992
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->onCheckDismissByUser()Z

    return-void
.end method

.method public onCheckDismissByUser()Z
    .locals 4

    .line 1001
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->needCloseConfirmation:Z

    if-eqz v0, :cond_1

    .line 1003
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1008
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1009
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewChangesMayNotBeSaved:I

    .line 1010
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewCloseAnyway:I

    .line 1011
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1012
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 1015
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1016
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    return v0

    .line 1019
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 689
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 691
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 692
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    const v2, -0x7fffff00

    .line 693
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    const v2, -0x7ffeff00

    .line 695
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 697
    :cond_1
    :goto_0
    sget v2, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 699
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 700
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v4, 0x33

    .line 701
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    .line 702
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 703
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v4, 0x10

    .line 704
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 705
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-lt v0, v3, :cond_2

    .line 707
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 709
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 712
    invoke-virtual {p1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 715
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v5, 0x500

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    if-lt v0, v1, :cond_4

    .line 717
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    sget-object v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_4
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    .line 724
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 725
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v5

    if-ltz v0, :cond_5

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    invoke-static {p1, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 728
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 746
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 750
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 629
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 631
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 632
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 633
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 635
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 636
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->addOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 642
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 644
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 645
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 646
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 648
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 649
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->removeOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method public requestWebView(IJJLjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 759
    invoke-virtual/range {v0 .. v16}, Lorg/telegram/ui/Components/BotWebViewSheet;->requestWebView(IJJLjava/lang/String;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;I)V

    return-void
.end method

.method public requestWebView(IJJLjava/lang/String;Ljava/lang/String;IIZI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v16, p11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 755
    invoke-virtual/range {v0 .. v16}, Lorg/telegram/ui/Components/BotWebViewSheet;->requestWebView(IJJLjava/lang/String;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;I)V

    return-void
.end method

.method public requestWebView(IJJLjava/lang/String;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const/16 v16, 0x0

    .line 763
    invoke-virtual/range {v0 .. v16}, Lorg/telegram/ui/Components/BotWebViewSheet;->requestWebView(IJJLjava/lang/String;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;I)V

    return-void
.end method

.method public requestWebView(IJJLjava/lang/String;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 767
    iput v2, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    .line 768
    iput-wide v3, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->peerId:J

    .line 769
    iput-wide v5, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->botId:J

    .line 770
    iput v9, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->replyToMsgId:I

    move/from16 v0, p10

    .line 771
    iput-boolean v0, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->silent:Z

    move-object/from16 v0, p6

    .line 772
    iput-object v0, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->buttonText:Ljava/lang/String;

    .line 774
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 778
    sget v12, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 779
    sget v12, Lorg/telegram/messenger/R$id;->menu_open_bot:I

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    sget v15, Lorg/telegram/messenger/R$string;->BotWebViewOpenBot:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v12, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 780
    sget v12, Lorg/telegram/messenger/R$id;->menu_reload_page:I

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v15, Lorg/telegram/messenger/R$string;->BotWebViewReloadPage:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v12, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 781
    iget-object v0, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v12, Lorg/telegram/ui/Components/BotWebViewSheet$10;

    invoke-direct {v12, v1, v5, v6, v2}, Lorg/telegram/ui/Components/BotWebViewSheet$10;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;JI)V

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 817
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "bg_color"

    .line 818
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v15

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "secondary_bg_color"

    .line 819
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v15

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "text_color"

    .line 820
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v15

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "hint_color"

    .line 821
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v15

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "link_color"

    .line 822
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v15

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "button_color"

    .line 823
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v15

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "button_text_color"

    .line 824
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v15

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 825
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 827
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    move v14, v13

    .line 831
    :goto_0
    iget-object v15, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    invoke-virtual {v15, v12}, Lorg/telegram/ui/Components/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 832
    iget-object v12, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object v13, v1, Lorg/telegram/ui/Components/BotWebViewSheet;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v12, v2, v5, v6, v13}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    const-string v12, "android"

    const/4 v13, 0x2

    if-eqz v8, :cond_a

    const/4 v15, 0x1

    if-eq v8, v15, :cond_7

    if-eq v8, v13, :cond_5

    const/4 v3, 0x3

    if-eq v8, v3, :cond_0

    goto/16 :goto_3

    .line 920
    :cond_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;-><init>()V

    .line 921
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;-><init>()V

    .line 922
    iget-wide v5, v11, Lorg/telegram/tgnet/TLRPC$BotApp;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;->id:J

    .line 923
    iget-wide v5, v11, Lorg/telegram/tgnet/TLRPC$BotApp;->access_hash:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;->access_hash:J

    .line 925
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->app:Lorg/telegram/tgnet/TLRPC$InputBotApp;

    move/from16 v4, p13

    .line 926
    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->write_allowed:Z

    .line 927
    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->platform:Ljava/lang/String;

    .line 928
    instance-of v4, v10, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_2

    move-object v4, v10

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    goto :goto_1

    .line 929
    :cond_2
    invoke-static/range {p15 .. p15}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    :goto_1
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 931
    invoke-static/range {p14 .. p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v4, p14

    .line 932
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->start_param:Ljava/lang/String;

    .line 933
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    or-int/2addr v4, v13

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    :cond_3
    if-eqz v14, :cond_4

    .line 937
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 938
    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 939
    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    .line 942
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda16;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;I)V

    const/16 v2, 0x42

    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_3

    .line 835
    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    .line 836
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 837
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 838
    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    .line 840
    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    .line 841
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v4, v13

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    if-eqz v14, :cond_6

    .line 844
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 845
    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 846
    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 849
    :cond_6
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda18;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;I)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 859
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto/16 :goto_3

    .line 864
    :cond_7
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;-><init>()V

    const/4 v4, 0x1

    and-int/lit8 v8, p16, 0x1

    if-eqz v8, :cond_8

    const/4 v13, 0x1

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    .line 865
    :goto_2
    iput-boolean v13, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->from_switch_webview:Z

    .line 866
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 867
    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->platform:Ljava/lang/String;

    if-eqz v14, :cond_9

    .line 869
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 870
    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 871
    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    const/4 v4, 0x1

    or-int/2addr v0, v4

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    .line 873
    :cond_9
    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->url:Ljava/lang/String;

    .line 875
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda19;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;I)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_3

    .line 886
    :cond_a
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    .line 887
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 888
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 889
    iput-object v12, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    if-eqz v7, :cond_b

    .line 891
    iput-object v7, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    .line 892
    iget v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v3, v13

    iput v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_b
    if-eqz v9, :cond_c

    .line 896
    invoke-static/range {p9 .. p9}, Lorg/telegram/messenger/SendMessagesHelper;->creteReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 897
    iget v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_c
    if-eqz v14, :cond_d

    .line 901
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 902
    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 903
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 906
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda17;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;I)V

    invoke-virtual {v0, v8, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 916
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :goto_3
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public show()V
    .locals 2

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 963
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$11;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 978
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
