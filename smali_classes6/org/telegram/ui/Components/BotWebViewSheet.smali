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

.field private actionBarIsLight:Z

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

.field private lineColor:I

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
.method public static synthetic $r8$lambda$-FvHZBUW3S194YSfv6h1M1TqLNY(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$0BWbuJDZ14ArOI2eBWsGPP2k5lA(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$dismiss$28(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$308_xwFymeXwXz6-EYlIOoF-BSU(Lorg/telegram/ui/Components/BotWebViewSheet;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$7(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$31rFJZzGpgHM-MlSI5IprABm8as(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$showJustAddedBulletin$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$5QZCYRdVLnE8kuHtpL1kpTt5zRM(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$14(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$As0fAnrgKLvr8V7UAn_MLCnuQe4(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$FNIOx_LeJiQajo_VUV6msXmxvSc(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MVQjWq-M7H7NTmlcezNVbOR6yZU(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$showJustAddedBulletin$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NhiGz9YmOezGFYILE2-sHvKMfig(Lorg/telegram/ui/Components/BotWebViewSheet;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$21(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NnpZTnc9UksftI8esveWyMOUBks(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O9YMYFin8ORJXyslrGHDYFHxc94(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$22(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SjGQ54v9eJH3i4HUkNj3YQPz13I(Lorg/telegram/ui/Components/BotWebViewSheet;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$19(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UOkA8VL14zzBXR7wo9AJpZc0XMg(Lorg/telegram/ui/Components/BotWebViewSheet;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$23(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VeotowL3hTJWJuznkCsqPM2M1iU(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XANgFF1HiVz-qGq1LpAcag6HnKQ(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ynh6cQUIUP1HBBfrDhaAw23I9cQ(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$deleteBot$25(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YvAkaKPQh78ruY6axEGv5FB2UA0(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$20(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8GUqiHazAXh5QUiUj17z2xePwM(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$deleteBot$26(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m455Zcz72JbpwbdRiq45yfHBnRs(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$onCheckDismissByUser$27(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nhnEf6WEWaFFw-X6hDt3ik_oONo(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$18(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oGcCKnMSHETNW7NM7XqwMeSdzYY(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pQq_pmz_JbyI-nM9QhF1qsSQZgQ(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$16(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rbFocS0CgRwoy__8meqTQCpz-0k(Lorg/telegram/ui/Components/BotWebViewSheet;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$requestWebView$17(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rqUSbdv8Y35tVjh3GfMidihc1a8(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$s_67k9R0SFi-l5nX13oT119ukR8(Lorg/telegram/ui/Components/BotWebViewSheet;F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$static$3(Lorg/telegram/ui/Components/BotWebViewSheet;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$wRzREuMXafzEzq49AMldh7a1ELw(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$deleteBot$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xqvwC-zNslR3evJvdUR-d6fWjbI(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$new$10(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ywcK67kAi0L0pO5cPcuLxZPkdGA(Lorg/telegram/ui/Components/BotWebViewSheet;)F
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$static$2(Lorg/telegram/ui/Components/BotWebViewSheet;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zJJYbwsoaEvRPI7n9aGoXFyss6o(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->lambda$onCreate$15(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 135
    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    sget-object v1, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda26;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda26;

    sget-object v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda27;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda27;

    const-string v3, "actionBarTransitionProgress"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 142
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/BotWebViewSheet;->ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    .line 221
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    .line 167
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    .line 168
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    .line 173
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarPaint:Landroid/graphics/Paint;

    .line 196
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    .line 222
    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 223
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->lineColor:I

    .line 225
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$1;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    .line 260
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$2;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v4

    invoke-direct {v1, p0, p1, p2, v4}, Lorg/telegram/ui/Components/BotWebViewSheet$2;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    .line 267
    new-instance v4, Lorg/telegram/ui/Components/BotWebViewSheet$3;

    invoke-direct {v4, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$3;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/BotWebViewContainer;->setDelegate(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V

    .line 518
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 519
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 520
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 522
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarColor:I

    .line 524
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$4;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 600
    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 605
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

    .line 607
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$5;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    .line 616
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 618
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 619
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 620
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x10

    .line 621
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 622
    iget-object v4, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/16 v6, 0x30

    const/16 v7, 0x51

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 628
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$6;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v2, 0x12

    .line 641
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 642
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 643
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 644
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 646
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

    .line 647
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 649
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarShadow:Landroid/graphics/drawable/Drawable;

    .line 651
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$7;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet$7;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 660
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 662
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateActionBarColors()V

    .line 663
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$8;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 671
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$9;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet$9;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x51

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 682
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 674
    invoke-virtual {v0, v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->setWebViewProgressListener(Landroidx/core/util/Consumer;)V

    .line 699
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollListener(Ljava/lang/Runnable;)V

    .line 722
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollEndListener(Ljava/lang/Runnable;)V

    .line 723
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;)V

    .line 728
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

    .line 729
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setIsKeyboardVisible(Lorg/telegram/messenger/GenericProvider;)V

    .line 731
    new-instance p2, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 732
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->ignoreLayout:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/BotWebViewSheet;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->buttonText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/BotWebViewSheet;)I
    .locals 0

    .line 77
    iget p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarColor:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/BotWebViewSheet;I)I
    .locals 0

    .line 77
    iput p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarColor:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->overrideBackgroundColor:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->overrideBackgroundColor:Z

    return p1
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarIsLight:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateLightStatusBar()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonWasVisible:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonWasVisible:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/BotWebViewSheet;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonProgressWasVisible:Z

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonProgressWasVisible:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/BotWebViewSheet;)Ljava/lang/Runnable;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2401(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/BotWebViewSheet;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateActionBarColors()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/BotWebViewSheet;)I
    .locals 0

    .line 77
    iget p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->lineColor:I

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/BotWebViewSheet;I)I
    .locals 0

    .line 77
    iput p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->lineColor:I

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/PasscodeView;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/BotWebViewSheet;I)I
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/BotWebViewSheet;)F
    .locals 0

    .line 77
    iget p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarShadow:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/BotWebViewContainer;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->needCloseConfirmation:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)J
    .locals 2

    .line 77
    iget-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/BotWebViewSheet;)J
    .locals 2

    .line 77
    iget-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->botId:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/BotWebViewSheet;)I
    .locals 0

    .line 77
    iget p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    return p0
.end method

.method public static deleteBot(IJLjava/lang/Runnable;)V
    .locals 10

    .line 1102
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 1103
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_1
    move-object v8, v2

    :goto_0
    if-nez v8, :cond_2

    return-void

    .line 1111
    :cond_2
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    .line 1112
    sget v1, Lorg/telegram/messenger/R$string;->BotRemoveFromMenu:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "BotRemoveFromMenu"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$string;->BotRemoveFromMenuTitle:I

    .line 1115
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1116
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v3, "OK"

    .line 1117
    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda1;

    move-object v4, v3

    move v5, p0

    move-wide v6, p1

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda1;-><init>(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    .line 1130
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    .line 1131
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private getColor(I)I
    .locals 1

    .line 1135
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private static synthetic lambda$deleteBot$24(I)V
    .locals 2

    .line 1122
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    return-void
.end method

.method private static synthetic lambda$deleteBot$25(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1121
    new-instance p1, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$deleteBot$26(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1118
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    .line 1119
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    invoke-virtual {p6, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p5, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 p1, 0x0

    .line 1120
    iput-boolean p1, p5, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    .line 1121
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p6, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda19;

    invoke-direct {p6, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda19;-><init>(I)V

    const/16 v0, 0x42

    invoke-virtual {p2, p5, p6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1124
    iput-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    .line 1125
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 1127
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dismiss$28(Ljava/lang/Runnable;)V
    .locals 0

    .line 1218
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 1220
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$10(Ljava/lang/Float;)V
    .locals 2

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgressAnimated(F)V

    .line 685
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 686
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 687
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 688
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 689
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$10;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 695
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$new$11()V
    .locals 6

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 702
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

    .line 704
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 706
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight()V

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    .line 710
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

    .line 712
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_2

    .line 713
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 717
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 718
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->mainButtonAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 719
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->radialProgressAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->setOffsetY(F)V

    .line 720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method private synthetic lambda$new$12()V
    .locals 2

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method private synthetic lambda$new$13()V
    .locals 2

    .line 724
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->onCheckDismissByUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$14(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 729
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

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 208
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 207
    new-instance p1, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 4

    .line 197
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;-><init>()V

    .line 199
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 200
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->peerId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 201
    iget-wide v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->query_id:J

    .line 202
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->silent:Z

    .line 203
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->replyToMsgId:I

    if-eqz v1, :cond_0

    .line 204
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->replyToMsgId:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 205
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    .line 207
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$7(IZ)V
    .locals 1

    const/16 p2, 0x14

    .line 601
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-le p1, p2, :cond_0

    .line 602
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

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 0

    .line 624
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onMainButtonPressed()V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onCheckDismissByUser$27(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1193
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onCreate$15(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 834
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private synthetic lambda$requestWebView$16(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    .line 991
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    if-eqz v0, :cond_0

    .line 992
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    .line 993
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->query_id:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$17(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 990
    new-instance p3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda15;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$18(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    .line 1023
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_simpleWebViewResultUrl;

    if-eqz v0, :cond_0

    .line 1024
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_simpleWebViewResultUrl;

    const-wide/16 v0, 0x0

    .line 1025
    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_simpleWebViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$19(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1022
    new-instance p3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$20(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    .line 1053
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    if-eqz v0, :cond_0

    .line 1054
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    .line 1055
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->query_id:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 1057
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$21(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1052
    new-instance p3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$22(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1088
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_appWebViewResultUrl;

    const-wide/16 v0, 0x0

    .line 1089
    iput-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    .line 1090
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_appWebViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 1092
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 p2, 0xea60

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$23(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1086
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showJustAddedBulletin$0()V
    .locals 3

    .line 109
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showJustAddedBulletin$1(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    .line 118
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 v0, 0x1388

    .line 119
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private static synthetic lambda$static$2(Lorg/telegram/ui/Components/BotWebViewSheet;)F
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    return p0
.end method

.method private static synthetic lambda$static$3(Lorg/telegram/ui/Components/BotWebViewSheet;F)V
    .locals 1

    .line 136
    iput p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateLightStatusBar()V

    return-void
.end method

.method public static makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;
    .locals 4

    .line 872
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 873
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const-string v2, "bg_color"

    .line 874
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "section_bg_color"

    .line 875
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "secondary_bg_color"

    .line 876
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "text_color"

    .line 877
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "hint_color"

    .line 878
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "link_color"

    .line 879
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "button_color"

    .line 880
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "button_text_color"

    .line 881
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "header_bg_color"

    .line 882
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "accent_text_color"

    .line 883
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "section_header_text_color"

    .line 884
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "subtitle_text_color"

    .line 885
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "destructive_text_color"

    .line 886
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 889
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private updateActionBarColors()V
    .locals 4

    .line 768
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->overrideBackgroundColor:Z

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 770
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(IZ)V

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsSelectorColor(IZ)V

    :cond_0
    return-void
.end method

.method private updateLightStatusBar()V
    .locals 6

    .line 781
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->overrideBackgroundColor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 782
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarIsLight:Z

    xor-int/2addr v0, v1

    goto :goto_1

    .line 784
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 785
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBarTransitionProgress:F

    const v2, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 787
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->wasLightStatusBar:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_2

    return-void

    .line 790
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->wasLightStatusBar:Ljava/lang/Boolean;

    .line 792
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 793
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    if-eqz v0, :cond_3

    or-int/lit16 v0, v1, 0x2000

    goto :goto_2

    :cond_3
    and-int/lit16 v0, v1, -0x2001

    .line 799
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1227
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 1228
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1230
    iget-wide v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->queryId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 1231
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss()V

    goto :goto_0

    .line 1233
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_1

    .line 1234
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1235
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->updateFlickerBackgroundColor(I)V

    .line 1236
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateActionBarColors()V

    .line 1237
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->updateLightStatusBar()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 1179
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss(Ljava/lang/Runnable;)V
    .locals 3

    .line 1207
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1210
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->dismissed:Z

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->destroyWebView()V

    .line 1214
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1215
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(FLjava/lang/Runnable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 849
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lorg/telegram/ui/Components/BotWebViewSheet;->ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x44960000    # 1200.0f

    .line 854
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 855
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 853
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1166
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    .line 1171
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1174
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->onCheckDismissByUser()Z

    return-void
.end method

.method public onCheckDismissByUser()Z
    .locals 4

    .line 1183
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->needCloseConfirmation:Z

    if-eqz v0, :cond_1

    .line 1185
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

    .line 1187
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1190
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1191
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewChangesMayNotBeSaved:I

    .line 1192
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewCloseAnyway:I

    .line 1193
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1194
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1195
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 1197
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1198
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    return v0

    .line 1201
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 805
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 807
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 808
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    const v2, -0x7fffff00

    .line 809
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    const v2, -0x7ffeff00

    .line 811
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 813
    :cond_1
    :goto_0
    sget v2, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 815
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 816
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v4, 0x33

    .line 817
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    .line 818
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 819
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v4, 0x10

    .line 820
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 821
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-lt v0, v3, :cond_2

    .line 823
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 825
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 828
    invoke-virtual {p1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 831
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v5, 0x500

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    if-lt v0, v1, :cond_4

    .line 833
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    sget-object v2, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda3;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_4
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    .line 840
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 841
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

    .line 844
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 862
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 866
    iput-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 739
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 741
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 742
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 743
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 745
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 746
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->addOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 752
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 754
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 755
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 756
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 758
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 759
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

    .line 899
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

    .line 895
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

    .line 903
    invoke-virtual/range {v0 .. v16}, Lorg/telegram/ui/Components/BotWebViewSheet;->requestWebView(IJJLjava/lang/String;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;I)V

    return-void
.end method

.method public requestWebView(IJJLjava/lang/String;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p14

    .line 907
    iput v1, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    .line 908
    iput-wide v2, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->peerId:J

    .line 909
    iput-wide v4, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->botId:J

    .line 910
    iput v8, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->replyToMsgId:I

    move/from16 v12, p10

    .line 911
    iput-boolean v12, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->silent:Z

    move-object/from16 v12, p6

    .line 912
    iput-object v12, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->buttonText:Ljava/lang/String;

    .line 915
    iget-object v12, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v12, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v12

    .line 917
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 920
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 921
    iget-wide v2, v14, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move-wide/from16 v2, p2

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    .line 927
    :goto_1
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 928
    sget v12, Lorg/telegram/messenger/R$id;->menu_open_bot:I

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    sget v15, Lorg/telegram/messenger/R$string;->BotWebViewOpenBot:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v12, v13, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 929
    sget v12, Lorg/telegram/messenger/R$id;->menu_settings:I

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v15, Lorg/telegram/messenger/R$string;->BotWebViewSettings:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v12, v13, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v12

    iput-object v12, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v13, 0x8

    .line 930
    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 931
    sget v12, Lorg/telegram/messenger/R$id;->menu_reload_page:I

    sget v15, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v16, Lorg/telegram/messenger/R$string;->BotWebViewReloadPage:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12, v15, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v14, :cond_3

    .line 932
    iget-boolean v3, v14, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    if-nez v3, :cond_2

    iget-boolean v3, v14, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v3, :cond_3

    .line 933
    :cond_2
    sget v3, Lorg/telegram/messenger/R$id;->menu_delete_bot:I

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v14, Lorg/telegram/messenger/R$string;->BotWebViewDeleteBot:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v3, v12, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 935
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$11;

    invoke-direct {v3, v0, v4, v5, v1}, Lorg/telegram/ui/Components/BotWebViewSheet$11;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;JI)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 970
    iget-object v2, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v2

    .line 972
    iget-object v3, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 973
    iget-object v3, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object v12, v0, Lorg/telegram/ui/Components/BotWebViewSheet;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v3, v1, v4, v5, v12}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    const-string v3, "android"

    const/4 v12, 0x2

    const/4 v14, 0x1

    if-eqz v7, :cond_11

    if-eq v7, v14, :cond_b

    if-eq v7, v12, :cond_9

    const/4 v4, 0x3

    if-eq v7, v4, :cond_4

    goto/16 :goto_5

    .line 1064
    :cond_4
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;-><init>()V

    .line 1065
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;-><init>()V

    .line 1066
    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$BotApp;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;->id:J

    .line 1067
    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$BotApp;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;->access_hash:J

    .line 1069
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->app:Lorg/telegram/tgnet/TLRPC$InputBotApp;

    move/from16 v5, p13

    .line 1070
    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->write_allowed:Z

    .line 1071
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->platform:Ljava/lang/String;

    .line 1072
    instance-of v3, v9, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_6

    move-object v3, v9

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    goto :goto_2

    .line 1073
    :cond_6
    invoke-static/range {p15 .. p15}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    :goto_2
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1075
    invoke-static/range {p14 .. p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1076
    iput-object v11, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->start_param:Ljava/lang/String;

    .line 1077
    iget v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    or-int/2addr v3, v12

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    :cond_7
    if-eqz v2, :cond_8

    .line 1081
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1082
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1083
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    .line 1086
    :cond_8
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda23;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;I)V

    const/16 v1, 0x42

    invoke-virtual {v2, v4, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_5

    .line 976
    :cond_9
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    .line 977
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 978
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 979
    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    .line 981
    iput-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    .line 982
    iget v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v3, v12

    iput v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    if-eqz v2, :cond_a

    .line 985
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 986
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 987
    iget v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 990
    :cond_a
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda24;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;I)V

    invoke-virtual {v2, v7, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 998
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto/16 :goto_5

    .line 1003
    :cond_b
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;-><init>()V

    and-int/lit8 v8, p16, 0x1

    if-eqz v8, :cond_c

    move v8, v14

    goto :goto_3

    :cond_c
    const/4 v8, 0x0

    .line 1004
    :goto_3
    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->from_switch_webview:Z

    .line 1005
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1006
    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->platform:Ljava/lang/String;

    and-int/lit8 v3, p16, 0x2

    if-eqz v3, :cond_d

    move v3, v14

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    .line 1007
    :goto_4
    iput-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->from_side_menu:Z

    if-eqz v2, :cond_e

    .line 1009
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1010
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1011
    iget v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    or-int/2addr v2, v14

    iput v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    .line 1013
    :cond_e
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1014
    iget v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    or-int/2addr v2, v13

    iput v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    .line 1015
    iput-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->url:Ljava/lang/String;

    .line 1017
    :cond_f
    invoke-static/range {p14 .. p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1018
    iput-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->start_param:Ljava/lang/String;

    .line 1019
    iget v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    .line 1022
    :cond_10
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda22;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;I)V

    invoke-virtual {v2, v7, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_5

    .line 1032
    :cond_11
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    .line 1033
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    move-wide/from16 v10, p2

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1034
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1035
    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 1037
    iput-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    .line 1038
    iget v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v3, v12

    iput v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_12
    if-eqz v8, :cond_13

    .line 1042
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v3

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 1043
    iget v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr v3, v14

    iput v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_13
    if-eqz v2, :cond_14

    .line 1047
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1048
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1049
    iget v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 1052
    :cond_14
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda21;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;I)V

    invoke-virtual {v2, v7, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1060
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :goto_5
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->frameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$12;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1160
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showJustAddedBulletin()V
    .locals 9

    .line 85
    iget v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 87
    iget v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 88
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v5, p0, Lorg/telegram/ui/Components/BotWebViewSheet;->botId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    return-void

    .line 97
    :cond_2
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v5, :cond_3

    .line 98
    sget v1, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedAttachAndSide:I

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v0, v5, v3

    const-string v0, "BotAttachMenuShortcatAddedAttachAndSide"

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 100
    sget v1, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedSide:I

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v0, v5, v3

    const-string v0, "BotAttachMenuShortcatAddedSide"

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedAttach:I

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v0, v5, v3

    const-string v0, "BotAttachMenuShortcatAddedAttach"

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_1
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    const-wide/32 v7, 0x765bf322

    cmp-long v1, v5, v7

    if-nez v1, :cond_6

    .line 106
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    if-eqz v1, :cond_5

    .line 107
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v3, Lcom/iMe/ui/drawer/DrawerItem;->WALLET_BOT:Lcom/iMe/ui/drawer/DrawerItem;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 109
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 111
    :cond_5
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v1, :cond_6

    .line 112
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setChatAttachAlertWalletBotEnabled(Z)V

    .line 116
    :cond_6
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/BotWebViewSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
